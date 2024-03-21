//
//  ContentView.swift
//  PieChart
//
//  Created by Mushik, Victoria on 02/28/24.
//

import SwiftUI
import Charts

struct ContentView: View {
    var body: some View {
        VStack {
            Chart {
                ForEach(MockData.revenueStreams) {stream in SectorMark(angle: .value("Stream", stream.value), angularInset: 2) .foregroundStyle(by: .value("Name", stream.name))
                }
            }
            .chartLegend(.hidden)
        }
        .padding()
        .navigationTitle("Revenue")
    }
}
#Preview {
    NavigationStack {ContentView()}
}

struct RevenueStream: Identifiable {
    let id = UUID()
    let name: String
    let value: Double
}

struct MockData {
    static var revenueStreams: [RevenueStream] = [
        .init(name: "Advertisements", value: 760),
        .init(name: "Courses", value: 178),
        .init(name: "Sponsors", value: 400),
        .init(name: "Consulting", value: 250)]
}
