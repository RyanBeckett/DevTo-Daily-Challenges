import UIKit

//  In this challenge, the world has been hit with a new virus! There is a new pandemic that humanity is struggling to fight against. The continents are separated by oceans, but some infected people have traveled before the quarantine.
//  You'll be given a map of the world in the form of a string:
//
//  s = "01000000X000X011X0X"
//  "0" : uninfected
//  "1" : infected
//  "X" : ocean

//  If one person gets infected on a continent, the entire continent will get infected.
//  The first and last continents are not connected.
//  The virus cannot spread across the ocean.
//  For maps without X, there are no oceans so the entire planet would become infected, return 0%
//  For maps without 0 or 1, there are no people, return 0.

//  TESTS
//  A: 01000000X000X011X0X
//  B: 01X000X010X011XX
//  C: XXXXX
//  D: 00000000X00X0000
//  E: 0000000010
//  F: 000001XXXX0010X1X00010
//  G: X00X000000X10X0100


// First 'Quick' Attempt

class Pandemia {
  let OCEAN = Character("x")
  let INFECTED = "1"
  let UNINFECTED = "0"
  
  func getContinents(from string: String) -> [String] {
    return string.lowercased().split(separator: OCEAN).map(String.init)
  }
  
  func isContinentInfected( _ continent: String) -> Bool {
    return continent.contains(INFECTED) ? true : false;
  }
  
  func simulate(_ continent: String) -> String {
    return continent.replacingOccurrences(of: UNINFECTED, with: INFECTED)
  }
  
  func simulateOutbreak(continents: [String]) -> String {
    var continents = continents
    for (index, continent) in continents.enumerated() {
      isContinentInfected(continent) ? continents[index] = simulate(continent) : nil
    }
    return continents.joined(separator: String(OCEAN).capitalized)
  }
  
  func calcTotal(_ endWorld: String ) -> Int {
    return endWorld.lowercased().filter{ $0 != OCEAN }.count
  }
  
  func calcInfected(_ endWorld: String ) -> Int {
    return endWorld.lowercased().filter{ $0 != OCEAN && $0 == Character(INFECTED) }.count
  }
  
  func calcPercentage(_ total: Int, with infected: Int) -> Double {
    return ((100.00 * infected) / total)
  }
  
  func begin(world: String) {
    print("Start = \(world)")
    var end = simulateOutbreak(continents: getContinents(from: world))
    print("End = \(end)")
    let total = calcTotal(end)
    let infected = calcInfected(end)
    print("Total = \(total)")
    print("Infected = \(infected)")
    print("Percentage = 100*\(infected)/\(total) =  \(calcPercentage(total, with: infected))%")
  }
}

Pandemia().begin(world: "0000000000")


// Refined Attempt







