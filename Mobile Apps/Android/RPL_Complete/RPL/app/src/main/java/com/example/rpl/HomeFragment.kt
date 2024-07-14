package com.example.rpl

import android.content.Intent
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.Button
import androidx.fragment.app.Fragment
import com.example.rpl.menu.home.Obliques
import com.example.rpl.menu.home.Quads
import com.example.rpl.menu.home.abs
import com.example.rpl.menu.home.adductors
import com.example.rpl.menu.home.biceps
import com.example.rpl.menu.home.chest
import com.example.rpl.menu.home.forearms
import com.example.rpl.menu.home.shoulders

class HomeFragment : Fragment() {
    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?,
    ): View? {
        // Inflate the layout for this fragment
        val view = inflater.inflate(R.layout.fragment_home, container, false)

        val button_shoulder: Button = view.findViewById(R.id.button_shoulder)
        button_shoulder.setOnClickListener {
            // Panggil metode untuk berpindah ke activity saat tombol diklik
            moveToShoulder()
        }
        val button_shouldertitik: Button = view.findViewById(R.id.button_shoulder_titik)
        button_shouldertitik.setOnClickListener {
            // Panggil metode untuk berpindah ke activity saat tombol diklik
            moveToShoulder()
        }

        val button_chest: Button = view.findViewById(R.id.button_chest)
        button_chest.setOnClickListener {
            // Panggil metode untuk berpindah ke activity saat tombol diklik
            moveToChest()
        }
        val button_chesttitik: Button = view.findViewById(R.id.button_chest_titik)
        button_chesttitik.setOnClickListener {
            // Panggil metode untuk berpindah ke activity saat tombol diklik
            moveToChest()
        }
        val button_Forearms: Button = view.findViewById(R.id.button_forearm)
        button_Forearms.setOnClickListener {
            // Panggil metode untuk berpindah ke activity saat tombol diklik
            moveToForearm()
        }
        val button_Obs: Button = view.findViewById(R.id.button_obliques)
        button_Obs.setOnClickListener {
            // Panggil metode untuk berpindah ke activity saat tombol diklik
            moveToObliques()
        }
        val button_Obstitik: Button = view.findViewById(R.id.button_obliques_titik)
        button_Obstitik.setOnClickListener {
            // Panggil metode untuk berpindah ke activity saat tombol diklik
            moveToObliques()
        }
        val button_quads: Button = view.findViewById(R.id.button_quads)
        button_quads.setOnClickListener {
            // Panggil metode untuk berpindah ke activity saat tombol diklik
            moveToQuads()
        }
        val button_quadstitik: Button = view.findViewById(R.id.button_quads_titik)
        button_quadstitik.setOnClickListener {
            // Panggil metode untuk berpindah ke activity saat tombol diklik
            moveToQuads()
        }
        val button_biceps: Button = view.findViewById(R.id.button_biceps)
        button_biceps.setOnClickListener {
            // Panggil metode untuk berpindah ke activity saat tombol diklik
            moveToBiceps()
        }
        val button_bicepstitik: Button = view.findViewById(R.id.button_biceps_titik)
        button_bicepstitik.setOnClickListener {
            // Panggil metode untuk berpindah ke activity saat tombol diklik
            moveToBiceps()
        }
        val button_abs: Button = view.findViewById(R.id.button_abs)
        button_abs.setOnClickListener {
            // Panggil metode untuk berpindah ke activity saat tombol diklik
            moveToAbs()
        }
        val button_abstitik: Button = view.findViewById(R.id.button_abs_titik)
        button_abstitik.setOnClickListener {
            // Panggil metode untuk berpindah ke activity saat tombol diklik
            moveToAbs()
        }
        val button_add: Button = view.findViewById(R.id.button_adductors)
        button_add.setOnClickListener {
            // Panggil metode untuk berpindah ke activity saat tombol diklik
            moveToAdductors()
        }
        val button_addtitik: Button = view.findViewById(R.id.button_adductors_titik)
        button_addtitik.setOnClickListener {
            // Panggil metode untuk berpindah ke activity saat tombol diklik
            moveToAdductors()
        }
        return view
    }

    private fun moveToShoulder() {
        // Buat Intent untuk berpindah ke activity baru
        val intent = Intent(activity, shoulders::class.java)

        // Jalankan Intent untuk memulai activity baru
        startActivity(intent)
    }
    private fun moveToChest() {
        // Buat Intent untuk berpindah ke activity baru
        val intent = Intent(activity, chest::class.java)

        // Jalankan Intent untuk memulai activity baru
        startActivity(intent)
    }
    private fun moveToForearm() {
        // Buat Intent untuk berpindah ke activity baru
        val intent = Intent(activity, forearms::class.java)

        // Jalankan Intent untuk memulai activity baru
        startActivity(intent)
    }
    private fun moveToObliques() {
        // Buat Intent untuk berpindah ke activity baru
        val intent = Intent(activity, Obliques::class.java)

        // Jalankan Intent untuk memulai activity baru
        startActivity(intent)
    }
    private fun moveToQuads() {
        // Buat Intent untuk berpindah ke activity baru
        val intent = Intent(activity, Quads::class.java)

        // Jalankan Intent untuk memulai activity baru
        startActivity(intent)
    }
    private fun moveToBiceps() {
        // Buat Intent untuk berpindah ke activity baru
        val intent = Intent(activity, biceps::class.java)

        // Jalankan Intent untuk memulai activity baru
        startActivity(intent)
    }
    private fun moveToAbs() {
        // Buat Intent untuk berpindah ke activity baru
        val intent = Intent(activity, abs::class.java)

        // Jalankan Intent untuk memulai activity baru
        startActivity(intent)
    }
    private fun moveToAdductors() {
        // Buat Intent untuk berpindah ke activity baru
        val intent = Intent(activity, adductors::class.java)

        // Jalankan Intent untuk memulai activity baru
        startActivity(intent)
    }
}