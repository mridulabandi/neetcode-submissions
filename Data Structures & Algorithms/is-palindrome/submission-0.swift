class Solution {
    func isPalindrome(_ s: String) -> Bool {
        
        let chars = Array( s.lowercased().filter {
            $0.isLetter || $0.isNumber
        })

        var left = 0
        var right = chars.count - 1

        while (left <= right) {
            if chars[left] == chars[right] {
                left += 1
                right -= 1
            }else{
                return false 
            }
        }
        return true

    }
}
