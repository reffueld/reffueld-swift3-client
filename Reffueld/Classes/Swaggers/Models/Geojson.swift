//
// Geojson.swift
//
// Generated by swagger-codegen
// https://github.com/swagger-api/swagger-codegen
//

import Foundation


/** A geo-fence where the code is valid within. The object schema is based on the GeoJSON specification [http://geojson.org/], currently only supports a single polygon. */
open class Geojson: JSONEncodable {
    public enum ModelType: String { 
        case polygon = "Polygon"
    }
    public var type: ModelType?
    public var coordinates: [[[Double]]]?

    public init() {}

    // MARK: JSONEncodable
    open func encodeToJSON() -> Any {
        var nillableDictionary = [String:Any?]()
        nillableDictionary["type"] = self.type?.rawValue
        nillableDictionary["coordinates"] = self.coordinates?.encodeToJSON()
        let dictionary: [String:Any] = APIHelper.rejectNil(nillableDictionary) ?? [:]
        return dictionary
    }
}
