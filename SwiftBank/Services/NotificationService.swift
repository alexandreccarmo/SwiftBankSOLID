//
//  NotificationService.swift
//  SwiftBank
//
//  Created by Alexandre C do Carmo on 01/02/25.
//

import Foundation

protocol NotificationServiceProtocol {
    func sendNotification(message: String)
}

class NotificationService: NotificationServiceProtocol {
    func sendNotification(message: String) {
        // Enviar notificação para o usuário
        print(message)
    }
}
