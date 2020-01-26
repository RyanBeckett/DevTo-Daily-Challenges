import UIKit


//Implement a function that will accept an array of integers and an integer n. Find all occurrences of n in the given array and return another array containing all the index positions of n in the array.
//
//If n is not in the given array, return an empty array [].
//
//Assume thatn and all values in the array will always be integers.
//
//Example
//find_all([6, 9, 3, 4, 3, 82, 11], 3)
//> [2, 4]
//
//Tests
//[6, 9, 3, 4, 3, 82, 11], 3
//[10, 16, 20, 6, 14, 11, 20, 2, 17, 16, 14], 16
//[20, 20, 10, 13, 15, 2, 7, 2, 20, 3, 18, 2, 3, 2, 16, 10, 9, 9, 7, 5, 15, 5], 20


// Quick - First Attempt

func find_all(numbers: [Int], numberToFind: Int) -> [Int] {
    var tempArray = [Int]()
    
    for (index, num) in numbers.enumerated() {
        if num == numberToFind {
            tempArray.append(index)
        }
    }
    
    return tempArray
}

find_all(numbers: [6, 9, 3, 4, 3, 82, 11], numberToFind: 3)


// "Better" Approach - less readable unsure if better or not

func findOccurances(of numberToFind: Int, in listOfNumbers: [Int]) -> [Int] {
    return listOfNumbers.enumerated().compactMap { (index, number) in
        number == numberToFind ? index : nil
    }
}

findOccurances(of: 3, in: [6, 9, 3, 4, 3, 82, 11])

