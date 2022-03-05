//
//  Home.swift
//  AutoscrollableMenu
//
//  Created by Danil Peregorodiev on 05.03.2022.
//

import SwiftUI

struct Home: View {
    
    @State var currentTab = ""
    @Namespace var animation
    
    @Environment(\.colorScheme) var scheme
    
    var body: some View {
        
        VStack(spacing: 0) {
            VStack {
                HStack(spacing: 15) {
                    Button {
                        
                    } label: {
                        Image(systemName: "arrow.left")
                            .font(.title2)
                    }
                    Text("McDonalds's - Chinatown")
                        .font(.title3)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity, alignment: .leading)
                    
                    Button {
                        
                    } label: {
                        Image(systemName: "magnifyingglass")
                            .font(.title2)
                    }
                }
                .foregroundColor(.primary)
                .padding(.horizontal)
                
                
                ScrollViewReader {proxy in
                    
                    ScrollView(.horizontal, showsIndicators: false) {
                        HStack(spacing: 30) {
                            
                            ForEach(tabsItems) {tab in
                                VStack {
                                    Text(tab.tab)
                                        .font(.callout)
                                        .foregroundColor(currentTab == tab.id ? .black : .gray)
                                    
                                    
                                    if currentTab == tab.id {
                                        Capsule()
                                            .fill()
                                            .matchedGeometryEffect(id: "TAB", in: animation)
                                            .frame(height: 3)
                                            .padding(.horizontal, -10)
                                    }
                                    else {
                                        Capsule()
                                            .fill(.clear)
                                            .frame(height: 3)
                                            .padding(.horizontal, -10)
                                    }
                                }
                                .onTapGesture {
                                    withAnimation(.easeInOut) {
                                        currentTab = tab.id
                                        proxy.scrollTo(currentTab, anchor: .topTrailing)
                                    }
                                }
                            }
                        }
                        .padding(.horizontal, 30)
                    }
                }
                .padding(.top)
                
                .background(scheme == .dark ? Color.black : Color.white)
                .overlay(
                    Divider()
                        .padding(.horizontal, 15)
                    ,alignment: .bottom
                )
            }
            .padding([.top])
            ScrollView(.vertical, showsIndicators: false) {
                
            }
            
        }
        .onAppear {
            currentTab = tabsItems.first?.id ?? ""
        }
    }
}

struct Home_Previews: PreviewProvider {
    static var previews: some View {
        Home()
    }
}
