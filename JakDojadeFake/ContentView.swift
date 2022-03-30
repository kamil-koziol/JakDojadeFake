//
//  ContentView.swift
//  JakDojadeFake
//
//  Created by Kamil Kozioł on 02/12/2021.
//

import SwiftUI

struct ContentView: View {
    var repeatingAnimation: Animation {
            Animation
                .linear(duration: 2)
                .repeatForever()
        }
    var body: some View {
        VStack(alignment: .leading, spacing: 0) {
            ZStack {
                HStack {
                    
                    Spacer()
                    Text("23561431265312")
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("jkBackground"))
                    Spacer()
                }
                
                HStack {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 16, height: 16, alignment: .leading)
                        .foregroundColor(Color("jkBackground"))
                        .padding(.leading, 10.0)
                    Spacer()
                }
            }
            .background(Color.accentColor)
            
            HStack {
                Spacer()
                HStack {
                    Text("1 GODZINNY LINIE ZWYKŁE I NOCNE DO KOŃCA KURSU")
                        .font(.system(size: 22))
                        .fontWeight(.bold)
                        .foregroundColor(Color("jkBackground"))
                        .truncationMode(.tail)
                        .frame(width: 310, height: 80)
                    Image("ulga")
                        .resizable()
                        .frame(width: 50.0, height: 70)
                }
                Spacer()
            }
            .padding(.top, 35.0)
            .padding(.bottom, 24.0)
            .background(Color.accentColor)
            
            
            HStack {
                VStack {
                    Text("Ważny do")
                        .fontWeight(.medium)
                        .foregroundColor(Color("AccentColor2"))
                    Text("15:41:31")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.accentColor)
                    Text("01.10.1022")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color.accentColor)
                }
                .frame(maxWidth: .infinity)
                VStack {
                    Text("Cena")
                        .fontWeight(.medium)
                        .foregroundColor(Color("AccentColor2"))
                    Text("1,80")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.accentColor)
                }
                .frame(maxWidth: .infinity)
                VStack {
                    Text("Linia")
                        .fontWeight(.medium)
                        .foregroundColor(Color("AccentColor2"))
                    Text("199")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.accentColor)
                }
                .frame(maxWidth: .infinity)
            }
            .padding()
            
            Divider()
                .frame(height:1)
            
            
            HStack {
                Text("Bilet skasowany")
                Spacer()
                VStack {
                    Text("15:41:31")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.accentColor)
                    Text("01.10.1022")
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color.accentColor)
                }
            }
            .padding()
            
            HStack {
            Spacer()
            Image(uiImage: QRCoder.generate(from: "ELEEKEKKEKEEKKE"))
                .interpolation(.none)
                .resizable()
                .frame(width: 200, height: 200)
            Spacer()
            }
            .padding(.top, 40)
            
            VStack(alignment:.leading) {
                Text("995093")
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.accentColor)
                Text("Dzisiaj 11:21")
                    .foregroundColor(Color.accentColor)
            }
            .padding(.top, 50)
            .padding(.leading, 70)
            
            
            Spacer()
            
            
            Image("mzk")
                .onAppear(perform: {
                    withAnimation(self.repeatingAnimation){}
                })
            
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
