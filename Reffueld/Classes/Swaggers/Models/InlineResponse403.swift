//
// InlineResponse403.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class InlineResponse403: JSONEncodable {
    public enum Code: String { 
        case quota = "OUT_OF_QUOTA"
    }
    public var message: String?
    public var code: Code?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["message"] = self.message
        nillableDictionary["code"] = self.code?.rawValue
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
