package com.cheaky.shopping.ui.section

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.cheaky.shopping.data.Repository
import com.cheaky.shopping.pojo.Food
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class SectionViewModel @Inject constructor(private val repository:Repository): ViewModel() {

    private var originalListProduct:List<Food>? = null

    private val _listProduct = MutableLiveData<List<Food>>()
    val listProduct: LiveData<List<Food>>get() = _listProduct

    fun getProduct(id:String){
        viewModelScope.launch {
            if (id != "0"){
                originalListProduct = repository.getFood(id)
                _listProduct.postValue(originalListProduct)
            }else{
                originalListProduct = repository.getAllFoods()
                _listProduct.postValue(originalListProduct)
            }
        }

    }


    fun search(search:String?){
        //val newList = mutableListOf<Food>()

        val new = originalListProduct?.filter {
            it.productName.lowercase().contains(search!!.lowercase())
        }
        _listProduct.value = new
    }


}