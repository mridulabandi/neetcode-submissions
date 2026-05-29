class Solution {
   func isValidSudoku(_ board: [[Character]]) -> Bool {

    // MARK: - Check Rows
    for row in 0..<9 {

        var set = Set<Character>()

        for col in 0..<9 {

            let value = board[row][col]

            if value == "." {
                continue
            }

            if set.contains(value) {
                return false
            }

            set.insert(value)
        }
    }

    // MARK: - Check Columns
    for col in 0..<9 {

        var set = Set<Character>()

        for row in 0..<9 {

            let value = board[row][col]

            if value == "." {
                continue
            }

            if set.contains(value) {
                return false
            }

            set.insert(value)
        }
    }

    // MARK: - Check 3x3 Boxes
    for boxRow in stride(from: 0, to: 9, by: 3) {

        for boxCol in stride(from: 0, to: 9, by: 3) {

            var set = Set<Character>()

            for row in boxRow..<boxRow+3 {

                for col in boxCol..<boxCol+3 {

                    let value = board[row][col]

                    if value == "." {
                        continue
                    }

                    if set.contains(value) {
                        return false
                    }

                    set.insert(value)
                }
            }
        }
    }

    return true
}
}
