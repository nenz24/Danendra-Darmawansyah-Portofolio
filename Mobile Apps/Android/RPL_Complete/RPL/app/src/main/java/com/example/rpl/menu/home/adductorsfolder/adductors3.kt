package com.example.rpl.menu.home.adductorsfolder

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import android.widget.ImageButton
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.R
import com.example.rpl.menu.home.adductors

class adductors3 :  AppCompatActivity() {

    lateinit var btnshow: Button
    lateinit var btnkembali: ImageButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_adductors3)

        btnshow = findViewById(R.id.btn_show)
        btnkembali = findViewById(R.id.adductors3_back)
        val adductors3fragment = adductors3fragment()

        btnshow.setOnClickListener {
            adductors3fragment.show(supportFragmentManager, "BottomSheetDialog")

        }

        btnkembali.setOnClickListener {
            startActivity(Intent(this, adductors::class.java))
        }
    }
}