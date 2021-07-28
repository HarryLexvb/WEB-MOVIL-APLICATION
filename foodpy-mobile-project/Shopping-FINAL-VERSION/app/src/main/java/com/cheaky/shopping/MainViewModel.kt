package com.cheaky.shopping

import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import com.cheaky.shopping.pojo.Shopping
import com.cheaky.shopping.pojo.User
import dagger.hilt.android.lifecycle.HiltViewModel
import javax.inject.Inject

@HiltViewModel
class MainViewModel @Inject constructor(): ViewModel() {

    private val _user = MutableLiveData<User>()
    val user: LiveData<User> get() = _user

    fun loadUser(user: User){
        _user.value = user
    }




    private val _shopping = MutableLiveData<Shopping>(null)
    val shopping: LiveData<Shopping>get() = _shopping

    fun loadShopping(sho:Shopping){
        _shopping.value = sho
    }

    fun finish(){
        _shopping.value = null
    }





    private val _search = MutableLiveData<String>()
    val search:LiveData<String>get() = _search
    private val _screenSearch = MutableLiveData<String>()
    val screenSearch:LiveData<String>get() = _screenSearch
    fun loadSearch(s:String?){
        _search.value = s
    }
}