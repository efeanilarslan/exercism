import Playgrounds

//extension süslü parantez içinde kullanılamaz
extension Int {
    func karesiniAl() -> Int {
        return self * self
    }
}
#Playground {
    let ssayı:Int = 5
    print(ssayı.karesiniAl().description)
    ////////////////////////////////////////////
    enum temalar {
        case dark, light, system
    }
    var sistemTeması:temalar = .light
    //print(sistemTeması)
    var dizi : [String] = [
        "Kırmızı",
        "Mor",
        "Mavi"
    ]
    //////////////////////////////////////////
    var n = 0
    for i in dizi
    {
        print(i,String(n))
        n = n+1
    }
    //////////////////////////////////////////
    for (s , i) in dizi.enumerated() {
        print(i,s)
    }
    //////////////////////////////////////////
    let not:Int = 75
    switch not {
    case 90 ... 100:
        print("çok iyi")
    case 85,80:
        print("iyi")
    case ..<70:
        print("70in aşağısı")
    case ...70 :
        print("70 ve aşağısı")
    case let değer where değer == 75:
        print("75")
    default:
        print("bilinmiyor")
    }
    //////////////////////////////////////////
    enum taşıtOpsiyonları{
        case bisiklet, motor, araba, uçak
    }
    let taşıt = taşıtOpsiyonları.motor
    if taşıt == .uçak {
        print("Uçalım")
    }else if taşıt == .araba {
        print("Arbaya binin")
    }else {
        print("ya motor ya bisiklet")
    }
    //////////////////////////////////////////
    let day = 4
    print("My true love gave to me…")
    switch day {
    case 5:
        print("5 golden rings")
        fallthrough
    case 4:
        print("4 calling birds")
        fallthrough
    case 3:
        print("3 French hens")
        fallthrough
    case 2:
        print("2 turtle doves")
        fallthrough
    case 1 :
        print("A partridge in a pear tree")
    default:
        print("non")
    }
    //////////////////////////////////////////
    var countdown = 10
    while countdown >= 0 {
        print("Kendini imha \(countdown)saniye sonra")
        countdown -= 1
    }
    //////////////////////////////////////////
    var dizi2:[Int]=[1,2,3]
    dizi2 += [4,5,6]
    print(dizi2)
    for i in dizi2 {
        var randomSayı = Int.random(in: 1 ... 6)
        print(randomSayı)
    }
    for i in 1 ... 100{
        if i.isMultiple(of: 3) && i .isMultiple(of: 5){
            print("fizzbuzz")
        }else if i.isMultiple(of: 5){
            print("buzz")
        }else if i.isMultiple(of: 3){
            print("fizz")
        }else {
            print(i)
        }
    }
    //////////////////////////////////////////
    
    for i in 1 ... 100{
        if i % 15 == 0 {
            print("fizzbuzz")
        }
        else if i % 5 == 0 {
            print("buzz")
        }
        else if i % 3 == 0 {
            print("fizz")
        }
        else if !i.isMultiple(of: 5) && !i.isMultiple(of: 3){
            print(i)
        }
    }
    //////////////////////////////////////////
    var name:(String) = "Efe"
    func karşılayıcı() {
        print("hoşgeldin \(name)")
    }
    karşılayıcı()
    //////////////////////////////////////////
    func fonksiyon1(isim first:String) -> String
    {
        return "Merhaba ben,\(first)"
    }
    func fonksiyon1(isim first:String,yas second:Int) -> String
    {
        return "Merhaba ben,\(first) \(second)"
    }
    func fonksiyon1(isim first:String,soyisim second:String,okul third:String) -> String
    {
        return "Merhaba ben,\(first) \(second).\n\(third)'ye hoş geldin"
    }
    //fonksiyon1(isim: <#T##String#>, soyisim: <#T##String#>, okul: <#T##String#>)
    print(fonksiyon1(isim: "Efe",soyisim: "Arslan", okul :"KKÜ" ))
    print(fonksiyon1(isim: "Efe",yas: 22))
    var xKarsilama:String = fonksiyon1(isim: "Efe")
    print(xKarsilama)
    ////////////////////////////////////////////
    class statu{
        var yaptıgıIs:String?
        init(yaptıgıIs:String){
            self.yaptıgıIs = yaptıgıIs
        }
    }
    //yaptıgıIs zorunlu bir sınıf değil bu nedenle ünlemler ve soru işaretleri kullandık
    class personel{
        var isim:String
        var yas:Int
        var terfi:Bool
        var meslek:statu?
        init(isim:String, yas:Int, terfi:Bool, meslek:statu? = nil){
            self.isim = isim
            self.yas = yas
            self.terfi = terfi
            self.meslek = meslek
        }
        func yasArt(){
            yas = yas + 1
        }
    }
    var öğrenciStatü = statu(yaptıgıIs:"öğrenci")
    var ögrenci1 = personel(isim: "Efe", yas: 22, terfi: true ,meslek: öğrenciStatü)
    print(ögrenci1.yas)
    ögrenci1.yasArt()
    print(ögrenci1.yas)
    ögrenci1.terfi = false
    print(ögrenci1.terfi)
    print(ögrenci1.meslek?.yaptıgıIs ?? "Meslek belirtilmemiş") //koşullu
    //print(ögrenci1.meslek!.yaptıgıIs!) //bana güven ve oku demek
    //////////////////////////////////////////////////////
    
    
    
    
    
}

