// TODO: define the 'birthday' String constant
let birthday:String = "Birthday"
// TODO: define the 'valentine' String constant
let valentine:String = "Valentine's Day"
// TODO: define the 'anniversary' String constant
let anniversary:String = "Anniversary"

//var setOfUsefulStrings: Set<String> = [birthday,valentine,anniversary]

// TODO: define the 'space' Character constant
let space:Character = " "
// TODO: define the 'exclamation' Character constant
let exclamation:Character = "!"

//var setOfUsefulCharacters: Set<Character> = [space,exclamation]

//fatalError("Please implement the buildSign(for:name:) function")
func buildSign(for occasion: String, name: String) -> String {
  return "Happy" + String(space) + occasion + String(space) + name + String(exclamation)
}

//fatalError("Please implement the graduationFor(name:year:) function")
func graduationFor(name: String, year: Int) -> String {
  return "Congratulations\(space)\(name)\(exclamation)\nClass of\(space)\(year)"
}

//fatalError("Please implement the costOf(sign:) function")
func costOf(sign: String) -> Int {
  var sayi:Int = sign.count*2
  return sayi + 20
}