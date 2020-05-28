// 1 usd / 22.24 mxn
// 1 usd / 1.38 cad

enum Currency {
    case cad, mxn
}

let usdToCad = 1.38
let usdToMxn = 22.24

let currency: Currency = .cad

func convert(_ dollars: Double) -> Double {
    if currency == .cad {
        return dollars * usdToCad
    } else {
        return dollars * usdToMxn
    }
}

print(convert(10))

func convertString(amountString: String) -> String? {
    let amountDouble = Double(amountString)
    
    guard let unwrappedAmount = amountDouble else {
        return "Not a valid amount"
    }
    
    var amountToReturn = 0.0
    
    switch currency {
    case .cad:
        amountToReturn = unwrappedAmount * usdToCad
    case .mxn:
        amountToReturn = unwrappedAmount * usdToMxn
    }
    
    return String(amountToReturn)
    
}

let convertedString = convertString(amountString: "100")

// note: if you remove the ? from -> String? in convertString(), you don't have to unwrap it
// print(convertedString)

if let unwrappedConvertedString = convertedString {
    print(unwrappedConvertedString)
}
