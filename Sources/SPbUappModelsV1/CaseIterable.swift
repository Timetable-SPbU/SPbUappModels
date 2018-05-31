//
//  CaseIterable.swift
//  SPbUappModelsV1
//
//  Created by Sergej Jaskiewicz on 31/05/2018.
//

#if swift(>=4.2)
#else
public protocol CaseIterable {
    static var allCases: [Self] { get }
}
#endif
