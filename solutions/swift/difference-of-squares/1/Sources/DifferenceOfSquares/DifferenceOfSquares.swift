class Squares {
  var squareOfSum:(Int) = 0
  var sumOfSquares:(Int) = 0
  var differenceOfSquares:(Int) = 0
  init(_ n :Int) {
    for i in 1 ... n {
      squareOfSum = squareOfSum + i
      sumOfSquares = sumOfSquares + i * i
    }
    squareOfSum = squareOfSum * squareOfSum
    differenceOfSquares = squareOfSum - sumOfSquares
  }
}
