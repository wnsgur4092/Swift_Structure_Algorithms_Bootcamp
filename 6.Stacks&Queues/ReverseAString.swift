// https://www.fullstack.cafe/interview-questions/stacks

/*
Giving a String, write a function that reverses the String
using a stack.
 */

func solution(_ text: String) -> String {
    var input = text.map{ String($0)}
    var output = [String]()

    while input.count > 0 {
        let last = input.removeLast()
        output.append(last)
    }

    let stringOutput = output.joined(separator: "")

    return stringOutput
}

print(solution("abc")) // cba
print(solution("Would you like to play a game?"))
