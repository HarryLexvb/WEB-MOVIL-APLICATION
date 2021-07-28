package com.cheaky.shopping.ui.login

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.TextView
import android.widget.Toast
import androidx.fragment.app.activityViewModels
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.cheaky.shopping.MainViewModel
import com.cheaky.shopping.R
import com.google.android.material.textfield.TextInputEditText
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class LoginFragment : Fragment() {

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        val root = inflater.inflate(R.layout.fragment_login, container, false)
        val viewModel by viewModels<LoginViewModel>()
        val activityViewModel by activityViewModels<MainViewModel>()

        val editTextEmail = root.findViewById<TextInputEditText>(R.id.textInputEditTextEmail)
        val editTextPassword = root.findViewById<TextInputEditText>(R.id.textInputEditTextPassword)

        //click al boton login
        root.findViewById<Button>(R.id.buttonLogin).setOnClickListener {
            if (editTextEmail.text.isNullOrEmpty() || editTextPassword.text.isNullOrEmpty())
                Toast.makeText(context, "Rellene los campos", Toast.LENGTH_SHORT).show()
            else
                viewModel.loginUser(editTextEmail.text.toString(), editTextPassword.text.toString())
        }

        //click al boton registrar
        root.findViewById<TextView>(R.id.textViewRegister).setOnClickListener {
            findNavController().navigate(R.id.action_loginFragment_to_registerFragment)
        }


        //Si los datos son validos nos logueamos sino mostramos un aviso
        viewModel.user.observe(viewLifecycleOwner){
            if (it.id == null)
                Toast.makeText(context, "Datos inválidos", Toast.LENGTH_SHORT).show()
            else{
                //Toast.makeText(context, "login exitoso ${it.name}", Toast.LENGTH_SHORT).show()
                activityViewModel.loadUser(it)
                findNavController().navigate(R.id.action_loginFragment_to_homeFragment)
            }
        }

        return root
    }

}