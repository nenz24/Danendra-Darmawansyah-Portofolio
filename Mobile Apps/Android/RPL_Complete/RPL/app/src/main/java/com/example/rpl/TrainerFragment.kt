package com.example.rpl

import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import androidx.fragment.app.Fragment
import com.example.rpl.trainer.Pilihtrainer

class TrainerFragment : Fragment() {
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?,
    ): View? {
        // Inflate the layout for this fragment
        val view = inflater.inflate(R.layout.fragment_trainer, container, false)

        val btnpilih: Button = view.findViewById(R.id.mytrainer_button)
        btnpilih.setOnClickListener { MyTrainer()
        }

        return view
    }

    private fun MyTrainer() {
        val intent = Intent(activity, Pilihtrainer::class.java)
        startActivity(intent)
    }
}