//
//  FieldView.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/5/21.
//

import SwiftUI

struct Field: View
{
    @Environment(\.colorScheme) var colorScheme
    var placeholder:String
    @Binding var text:String
    var geo:GeometryProxy
    
    var body: some View
    {
        ZStack
        {
            if placeholder == "Password" || placeholder == "Create a Password"
            {
                SecureField(placeholder, text: $text)
                    .accentColor(Color(UIColor.secondarySystemGroupedBackground).opacity(0.75))
            }else
            {
                TextField(placeholder, text: $text)
            }
        }.padding()
        .frame(width: (geo.size.width * 0.9) + 5, height: 50)
        .border((colorScheme == .dark ? Color.white : Color.black), width: 2.5)
    }
}
