//
//  Seating.swift
//  SPbUappModelsV1
//
//  Created by Sergej Jaskiewicz on 31/05/2018.
//


public enum Seating: String, Codable, CaseIterable {
    case theater
    case amphitheater
    case roundtable
}

#if swift(>=4.2)
#else
extension Seating {
    public static var allCases: [Seating] = [
        .theater,
        .amphitheater,
        .roundtable
    ]
}
#endif
