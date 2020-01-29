import UIKit

//  In DNA strings, symbols "A" and "T" and "C" and "G" are complements of each other. Implement a function DNA_strand to match the given side of DNA with its complementary side.
//
//  Examples
//   DNA_strand("ATTGC") # return TAACG
//   DNA_strand("GTTAAC") # return CAATTG
//
//  Tests
//   DNA_strand("AAAA")
//   DNA_strand("CTACC")
//   DNA_strand("GTAT")

func DNA_strand( _ dna: String) {
  
  // Third  - not the most optimised loop & but less to diguest than 2
  let swapTable = [("A", "T"), ("T", "A"), ("C", "G"), ("G", "C")]
  
  let temp = dna.map { char in
    swapTable.map { (key, value) in
      String(char) == key ? value as String : ""
    }.joined()
  }.joined()
  
  print(temp)
}

DNA_strand("ATTGC")
DNA_strand("AAAA")
DNA_strand("CTACC")
DNA_strand("GTAT")
DNA_strand("XXXX")
  
  
//  // Second-ish - not the most optimised loop
//  let swapTable = [("A", "T"), ("T", "A"), ("C", "G"), ("G", "C")]
//
//
//  let temp = swapTable.map { (key, value) in
//    dna.map {
//      print("*** Before ")
//      if String($0) == key {
//        print("HIT")
//      }
//      print("*** After ")
//    }
//  }

  
//  First Attempt
//  var dna = dna
//  var temp = ""
//  for char in dna {
//    for (key, value) in swapTable {
//      if String(char) == key {
//        temp += value.uppercased()
//      }
//    }
//  }
//
//  print(temp)
  
