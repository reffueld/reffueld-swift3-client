//
// CouponUserListResponse.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


open class CouponUserListResponse: JSONEncodable {
    public var meta: MetaList?
    public var data: [CouponUserResponse]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["_meta"] = self.meta?.encodeToJSON()
        nillableDictionary["data"] = self.data?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}