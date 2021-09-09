//
//  TopView.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/6/21.
//

import SwiftUI

struct TopView: View
{
    @Environment(\.presentationMode) var presentationMode: Binding<PresentationMode>
    @Environment(\.colorScheme) var colorScheme
    var geo:GeometryProxy
    var user: User
    
    var body: some View
    {
        HStack
        {
            ProfileTag(name: user.Name, usertag: user.Tag, image: user.ProfileImage)
                .padding()
            
            Spacer()
            
            Button
            {
                presentationMode.wrappedValue.dismiss()
            } label:
            {
                Image(systemName: "xmark")
                    .foregroundColor(colorScheme == .dark ? .white : .black)
                    .padding()
            }
        }.background(
            Color(UIColor.secondarySystemBackground)
                .opacity(0.5)
                .cornerRadius(10)
        )
    }
}
