package com.cheaky.shopping.ui.register

import android.util.Log
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.viewModelScope
import com.cheaky.shopping.data.Repository
import com.cheaky.shopping.pojo.User
import dagger.hilt.android.lifecycle.HiltViewModel
import kotlinx.coroutines.launch
import javax.inject.Inject

@HiltViewModel
class RegisterViewModel @Inject constructor(private val repository:Repository): ViewModel() {

    private val _user = MutableLiveData<User>()
    val user: LiveData<User>
        get() = _user

    fun createUser(name:String, email:String, contactno:String, password:String){
        viewModelScope.launch {
            //_user.postValue(repository.createUser(name, email, contactno, password))
            try {
                _user.postValue(repository.createUser(name, email, contactno, password))
            }catch (ex:Exception){
                Log.i("shopping", ex.toString())
            }
        }

    }


}