//
//  HomeView.swift
//  WaterReminder
//
//  Created by Aurélien Girault on 02/02/2020.
//

import SwiftUI

struct HomeView: View {
    
    func setNotification() -> Void {
        let notificationManager = LocalNotificationManager()

        notificationManager.addNotification(title: "Il est temps de boire un peu d'eau 😉")
        notificationManager.schedule()
        
    }
    
    var body: some View {
        Button(action: {
            self.setNotification()
        }) {
            Text("Créer une notification")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}
