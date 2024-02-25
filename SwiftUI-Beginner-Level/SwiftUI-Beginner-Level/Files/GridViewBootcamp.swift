//
//  GridViewBootcamp.swift
//  SwiftUI-Beginner-Level
//
//  Created by Mykyta Kuzminov on 25.02.2024.
//

import SwiftUI

struct GridViewBootcamp: View {
    var body: some View {
        Grid(alignment: .center, horizontalSpacing: 8, verticalSpacing: 8) {
            ForEach(0..<4) { rowIndex in
                GridRow(alignment: .top) {
                    ForEach(0..<4) { columnIndex in
                        let cellNumber = (rowIndex * 4) + (columnIndex + 1)
                        
                        if cellNumber == 7 {
                            EmptyView()
//                            Color.clear
//                                .gridCellUnsizedAxes([.horizontal, .vertical])
                        } else {
                            cell(int: cellNumber)
                                .gridCellColumns(cellNumber == 6 ? 2 : 1)
                                .gridCellAnchor(.leading)
                                .gridColumnAlignment(
                                    cellNumber == 1 ? .trailing :
                                        cellNumber == 4 ? .leading :
                                            .center
                                )
                        }
                    }
                }
            }
        }
//        Grid() {
//            GridRow {
//                cell(int: 1)
//                cell(int: 2)
//                cell(int: 3)
//            }
//            
//            Divider()
//                .gridCellUnsizedAxes(.horizontal)
//            
//            GridRow {
//                cell(int: 1)
//                cell(int: 2)
//                cell(int: 3)
//            }
//        }
    }
    
    private func cell(int: Int) -> some View {
        Text("\(int)")
            .font(.largeTitle)
            .frame(height: int == 10 ? 20 : nil)
            .padding()
            .background(Color.blue)
    }
}

#Preview {
    GridViewBootcamp()
}
