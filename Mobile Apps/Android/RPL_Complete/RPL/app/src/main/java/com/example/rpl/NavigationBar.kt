package com.example.rpl

import android.os.Bundle
import androidx.appcompat.app.AppCompatActivity
import androidx.fragment.app.Fragment
import com.google.android.material.bottomnavigation.BottomNavigationView

class NavigationBar : AppCompatActivity() {
    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_navigation_bar)

        val bottomNavigationView = findViewById<BottomNavigationView>(R.id.bottomNavigation)
        bottomNavigationView.setOnItemSelectedListener {
            when(it.itemId){
                R.id.nav_trainer -> {
                    replaceFragment(TrainerFragment())
                }
                R.id.nav_schedule -> {
                    replaceFragment(ScheduleFragment())
                }
                R.id.nav_home -> {
                    replaceFragment(HomeFragment())
                }
                R.id.nav_todo -> {
                    replaceFragment(TodoFragment())
                }
                R.id.nav_setting -> {
                    replaceFragment(SettingFragment())
                }
            }
            true
        }

        // default bottom tab selected
        replaceFragment(HomeFragment())
        title = ""
        bottomNavigationView.selectedItemId = R.id.nav_home

    }
    private fun replaceFragment(fragment: Fragment){
        supportFragmentManager
            .beginTransaction()
            .replace(R.id.fragmentcontainer,fragment)
            .commit()
    }

}