

//: REDUCE
// Tính toán tất cả item trong một collection để trả về một single value

// Bài toán: Tính sum tất cả các phần tử trong array

func sum(_ arr: [Int]) -> Int {
    var result: Int = 0
    for number in arr {
        result += number
    }
    return result
}

sum([1,3,4])

// Using Reduce
func sumWithReduce(_ arr: [Int]) -> Int {
    return arr.reduce(0, { (a, b) -> Int in
        a + b
    })
}
sumWithReduce([1,3,4])

// Short Style
func sumWithReduce2(_ arr: [Int]) -> Int {
    return arr.reduce(0, +)
}
sumWithReduce2([1,3,4])

// EX2: A problem in http://exercism.io
//Sum Of Multiples
//Given a number, find the sum of all the multiples of particular numbers up to but not including that number.
//
//If we list all the natural numbers up to but not including 20 that are multiples of either 3 or 5, we get 3, 5, 6 and 9, 10, 12, 15, and 18.
//
//The sum of these multiples is 78.
//
//Given a number, find the sum of the multiples of a given set of numbers, up to but not including that number.

func toLimit(_ limit: Int, inMultiples multiples: [Int]) -> Int {
    return (1..<limit).reduce(0, { (sumresult, current) -> Int in
        for item in multiples{
            if item != 0 && current % item == 0{
                return sumresult + current
            }
        }
        return sumresult
    })
}