package com.example.rpl.menu.home.absfolder

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import android.widget.ImageButton
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.R
import com.example.rpl.menu.home.abs

class abs1 : AppCompatActivity() {

    lateinit var btnshow: Button
    lateinit var btnkembali: ImageButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_abs1)

        btnshow = findViewById(R.id.btn_show)
        btnkembali = findViewById(R.id.abs1_back)
        val abs1fragment = abs1fragment()

        btnshow.setOnClickListener {
            abs1fragment.show(supportFragmentManager, "BottomSheetDialog")

        }
        btnkembali.setOnClickListener {
            startActivity(Intent(this, abs::class.java))
        }
    }
}