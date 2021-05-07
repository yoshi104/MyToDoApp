//
//  TaskRepository.swift
//  MyToDoApp
//
//  Created by Yoshiyuki Kato on 2021/04/10.
//

import RxSwift

protocol TaskRepositoryProtocol {
    func load() -> Single<[Task]>
    func write(task: Task) -> Single<Void>
}

final class TaskRepositoryImpl: TaskRepositoryProtocol {
    let taskDataStore: TaskDataStoreProtocol

    init(dataStore: TaskDataStoreProtocol) {
        taskDataStore = dataStore
    }

    func load() -> Single<[Task]> {
        taskDataStore.load()
    }

    func write(task: Task) -> Single<Void> {
        taskDataStore.write(task: task)
    }
}
