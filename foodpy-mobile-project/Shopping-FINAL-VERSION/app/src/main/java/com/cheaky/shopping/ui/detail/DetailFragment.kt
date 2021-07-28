package com.cheaky.shopping.ui.detail

import android.os.Bundle
import android.util.Log
import androidx.fragment.app.Fragment
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.*
import androidx.core.widget.addTextChangedListener
import androidx.fragment.app.activityViewModels
import androidx.fragment.app.viewModels
import androidx.navigation.fragment.findNavController
import androidx.recyclerview.widget.RecyclerView
import com.cheaky.shopping.MainViewModel
import com.cheaky.shopping.R
import com.cheaky.shopping.pojo.Ingredient
import com.cheaky.shopping.pojo.Shopping
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class DetailFragment : Fragment() {
    private val viewModel by viewModels<DetailViewModel>()

    override fun onCreateView(inflater: LayoutInflater, container: ViewGroup?, savedInstanceState: Bundle?): View? {
        val root = inflater.inflate(R.layout.fragment_detail, container, false)
        val activityViewModel by activityViewModels<MainViewModel>()


        //Colocamos el nombre y el costo de envio
        root.findViewById<TextView>(R.id.textViewNameProduct).text = viewModel.name
        root.findViewById<TextView>(R.id.textViewShipping).text = if (viewModel.shipping != "0") "$. "+viewModel.shipping else "GRATIS"
        root.findViewById<TextView>(R.id.textViewPriceProduct).text = "$. "+viewModel.price


        //Creamos el adapter
        val adapterRecyclerView = IngredientAdapterRecyclerView()
        root.findViewById<RecyclerView>(R.id.recyclerView).adapter = adapterRecyclerView



        //observamos los datos
        viewModel.listIngredient.observe(viewLifecycleOwner){
            adapterRecyclerView.loadData(it)
            //val myAdapter = IngredientAdapter(it)
            //root.findViewById<ListView>(R.id.listView).adapter = myAdapter
        }

        //Boton agregar carrito
        root.findViewById<Button>(R.id.buttonAddShoppingCart).setOnClickListener {

            //Log.i("eder", "total: ${adapterRecyclerView.getTotalPrice()}")
            activityViewModel.loadShopping(Shopping(
                viewModel.name!!,
                viewModel.image!!,
                root.findViewById<EditText>(R.id.editTextQuantityProduct).text.toString(),
                viewModel.price!!,
                viewModel.shipping!!,
                adapterRecyclerView.getTotalPrice().toString()
            ))

            Toast.makeText(context, "Agregado al carrito correctamente", Toast.LENGTH_SHORT).show()
            findNavController().navigateUp()
        }


        return root
    }

//    inner class IngredientAdapter(private val listIngredient: List<Ingredient>): BaseAdapter(){
//
//        override fun getCount() = listIngredient.size
//        override fun getItem(p0: Int): Any {
//            return listIngredient[p0].name
//        }
//
//        override fun getItemId(p0: Int): Long {
//            return p0.toLong()
//        }
//
//        override fun getView(position: Int, convertView: View?, viewGroup: ViewGroup?): View {
//            var v = convertView
//            if (v == null){
//                v = layoutInflater.inflate(R.layout.item_ingredient, viewGroup, false)
//            }
//
//            //val inflater = LayoutInflater.from(viewGroup?.context)
//            //v = inflater.inflate(R.layout.item_ingredient, null)
//
//            v?.findViewById<TextView>(R.id.textViewNameIngredient)?.text = listIngredient[position].name
//
//            return v!!
//        }
//
//    }

    inner class IngredientAdapterRecyclerView: RecyclerView.Adapter<IngredientAdapterRecyclerView.IngredientViewHolder>(){
        private val listIngredient = arrayListOf<Ingredient>()
        fun loadData(listIngredient: List<Ingredient>){
            this.listIngredient.clear()
            this.listIngredient.addAll(listIngredient)
            notifyDataSetChanged()

        }
        fun getTotalPrice():Float{
            var count = 0f

            listBox1.forEach {
                if (it.value){
                    count += listIngredient[it.key].priceMetro.toFloat() * if (listEditText.containsKey(it.key)) listEditText[it.key]!!.toFloat() else 1f
                }
            }
            listBox2.forEach {
                if (it.value){
                    count += listIngredient[it.key].pricePlazaVea.toFloat() * if (listEditText.containsKey(it.key)) listEditText[it.key]!!.toFloat() else 1f
                }
            }
            listBox3.forEach {
                if (it.value){
                    count += listIngredient[it.key].priceTottus.toFloat() * if (listEditText.containsKey(it.key)) listEditText[it.key]!!.toFloat() else 1f
                }
            }

            return count
        }

        inner class IngredientViewHolder(val root:View): RecyclerView.ViewHolder(root)
        override fun getItemCount() = listIngredient.size
        override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): IngredientViewHolder {
            val layoutInflater = LayoutInflater.from(parent.context)
            return IngredientViewHolder(layoutInflater.inflate(R.layout.item_ingredient, parent, false))
        }

        private val listBox1 = mutableMapOf<Int,Boolean>()
        private val listBox2 = mutableMapOf<Int,Boolean>()
        private val listBox3 = mutableMapOf<Int,Boolean>()
        private val listEditText = mutableMapOf<Int, String>()
        override fun onBindViewHolder(holder: IngredientViewHolder, position: Int) {
            holder.setIsRecyclable(false)
            holder.root.apply {
                findViewById<TextView>(R.id.textViewNameIngredient).text = listIngredient[position].name
                findViewById<CheckBox>(R.id.checkBoxPrice1).text = "$"+listIngredient[position].priceMetro
                findViewById<CheckBox>(R.id.checkBoxPrice2).text = "$"+listIngredient[position].pricePlazaVea
                findViewById<CheckBox>(R.id.checkBoxPrice3).text = "$"+listIngredient[position].priceTottus

                if (listBox1.containsKey(position))findViewById<CheckBox>(R.id.checkBoxPrice1).isChecked = listBox1[position]!!
                findViewById<CheckBox>(R.id.checkBoxPrice1).setOnCheckedChangeListener { compoundButton, b ->
                    listBox1[position] = b
                }
                if (listBox2.containsKey(position))findViewById<CheckBox>(R.id.checkBoxPrice2).isChecked = listBox2[position]!!
                findViewById<CheckBox>(R.id.checkBoxPrice2).setOnCheckedChangeListener { compoundButton, b ->
                    listBox2[position] = b
                }
                if (listBox3.containsKey(position))findViewById<CheckBox>(R.id.checkBoxPrice3).isChecked = listBox3[position]!!
                findViewById<CheckBox>(R.id.checkBoxPrice3).setOnCheckedChangeListener { compoundButton, b ->
                    listBox3[position] = b
                }

                if (listEditText.containsKey(position)) findViewById<EditText>(R.id.editTextQuantity).setText(listEditText[position])
                findViewById<EditText>(R.id.editTextQuantity).addTextChangedListener {
                    listEditText[position] = it.toString()
                }
            }
        }

    }
}