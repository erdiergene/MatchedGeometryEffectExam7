  //
//  ContentView.swift
//  MatchedGeometryEffectExam7
//
//  Created by Erdi Ergene on 21.07.2020.
//

import SwiftUI

struct ContentView: View {
    @State private var showTree = false
    @State private var showText = false
    @Namespace var nameSpace
    var body: some View {
        ZStack {
            VStack {
                Image("agac").resizable().frame(width: 100, height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/).cornerRadius(25).matchedGeometryEffect(id: "tree", in: nameSpace)
                Text("Show me more detail.")
                    
            }
        
        
        
        if showTree {
            VStack {
                ScrollView {
                    VStack {
                       
                        Image("agac").resizable().frame(width: 300, height: 300).cornerRadius(25)
                            .matchedGeometryEffect(id: "tree", in: nameSpace)
                        
                        
                        
                        TextEditor(text: .constant("Toprağa düşen tohumdan en önce fide meydana gelir. Fide bir yıl sonra fidan hâlini alır. Hücrelerinin çoğalmasıyla dal ve yapraklar, gövde ve kök olarak üç parçadan ibaret bir ağacın küçük bir modeli olur. Her yıl ağacın dallarında ve köklerinde yeni sürgünler çıkarken, gövdede de bir tane yıllık halka meydana gelir. Bu halkalar, ağacın enine büyüyerek yaptığı odun tabakasıdır. Yağışı bol yıllarda, geniş bir halka; kurak geçen yıllarda ise, ince ve küçük bir halka meydana gelir. Bu halkalardan ağacın yaşı kolayca anlaşılabilir.")).foregroundColor(/*@START_MENU_TOKEN@*/.blue/*@END_MENU_TOKEN@*/).frame(width: 300, height: 300)
                          
                        
                    }
                    .onAppear {
                        DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                            showText.toggle()
                        }
                    }
                    .onDisappear {
                        
                            showText.toggle()
                    
                }
            }
        }
      
            
        }
        }
    .animation(.spring())
    .onTapGesture {
        showTree.toggle()
       
        
    }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
