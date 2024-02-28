//
//  HomeView.swift
//  CryptoUI
//
//  Created by Quang Nguyen on 26/02/2024.
//

import SwiftUI

struct HomeView: View {
    
    @EnvironmentObject private var vm: HomeViewModel
    @State private var showPortforlio: Bool = false
    
    var body: some View {
        ZStack {
            // backgroud enter
            Color.theme.background
                .ignoresSafeArea()
            
            // content layer
            VStack {
                homeHeader
                
                if !showPortforlio {
                    List {
                        ForEach(vm.allCoins) { coin in
                            CoinRowView(coin: coin, showHoldingColumn: false)
                        }
                    }
                    .listStyle(PlainListStyle())
                    .transition(.move(edge: .leading))
                }
                Spacer(minLength: 0)
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        NavigationView{
            HomeView().navigationBarHidden(true)
        }
        .environmentObject(dev.homeVM)
    }
}

extension HomeView {
    private var homeHeader: some View {
        HStack{
            CircleButtonView(iconName: showPortforlio ? "plus" : "info")
                .animation(.none)
                .background(
                    CircleButtonAnimationView(animate: $showPortforlio)
                )
            Spacer()
            Text(showPortforlio ? "Portfolio" : "Live Prices")
                .font(.headline)
                .fontWeight(.heavy)
                .foregroundColor(Color.theme.accent)
                .animation(.none)
            Spacer()
            CircleButtonView(iconName: "chevron.right")
                .rotationEffect(Angle(degrees: showPortforlio ? 180 : 0))
                .onTapGesture {
                    withAnimation(.spring()) {
                        showPortforlio.toggle()
                    }
            }
        }
        .padding(.horizontal)
    }
}
