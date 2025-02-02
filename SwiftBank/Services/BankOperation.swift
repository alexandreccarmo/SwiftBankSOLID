//
//  BankOperation.swift
//  SwiftBank
//
//  Created by Alexandre C do Carmo on 02/02/25.
//

import Foundation

protocol BankOperation {
    func execute(in account: BankAccount, amount: Double) -> Bool
}

class WithDrawOperation: BankOperation {
    func execute(in account: BankAccount, amount: Double) -> Bool {
        if amount <= account.balance {
            account.balance -= amount
            
            account.notificationService.sendNotification(message: "Saque no valor de \(amount.formatCurrency()) realizado!")
            
            account.transactionsHistoryService.addTransaction(messege:  "Saque no valor de \(amount.formatCurrency())")
            
            return true
        }
        return false
    }
}

class DepositOperation: BankOperation {
    func execute(in account: BankAccount, amount: Double) -> Bool {
        account.balance += amount
        account.notificationService.sendNotification(message: "Depósito no valor de \(amount.formatCurrency()) realizado!")
        
        account.transactionsHistoryService.addTransaction(messege: "Depósito no valor de \(amount.formatCurrency())")
        
        return true
    }
    
    
}
