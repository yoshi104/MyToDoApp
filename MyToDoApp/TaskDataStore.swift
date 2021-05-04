//
//  TaskDataStore.swift
//  MyToDoApp
//
//  Created by Yoshiyuki Kato on 2021/03/27.
//

import RealmSwift
import RxSwift

protocol TaskDataStoreProtocol {
    func loadTask() -> [Task]
    func writeTask(object: [Task])
//    func deleteTask()
}

final class TaskDataStoreImpl: TaskDataStoreProtocol {
    let task = Task()
    let realm = try? Realm()
    
    func loadTask() -> [Task] {
        var taskArray: [Task] = []
        if let taskData = realm?.objects(Task.self) {
            for task in taskData {
                taskArray.append(task)
            }
        }
    }
    
    func writeTask(object: [Task]) {
        try? realm?.write {
            realm?.add(task)
        }
    }
    
}

