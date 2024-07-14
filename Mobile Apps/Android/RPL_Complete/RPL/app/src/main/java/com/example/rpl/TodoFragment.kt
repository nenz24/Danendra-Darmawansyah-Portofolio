package com.example.rpl
// TodoListFragment.kt
import android.os.Bundle
import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import androidx.fragment.app.Fragment
import androidx.recyclerview.widget.LinearLayoutManager
import androidx.recyclerview.widget.RecyclerView
import com.google.android.material.dialog.MaterialAlertDialogBuilder
import com.google.android.material.floatingactionbutton.FloatingActionButton
import com.google.android.material.textfield.TextInputEditText

class TodoFragment : Fragment() {

    private lateinit var recyclerView: RecyclerView
    private lateinit var taskAdapter: TaskAdapter

    override fun onCreateView(
        inflater: LayoutInflater, container: ViewGroup?,
        savedInstanceState: Bundle?
    ): View? {
        val view = inflater.inflate(R.layout.fragment_todo, container, false)

        recyclerView = view.findViewById(R.id.recyclerViewTasks)
        recyclerView.layoutManager = LinearLayoutManager(requireContext())
        taskAdapter = TaskAdapter(getSampleTaskList())
        recyclerView.adapter = taskAdapter

        val btnAddTask: FloatingActionButton = view.findViewById(R.id.btnAddTask)
        btnAddTask.setOnClickListener {
            showAddTaskDialog()
        }

        return view
    }

    private fun showAddTaskDialog() {
        val dialogView = LayoutInflater.from(requireContext()).inflate(R.layout.dialog_add_task, null)
        val editTextTaskTitle: TextInputEditText = dialogView.findViewById(R.id.editTextTaskTitle)
        val editTextTaskDescription: TextInputEditText = dialogView.findViewById(R.id.editTextTaskDescription)

        MaterialAlertDialogBuilder(requireContext())
            .setTitle("Tambah Task Baru")
            .setView(dialogView)
            .setPositiveButton("Tambah") { _, _ ->
                val taskTitle = editTextTaskTitle.text.toString()
                val taskDescription = editTextTaskDescription.text.toString()

                if (taskTitle.isNotEmpty()) {
                    val newTask = Task(
                        id = taskAdapter.itemCount + 1,
                        title = taskTitle,
                        description = taskDescription,
                        isCompleted = false
                    )
                    taskAdapter.addTask(newTask)
                }
            }
            .setNegativeButton("Batal", null)
            .show()
    }

    private fun getSampleTaskList(): MutableList<Task> {
        return mutableListOf(
            Task(1, "Chest", "Hari Pengganti", false),
            Task(2, "Cardio", "Lari 5 km", false),
            Task(3, "Asupan Protein", "Dada Ayam 15g, Tempe 20g", true)
        )
    }
}
