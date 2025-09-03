//
//  ContentView.swift
//  SwiftUICustomPieChart
//
//  Created by Angelos Staboulis on 3/9/25.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
                  Text("SwiftUI Pie Chart")
                      .font(.title)
                      .padding()

                  PieChartView(slices: [
                      PieSliceData(value: 40, color: .red),
                      PieSliceData(value: 30, color: .green),
                      PieSliceData(value: 20, color: .blue),
                      PieSliceData(value: 10, color: .orange)
                  ])
                  .frame(width: 300, height: 300)

                  Spacer()
        }.padding()
    }
}

#Preview {
    ContentView()
}
