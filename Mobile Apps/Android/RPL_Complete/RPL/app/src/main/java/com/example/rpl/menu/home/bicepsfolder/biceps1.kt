package com.example.rpl.menu.home.bicepsfolder

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import android.widget.ImageButton
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.R
import com.example.rpl.menu.home.biceps

class biceps1 : AppCompatActivity() {

    lateinit var btnshow: Button
    lateinit var btnkembali: ImageButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_biceps1)

        btnshow = findViewById(R.id.btn_show)
        btnkembali = findViewById(R.id.bicep1_back)
        val biceps1fragment = biceps1fragment()

        btnshow.setOnClickListener {
            biceps1fragment.show(supportFragmentManager, "BottomSheetDialog")

        }

        btnkembali.setOnClickListener {
            startActivity(Intent(this, biceps::class.java))
        }
    }
}