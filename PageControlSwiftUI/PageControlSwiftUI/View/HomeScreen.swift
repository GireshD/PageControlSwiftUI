//
//  HomeScreen.swift
//  PageControlSwiftUI
//
//  Created by Giresh Dora on 07/06/20.
//  Copyright © 2020 Giresh. All rights reserved.
//

import SwiftUI

struct HomeScreen: View {
    
    @State var menu = 0
    @State var page = 0
    
    var body: some View {
        
        ZStack{
            Color("Color").edgesIgnoringSafeArea(.all)
            
            VStack{
                
                TopBar()
                
                HStack(alignment: .center){
                    
                    Button(action:{
                        self.menu = 0
                    }){
                        Text("Chinese")
                            .foregroundColor(self.menu == 0 ? .white : .black)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)
                        
                    }
                    .background(self.menu == 0 ? Color.black : Color.white)
                    .clipShape(Capsule())
                    
                    Button(action:{
                        self.menu = 1
                    }){
                        Text("Italian")
                            .foregroundColor(self.menu == 1 ? .white : .black)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)
                        
                    }
                    .background(self.menu == 1 ? Color.black : Color.white)
                    .clipShape(Capsule())
                    
                    
                    Button(action:{
                        self.menu = 2
                    }){
                        Text("Maxican")
                            .foregroundColor(self.menu == 2 ? .white : .black)
                            .padding(.vertical, 10)
                            .padding(.horizontal, 20)
                        
                    }
                    .background(self.menu == 2 ? Color.black : Color.white)
                    .clipShape(Capsule())
                }
                .padding(.top, 30)
                
                GeometryReader{g in
                    Carousel(width: UIScreen.main.bounds.width, height: g.frame(in: .global).height, page: self.$page)
                }
               
                PageControl(page: self.$page)
                    .padding(.top, 20)
                
                
            }
            .padding(.vertical)
        }
    }
}

struct TopBar: View {
    var body: some View{
        ZStack{
            
            HStack{
                Button(action: {
                    
                }){
                    Image("Menu")
                        .renderingMode(.original)
                    .padding()
                }
                
                Spacer()
                
                Image("pic")
                    .resizable()
                .frame(width: 40, height: 40)
                .cornerRadius(12)
            }
            .padding(.horizontal)
            
            Text("Food Items")
                .font(.system(size: 22))
        }
    }
}

struct CardListView: View {

    @Binding var page: Int
    var body: some View{

        HStack(spacing: 0){
            
            ForEach(items){item in
                CardView(page: self.$page, width: UIScreen.main.bounds.width, data: item)
            }
        }
    }
}

struct HomeScreen_Previews: PreviewProvider {
    static var previews: some View {
        HomeScreen()
    }
}


