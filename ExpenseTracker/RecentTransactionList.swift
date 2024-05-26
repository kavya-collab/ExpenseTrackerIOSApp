//
//  RecentTransactionList.swift
//  ExpenseTracker
//
//  Created by Kavya Ch on 2024-05-26.
//

import SwiftUI

struct RecentTransactionList: View {
    
    @EnvironmentObject var transactionListVM : TransactionListViewModel
    
    var body: some View {
        VStack{
            HStack{
                //Mark Header Title
                Text("Recent Transactions")
                    .bold()
                
                Spacer()
                
                //Mark Header Link
                NavigationLink{
                    TransactionList()
                    
                }label: {
                    HStack(spacing: 4){
                        Text("See all")
                        Image(systemName: "chevron.right")
                    }
                    .foregroundColor(Color.text)
                }
            }
            .padding(.top)
            
            //Mark : Recent transaction List
            ForEach(Array(transactionListVM.transactions.prefix(5).enumerated()),id :\.element) { index, transaction in
                TransactionRow(transaction: transaction)
                
                Divider()
                    .opacity(index == 4 ? 0 : 1)
            }
            
        }
        .padding()
        .background(Color.systemBackground)
        .clipShape(RoundedRectangle(cornerRadius: 20 , style: .continuous))
        .shadow(color: .primary.opacity(0.2), radius: 10 , x: 0, y: 5)
    }
}

struct RecentTransactionList_Previews: PreviewProvider {
    
    static let transactionListVM : TransactionListViewModel = {
        let transactionListVM = TransactionListViewModel()
        transactionListVM.transactions = transactionListPreviewData
        return transactionListVM
    }()
    static var previews: some View {
        Group{
            RecentTransactionList()
            RecentTransactionList()
                .preferredColorScheme(.dark)
        }
            .environmentObject(transactionListVM)
    }
}
