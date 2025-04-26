//
//  ContentView.swift
//  Memorize
//
//  Created by Andy Chen on 4/17/25.
//

import SwiftUI
import CoreData

struct ContentView: View {
    

    var body: some View {
        HStack{
            CardView(isFaceUp: true)
            CardView()
            CardView()
            CardView()
        }
        .padding()
        .imageScale(.small)
        .foregroundColor(.orange)
    }

   
}

struct CardView: View {
    var isFaceUp: Bool = false
    var body: some View {
        ZStack (content: {
            if isFaceUp {
                RoundedRectangle(cornerRadius: 12).foregroundColor(.white)
                RoundedRectangle(cornerRadius: 12).strokeBorder(style: StrokeStyle(lineWidth: 10, dash: [10, 2]))
                Text("🏄🏽").font(.largeTitle)
            }
            else {
                RoundedRectangle(cornerRadius: 12).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/)
            }
            
        })
    }
}


#Preview {
    ContentView().environment(\.managedObjectContext, PersistenceController.preview.container.viewContext)
}
