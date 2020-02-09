class Solution {
    func rotateString(_ A: String, _ B: String) -> Bool {
        guard A.count == B.count else { return false }
        guard A != B else { return true }
        return (B + B).components(separatedBy: A).count > 1
    }
}
