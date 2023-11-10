//
//  59_Popover.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 10.11.23.
//

import SwiftUI

// MARK: - Tips, Infoboxes, Components Popover view ....

struct PopoverBootcamp: View {
    
    @State private var show: Bool = false
    @State private var feelings: [String] = [
        "Super 🥳",
        "Good 😀",
        "Ok 👍",
        "Not bad 😒",
        "Bad 🙅‍♂️"
    ]
    
    var body: some View {
        ZStack {
            Color.gray.ignoresSafeArea()
            
            VStack {
                
                Spacer()
                
                Button("Provide Feedback") {
                    show.toggle()
                }
                .padding(20)
                .background(Color.yellow)
                .popover(isPresented: $show, attachmentAnchor: .point(.top), content: {
                    ScrollView {
                        VStack(alignment: .leading, spacing: 12) {
                            ForEach(feelings, id: \.self) { feel in
                                Button(feel) {
                                    
                                }
                                if feel != feelings.last {
                                    Divider()
                                }
                            }
                        }
                        .padding(20)
                    }
                    // MARK: - INFO BOX
                    .presentationCompactAdaptation(.popover)
                    // MARK: - Druga opcija npr za male ekrane da bi moglo da se utice gde se tacno popover pojavljuje
    //                    .presentationCompactAdaptation(horizontal: .popover, vertical: .popover)
            })
            }
        }
    }
}

#Preview {
    PopoverBootcamp()
}
