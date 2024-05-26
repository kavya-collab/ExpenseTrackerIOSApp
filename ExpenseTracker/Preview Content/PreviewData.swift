//
//  PreviewData.swift
//  ExpenseTracker
//
//  Created by Kavya Ch on 2024-05-26.
//

import Foundation

var transactionPreviewData = Transaction(id: 1, date: "2024-05-26", institution: "Bank", account: "Savings", merchant: "Apple", amount: 11.49, type: "debit", categoryId: 801, category: "Software", isPending: false, isTransfer: false, isExpense: true, isEdited: false)

var transactionListPreviewData = [Transaction](repeating: transactionPreviewData, count: 10)
