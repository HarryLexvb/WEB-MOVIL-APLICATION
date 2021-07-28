package com.cheaky.shopping

import androidx.appcompat.app.AppCompatActivity
import android.os.Bundle
import android.util.Log
import android.view.LayoutInflater
import android.view.View
import android.widget.Button
import android.widget.ImageView
import android.widget.TextView
import android.widget.Toast
import androidx.activity.viewModels
import androidx.appcompat.widget.SearchView
import androidx.appcompat.widget.Toolbar
import androidx.drawerlayout.widget.DrawerLayout
import androidx.navigation.fragment.NavHostFragment
import androidx.navigation.ui.*
import coil.load
import coil.transform.CircleCropTransformation
import com.google.android.material.navigation.NavigationView
import dagger.hilt.android.AndroidEntryPoint

@AndroidEntryPoint
class MainActivity : AppCompatActivity() {
    private val navController by lazy { (supportFragmentManager.findFragmentById(R.id.fragmentContainerView) as NavHostFragment).navController }
    private val appBarConfiguration by lazy { AppBarConfiguration(setOf(R.id.homeFragment, R.id.costaFragment, R.id.sierraFragment, R.id.selvaFragment), findViewById(R.id.drawerLayout)) }

    override fun onCreate(savedInstanceState: Bundle?) {
        setTheme(R.style.Theme_Shopping)
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_main)
        setSupportActionBar(findViewById(R.id.toolbar))
        val viewModel by viewModels<MainViewModel>()

        //Declaramos e inicializamos los widgets
        val navigationView = findViewById<NavigationView>(R.id.navigationView)

        viewModel.user.observe(this){
            //Agregamos el header al drawer
            val inflater = LayoutInflater.from(this).inflate(R.layout.header_drawer, null)
            inflater.findViewById<ImageView>(R.id.imageView).load(R.drawable.avatar){
                transformations(CircleCropTransformation())
            }
            inflater.findViewById<TextView>(R.id.textViewName).text = it.name
            inflater.findViewById<TextView>(R.id.textViewEmail).text = it.email
            navigationView.addHeaderView(inflater)
        }


        //Uniendo el toolbar con drawer
        setupActionBarWithNavController(navController, appBarConfiguration)

        //Configurando el navigation drawer
        navigationView.setupWithNavController(navController)
        navController.addOnDestinationChangedListener { controller, destination, arguments ->
            if (destination.id == R.id.loginFragment || destination.id == R.id.registerFragment){
                findViewById<Toolbar>(R.id.toolbar).visibility = View.GONE
            }else{
                findViewById<Toolbar>(R.id.toolbar).visibility = View.VISIBLE
            }
        }
//        navigationView.setNavigationItemSelectedListener {
//            if (it.itemId == R.id.loginFragment || it.itemId == R.id.registerFragment){
//                findViewById<Toolbar>(R.id.toolbar).visibility = View.GONE
//            }else{
//                findViewById<Toolbar>(R.id.toolbar).visibility = View.VISIBLE
//            }
//
//            NavigationUI.onNavDestinationSelected(it, navController)
//        }

        //Click cart toolbar
        findViewById<ImageView>(R.id.imageViewShoppingCart).setOnClickListener {
            if (findViewById<TextView>(R.id.textViewPrice).text.toString() != "0"){
                navController.navigate(R.id.shoppingFragment)
            }else{
                Toast.makeText(this, "No tienes nada en el carrito", Toast.LENGTH_SHORT).show()
            }

        }

        //Observamos el precio del carrito
        viewModel.shopping.observe(this){
            findViewById<TextView>(R.id.textViewPrice).text = "0"
            it?.let {
                val priceTotal = it.priceIngredients.toFloat() + it.priceShipping.toFloat() + it.quantity.toFloat() * it.priceUnit.toFloat()
                findViewById<TextView>(R.id.textViewPrice).text =  priceTotal.toString()
            }

        }


        //el buscador
        findViewById<SearchView>(R.id.searView).setOnQueryTextListener(object : SearchView.OnQueryTextListener{
            override fun onQueryTextSubmit(query: String?): Boolean {
                //Log.i("eder", "search1: $query")
                return false
            }

            override fun onQueryTextChange(newText: String?): Boolean {

                Log.i("Harry", "search2: $newText")
                viewModel.loadSearch(newText)
                return false
            }

        })


        //Click cerrar sesión
        findViewById<Button>(R.id.buttonLogout).setOnClickListener {
            findViewById<DrawerLayout>(R.id.drawerLayout).close()
            navController.navigate(R.id.action_global_loginFragment)
        }
    }

    override fun onSupportNavigateUp() = navController.navigateUp(appBarConfiguration)

//    override fun onCreateOptionsMenu(menu: Menu?): Boolean {
//        menuInflater.inflate(R.menu.menu_toolbar, menu)
//        return true
//    }
//
//    override fun onOptionsItemSelected(item: MenuItem) = when (item.itemId){
//        R.id.action_shopping -> {
//
//            navController.navigate(R.id.shoppingFragment)
//
//            true
//        }
//        else -> super.onOptionsItemSelected(item)
//    }
}