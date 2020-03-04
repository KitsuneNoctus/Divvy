//
//  JSONgathering.swift
//  Divvy
//
//  Created by Henry Calderon on 3/4/20.
//  Copyright © 2020 Jessica Trinh. All rights reserved.
//

import Foundation
// to import stuff here?

//let data = "oldOutput.json"
//let json = try? JSON(data: jsonData)

let fileName = "testoldOutput.json"

func readJSONFromFile(fileName: String) -> Any?
{
    var json: Any?
    if let path = Bundle.main.path(forResource: fileName, ofType: "json") {
        do {
            let fileUrl = URL(fileURLWithPath: path)
            // Getting data from JSON file using the file URL
            let data = try Data(contentsOf: fileUrl, options: .mappedIfSafe)
            json = try? JSONSerialization.jsonObject(with: data)
        } catch {
            // Handle error here
            print("There was an error")
        }
    }
    return json
}
