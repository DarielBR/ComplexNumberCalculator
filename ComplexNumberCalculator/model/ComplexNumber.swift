//
//  ComplexNumber.swift
//  ComplexNumberCalculator
//
//  Created by XCode on 8/12/23.
//

import Foundation

class Complex{
    var reZ: Double
    var imZ: Double
    //normal constructor
    init(_ a: Double, _ bi: Double){
        self.reZ  = a
        self.imZ = bi
    }
    //constructor for the polar coordinates form
    init(magnitude: Double, angle: Double){
        self.reZ = magnitude * cos(angle)
        self.imZ = magnitude * sin(angle)
    }
    //polar from
    var polar: (magnitude: Double, angle: Double){
        let magnitude = sqrt(reZ * reZ + imZ * imZ)
        let angle = atan2(imZ, reZ)
        return (magnitude, angle)
    }
    //Operators
    static func +(z1: Complex, z2: Complex) -> Complex{
        return Complex(z1.reZ + z2.reZ, z1.imZ + z2.imZ)
    }

    static func -(z1: Complex, z2: Complex) -> Complex{
        return Complex(z1.reZ - z2.reZ, z1.imZ - z2.imZ)
    }

    static func *(z1: Complex, z2: Complex) -> Complex{
        let reR = z1.reZ * z2.reZ - z1.imZ * z2.imZ
        let imR = z1.reZ * z2.imZ + z1.imZ * z2.reZ
        return Complex(reR, imR)
    }

    static func /(z1: Complex, z2: Complex) -> Complex{
        let denominator = z2.reZ * z2.reZ + z2.imZ * z2.imZ
        let reR = (z1.reZ * z2.reZ + z1.imZ * z2.imZ) / denominator
        let imR = (z1.imZ * z2.reZ - z2.reZ * z2.imZ) / denominator
        return Complex(reR, reR)
    }
}
