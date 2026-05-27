class Solution {
    func groupAnagrams(_ strs: [String]) -> [[String]] {
        
        var bucket : [String : [String]] = [:]
        for i in strs {
            let key = String(i.sorted())
            bucket[ key, default: []].append(i)
        }

        return Array(bucket.values)
    }
}
