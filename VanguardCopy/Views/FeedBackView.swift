//
//  FeedBackView.swift
//  VanguardCopy
//
//  Created by Kirtan Patel on 1/30/21.
//

import SwiftUI

struct FeedBackView: View {
    
    @Environment(\.presentationMode) var presentationMode
    
    @State private var feedback = 0
    @State private var rating = 0
    @State private var comment = ""
    
    var body: some View {
        NavigationView {
            VStack {
                HStack {
                    Text("Feedback")
                        .font(.title)
                    Spacer()
                }
                .padding()
                
                Picker(selection: $feedback, label: Text("What do you want to do?")) {
                    Text("I have a comment").tag(0)
                    Text("I found a bug").tag(1)
                }.pickerStyle(SegmentedPickerStyle())
                .labelsHidden()
                .padding(.horizontal)
                .padding(.bottom)
                
                HStack {
                    Text("Vanguard")
                        .font(.title)
                        .fontWeight(.heavy)
                        .foregroundColor(Color("vanguard"))
                    Spacer()
                }
                .padding(.horizontal)
                .padding(.bottom)
                
                VStack {
                    Picker(selection: $rating, label: Text("How satisfied are you?")) {
                        Text("1").tag(0)
                        Text("2").tag(1)
                        Text("3").tag(2)
                        Text("4").tag(3)
                        Text("5").tag(4)
                    }.pickerStyle(SegmentedPickerStyle())
                    
                    TextEditor(text: $comment)
                        .background(Color.gray.opacity(0.1))
                        .cornerRadius(5)
                        .onAppear {
                            UITextView.appearance().backgroundColor = .clear
                        }
                }
                .padding(.horizontal, 3)
                                
                Button(action: {}, label: {
                    Text("Submit")
                        .bold()
                        .font(.title3)
                        .foregroundColor(.white)
                        .frame(height: 45)
                        .frame(maxWidth: .infinity)
                        .background(Color("vanguard"))
                        .cornerRadius(15)
                        .padding()
                })
            }
            .navigationBarTitle("", displayMode: .inline)
            .toolbar {
                ToolbarItem(placement: .cancellationAction) {
                    Button(action: {
                        self.presentationMode.wrappedValue.dismiss()
                    }) {
                        Image(systemName: "xmark")
                    }
                }
            }.accentColor(Color("vanguard"))
        }
    }
}

struct FeedBackView_Previews: PreviewProvider {
    static var previews: some View {
        FeedBackView()
    }
}
