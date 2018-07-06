
extension Array where Element: Comparable {
    
    func selectionSort() -> [Element] {

        guard count > 0 else { return [] }
        
        var sortedResult = self
        
        for i in 0..<sortedResult.count {
            var key = i
            
            for j in i+1..<sortedResult.count {
                if sortedResult[j] < sortedResult[key] {
                    key = j
                }
            }
            
            guard key != i else { continue }
            
            let temp = sortedResult[i]
            sortedResult[i] = sortedResult[key]
            sortedResult[key] = temp
        }
        
        return sortedResult
    }
}


[1].selectionSort()
[2,1].selectionSort()
[4,3,6,7].selectionSort()
[5,6,8,9,7].selectionSort()
[0,1,2,3,4,5,6,7,8,9].selectionSort()
[9,8,7,6,5,4,3,2,1,0].selectionSort()
