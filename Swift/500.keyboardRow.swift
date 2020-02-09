class Solution {
    func findWords(_ words: [String]) -> [String] {
        let sets: [Set<Character>] = [Set("qwertyuiop"), Set("asdfghjkl"), Set("zxcvbnm")]
        return words.filter { word in sets.first { Set(word.lowercased()).isSubset(of: $0) } != nil }
    }
}

// XCTAssertEqual(findWords(["Hello", "Alaska", "Dad", "Peace"]), ["Alaska", "Dad"])
