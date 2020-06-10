//
//  PageControl.swift
//  PageControlSwiftUI
//
//  Created by Giresh Dora on 10/06/20.
//  Copyright © 2020 Giresh. All rights reserved.
//

import Foundation
import SwiftUI

struct PageControl: UIViewRepresentable {
    
    @Binding var page: Int
    
    func makeUIView(context: Context) -> UIPageControl {
        
        let pageControl = UIPageControl()
        pageControl.currentPageIndicatorTintColor = .black
        pageControl.pageIndicatorTintColor = UIColor.black.withAlphaComponent(0.2)
        pageControl.numberOfPages = items.count
        return pageControl
    }
    
    func updateUIView(_ uiView: UIPageControl, context: Context) {
        DispatchQueue.main.async {
            uiView.currentPage = self.page
        }
    }
}
