func getName(_ item: (name: String, amount: Int)) -> String {
  //fatalError("Please implement the getName(_:) function")
  return item.name
}

func createToy(name: String, amount: Int) -> (name: String, amount: Int) {
  //fatalError("Please implement the createToy(name:amount:) function")
  return (name: name, amount: amount)
}

func updateQuantity(_ items: [(name: String, amount: Int)], toy: String, amount: Int) ->  [(name: String, amount: Int)] {
  //fatalError("Please implement the updateQuantity(_:toy:amount) function")
  var updatedItems = items
    for index in 0..<updatedItems.count {
        if updatedItems[index].name == toy {
            updatedItems[index].amount = amount
        }
    }
    return updatedItems
}

func addCategory(_ items: [(name: String, amount: Int)], category: String) -> [(name: String, amount: Int, category: String)] {
  //fatalError("Please implement the addCategory(_:category:) function")
  var result: [(name: String, amount: Int, category: String)] = []
    for item in items {
        result.append((name: item.name, amount: item.amount, category: category))
    }
    return result
}
