//
//  todo.swift
//  todolist
//
//  Created by Angga Kusuma on 03/07/23.
//

import Foundation
import SwiftUI
// Struktur Node untuk menyimpan tugas
class TodoNode: Identifiable {
    var id = UUID()
    var task: String
    @Published var isCompleted: Bool = false
    var next: TodoNode? // Pointer ke node selanjutnya dalam linked list

    init(task: String) {
        self.task = task
    }
}

// Linked List untuk menyimpan daftar tugas
class TodoList: ObservableObject {
    @Published var head: TodoNode?

    // Menambahkan tugas baru ke linked list
    func addTask(_ task: String) {
        let newNode = TodoNode(task: task)
        if let lastNode = getLastNode() {
            lastNode.next = newNode
        } else {
            head = newNode
        }
    }

    // Menghapus tugas dari linked list berdasarkan ID
    func deleteTask(id: UUID) {
          guard let current = head else { return }

          if current.id == id {
              if current.isCompleted {
                  head = current.next
              } else {
                  // Tambahkan pesan kesalahan atau konfirmasi jika diperlukan
                  print("Tugas belum selesai. Tandai sebagai selesai sebelum menghapus.")
              }
              return
          }

          var prev: TodoNode? = current
          var next: TodoNode? = current.next

          while next != nil {
              if next!.id == id {
                  if next!.isCompleted {
                      prev?.next = next?.next
                  } else {
                      // Tambahkan pesan kesalahan atau konfirmasi jika diperlukan
                      print("Tugas belum selesai. Tandai sebagai selesai sebelum menghapus.")
                  }
                  return
              }

              prev = next
              next = next?.next
          }
      }

    // Mendapatkan node terakhir dalam linked list
    private func getLastNode() -> TodoNode? {
        var current = head
        while current?.next != nil {
            current = current?.next
        }
        return current
    }
}
extension TodoNode {
    // Mengembalikan semua node dalam linked list sebagai array
    func allNodes() -> [TodoNode] {
        var nodes = [TodoNode]()
        var current: TodoNode? = self
        while current != nil {
            nodes.append(current!)
            current = current?.next
        }
        return nodes
    }
}
