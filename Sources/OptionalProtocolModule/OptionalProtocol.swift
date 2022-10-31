//
//  OptionalProtocol.swift
//  
//
//  Created by Jeremy Bannister on 9/6/22.
//

///
public protocol OptionalProtocol {
    
    ///
    associatedtype Wrapped
    
    ///
    var wrappedValue: Wrapped? { get }
}

///
public extension OptionalProtocol {
    
    ///
    var asOptional: Optional<Wrapped> {
        self.wrappedValue
    }
}

///
extension Optional: OptionalProtocol {
    
    ///
    public var wrappedValue: Wrapped? { self }
}
