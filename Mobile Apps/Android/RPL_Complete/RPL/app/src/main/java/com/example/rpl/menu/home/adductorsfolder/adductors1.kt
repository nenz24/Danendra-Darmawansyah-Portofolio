package com.example.rpl.menu.home.adductorsfolder

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import android.widget.ImageButton
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.R
import com.example.rpl.menu.home.adductors
import com.example.rpl.menu.home.shoulderfolder.shoulder1fragment
import com.example.rpl.menu.home.shoulders

class adductors1 : AppCompatActivity() {
    lateinit var btnshow: Button
    lateinit var btnkembali: ImageButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_adductors1)

        btnshow = findViewById(R.id.btn_show)
        btnkembali = findViewById(R.id.adductors1_back)
        val adductors1fragment = adductors1fragment()

        btnshow.setOnClickListener {
            adductors1fragment.show(supportFragmentManager, "BottomSheetDialog")

        }

        btnkembali.setOnClickListener {
            startActivity(Intent(this, adductors::class.java))
        }
    }
}