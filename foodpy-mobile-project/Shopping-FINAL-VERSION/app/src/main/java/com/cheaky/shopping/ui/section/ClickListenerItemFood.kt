package com.cheaky.shopping.ui.section

import com.cheaky.shopping.pojo.Food

class ClickListenerItemFood(val clickItem: (Food) -> Unit) {
    fun onClickItem(food:Food) = clickItem(food)
}