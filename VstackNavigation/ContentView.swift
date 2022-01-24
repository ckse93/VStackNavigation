//
//  ContentView.swift
//  VstackNavigation
//
//  Created by Zack Jung on 1/24/22.
//

import SwiftUI

struct ContentView: View {
    @EnvironmentObject var router: Router
    
    var body: some View {
        VStack {
            switch(router.selection) {
            case .Main:
                NavigationView {
                    ChildView()
                }
                
            case .Second:
                NavigationView {
                    Text("Second View")
                        .font(.title)
                        .fontWeight(.bold)
                        .navigationTitle("2")
                }
                
            case .Third:
                NavigationView {
                    Text("Third View")
                        .font(.title)
                        .fontWeight(.bold)
                        .navigationTitle("3")
                }
                
            case .Fourth:
                NavigationView {
                    Text("Fourth View")
                        .font(.title)
                        .fontWeight(.bold)
                        .navigationTitle("4")
                }
                
            case .Fifth:
                NavigationView {
                    Text("Fifth View")
                        .font(.title)
                        .fontWeight(.bold)
                        .navigationTitle("5")
                }
            } // first part of vstack
            
            HStack {
                Button {
                    Router.shared.selection = .Main
                } label: {
                    Text("MAIN")
                        .padding()
                }
                
                Button {
                    Router.shared.selection = .Second
                } label: {
                    Text("2")
                        .padding()
                }
                
                Button {
                    Router.shared.selection = .Third
                } label: {
                    Text("3")
                        .padding()
                }
                
                Button {
                    Router.shared.selection = .Fourth
                } label: {
                    Text("4")
                        .padding()
                }
                
                Button {
                    Router.shared.selection = .Fifth
                } label: {
                    Text("5")
                        .padding()
                }

            }
        }
    }
}

struct ChildView: View {
    var body: some View {
        VStack {
            Button {
                Router.shared.selection = .Main
            } label: {
                Text("MAIN")
                    .padding()
            }
            
            Button {
                Router.shared.selection = .Second
            } label: {
                Text("2")
                    .padding()
            }
            
            Button {
                Router.shared.selection = .Third
            } label: {
                Text("3")
                    .padding()
            }
            
            Button {
                Router.shared.selection = .Fourth
            } label: {
                Text("4")
                    .padding()
            }
            
            Button {
                Router.shared.selection = .Fifth
            } label: {
                Text("5")
                    .padding()
            }
        }
    }
}
