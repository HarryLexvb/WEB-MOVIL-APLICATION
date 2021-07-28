package com.cheaky.shopping.ui.shopping

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import androidx.fragment.app.activityViewModels
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import com.cheaky.shopping.MainViewModel
import com.cheaky.shopping.R
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class ShoppingFragment : Fragment() {

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        val root = inflater.inflate(R.layout.fragment_shopping, container, false)
        val activityViewModel by activityViewModels<MainViewModel>()

        activityViewModel.shopping.observe(viewLifecycleOwner){
            it?.let {
                val img = root.findViewById<ImageView>(R.id.imageViewProductCart)
                when(it.image){
                    "cuy1.jpeg" -> img.setImageResource(R.drawable.cuy1)
                    "pachamanca1.jpg" -> img.setImageResource(R.drawable.pachamanca1)
                    "ajigallina1.jpg" -> img.setImageResource(R.drawable.pachamanca1)
                    "juane1.jpg" -> img.setImageResource(R.drawable.juane1)
                    "tacacho1.jpg" -> img.setImageResource(R.drawable.tacacho1)
                    else -> img.setImageResource(R.drawable.lomo1)
                }
                root.findViewById<TextView>(R.id.textViewNameProductCart).text = it.name
                root.findViewById<TextView>(R.id.textViewQuantityCart).text = it.quantity
                root.findViewById<TextView>(R.id.textViewPriceUnitCart).text = "$. " + it.priceUnit
                root.findViewById<TextView>(R.id.textViewShippingCart).text = "$. " + it.priceShipping
                val total = it.quantity.toFloat() * it.priceUnit.toFloat() + it.priceShipping.toFloat()
                root.findViewById<TextView>(R.id.textViewTotalCart).text = "$. $total"
                root.findViewById<TextView>(R.id.textViewTotalIngredientCart).text = "$. " + it.priceIngredients
                val totalTotal = total + it.priceIngredients.toFloat()
                root.findViewById<TextView>(R.id.textViewTotalAmountCart).text = "Monto total:    $. " + totalTotal.toString()
            }
        }



        root.findViewById<Button>(R.id.buttonPayCart).setOnClickListener {
            Toast.makeText(context, "Compra realizada con éxito", Toast.LENGTH_SHORT).show()
            activityViewModel.finish()
            findNavController().navigateUp()
        }

        return root
    }


}