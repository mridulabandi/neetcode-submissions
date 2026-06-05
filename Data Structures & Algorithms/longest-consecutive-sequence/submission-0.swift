class Solution {
    func longestConsecutive(_ nums: [Int]) -> Int {
        let numSet = Set(nums)
        var longest = 0

        for num in numSet {

        // Start only if num is the beginning of a sequence
        if !numSet.contains(num - 1) {

            var currentNum = num
            var currentStreak = 1

            while numSet.contains(currentNum + 1) {
                currentNum += 1
                currentStreak += 1
            }

            longest = max(longest, currentStreak)
        }
    }

    return longest

    }
}
