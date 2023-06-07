//
////  Class.swift
////  SchoolCalander
////
////  Created by Sebastian Frosch on 05.06.23.
//
//
import Blackbird
import Foundation

struct Class: BlackbirdModel{
    @BlackbirdColumn var id: Int
    @BlackbirdColumn var name: String
    @BlackbirdColumn var date: Int
    @BlackbirdColumn var description: String


}


