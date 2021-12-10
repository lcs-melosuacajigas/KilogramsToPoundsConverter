//
//  ContentView.swift
//  KilogramsToPoundsConverter
//
//  Created by Mateo Elosua on 2021-12-10.
//

import SwiftUI

struct ContentView: View {
    @State var massInKilograms = 0.0
    
    // MARK: Computed properties
    var massInPounds: Double {
        return massInKilograms * 2.205
    }
    var feedback: String {
        switch  massInKilograms {
        case (0...30):
                return ""
        case 30...60:
                return ""
            case 60...90:
                return ""
            case 90...120:
                return ""
            case 120...150:
                return ""
            default:
                return ""
        
        }
    }
    
    var body: some View {
        VStack {
            HStack {
                Text("Kilograms")
            }
            //MARK: Imput
            Slider(value: $massInKilograms,
                   in: 0.0...150.0,
                   step: 0.1,
                   label: {
                Text("Kilograms")
            },
                   minimumValueLabel: {
                Text("0")
            },
                   maximumValueLabel: {
                Text("150")
            })
            
            Text("\(String(format: "%.1f", massInKilograms)) Kg")
                .bold()
                .padding()
            
            HStack {
                Text("Pounds")
                    .bold()
                
                Spacer()
            }
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
