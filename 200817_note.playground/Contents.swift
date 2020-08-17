import UIKit


let printMessage = """
I said, "My name is wendy"

I said, "My name is wendy"
HaHaHa
"""

print(printMessage)




for character in "Apple!" {
    print(character)
}

let appleChracters: [Character] = ["A", "P", "P", "L", "E", "!"]
var appleString = String(appleChracters)
print(appleString)

var juiceString = " JUICE!"
appleString.append(juiceString) // "APPLE! JUICE!"

let message = "\(appleString), \(juiceString)" // "APPLE! JUICE! JUICE!"



// ---> 문자열 접근!
message[message.startIndex] // A
message[message.index(before: message.endIndex)] // !
message[message.index(after: message.startIndex)] // P

let index = message.index(message.startIndex, offsetBy: 3)
message[index] // L



// ---> RangeReplaceableCollection 프로토콜
// ---> insert, remove, removeSubrange
var name = "My name is wendy"
name.insert("!", at: name.endIndex) // "My name is wendy!"
name.insert(contentsOf: ", Thanks", at: name.index(before: name.endIndex)) // "My name is wendy, Thanks!"

name.remove(at: name.index(before: name.endIndex)) // "!"

let range = name.index(name.endIndex, offsetBy: -8)..<name.endIndex
name.removeSubrange(range) // "My name is wendy"



let greeting = "Hello, world!"
let foundIndex = greeting.firstIndex(of: ",") ?? greeting.endIndex
let frontMessage = greeting[..<foundIndex] // Hello --> SubString

// SubString을 잠깐 사용할 것이 아니면, 문자열 인스턴스로 바꿔서 사용하자.
// why? 원본 String을 참조하기 때문에 계속 메모리에 남아있게 된다.
let newString = String(frontMessage)



// ---> 접두사, 접미사 비교
let messages = [
    "My name is wendy",
    "My name is wengdy",
    "My name is wendiiiy",
    "My name is wendiiiiiy",
]

for message in messages {
    if (message.hasPrefix("My name is ")) {
        print(message)
    }
}

for message in messages {
    if (message.hasSuffix("wendiiiy")) {
        print(message)
    }
}
