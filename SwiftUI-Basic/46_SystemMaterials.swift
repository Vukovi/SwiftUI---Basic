//
//  46_SystemMaterials.swift
//  SwiftUI-Basic
//
//  Created by Vuk Knezevic on 09.11.23.
//

import SwiftUI

// MARK: - Material background
/*
 public static var regularMaterial: Material { get }

 /// A material that's more opaque than translucent.
 public static var thickMaterial: Material { get }

 /// A material that's more translucent than opaque.
 public static var thinMaterial: Material { get }

 /// A mostly translucent material.
 public static var ultraThinMaterial: Material { get }

 /// A mostly opaque material.
 public static var ultraThickMaterial: Material { get }
 */

struct SystemMaterials: View {
    
    var body: some View {
        VStack {
            Spacer()
            VStack {
                RoundedRectangle(cornerRadius: 4)
                    .frame(width: 50, height: 4)
                    .padding()
                
                Spacer()
            }
            .frame(height: 350)
            .frame(maxWidth: .infinity)
            .background(.ultraThinMaterial)
            .clipShape(RoundedRectangle(cornerRadius: 30))
        }
        .ignoresSafeArea()
        .background(
            Image("test2")
        )
    }
}

#Preview {
    SystemMaterials()
}
