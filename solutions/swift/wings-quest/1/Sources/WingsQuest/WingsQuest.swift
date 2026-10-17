func bonusPoints(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
  if powerUpActive == true && touchingEagle == true {
    return true
  }else{
    return false
  }
  //fatalError("Please implement the bonusPoints(powerUpActive:touchingEagle:) function")
}

func score(touchingPowerUp: Bool, touchingSeed: Bool) -> Bool {
  switch (touchingPowerUp, touchingSeed){
    case (true, false),(false,true),(true,true):
      return true
    case (false, false):
      return false
  }
  //fatalError("Please implement the score(touchingPowerUp:touchingSeed:) function")
}

func lose(powerUpActive: Bool, touchingEagle: Bool) -> Bool {
  switch (powerUpActive, touchingEagle){
    case (true, true),(true, false),(false, false):
      return false
    case (false, true):
      return true
  }
  //fatalError("Please implement the lose(powerUpActive:touchingEagle:) function")
}

func win(hasPickedUpAllSeeds: Bool, powerUpActive: Bool, touchingEagle: Bool) -> Bool {
  switch (hasPickedUpAllSeeds, lose(powerUpActive:powerUpActive, touchingEagle:touchingEagle)){
    case (true, false):
      return true
    default:
      return false
  }
  //fatalError("Please implement the win(hasPickedUpAllSeeds:powerUpActive:touchingEagle:) function")
}
