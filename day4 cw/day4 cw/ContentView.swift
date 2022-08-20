//
//  ContentView.swift
//  day4 cw
//
//  Created by Zeinab H Eldeeb on 16/08/2022.
//

import SwiftUI

struct ContentView: View {
    @State var finalGrade = ""
    @State var gradedes = ""
    
    var body: some View {
        ZStack{
            Color.blue.opacity(0.3)
                .ignoresSafeArea()
            
            
            VStack{
                Text("حاسبة الدرجات")
                    .font(.largeTitle)
                    .foregroundColor(.white)
                Spacer()
                
                Image("calc")
                    .resizable()
                    .frame(width: 200, height: 200)
                
                TextField("Enter Your Grade", text: $finalGrade)
                    .background(.white)
                    .textFieldStyle(.roundedBorder)
                Text("احسب درجتي")
                    .frame(width: 120, height: 40)
                    .background(.yellow)
                    .onTapGesture {
                        if (Double(finalGrade) ?? 0) >= 90 {
                            gradedes = "امتياز"
                        }
                        else if (Double(finalGrade) ?? 0) >= 80 {
                            gradedes = "جيد جداً"
                        }
                        else if (Double(finalGrade) ?? 0) >= 70 {
                            gradedes = "جيد"
                        }
                        
                        else{
                            gradedes = "رسوب"
                        }
                    }
                //
                Text("اقد حصلت على درجة")
                
                Spacer()
                Text(gradedes)
                    .font(.largeTitle)
                
            }.padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
