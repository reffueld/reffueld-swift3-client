//
// CouponResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class CouponResponse: JSONEncodable {
    /** unique */
    public var id: String?
    public var created: Date?
    public var cancelled: Date?
    public var code: String?
    public var value: Int32?
    public var description: String?
    public var type: CouponTypeResponse?
    public var fromUser: CouponUserResponse?
    public var toUser: CouponUserResponse?
    public var claimedCount: Int32?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["id"] = self.id
        nillableDictionary["created"] = self.created?.encodeToJSON()
        nillableDictionary["cancelled"] = self.cancelled?.encodeToJSON()
        nillableDictionary["code"] = self.code
        nillableDictionary["value"] = self.value?.encodeToJSON()
        nillableDictionary["description"] = self.description
        nillableDictionary["type"] = self.type?.encodeToJSON()
        nillableDictionary["from_user"] = self.fromUser?.encodeToJSON()
        nillableDictionary["to_user"] = self.toUser?.encodeToJSON()
        nillableDictionary["claimed_count"] = self.claimedCount?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}