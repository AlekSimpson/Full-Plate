//
//  Full_PlateApp.swift
//  Full Plate
//
//  Created by Alek Simpson on 9/5/21.
//

import SwiftUI

@main
struct Full_PlateApp: App
{
//    let persistenceController = PersistenceController.shared

    var body: some Scene
    {
        WindowGroup
        {
            LoggedOut(signedIn: false)
                //.environment(\.managedObjectContext, persistenceController.container.viewContext)
        }
    }
}
