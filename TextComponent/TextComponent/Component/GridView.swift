//
//  GridView.swift
//  TextComponent
//
//  Created by Vipal on 15/09/22.
//

import SwiftUI

struct GridView: View {
    var body: some View {
        let columns:[GridItem] = [
            GridItem(.flexible(),spacing: 6, alignment: nil),
            GridItem(.flexible(),spacing: 6, alignment: nil),
            GridItem(.flexible(),spacing: 6, alignment: nil)
        ]
        ScrollView {
                        //MARK: Top Image
                        Rectangle()
                            .fill(Color.orange)
                            .frame(height: 400)
            LazyVGrid(columns: columns,
                      alignment: .center,
                      spacing: 6, pinnedViews: [.sectionHeaders])
                            {
                                //MARK: section
                                Section {
                                    ForEach(0 ..< 30) { index in
                                        Rectangle()
                                            .fill(Color.green)
                                            .frame(height: 100)
                                    }
                                }
                                header: {
                                        Text("Section 1").foregroundColor(Color.white)
                                            .font(.largeTitle)
                                            .frame(maxWidth: .infinity,alignment: .leading)
                                            .background{
                                                Rectangle().fill(Color.blue)
                                            }
                                    }
                                //MARK: section 2
                                Section {
                                    ForEach(0 ..< 30) { index in
                                        Rectangle()
                                            .fill(Color.red)
                                            .frame(height: 100)
                                    }
                                }
                                header: {
                                        Text("Section 2").foregroundColor(Color.white)
                                            .font(.largeTitle)
                                            .frame(maxWidth: .infinity,alignment: .leading)
                                            .background{
                                                Rectangle().fill(Color.blue)
                                            }
                                    }

                                
            }
//            //MARK: Top Image
//            Rectangle()
//                .fill(Color.red)
//                .frame(height: 400)
//            //MARK: Bottom Grid
//            LazyVGrid(columns: columns) {
//                ForEach(0 ..< 30) { index in
//                    Rectangle()
//                        .fill(Color.green)
//                        .frame(height: 100)
//                }
//            }

        }
       
    }
}

struct GridView_Previews: PreviewProvider {
    static var previews: some View {
        GridView()
    }
}
