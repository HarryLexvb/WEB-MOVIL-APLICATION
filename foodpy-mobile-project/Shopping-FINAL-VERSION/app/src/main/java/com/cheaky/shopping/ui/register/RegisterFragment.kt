package com.cheaky.shopping.ui.register

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.Toast
import androidx.fragment.app.activityViewModels
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.cheaky.shopping.MainViewModel
import com.cheaky.shopping.R
import com.google.android.material.textfield.TextInputEditText
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class RegisterFragment : Fragment() {

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        val root = inflater.inflate(R.layout.fragment_register, container, false)
        val viewModel by viewModels<RegisterViewModel>()
        val activityViewModel by activityViewModels<MainViewModel>()

        val editTextName = root.findViewById<TextInputEditText>(R.id.textInputEditTextName)
        val editTextEmail = root.findViewById<TextInputEditText>(R.id.textInputEditTextEmail)
        val editTextPhone = root.findViewById<TextInputEditText>(R.id.textInputEditTextPhone)
        val editTextPassword = root.findViewById<TextInputEditText>(R.id.textInputEditTextPassword)

        //boton registrar
        root.findViewById<Button>(R.id.buttonRegister).setOnClickListener {

            if (editTextName.text.isNullOrEmpty() || editTextEmail.text.isNullOrEmpty() || editTextPhone.text.isNullOrEmpty() || editTextPassword.text.isNullOrEmpty())
                Toast.makeText(context, "Rellene todos los campos", Toast.LENGTH_SHORT).show()
            else{
                if (editTextPassword.text!!.length < 6)
                    Toast.makeText(context, "La contraseña tiene que tener como mínimo 6 caracteres", Toast.LENGTH_SHORT).show()
                else{
                    viewModel.createUser(editTextName.text.toString(), editTextEmail.text.toString(), editTextPhone.text.toString(), editTextPassword.text.toString())
                }
            }
        }

        //observamos si el registro se realizo
        viewModel.user.observe(viewLifecycleOwner){
            it.id?.let {_ ->
                Toast.makeText(context, "Usuario creado con éxito", Toast.LENGTH_SHORT).show()
                activityViewModel.loadUser(it)
                findNavController().navigate(R.id.action_registerFragment_to_homeFragment)
            }
        }
        return root
    }
}