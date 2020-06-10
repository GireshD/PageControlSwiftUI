//
//  Carousel.swift
//  PageControlSwiftUI
//
//  Created by Giresh Dora on 10/06/20.
//  Copyright © 2020 Giresh. All rights reserved.
//

import Foundation
import SwiftUI

struct Carousel: UIViewRepresentable {
    func makeCoordinator() -> Coordinator {
        return Carousel.Coordinator(parent: self)
    }
    
    
    var width: CGFloat
    var height: CGFloat
    @Binding var page: Int
    
    func makeUIView(context: Context) ->UIScrollView {
        
        let total = width * CGFloat(items.count)
        let view = UIScrollView()
        view.isPagingEnabled = true
        view.contentSize = CGSize(width: total, height: 1.0)
        view.bounces = true
        view.showsVerticalScrollIndicator = false
        view.showsHorizontalScrollIndicator = false
        view.delegate = context.coordinator
        
        let cardListView = UIHostingController(rootView: CardListView(page: self.$page))
        cardListView.view.frame = CGRect(x: 0, y: 0, width: total, height: self.height)
        cardListView.view.backgroundColor = .clear
        view.addSubview(cardListView.view)
        
        return view
    }
    
    func updateUIView(_ uiView: UIScrollView, context: Context) {
        
    }
    
    class Coordinator: NSObject, UIScrollViewDelegate{
        
        var parent: Carousel
        
        init(parent: Carousel) {
            self.parent = parent
        }
        
        func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
            let page = Int(scrollView.contentOffset.x / UIScreen.main.bounds.width)
            self.parent.page = page
        }
    }
}
