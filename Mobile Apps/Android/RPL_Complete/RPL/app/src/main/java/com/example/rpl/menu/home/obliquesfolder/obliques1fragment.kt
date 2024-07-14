package com.example.rpl.menu.home.obliquesfolder

import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import com.example.rpl.R
import com.google.android.material.bottomsheet.BottomSheetDialogFragment

class obliques1fragment : BottomSheetDialogFragment(){

    override fun onCreateView(
        inflater: LayoutInflater,
        container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        return inflater.inflate(R.layout.activity_obliques1fragment,container,false)
    }

}