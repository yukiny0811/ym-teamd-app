//
//  ContentView.swift
//  TeamDApp
//
//  Created by Yuki Kuwashima on 2023/11/29.
//

import TeamDLibrary

struct ContentView: View {
    
    @Default(.matchedPeople) var matchedPeople
    
    let profileViewController = ProfileViewController()
    let matchingViewController = MatchingViewController()
    
    var matchingView: some View {
        MatchingView(viewController: matchingViewController)
    }
    
    var messageView: some View {
        NavigationStack {
            List {
                ForEach(matchedPeople) { person in
                    NavigationLink {
                        MessageView(replyMessages: ReplyMessages.replyMessages)
                            .navigationTitle(person.name)
                    } label: {
                        Text(person.name)
                    }
                    .frame(height: 40)
                }
            }
            .navigationTitle("チャット")
        }
    }
    
    var profileView: some View {
        ProfileView(viewController: profileViewController)
    }
    
    var body: some View {
        TabView {
            matchingView
                .tabItem {
                    Image(systemSymbol: .homekit)
                }
            messageView
                .tabItem {
                    Image(systemSymbol: .message)
                }
            profileView
                .tabItem {
                    Image(systemSymbol: .person)
                }
        }
    }
}

#Preview {
    ContentView()
}
