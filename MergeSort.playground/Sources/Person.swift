import Foundation

public struct Person {
    public let age: Int
    public let name: String
    
    public init(age: Int, name: String) {
        self.age = age
        self.name = name
    }
}

extension Person: Comparable {
    public static func < (lhs: Person, rhs: Person) -> Bool {
        return lhs.age < rhs.age
    }
    
    public static func == (lhs: Person, rhs: Person) -> Bool {
        return lhs.age == rhs.age
    }
}
