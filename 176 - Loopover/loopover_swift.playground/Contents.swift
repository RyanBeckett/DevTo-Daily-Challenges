import UIKit

func sortLine(_ line: String) -> String {
  var charactersArray = Array(line)
  guard charactersArray.count > 1 else { return String(charactersArray) }

  for character in 0 ..< charactersArray.count - 1 {
    var lowest = character
    for y in character + 1 ..< charactersArray.count {
      if charactersArray[y] < charactersArray[lowest] {
        lowest = y
      }
    }

    if character != lowest {
      charactersArray.swapAt(character, lowest)
    }
  }
  return String(charactersArray)
}

func sortGrid(_ grid: String) {
  var unSortedGridLines = grid.split(separator: "\n").map(String.init)
  var sortedGridLines = unSortedGridLines
  
  for (index, line) in unSortedGridLines.enumerated() {
    sortedGridLines[index] = sortLine(line)
  }
  
  print("\n\nSCRAMBLED GRID:")
  print(unSortedGridLines.joined(separator: "\n"))
  print("\nSOLVED GRID")
  print(sortedGridLines.joined(separator: "\n"))
  
}

sortGrid("ACDBE\nFGHIJ\nKLMNO\nPQRST\nUVWXY")
sortGrid("ABCDE\nKGHIJ\nPLMNO\nFQRST\nUVWXY")
