//
//  TaskRepository.swift
//  MyToDoApp
//
//  Created by Yoshiyuki Kato on 2021/04/10.
//

import RxSwift

protocol TaskRepository {
    var taskDataStore: TaskDataStoreProtocol! { get set }
    func loadTask() -> Single<Task>
}

final class TaskRepositoryImpl: TaskRepository {
    var taskDataStore: TaskDataStoreProtocol!
    
    func loadTask() -> Single<Task> {
        <#code#>
    }
}

