class Solution {
    func productExceptSelf(_ nums: [Int]) -> [Int] {
        let n = nums.count
        var prefix = 1
        var result = Array(repeating: 1, count: n)

       for i in 0..<nums.count {
            result[i] *= prefix
            prefix *= nums[i]
       }

       var postfix = 1

       for i in stride(from : n - 1 , through : 0, by : -1) {
            result[i] *= postfix
            postfix *= nums[i]
       }

       return result
}

}
