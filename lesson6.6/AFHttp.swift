//
//  AFHttp.swift
//  lesson6.6
//
//  Created by Javlonbek on 02/02/22.
//


import Foundation
import Alamofire

private let IS_TESTER = true
private let DEP_SER = "https://jsonplaceholder.typicode.com/"
private let DEV_SER = "https://jsonplaceholder.typicode.com/"

let headers: HTTPHeaders = [
    "Accept": "application/json",
]

class AFHttp {
    
    // MARK : - AFHttp Requests
    
    class func get(url:String,params: Parameters,handler: @escaping (AFDataResponse<Any>) -> Void){
        AF.request(server(url: url), method: .get, parameters: params,headers: headers).validate().responseJSON(completionHandler: handler)
    }
    
    class func post(url:String,params: Parameters,handler: @escaping (AFDataResponse<Any>) -> Void){
        AF.request(server(url: url), method: .post, parameters: params,headers: headers).validate().responseJSON(completionHandler: handler)
    }
    
    class func put(url:String,params: Parameters,handler: @escaping (AFDataResponse<Any>) -> Void){
        AF.request(server(url: url), method: .put, parameters: params,headers: headers).validate().responseJSON(completionHandler: handler)
    }
    
    class func del(url:String,params: Parameters,handler: @escaping (AFDataResponse<Any>) -> Void){
        AF.request(server(url: url), method: .delete, parameters: params,headers: headers).validate().responseJSON(completionHandler: handler)
    }
    
    // MARK : - AFHttp Methods
    class func server(url: String) -> URL{
        if(IS_TESTER){
            return URL(string: DEV_SER + url)!
        }
        return URL(string: DEP_SER + url)!
    }
    
    // MARK : - AFHttp Apis
    static let API_POST_LIST = "posts"
    static let API_POST_SINGLE = "employee/1" //id
    static let API_POST_CREATE = "create"
    static let API_POST_UPDATE = "update/21" //id
    static let API_POST_DELETE = "delete/2" //id
    
    
    // MARK : - AFHttp Params
    class func paramsEmpty() -> Parameters {
        let parameters: Parameters = [
            :]
        return parameters
    }
    
//    class func paramsPostCreate(post: Post) -> Parameters {
//        let parameters: Parameters = [
//            "id": post.id!,
//            "employee_name": post.employee_name!,
//            "employee_salary": post.employee_salary!,
//            "employee_age": post.employee_age!,
//        ]
//        return parameters
//    }
//    
//    class func paramsPostUpdate(post: Post) -> Parameters {
//        let parameters: Parameters = [
//            "id": post.id!,
//            "employee_name": post.employee_name!,
//            "employee_salary": post.employee_salary!,
//            "employee_age": post.employee_age!,
//        ]
//        return parameters
//    }
    
}
