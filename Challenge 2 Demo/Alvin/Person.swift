//
//  JSONtest.swift
//  Challenge 2 Demo
//
//  Created by Alvin Phyo Htet on 15/8/26.
//

import Foundation

struct Person : Identifiable, Codable {
    let id: Int
    let first: String
    let last: String
}


func decode(_ file: String) -> [Person] {
        guard let url = Bundle.main.url(forResource: file, withExtension: nil) else {
            fatalError("Faliled to locate \(file) in bundle")
        }
        
        guard let data = try? Data(contentsOf: url) else {
            fatalError("Failed to load file from \(file) from bundle")
        }
        
        let decoder = JSONDecoder()
        
        guard let loadedFile = try? decoder.decode([Person].self, from: data) else {
            fatalError("Failed to decode \(file) from bundle")
        }
        
        return loadedFile
    }

