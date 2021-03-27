//
//  NoteTopMenuView.swift
//  Poz-v3
//
//  Created by Kish Parikh on 3/26/21.
//

import SwiftUI

struct NoteTopMenuView: View {
    
    @State var prevPostsShowing = false
    
    @Environment(\.colorScheme) var colorScheme
    
    @Binding var tabIndex: Int
    
    var body: some View {
        HStack {
            
            // home button
            Button (action: { tabIndex = 0 }) {
                Image(systemName: ("xmark")).resizable()
                    .frame(width: 20, height: 20)
                    .foregroundColor(colorScheme == .dark ? Color(#colorLiteral(red: 0.9254901961, green: 0.9294117647, blue: 0.9333333333, alpha: 1)) : Color(#colorLiteral(red: 0.1514667571, green: 0.158391118, blue: 0.1616251171, alpha: 1)))
            }
        
            Spacer()
            
            Button (action:{ prevPostsShowing.toggle() }) {
                Image(systemName: "clock.arrow.circlepath")
                    .font(Font.custom("Poppins-Light", size: 26))
                    .foregroundColor(colorScheme == .dark ? Color(#colorLiteral(red: 0.9254901961, green: 0.9294117647, blue: 0.9333333333, alpha: 1)) : Color(#colorLiteral(red: 0.1514667571, green: 0.158391118, blue: 0.1616251171, alpha: 1)))
            }
            .sheet(isPresented: $prevPostsShowing, content: { NotesListView() })

            
        }
    }
}