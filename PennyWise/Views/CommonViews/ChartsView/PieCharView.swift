//
//  PieCharView.swift
//  PennyWise
//
//  Created by Ishan Nandwal on 22/10/24.
//

import SwiftUI

public struct PieChartView : View {
    public var data: [(value: Double, color: Color)]
    
    public var style: ChartStyle
    public var formSize:CGSize
    public var dropShadow: Bool

    public init(data: [(value: Double, color: Color)], style: ChartStyle = Styles.pieChartStyleOne, form: CGSize? = ChartForm.medium, dropShadow: Bool? = true){
        self.data = data
        self.style = style
        self.formSize = form!
        self.dropShadow = dropShadow!
    }
    
    public var body: some View {
        PieChartRow(data: data, backgroundColor: self.style.backgroundColor, accentColor: self.style.accentColor)
            .foregroundColor(self.style.accentColor).padding(12).offset(y:-10)
            .frame(width: self.formSize.width, height: self.formSize.height)
    }
}
