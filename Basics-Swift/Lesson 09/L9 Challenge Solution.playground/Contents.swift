struct TaxCalculator {
    
    var tax = 0.15
    
    func totalWithTax(_ subtotal:Double) -> Double {
        return subtotal * (1 + tax)
    }
}

struct BillSplitter {
    
    func splitBy(subtotal:Double, numPeople:Int) -> Double {
        
        let taxCalc = TaxCalculator()
        let totalWithTax = taxCalc.totalWithTax(subtotal)
        
        return totalWithTax/numPeople
    }
    
}

let split = BillSplitter()
print(split.splitBy(subtotal: 120, numPeople: 5))
