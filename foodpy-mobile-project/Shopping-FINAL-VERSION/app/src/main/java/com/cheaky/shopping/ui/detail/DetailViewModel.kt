package com.cheaky.shopping.ui.detail

import android.util.Log
import androidx.lifecycle.*
import com.cheaky.shopping.data.Repository
import com.cheaky.shopping.pojo.Ingredient
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class DetailViewModel @Inject constructor(private val savedStateHandle: SavedStateHandle, private val repository:Repository): ViewModel() {

    val name:String? = savedStateHandle["name"]
    val shipping:String? = savedStateHandle["shipping"]
    val price:String? = savedStateHandle["price"]
    val image:String? = savedStateHandle["image"]

    private val _listIngredient = MutableLiveData<List<Ingredient>>()
    val listIngredient: LiveData<List<Ingredient>>get() = _listIngredient

    init {
        viewModelScope.launch {
            try {
                _listIngredient.value = repository.getIngredient(savedStateHandle["id"]!!)
            }catch (ex:Exception){
                Log.i("Harry", "hay un error $ex")
            }
        }
    }



}