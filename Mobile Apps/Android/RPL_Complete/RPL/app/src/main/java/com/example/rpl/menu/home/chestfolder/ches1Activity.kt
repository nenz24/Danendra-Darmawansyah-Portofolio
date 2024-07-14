package com.example.rpl.menu.home.chestfolder

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import android.widget.ImageButton
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.R
import com.example.rpl.menu.home.bottomsheetfragment
import com.example.rpl.menu.home.chest

class ches1Activity : AppCompatActivity() {
    lateinit var btnshow: Button
    lateinit var btnkembali: ImageButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_ches1)

        btnshow = findViewById(R.id.btn_show)
        btnkembali = findViewById(R.id.back_buttonchest1)

        val bottomsheetfragment = bottomsheetfragment()

        btnshow.setOnClickListener {
            bottomsheetfragment.show(supportFragmentManager, "BottomSheetDialog")
        }

        btnkembali.setOnClickListener {
            startActivity(Intent(this, chest::class.java))
        }

    }

}