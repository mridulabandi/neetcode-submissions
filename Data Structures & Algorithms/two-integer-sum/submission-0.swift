class Solution {
    func twoSum(_ nums: [Int], _ target: Int) -> [Int] {
        var dict : [Int: Int] = [:]
        for (index,num) in nums.enumerated() {
            let reminder = target - num
            if let value = dict[reminder] {
                return[value,index]
            }
            dict[ num ] = index
        }
    return []
    }
}
