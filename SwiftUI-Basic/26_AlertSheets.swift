//
//  26_AlertSheets.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 07.11.23.
//

import SwiftUI

struct AlertSheets: View {
    
    @State private var showSheet: Bool = false
    
    var body: some View {
        Button("Click") {
            showSheet.toggle()
        }
        .actionSheet(isPresented: $showSheet, content: getActionSheet)
    }
    
    func getActionSheet() -> ActionSheet {
//        ActionSheet(title: Text("Choose"))
        
        let button1 = ActionSheet.Button.default(Text("Default"))
        
        let button2 = ActionSheet.Button.destructive(Text("Destructive")) {
            print("")
        }
        
        let button3 = ActionSheet.Button.cancel(Text("Cancel")) {
            print("")
        }
        
        return ActionSheet(
            title: Text("Title"),
            message: Text("Message"),
            buttons: [button1, button2, button3])
    }
    
    
}

#Preview {
    AlertSheets()
}
