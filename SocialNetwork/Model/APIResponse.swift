//
//  APIResponse.swift
//  SocialNetwork
//
//  Created by Алёночка on 26.02.2021.
//

import Foundation

struct APIResponse: Codable {
    var results: [UserProfile]
    var resultsGroup: [Group]
}


