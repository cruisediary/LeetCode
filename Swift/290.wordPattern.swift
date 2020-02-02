class Solution {
    func wordPattern(_ pattern: String, _ str: String) -> Bool {
        let split = str.split(separator: " ")
        guard pattern.count == split.count else { return false }

        var forwardMap: [Character: String] = [:]
        var backwardMap: [String: Character] = [:]

        for (index, char) in pattern.enumerated() {
            let currentPattern = String(split[index])
            let forwardValue = forwardMap[char]
            let backwardValue = backwardMap[currentPattern]

            if let forwardValue = forwardValue, forwardValue != currentPattern {
                return false
            } else if let backwardValue = backwardValue, char != backwardValue {
                return false
            } else {
                forwardMap[char] = currentPattern
                backwardMap[currentPattern] = char
            }
        }
        return true
    }
}
