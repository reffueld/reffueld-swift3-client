//
// CouponUserUpdateRequest.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class CouponUserUpdateRequest: JSONEncodable {
    public var enabled: Bool?
    public var name: String?
    public var email: String?
    public var externalId: String?
    public var role: String?
    public var tags: [String]?
    public var balance: Int32?
    public var description: String?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["enabled"] = self.enabled
        nillableDictionary["name"] = self.name
        nillableDictionary["email"] = self.email
        nillableDictionary["external_id"] = self.externalId
        nillableDictionary["role"] = self.role
        nillableDictionary["tags"] = self.tags?.encodeToJSON()
        nillableDictionary["balance"] = self.balance?.encodeToJSON()
        nillableDictionary["description"] = self.description
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}