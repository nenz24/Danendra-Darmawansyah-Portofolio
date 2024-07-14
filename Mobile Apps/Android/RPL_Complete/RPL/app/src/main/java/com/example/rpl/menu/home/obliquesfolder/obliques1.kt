package com.example.rpl.menu.home.obliquesfolder

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import android.widget.ImageButton
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.R
import com.example.rpl.menu.home.Obliques

class obliques1 : AppCompatActivity() {

    lateinit var btnshow: Button
    lateinit var btnkembali: ImageButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_obliques1)

        btnshow = findViewById(R.id.btn_show)
        btnkembali = findViewById(R.id.obliques1_back)
        val obliques1fragment = obliques1fragment()

        btnshow.setOnClickListener {
            obliques1fragment.show(supportFragmentManager, "BottomSheetDialog")

        }

        btnkembali.setOnClickListener {
            startActivity(Intent(this, Obliques::class.java))
        }
    }
}