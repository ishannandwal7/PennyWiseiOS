//
//  Sort.swift
//  PennyWise
//
//  Created by Ishan Nandwal on 22/10/24.
//

import Foundation

enum SortType: String, CaseIterable {
    case date
    case amount
}

enum SortOrder: String, CaseIterable {
    case ascending
    case descending
}

extension SortType: Identifiable {
    var id: String { rawValue }
}

extension SortOrder: Identifiable {
    var id: String { rawValue }
}


struct ExpenseLogSort {
    var sortType: SortType
    var sortOrder: SortOrder
    
    var isAscending: Bool {
        sortOrder == .ascending ? true : false
    }
    
    var sortDescriptor: NSSortDescriptor {
        switch sortType {
        case .date:
            return NSSortDescriptor(keyPath: \PennyWiseLog.date, ascending: isAscending)
        case .amount:
            return NSSortDescriptor(keyPath: \PennyWiseLog.amount, ascending: isAscending)
        }
    }
}
