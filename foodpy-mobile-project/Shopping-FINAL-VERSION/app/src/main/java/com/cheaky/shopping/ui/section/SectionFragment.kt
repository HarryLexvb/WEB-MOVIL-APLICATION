package com.cheaky.shopping.ui.section

import android.os.Bundle
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.ImageView
import android.widget.LinearLayout
import android.widget.TextView
import androidx.core.os.bundleOf
import androidx.fragment.app.activityViewModels
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import androidx.recyclerview.widget.RecyclerView
import com.cheaky.shopping.MainViewModel
import com.cheaky.shopping.R
import com.cheaky.shopping.pojo.Food
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class SectionFragment : Fragment() {


    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        val root = inflater.inflate(R.layout.fragment_section, container, false)
        val viewModel by viewModels<SectionViewModel>()
        val activityViewModel by activityViewModels<MainViewModel>()


        //Solicitamos los productos dependiento de la pantalla que estemos
        viewModel.getProduct(when(findNavController().currentBackStackEntry?.destination?.label){
            "INICIO" -> "0"
            "COSTA" -> "3"
            "SIERRA" -> "4"
            else -> "5"
        })

        //Creamos el adapter
        val adapterRecyclerView = SectionAdapterRecyclerView()
        root.findViewById<RecyclerView>(R.id.RecyclerView).adapter = adapterRecyclerView


        //observamos los datos
        viewModel.listProduct.observe(viewLifecycleOwner){
            it?.let {
                adapterRecyclerView.loadData(it)
            }
        }

        //observamos el search
        activityViewModel.search.observe(viewLifecycleOwner){
            viewModel.search(it)
        }

        return root
    }

    //Adaptador recycler view
    inner class SectionAdapterRecyclerView: RecyclerView.Adapter<SectionAdapterRecyclerView.SectionViewHolder>(){
        private val listFood = arrayListOf<Food>()
        fun loadData(listFood: List<Food>){
            this.listFood.clear()
            this.listFood.addAll(listFood)
            notifyDataSetChanged()

        }

        inner class SectionViewHolder(val root:View): RecyclerView.ViewHolder(root)
        override fun getItemCount() = listFood.size
        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): SectionViewHolder {
            val layoutInflater = LayoutInflater.from(parent.context)
            return SectionViewHolder(layoutInflater.inflate(R.layout.item_food, parent, false))
        }

        override fun onBindViewHolder(holder: SectionViewHolder, position: Int) {
            //Click en una comida para ver los ingredientes
            holder.root.findViewById<LinearLayout>(R.id.linearLayout).setOnClickListener {
                findNavController().navigate(
                    R.id.action_global_detailFragment,
                    bundleOf(
                        "id" to listFood[position].id,
                        "name" to listFood[position].productName,
                        "shipping" to listFood[position].shippingCharge,
                        "price" to listFood[position].productPrice,
                        "image" to listFood[position].productImage1
                    )
                )
            }

            //ponemos el titulo, precio e imagen
            holder.root.findViewById<TextView>(R.id.textViewTitle).text = listFood[position].productName
            holder.root.findViewById<TextView>(R.id.textViewPrice).text = "$. "+listFood[position].productPrice
            val img = holder.root.findViewById<ImageView>(R.id.imageViewProduct)
            when(listFood[position].productImage1){
                "cuy1.jpeg" -> img.setImageResource(R.drawable.cuy1)
                "pachamanca1.jpg" -> img.setImageResource(R.drawable.pachamanca1)
                "ajigallina1.jpg" -> img.setImageResource(R.drawable.pachamanca1)
                "juane1.jpg" -> img.setImageResource(R.drawable.juane1)
                "tacacho1.jpg" -> img.setImageResource(R.drawable.tacacho1)
                else -> img.setImageResource(R.drawable.lomo1)
            }
        }


    }

}