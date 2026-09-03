class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        // Step 1: Count frequency
    var frequencyMap: [Int: Int] = [:]
    
    for num in nums {
        frequencyMap[num, default: 0] += 1
    }
    
    // Step 2: Create buckets
    // Index = frequency
    // Value = numbers having that frequency
    var buckets = Array(repeating: [Int](), count: nums.count + 1)
    
    // Step 3: Put each number into its frequency bucket
    for (num, frequency) in frequencyMap {
        buckets[frequency].append(num)
    }
    
    // Step 4: Traverse from highest frequency to lowest
    var result: [Int] = []
    
    for frequency in stride(from: nums.count, through: 1, by: -1) {
        
        for num in buckets[frequency] {
            result.append(num)
            
            if result.count == k {
                return result
            }
        }
    }
    
    return result

    }
}