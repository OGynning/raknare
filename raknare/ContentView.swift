//
//  ContentView.swift
//  raknare
//
//  Created by oscar gynning on 2022-10-06.
//

import SwiftUI
struct ContentView: View {
    @State var theNumber = 0
    @State var userNumber = ""
    @State var errrortext = ""
    var body: some View {
        VStack {
            Text(String(theNumber))
                .font(.largeTitle)
            
            Text (errrortext)
                .fontWeight(.bold)
                .foregroundColor(Color.red)
            
            TextField("Skriv siffra", text: $userNumber).keyboardType(.numberPad)
            
            Button(action: {
                
                calcStuff(howcalc: "plus")
                
            }, label: {
                
                Text("+ PLUS +")
                
            }).padding()
            
            Button(action: {
                
                calcStuff(howcalc: "minus")
                
            }, label: {
                Text("- MINUS -")
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                
                calcStuff(howcalc: "multiplicera")
                
            }, label: {
                Text("* multiplicera *")
                
            })
            .padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/)
            
            Button(action: {
                
                calcStuff(howcalc: "dividera")
                
            }, label: {
                Text("/ dividera /")
            })
            .padding(.all)
            
            Button(action: {
                
                theNumber = 0
                
            }, label: {
                Text(" Reset ")
            })
            .padding(.all)
        }
    }
    func calcStuff(howcalc : String){
        
        errrortext = ""
        
        let CalcSiffran = Int(userNumber)
        
        if(CalcSiffran != nil) {
            if(howcalc == "plus"){
                theNumber = theNumber + CalcSiffran!
                
            }
            
            if(howcalc == "minus"){
                theNumber = theNumber - CalcSiffran!
                
            }
            
            if(howcalc == "multiplicera"){
                theNumber = theNumber * CalcSiffran!
                
            }
            
            if(howcalc == "dividera"){
                if(CalcSiffran != 0){
                    theNumber = theNumber / CalcSiffran!
                }
                else{
                    errrortext = "divison med noll!!!"
                }
                
                
            }
            
            userNumber = ""
        }
        
    }
}
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}























