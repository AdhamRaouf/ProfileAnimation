//
//  ContentView.swift
//  Profile Animation
//
//  Created by Adham Raouf on 04/11/2022.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isProfileExpanded = false
    @Namespace private var profileAnimation
    
    var body: some View {
       
        
        VStack {
            
            if isProfileExpanded {
                expandedProfileView
            } else {
                collapsedProfileView
            }
            Spacer()
            }
        
        }
    var collapsedProfileView : some View {
        HStack{
            profilePic
                .matchedGeometryEffect(id: "image", in: profileAnimation)
                .frame(width: 150, height: 150)
            
            VStack(alignment:.leading){
                Text("Adham Raouf")
                    .matchedGeometryEffect(id: "Name", in: profileAnimation)
                    .font(.title)
                    .bold()
                Text("iOS Developer")
                    .matchedGeometryEffect(id: "job", in: profileAnimation)
                    .foregroundColor(.secondary)
            }
        }
    }
    
    var expandedProfileView : some View {
        VStack{
            profilePic
                .matchedGeometryEffect(id: "image", in: profileAnimation )
                .frame(width: 200, height: 200)
            
            VStack(){
                Text("Adham Raouf")
                    .matchedGeometryEffect(id: "Name", in: profileAnimation)
                    .font(.title)
                    .bold()
                Text("iOS Developer")
                    .matchedGeometryEffect(id: "job", in: profileAnimation)
                    .foregroundColor(.red)
                
                Text("Peter Piper picked a peck of pickled peppersA peck of pickled peppers Peter Piper pickedIf Peter Piper picked a peck of pickled peppersWhere’s the peck of pickled peppers Peter Piper picked?")
                    .padding([.top, .leading, .trailing])
                
            }
        }
    }
    
    var profilePic: some View {
        Image("King Of The North")
            .resizable()
            .scaledToFit()
            .clipShape(Circle())
            .onTapGesture {
                withAnimation(.spring()){
                    isProfileExpanded.toggle()
                }
            }
        }
    }
        
   





struct ContentView_Previews: PreviewProvider {
            static var previews: some View {
                ContentView()
                    .preferredColorScheme(.dark)
            }
        }
    

   

