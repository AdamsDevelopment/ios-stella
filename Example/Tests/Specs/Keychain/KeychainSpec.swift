//
//  KeychainSpec.swift
//  Stella
//
//  Created by Jelle Vandebeeck on 05/10/2016.
//  Copyright © 2016 CocoaPods. All rights reserved.
//

import Quick
import Nimble
import Stella

// Define the keys used for this test.
extension Keys {
    static let stringValue = Key<String?>("stringValue")
}

class KeychainSpec: QuickSpec {
    override func spec() {
        
        describe("keychain") {
            context("string value") {
                it("should be able to write to the keychain") {
                    Keychain[.stringValue] = "A string value"
                    
                    let stringValue = UserDefaults.standard.string(forKey: "stringValue")
                    expect(stringValue).to(equal("A string value"))
                }
                
                it("should be able to read to the keychain") {
//                    UserDefaults.standard.set("Some string value", forKey: "stringValue")
                    expect(Keychain[.stringValue]).to(equal("Some string value"))
                }
            }
        }
        
    }
}
