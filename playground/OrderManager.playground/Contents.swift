import Foundation

class Order {
    let product: String
    let quantity: Int
    let customerEmail: String
    
    init(product: String, quantity: Int, customerEmail: String) {
        self.product = product
        self.quantity = quantity
        self.customerEmail = customerEmail
    }
}

class OrderManager {
    
    private var orderPersistenceManager: OrderPersistenceManager
    private var emailService: EmailService
    
    init(orderPersistenceManager: OrderPersistenceManager, emailService: EmailService) {
        self.orderPersistenceManager = orderPersistenceManager
        self.emailService = emailService
    }
    
    func createOrder(product: String, quantity: Int, customerEmail: String){
        print("Pedido para \(product), quantidade \(quantity) criado.")
        let order = Order(product: product, quantity: quantity, customerEmail: customerEmail)
        
        orderPersistenceManager.saveOrderToDatabase(order: order)
        emailService.sendConfirmationEmail(email: customerEmail)
    }
}

class OrderPersistenceManager {
    func saveOrderToDatabase(order: Order) {
        print("Pedido salvo no banco de dados.")
    }
    
}

class EmailService {
    func sendConfirmationEmail(email: String) {
        print("Enviando email para \(email)")
    }
}

let persistenceManager = OrderPersistenceManager()
let emailService = EmailService()

let orderManager = OrderManager(orderPersistenceManager: persistenceManager, emailService: emailService)
orderManager.createOrder(product: "Livro Swift", quantity: 1, customerEmail: "giovanna@gmail.com")

