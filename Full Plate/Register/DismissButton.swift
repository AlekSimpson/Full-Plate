//
//  DismissButton.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/5/21.
//

import SwiftUI

struct DismissButton: View
{
    @Environment(\.colorScheme) var colorScheme
    @Binding var showself:Bool
    
    var body: some View
    {
        ZStack
        {
            Button
            {
                self.showself.toggle()
            } label:
            {
                Image(systemName: "arrow.turn.right.down")
                    .foregroundColor((colorScheme == .dark ? .white : .black))
            }
        }
    }
}
