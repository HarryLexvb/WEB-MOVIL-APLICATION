package com.cheaky.shopping.data

import com.cheaky.shopping.pojo.Food
import com.cheaky.shopping.pojo.Ingredient
import com.cheaky.shopping.pojo.User
import retrofit2.http.*

interface ApiService {

    @GET("user.php")
    suspend fun getUser(
        @Query("email") email:String,
        @Query("password") password:String
    ): User

    @FormUrlEncoded
    @POST("user.php")
    suspend fun createUser(
        @Field("name") name:String,
        @Field("email") email:String,
        @Field("contactno") contactno:String,
        @Field("password") password:String,
    ): User

    @GET("product.php")
    suspend fun getProduct(@Query("id") id:String): List<Food>

    @GET("product.php")
    suspend fun getAllProducts(): List<Food>

    @GET("ingredient.php")
    suspend fun getIngredient(@Query("id") id:String): List<Ingredient>
}