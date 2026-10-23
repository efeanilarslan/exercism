func totalBirdCount(_ birdsPerDay: [Int]) -> Int {
  //fatalError("Please implement the totalBirdCount(_:) function")
  var totalBirdCount:Int = 0
  for i in birdsPerDay {
    totalBirdCount = totalBirdCount + i
  }
  return totalBirdCount
}

func birdsInWeek(_ birdsPerDay: [Int], weekNumber: Int) -> Int {
  //fatalError("Please implement the birdsInWeek(_:weekNumber:) function")
  var birdsInWeek:Int = 0
  var endIndex:Int = (weekNumber*7)-1
  var startIndex:Int = endIndex-6
  for i in startIndex ... endIndex {
    birdsInWeek = birdsInWeek + birdsPerDay[i]
  }
  return birdsInWeek
}

func fixBirdCountLog(_ birdsPerDay: [Int]) -> [Int] {
  //fatalError("Please implement the fixBirdCountLog(_:) function")
  var updatedLog = birdsPerDay
  for i in stride(from: 0, to: updatedLog.count, by: 2) {
        updatedLog[i] += 1
    }
    return updatedLog
}
