package com.example.rpl.menu.home.bicepsfolder

import android.content.Intent
import android.os.Bundle
import android.widget.Button
import android.widget.ImageButton
import androidx.appcompat.app.AppCompatActivity
import com.example.rpl.R
import com.example.rpl.menu.home.biceps
import com.example.rpl.menu.home.shoulderfolder.shoulder1fragment
import com.example.rpl.menu.home.shoulders

class biceps3 : AppCompatActivity() {

    lateinit var btnshow: Button
    lateinit var btnkembali: ImageButton

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)
        setContentView(R.layout.activity_biceps3)

        btnshow = findViewById(R.id.btn_show)
        btnkembali = findViewById(R.id.bicep3_back)
        val biceps3fragment = biceps3fragment()

        btnshow.setOnClickListener {
            biceps3fragment.show(supportFragmentManager, "BottomSheetDialog")

        }

        btnkembali.setOnClickListener {
            startActivity(Intent(this, biceps::class.java))
        }
    }
}