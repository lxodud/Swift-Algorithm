import Foundation

let input1 = readLine()!
let input2 = readLine()!
let input3 = readLine()!

let array = input2.components(separatedBy: " ").map { Int($0)! }.sorted()
var count: Int = 0
var start: Int = 0
var end: Int = array.count - 1

while start < end {
    if array[start] + array[end] == Int(input3)! {
        count += 1
        end -= 1
    } else if array[start] + array[end] < Int(input3)! {
        start += 1
    } else {
        end -= 1
    }
}

print(count)
