import XCPlayground


/**
 *  WARNING:
 *  This is a NOT STABLE merge sort version, it is used for research purposes
 *  Why is not stable?
 *  Comparable conforms to equatable which means:
 *      Equality implies substitutability.
 *      When x == y, x and y are interchangeable which not always is true.
 *
 *  A more stable sort version, should make the sort in place and must not rely on Comparable.
 */

extension Array where Element: Comparable {
    
    func mergeSort() -> [Element] {
        
        guard self.count > 1 else {
            return self
        }
        
        let middle = count / 2
        
        let lhs = Array(self[0..<middle])
        let rhs = Array(self[middle..<count])
        
        return mergeSortCombine(lhs.mergeSort(), rhs.mergeSort())
    }
    
    private func mergeSortCombine(_ lhs: [Element], _ rhs: [Element]) -> [Element] {
        var lhsIndex = 0
        var rhsIndex = 0
        
        var orderedResult: [Element] = []
        
        while lhsIndex < lhs.count && rhsIndex < rhs.count {
            let lhsValueAtIndex = lhs[lhsIndex]
            let rhsValueAtIndex = rhs[rhsIndex]
            
            if lhsValueAtIndex < rhsValueAtIndex {
                orderedResult.append(lhsValueAtIndex)
                lhsIndex += 1
            } else {
                orderedResult.append(rhsValueAtIndex)
                rhsIndex += 1
            }
        }
        
        if lhsIndex < lhs.count {
            orderedResult += lhs[lhsIndex..<lhs.count]
        }
        
        if rhsIndex < rhs.count {
            orderedResult += rhs[rhsIndex..<rhs.count]
        }
        
        return orderedResult
    }
}

//[5,7,9,3,4,6].mergeSort()
//[5,7,8,2,3,4,5].mergeSort()
[1].mergeSort()
[2,1].mergeSort()
[100,1,3].mergeSort()
print("\([8,7,2,5,8,9,1,0,6,9,3,4].mergeSort())")
print("\([6,33,10,37,11,46,44,25,19,44,17,45,15,4,45,32,34,8,10,17,31,0].mergeSort())")


let person1 = Person(age: 20, name: "Sam")
let person2 = Person(age: 30, name: "Ana")
let person3 = Person(age: 40, name: "Jaime")

dump([person3, person2, person1].mergeSort())
