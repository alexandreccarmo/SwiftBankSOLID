//
//  TransactionHistoryService.swift
//  SwiftBank
//
//  Created by Alexandre C do Carmo on 01/02/25.
//

import Foundation

protocol TransactionHistoryServiceProtocol {
    var transactions: [String] { get set} 
    func addTransaction(messege: String)
}

class TransactionHistoryService: TransactionHistoryServiceProtocol {
    var transactions: [String] = []
    
    func addTransaction(messege: String){
        transactions.insert(messege, at: 0)
    }
}
