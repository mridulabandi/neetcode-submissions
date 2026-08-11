class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var map : [Int : Int] = [:]

        for i in 0..<nums.count {
            let reminder = target - nums[i]

            if let j  = map[reminder]{
                return [j , i]
            }

            map[nums[i]] = i 
        }
        return []

    }
}
