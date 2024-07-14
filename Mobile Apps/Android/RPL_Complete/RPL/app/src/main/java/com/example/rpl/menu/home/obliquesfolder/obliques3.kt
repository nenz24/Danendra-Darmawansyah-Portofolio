package com.example.rpl.menu.home.obliquesfolder

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import android.widget.ImageButton
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.R
import com.example.rpl.menu.home.Obliques

class obliques3 : AppCompatActivity() {

    lateinit var btnshow: Button
    lateinit var btnkembali: ImageButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_obliques3)

        btnshow = findViewById(R.id.btn_show)
        btnkembali = findViewById(R.id.obliques3_back)
        val obliques3fragment = obliques1fragment()

        btnshow.setOnClickListener {
            obliques3fragment.show(supportFragmentManager, "BottomSheetDialog")

        }

        btnkembali.setOnClickListener {
            startActivity(Intent(this, Obliques::class.java))
        }
    }
}