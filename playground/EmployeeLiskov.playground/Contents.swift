import Foundation

protocol PayCalculator {
    func calculatePay(hoursWorked: Double) -> Double
}


class HourlyPayCalculator: PayCalculator {
    var hourlyRate: Double
    
    init(hourlyRate: Double) {
        self.hourlyRate = hourlyRate
    }
    
    func calculatePay(hoursWorked: Double) -> Double {
        return hourlyRate * hoursWorked
    }
}

class FixedPayCalculator: PayCalculator {
    
    var fixedAmount: Double
    
    init(fixedAmount: Double) {
        self.fixedAmount = fixedAmount
    }
    
    func calculatePay(hoursWorked: Double) -> Double {
        return fixedAmount
    }
}

class Employee {
    
    var payCalculator: PayCalculator
    
    init(payCalculator: PayCalculator) {
        self.payCalculator = payCalculator
    }
    
    func calculatePay(hoursWorked: Double) -> Double {
        return payCalculator.calculatePay(hoursWorked: hoursWorked)
    }
    
}

class FullTimeEmployee: Employee {
    
}

class PartTimeEmployee: Employee {
    
    
}


let employee: [Employee] = [
    FullTimeEmployee(payCalculator: HourlyPayCalculator(hourlyRate: 40)),
    PartTimeEmployee(payCalculator: FixedPayCalculator(fixedAmount: 100))
]

employee.forEach{ employee in
    print(employee.calculatePay(hoursWorked: 40))
}
