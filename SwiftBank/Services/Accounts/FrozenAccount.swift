//
//  FrozenAccount.swift
//  SwiftBank
//
//  Created by Alexandre C do Carmo on 13/02/25.
//

import Foundation
class FrozenAccount: BankAccount {
     init(accountNumber: String) {
        super.init(accountNumber: accountNumber)
        isFrozen = true
    }
}
