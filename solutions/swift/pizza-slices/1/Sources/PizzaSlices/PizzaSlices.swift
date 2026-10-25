func sliceSize(diameter: Double?, slices: Int?) -> Double? {
  //fatalError("Please implement the sliceSize(diameter:slices:) function")
  guard let diameter = diameter, let slices = slices else{
    return nil
  }
  if diameter < 0 || slices < 1 {
    return nil
  }else{
    let radius = diameter / 2
    return (Double.pi * radius * radius) / Double(slices)
  }
}

func biggestSlice(
  diameterA: String, slicesA: String,
  diameterB: String, slicesB: String
) -> String {
  let areaA = sliceSize(diameter: Double(diameterA), slices: Int(slicesA))
  let areaB = sliceSize(diameter: Double(diameterB), slices: Int(slicesB))
  switch (areaA, areaB) {
    case let (a?,b?):
      if a > b {
        return "Slice A is bigger"
      }else if a < b {
        return "Slice B is bigger"
      }else{
        return "Neither slice is bigger"
      }
    case(.some, .none):
      return "Slice A is bigger"
    case(.none, .some):
      return "Slice B is bigger"
    default:
      return "Neither slice is bigger"
  }
  //fatalError("Please implement the biggestSlice(diameterA:slicesA:diameterB:slicesB:) function")
}
