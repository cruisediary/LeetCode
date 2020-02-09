// Medium

class Solution {
    func rotate(_ matrix: inout [[Int]]) {
        let result = matrix
        for i in (0..<matrix.count) {
            for j in (0..<matrix[i].count) {
                matrix[i][j] = result[matrix.count - j - 1][i]
            }
        }
    }
}
