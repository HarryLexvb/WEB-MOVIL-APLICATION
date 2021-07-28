package com.cheaky.shopping.data

import com.cheaky.shopping.pojo.User
import kotlinx.coroutines.Dispatchers
import kotlinx.coroutines.withContext
import javax.inject.Inject
import javax.inject.Singleton

@Singleton
class Repository @Inject constructor(private val apiService:ApiService) {


    suspend fun getUser(email:String, password:String) = withContext(Dispatchers.IO){
        apiService.getUser(email, password)
    }

    suspend fun createUser(name:String, email:String, contactno:String, password:String):User{
        return withContext(Dispatchers.IO){
            apiService.createUser(name, email, contactno, password)
        }
    }

    suspend fun getFood(id:String) = withContext(Dispatchers.IO){
        apiService.getProduct(id)
    }

    suspend fun getAllFoods() = withContext(Dispatchers.IO){
        apiService.getAllProducts()
    }

    suspend fun getIngredient(id:String) = withContext(Dispatchers.IO){
        apiService.getIngredient(id)
    }
}