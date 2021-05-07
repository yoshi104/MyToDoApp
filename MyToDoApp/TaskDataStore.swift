//
//  TaskDataStore.swift
//  MyToDoApp
//
//  Created by Yoshiyuki Kato on 2021/03/27.
//

import RealmSwift
import RxSwift

protocol TaskDataStoreProtocol {
    func load() -> Single<[Task]>
    func write(task: Task) -> Single<Void>
    //    func deleteTask()
}

final class TaskDataStoreImpl: TaskDataStoreProtocol {
    let realm = try? Realm()

    func load() -> Single<[Task]> {
        Single.create { [weak self] observer in
            guard let self = self else { return Disposables.create() }

            var taskArray: [Task] = []
            if let taskData = self.realm?.objects(Task.self) {
                for task in taskData {
                    taskArray.append(task)
                }
                observer(.success(taskArray))
            }
            return Disposables.create()
        }
    }

    func write(task: Task) -> Single<Void> {
        Single.create { [weak self] observer in
            try? self?.realm?.write {
                self?.realm?.add(task)
            }
            observer(.success(()))
            return Disposables.create()
        }
    }
}
