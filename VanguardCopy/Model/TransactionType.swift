//
//  TransactionType.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/30/21.
//

import Foundation

struct Transactions {
    static var newTrade = TransactionType(title: "Start a new trade", transactions: [Transaction(transaction: "Buy", description: "Buy ETFs, stocks, or mutual funds"), Transaction(transaction: "Sell", description: "Sell all or a portion of a holding")])
    
    static var moveMoney = TransactionType(title: "Move Money", transactions: [Transaction(transaction: "Deposit", description: "Add money to your settlement fund"), Transaction(transaction: "Withdraw", description: "Transfer money to your bank account")])
    
    static var history = TransactionType(title: "Transaction History", transactions: [Transaction(transaction: "Orders", description: "View your history and order status")])
    
}

struct TransactionType {
    let title: String
    let transactions: [Transaction]
}

struct Transaction: Identifiable {
    let id = UUID()
    let transaction: String
    let description: String
}


