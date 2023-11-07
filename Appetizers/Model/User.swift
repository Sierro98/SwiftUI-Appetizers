//
//  User.swift
//  Appetizers
//
//  Created by Alejandro Sierro Galán on 7/11/23.
//

import Foundation

struct User: Codable {
    var firstName = String()
    var lastName = String()
    var eMail = String()
    var birthDay = Date()
    var extraNapkins = Bool()
    var frequentRefills = Bool()
}
