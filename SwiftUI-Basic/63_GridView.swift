//
//  63_GridView.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 25.02.24.
//

import SwiftUI

// MARK: - Vaze od iOS 16

struct GridViewBootcamp: View {
    var body: some View {
//        Grid() {
//            GridRow {
//                cell(int: 1)
//                cell(int: 2)
//                cell(int: 3)
//            }
//            
//            Divider()
//                .gridCellUnsizedAxes(.horizontal) // ovim Divider ne zauzima celu sirinu ekrana, vec sirinu reda celija
//            
//            cell(int: 4)
//            
//            GridRow {
//                cell(int: 5)
//                cell(int: 6)
//            }
//        }
        
        Grid(
            alignment: .center,
            horizontalSpacing: 8,
            verticalSpacing: 8) {
                
                ForEach(0..<4) { rowIndex in
                    
                    GridRow(alignment: .bottom) {
                        ForEach(0..<4) { columnIndex in
                            let cellNumber = (rowIndex * 4) + (columnIndex + 1)
                            if cellNumber == 7 {
                                EmptyView()
                                
//                                Color.green
////                                    .gridCellUnsizedAxes(.horizontal)
////                                    .gridCellUnsizedAxes(.vertical)
//                                    .gridCellUnsizedAxes([.horizontal, .vertical])
                                
                            } else {
                                cell(int: cellNumber)
                                    .gridCellColumns(cellNumber == 6 ? 2 : 1) // 6 zauzima dva mesta
                                    .gridColumnAlignment( // setovanje alignmenta za kolonu
                                        cellNumber == 1 ? .trailing :
                                        cellNumber == 4 ? .leading :
                                        .center
                                    )
                            }
                        }
                    }
                    
                }
                
            }
    }
    
    
    private func cell(int: Int) -> some View {
        Text("\(int)")
            .frame(height: int == 10 ? 20 : nil)
            .font(.largeTitle)
            .padding()
            .background(Color.blue)
    }
}

#Preview {
    GridViewBootcamp()
}
