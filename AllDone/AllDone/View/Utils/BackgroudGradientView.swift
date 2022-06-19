//
//  BackgroudGradientView.swift
//  AllDone
//
//  Created by Albert Mensah on 19/06/2022.
//

import SwiftUI

struct BackgroudGradientView: View {
    var body: some View {
        LinearGradient(gradient: Gradient(colors:[ Color.blue, Color.blue.opacity(0.5)]), startPoint: .top, endPoint: .bottom)
        
            .ignoresSafeArea()
    }
        
}

struct BackgroudGradientView_Previews: PreviewProvider {
    static var previews: some View {
        BackgroudGradientView()
    }
}
