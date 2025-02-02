import Foundation
//: ### Exemplo de OCP do SOLID, regras de aberto e fechado
protocol PaymentMethod {
    func processPayment(amount: Double)
}

class CreditCard: PaymentMethod {
    func processPayment(amount: Double) {
        print("Processing credit card payment of \(amount)")
    }
}

class DebitCardPayment: PaymentMethod {
    func processPayment(amount: Double) {
        print("Processing debit card payment of \(amount)")
    }
}

class PaypalPayment: PaymentMethod {
    func processPayment(amount: Double) {
        print("Processing paypal payment of \(amount)")
    }
}

class PaymentProcessor {
    let paymentMethod: PaymentMethod
    
    init(paymentMethod: PaymentMethod) {
        self.paymentMethod = paymentMethod
    }
    
    func processPayment(_ amount: Double) {
        paymentMethod.processPayment(amount: amount)
    }
}

let paymentMethod = CreditCard()
let processor = PaymentProcessor(paymentMethod: paymentMethod)
processor.processPayment(100.0)
