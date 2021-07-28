package com.cheaky.shopping.ui.login

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
class LoginViewModel @Inject constructor(private val repository:Repository): ViewModel() {

    private val _user = MutableLiveData<User>()
    val user:LiveData<User>get() = _user

    fun loginUser(email:String, password:String){
        viewModelScope.launch {
            try {
                _user.postValue(repository.getUser(email, password))
            }catch (ex:Exception){

            }
        }
    }

}