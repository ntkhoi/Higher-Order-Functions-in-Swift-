import Foundation
import UIKit


//Higher Order Functions in Swift : Map, filter, reduce and flatMap

//I. Map
// Duyet qua mot collection . Apply cùng một phép toán cho mỗi phần tử trên mảng


//ex1 : Input là array các bán kính của hình tròn .
//    Output là array diện tính các hình tròn .
// Công thức : s = pi * r^2

// Normal Way
let PI: Double = 3.14
func circleSuperficies( _ radiusCircle : [Double]) -> [Double] {
    var result =  [Double]()
    for radius in radiusCircle {
        let superficies = PI*pow(radius, 2)
        result.append(superficies)
    }
    return result
}
circleSuperficies([2,3,4,5,6,7] )

// Using Map
func circleSuperficiesUsingMap(_ radiusCircles: [Double]) -> [Double] {
    return radiusCircles.map({ (radius) -> Double in
        return PI*pow(radius, 2)
    })
}
circleSuperficiesUsingMap([2,3,4,5,6,7] )


// Using map 2. The same with abvove but syntax is shorter
func circleSuperficiesUsingMap2(_ radiusCircles: [Double]) -> [Double] {
    return radiusCircles.map{ PI*pow($0, 2) }
}
circleSuperficiesUsingMap2([2,3,4,5,6,7] )

