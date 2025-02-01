//
//  TransactionHistoryService.swift
//  SwiftBank
//
//  Created by Alexandre C do Carmo on 01/02/25.
//

import Foundation

class TransactionHistoryService {
    var transactions: [String] = []
    
    func addTransaction(messege: String){
        transactions.insert(messege, at: 0)
    }
}
