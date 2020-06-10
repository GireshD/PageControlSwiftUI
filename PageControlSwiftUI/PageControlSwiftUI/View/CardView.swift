//
//  CardView.swift
//  PageControlSwiftUI
//
//  Created by Giresh Dora on 07/06/20.
//  Copyright © 2020 Giresh. All rights reserved.
//

import SwiftUI

struct CardView: View {
    
    @Binding var page: Int
    var width: CGFloat
    var data: Type
    
    var body: some View {
        
        VStack{
            VStack{
                Text(self.data.name)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                
                Text(self.data.cName)
                    .foregroundColor(.gray)
                    .padding(.vertical)
                
                Spacer(minLength: 0)
                
                Image(self.data.image)
                    .resizable()
                    .frame(width: self.width - (self.page == self.data.id ? 100 : 100), height: (self.page == self.data.id ? 250 : 200))
                    .cornerRadius(20)
                
                Text(self.data.price)
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                
                Button(action: {
                    
                }){
                    Text("Buy")
                        .foregroundColor(.black)
                        .padding(.vertical, 10)
                        .padding(.horizontal, 30)
                }
                .background(Color("Color"))
                .clipShape(Capsule())
                .padding(.top, 20)
                
                
                
                Spacer(minLength: 0)
                
            }
            .padding(.horizontal, 20)
            .padding(.vertical, 25)
            .background(Color.white)
            .cornerRadius(20)
            .padding(.top, 25)
            .padding(.vertical, self.page ==  self.data.id ? 0 : 25)
            .padding(.horizontal, self.page ==  self.data.id ? 0 : 25)
        }
        .frame(width: self.width)
        .animation(.default)
        
    }
}

//struct CardView_Previews: PreviewProvider {
//    static var previews: some View {
//        CardView(page: , width: UIScreen.main.bounds.width, data: items[0])
//            .background(Color("Color"))
//    }
//}
