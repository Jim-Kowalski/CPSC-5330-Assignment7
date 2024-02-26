//
//  CityState.swift
//  Assignment7
//
//  Created by James Kowalski on 2/23/24.
//

import Foundation
struct CityState {
    
    var City: String
    var State: String
    var Description: String
    init(_ city: String, _ state: String, _ description: String)
    {
        self.City = city
        self.State = state
        self.Description = description
    }
}
