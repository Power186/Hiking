//
//  HikeDetail.swift
//  Hiking
//
//  Created by Scott on 7/22/20.
//  Copyright © 2020 Scott. All rights reserved.
//

import SwiftUI

struct HikeDetail: View {
    
    let hike: Hike
    @State private var zoomed: Bool = false
    
    var body: some View {
        
        VStack {
            Image(hike.imageURL)
            .resizable()
                .aspectRatio(contentMode: self.zoomed ? .fill : .fit)
                .onTapGesture {
                    withAnimation {
                        self.zoomed.toggle()
                    }
            }
            
            Text(hike.name)
                .font(.title)
                .foregroundColor(.pink)
            
            HStack {
                Text(String(format: "%.2f", hike.miles))
                Text("miles")
            }
        }.navigationBarTitle(Text(hike.name), displayMode: .inline)
    }
}

struct HikeDetail_Previews: PreviewProvider {
    static var previews: some View {
        HikeDetail(hike: Hike(name: "Angles Landing", imageURL: "sal", miles: 10.0))
    }
}
