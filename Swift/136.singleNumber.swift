class Solution {
    func singleNumber(_ nums: [Int]) -> Int {
        return nums.reduce(0) { $0 ^ $1 }
    }
}
