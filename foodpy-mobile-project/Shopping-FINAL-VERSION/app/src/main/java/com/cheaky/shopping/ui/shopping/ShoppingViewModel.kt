package com.cheaky.shopping.ui.shopping

import androidx.lifecycle.ViewModel
import com.cheaky.shopping.data.Repository
import dagger.hilt.android.lifecycle.HiltViewModel
import javax.inject.Inject

@HiltViewModel
class ShoppingViewModel @Inject constructor(private val repository:Repository): ViewModel() {



}