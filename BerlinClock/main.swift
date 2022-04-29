//
//  main.swift
//  BerlinClock
//
//  Created by Said Tura Saidazimov on 29.04.2022.
//
import Foundation

func second(_ second: String) -> String {
    return Int(second)! % 2 == 0 ? "Y" : "O"
}

func fiveHours(_ hours: String) -> String {
    let string: String = "RRRR"
    var array = Array(string)
    let signal = (Int(hours)! / 5)
    for index in 1...4{
        if (index > signal) {
            array[index - 1] = "O"
        }
    }
    return String(array)
}

func singleHours(_ hours: String) -> String{
    let string: String = "RRRR"
    var array = Array(string)
    let signal = (Int(hours)! % 5)
    for index in 1...4 {
        if (index > signal){
            array[index - 1] = "O"
        }
    }
    return String(array)
}

func fiveMinutes(_ minutes: String) -> String {
    let string: String = "YYRYYRYYRYY"
    var array = Array(string)
    let signal = (Int(minutes)! / 5)
    for index in 1...11 {
        if (index > signal) {
            array[index - 1] = "O"
        }
    }
    return String(array)
}

func minutes(_ minutes: String) -> String {
    let string: String = "YYYY"
    var array = Array(string)
    let signal = (Int(minutes)! % 5)
    for index in 1...4 {
        if (index > signal) {
            array[index - 1] = "O"
        }
    }
    return String(array)
}

func result() -> String {
    let input = readLine()
    let hour = input!
    let myArray = Array(hour.components(separatedBy: ":"))
    return second(myArray[2]) + fiveHours(myArray[0]) + singleHours(myArray[0]) + fiveMinutes(myArray[1]) + minutes(myArray[1])
                                           }
                                          

print("Please enter correct hour in the h:m:s format")
print(result())
