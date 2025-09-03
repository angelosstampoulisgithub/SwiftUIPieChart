//
//  PieChartView.swift
//  SwiftUICustomPieChart
//
//  Created by Angelos Staboulis on 3/9/25.
//

import SwiftUI

struct PieChartView: View {
    var slices: [PieSliceData]

       var total: Double {
           slices.reduce(0) { $0 + $1.value }
       }

       var angles: [Angle] {
           var currentAngle = -90.0
           var result: [Angle] = []

           for slice in slices {
               let angle = 360 * (slice.value / total)
               result.append(.degrees(currentAngle))
               currentAngle += angle
           }
           result.append(.degrees(currentAngle)) // last end angle
           return result
    }
    var body: some View {
        GeometryReader { geometry in
                   ZStack {
                       ForEach(0..<slices.count, id: \.self) { index in
                           let startAngle = angles[index]
                           let endAngle = angles[index + 1]

                           PieSlice(startAngle: startAngle, endAngle: endAngle)
                               .fill(slices[index].color)
                       }
                   }
                   .frame(width: geometry.size.width, height: geometry.size.height)
         }
    }
}

