//
//  DivisionType.swift
//  SPbUappModelsV1
//
//  Created by Sergej Jaskiewicz on 21/04/2018.
//

#if swift(>=4.2)
#else
public protocol CaseIterable {
    static var allCases: [Self] { get }
}
#endif

public enum DivisionType: String, Codable, CaseIterable {
    case highSchool
    case colledge
    case higherSchool
    case faculty
    case institute
}

#if swift(>=4.2)
#else
extension DivisionType {
    public static var allCases: [DivisionType] = [
        .highSchool,
        .colledge,
        .higherSchool,
        .faculty,
        .institute
    ]
}
#endif