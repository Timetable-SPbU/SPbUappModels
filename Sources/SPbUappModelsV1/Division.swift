//
//  Division.swift
//  SPbUappModels
//
//  Created by Sergej Jaskiewicz on 17/04/2018.
//

public struct Division: Codable {

    public var id: DivisionID

    public var divisionName: String

    public var fieldOfStudy: String

    public init(id: DivisionID, divisionName: String, fieldOfStudy: String) {
        self.id = id
        self.divisionName = divisionName
        self.fieldOfStudy = fieldOfStudy
    }
}
