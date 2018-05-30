//
//  Identifiers.swift
//  SPbUappModels
//
//  Created by Sergej Jaskiewicz on 17/04/2018.
//

import Foundation

public protocol SPbUIdentifier: RawRepresentable,
                                Hashable,
                                CustomStringConvertible,
                                CustomDebugStringConvertible,
                                Codable {}

extension SPbUIdentifier where RawValue: Codable {

    public var description: String {
        return String(describing: rawValue)
    }

    public var debugDescription: String {
        return description
    }

    public init(from decoder: Decoder) throws {

        let container = try decoder.singleValueContainer()

        let rawValue = try container.decode(RawValue.self)

        if let identifier = Self(rawValue: rawValue) {
            self = identifier
        } else {

            let debugDescription = """
            Unexpected raw value \(rawValue) for \(Self.self)
            """

            throw DecodingError
                .dataCorruptedError(in: container,
                                    debugDescription: debugDescription)
        }
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.singleValueContainer()
        try container.encode(rawValue)
    }
}

public struct DivisionID: SPbUIdentifier {

    public var rawValue: Int

    public init(rawValue: Int) {
        self.rawValue = rawValue
    }
}

public struct StudyForm: SPbUIdentifier {

    public var rawValue: String

    public init(rawValue: String) {
        self.rawValue = rawValue
    }

    static let fullTime = StudyForm(rawValue: "очная")

    static let partTime = StudyForm(rawValue: "очно-заочная")

    static let distance = StudyForm(rawValue: "заочная")

    static let individual =
        StudyForm(rawValue: "по индивидуальным формам обучения")

    static let withJobInterruption =
        StudyForm(rawValue: "с отрывом от работы")

    static let withoutJobInterruption =
        StudyForm(rawValue: "без отрыва от работы")

    static let partialJobInterruption =
        StudyForm(rawValue: "с частичным отрывом от работы")
}
