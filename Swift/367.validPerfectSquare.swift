class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        return num == Int(sqrt(Double(num))) * Int(sqrt(Double(num)))
    }
}
