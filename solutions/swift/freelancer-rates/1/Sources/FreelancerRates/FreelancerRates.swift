func dailyRateFrom(hourlyRate:Int) -> Double {
  return Double(hourlyRate)*8.0
  //fatalError("Please implement the dailyRateFrom(hourlyRate:) function")
}

func monthlyRateFrom(hourlyRate:Int,withDiscount:Double) -> Double {
  var mounthlyWithoutDiscount:Double = dailyRateFrom(hourlyRate:hourlyRate)*22
  return (mounthlyWithoutDiscount-mounthlyWithoutDiscount/100*withDiscount).rounded(.up)
  //fatalError("Please implement the monthlyRateFrom(hourlyRate:withDiscount:) function")
}

func workdaysIn(budget:Double,hourlyRate:Int,withDiscount:Double) -> Double {
  var dailyWithDiscount:Double = (monthlyRateFrom(hourlyRate:hourlyRate,withDiscount:withDiscount))/22
  return (budget/dailyWithDiscount).rounded(.down)
  //fatalError("Please implement the workdaysIn(budget:hourlyRate:withDiscount:) function")
}
