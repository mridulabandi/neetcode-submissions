class Solution {
    func topKFrequent(_ nums: [Int], _ k: Int) -> [Int] {
        var frequencyMap : [Int : Int] = [:]
        for i in nums {
            frequencyMap[i, default:0] += 1
        }
        let sorted = frequencyMap.sorted { $0.value > $1.value}
        return sorted.prefix(k).map {
        $0.key
    }
    }
}