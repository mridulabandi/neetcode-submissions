class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict : [Int : Int] = [:]

        for i in 0..<nums.count {
            let reminder = target - nums[i]
            if let value = dict[reminder]{
                return [value,i].sorted()
            }
            dict[nums[i]] = i
        }
        return []

    }
}
