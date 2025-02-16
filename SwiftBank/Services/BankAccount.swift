//
//  BankAccount.swift
//  SwiftBank
//
//  Created by Alexandre C do Carmo on 01/02/25.
//

import Foundation

protocol BankingServiceDelegate: AnyObject {
    func didPerformOperation()
}

protocol InterestingRate {
    func calculateInterestRate()
}

protocol LoanbleAccount {
    func resquestLoan(amount: Double)
}


class BankAccount {
    
    var balance: Double = 0.0
    var accountNumber: String
    var isFrozen: Bool = false
    
     var notificationService = NotificationService()
     var transactionsHistoryService = TransactionHistoryService()
    
    init(accountNumber: String) {
        self.accountNumber = accountNumber
    }
    
    func performOperation(operation: BankOperation, amount: Double) -> Bool {
        guard !isFrozen else {
            notificationService.sendNotification(message: "Operação falhou a conta esta congelada")
            return false
        }
        return operation.execute(in: self, amount: amount)
    }
    
    func getTotalTransictions() -> Int {
        return transactionsHistoryService.transactions.count
    }
    
    func getTransictionPosition(index: Int) -> String {
        return transactionsHistoryService.transactions[index]
    }
    
}
