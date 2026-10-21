func getCard(at index: Int, from stack: [Int]) -> Int {
  //fatalError("Please implement the getCard(at:from:) function")
  return stack[index]
}

func setCard(at index: Int, in stack: [Int], to newCard: Int) -> [Int] {
  //fatalError("Please implement the setCard(at:from:to:) function")
  if index >= 0 && index < stack.count {
    var updatedStack = stack
    updatedStack[index] = newCard
    return updatedStack
  }else{
    return stack
  }
}

func insert(_ newCard: Int, atTopOf stack: [Int]) -> [Int] {
  //atalError("Please implement the insert(_:atTopOf:) function")
  var updatedStack = stack
  updatedStack.append(newCard)
  return updatedStack
}

func removeCard(at index: Int, from stack: [Int]) -> [Int] {
  //fatalError("Please implement the removeCard(at:from:) function")
    if index >= 0 && index < stack.count {
    var updatedStack = stack
    updatedStack.remove(at: index)
    return updatedStack
  }else{
    return stack
  }
}

func insert(_ newCard: Int, at index: Int, from stack: [Int]) -> [Int] {
  //fatalError("Please implement the insert(_:at:from:) function")
  var updatedStack = stack
    if index >= 0 && index < stack.count {
    updatedStack.insert(newCard,at: index)
    return updatedStack
  }else if index == stack.count{
      updatedStack.append(newCard)
      return updatedStack
  }else{
    return stack
  }
}

func checkSizeOfStack(_ stack: [Int], _ size: Int) -> Bool {
  //fatalError("Please implement the checkSizeOfStack(_:_:) function")
  return stack.count == size
}
