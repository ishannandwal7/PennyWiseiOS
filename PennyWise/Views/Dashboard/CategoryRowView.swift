//
//  CategoryRowView.swift
//  PennyWise
//
//  Created by Ishan Nandwal on 22/10/24.
//

import SwiftUI

struct CategoryRowView: View {
    let category: Category
    let sum: Double
    
    var body: some View {
        HStack {
            Image(systemName: category.systemNameIcon)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 20, height: 20)
                .padding(.all, 8)
                .foregroundColor(category.color)
                .background(category.color.opacity(0.1))
                .cornerRadius(18)
            Text(category.rawValue.capitalized)
            Spacer()
            Text(sum.formattedCurrencyText).font(.headline)
        }
    }
}

struct CategoryRowView_Previews: PreviewProvider {
    static var previews: some View {
        CategoryRowView(category: .donation, sum: 2500)
    }
}
