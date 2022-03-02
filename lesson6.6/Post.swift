//
//  Post.swift
//  lesson6.6
//
//  Created by Javlonbek on 02/02/22.
//

import Foundation
import Alamofire

struct Post: Decodable {
    var userId: Int?
    var id: Int?
    var title: String?
    var body: String?
    
    
//    init(employee_name: String, employee_salary: Int, employee_age: Int) {
//        self.id = 1
//        self.employee_name = employee_name
//        self.employee_salary = employee_salary
//        self.employee_age = employee_age
//    }
//
//    init(id: Int, employee_name: String, employee_salary: Int, employee_age: Int) {
//        self.id = id
//        self.employee_name = employee_name
//        self.employee_salary = employee_salary
//        self.employee_age = employee_age
//    }
}

