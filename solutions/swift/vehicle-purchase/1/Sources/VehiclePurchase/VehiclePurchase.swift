func canIBuy(vehicle: String, price: Double, monthlyBudget: Double) -> String {
  var aylikUcret:Double = price/60.00
  var aylikUcret10:Double = aylikUcret-aylikUcret/10
  if monthlyBudget >= aylikUcret {
    return "Yes! I'm getting a \(vehicle)"  
  }else if monthlyBudget >= aylikUcret10 {
    return "I'll have to be frugal if I want a \(vehicle)"
  }else{
    return "Darn! No \(vehicle) for me"
  }
  //fatalError("Please implement the canIBuy(vehicle:price:monthlyBudget:) function")
}

func licenseType(numberOfWheels wheels: Int) -> String {
  switch wheels {
    case 2,3:
      return "You will need a motorcycle license for your vehicle"
    case 4,6:
      return "You will need an automobile license for your vehicle"
    case 18:
      return "You will need a commercial trucking license for your vehicle"
    default :
      return "We do not issue licenses for those types of vehicles"
  }
  //fatalError("Please implement licenseType(numberOfWheels:) function")
}

func calculateResellPrice(originalPrice: Int, yearsOld: Int) -> Int {
  if yearsOld < 3 {
    return originalPrice*8/10
  }else if yearsOld >= 3 && yearsOld < 10{
    return originalPrice*7/10
  }else{
    return originalPrice*5/10
  }
  //fatalError("Please implement calculateResellPrice(originalPrice:yearsOld:) function")
}
