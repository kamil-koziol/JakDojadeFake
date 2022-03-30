//
//  ContentView.swift
//  JakDojadeFake
//
//  Created by Kamil Kozioł on 02/12/2021.
//

import SwiftUI

struct ContentView: View {
    @State var scale = 0.5;
    @State var pX: CGFloat = 30;
    
    @State var id = 23561431265312 + Int.random(in: -100000000..<100000000)
    @State var ticket_type = "1 GODZINNY LINIE ZWYKŁE I NOCNE DO KOŃCA KURSU"
    @State var date = Date()
    @State var buy_date = Date().addingTimeInterval(TimeInterval(-1.0 * 60))
    @State var end_date = Date().addingTimeInterval(TimeInterval(60.0 * 60))
    @State var price = 1.80
    @State var line = 199
    @State var first_num = 100000000 + Int.random(in: 0..<1000000)
    @State var second_num = 500000 + Int.random(in: 0..<10000)
    @State var third_num = Int.random(in: 100000..<999999)
    
    let timer = Timer.publish(every: 1, on: .main, in: .common).autoconnect()
    
    var repeatingAnimation: Animation {
            Animation
                .easeInOut(duration: 7)
                .repeatForever()
        }
    var body: some View {
        VStack(spacing: 0) {
            ZStack {
                HStack {
                    Text(String(id))
                        .font(.callout)
                        .fontWeight(.semibold)
                        .foregroundColor(Color("jkBackground"))
                        .multilineTextAlignment(.center)
                        .onLongPressGesture(perform: {
                            
                        })
                }
                
                HStack {
                    Image(systemName: "arrow.left")
                        .resizable()
                        .frame(width: 16, height: 16, alignment: .leading)
                        .foregroundColor(Color("jkBackground"))
                        .padding(.leading, 10.0)
                    Spacer()
                }
                .padding()
            }
            
            .background(Color.accentColor)
            
            HStack {
                Spacer()
                HStack {
                    Text(ticket_type)
                        .font(.system(size: 22))
                        .fontWeight(.semibold)
                        .foregroundColor(Color("jkBackground"))
                        .truncationMode(.tail)
                        .frame(width: 310, height: 80)
                    
                    Image("ulga")
                        .resizable()
                        .frame(width: 40.0, height: 60)
                }
                Spacer()
            }
            .padding(.top, 20)
            .padding(.bottom, 14.0)
            .background(Color.accentColor)
            
            
            HStack {
                VStack {
                    Text("Ważny do")
                        .fontWeight(.medium)
                        .foregroundColor(Color("AccentColor2"))
                    Text(end_date.formatted(.dateTime.hour().minute().second()))
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.accentColor)
                        .fixedSize()
                    Text(end_date.formatted(.dateTime.day().month(.defaultDigits).year()))
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color.accentColor)
                }
                .frame(maxWidth: .infinity)
                VStack {
                    Text("Cena")
                        .fontWeight(.medium)
                        .foregroundColor(Color("AccentColor2"))
                        .padding(.bottom, 5)
                    HStack(spacing: 2){
                        Text(String(format: "%.2f", price))
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(Color.accentColor)
                        Text("PLN")
                            .fontWeight(.bold)
                    }
                }
                .frame(maxWidth: .infinity)
                VStack {
                    Text("Linia")
                        .fontWeight(.medium)
                        .foregroundColor(Color("AccentColor2"))
                        .padding(.bottom, 5)
                    Text(String(line))
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
                    Text(buy_date.formatted(.dateTime.hour().minute().second()))
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.accentColor)
                    Text(buy_date .formatted(.dateTime.day().month().year()))
                        .font(.caption)
                        .fontWeight(.bold)
                        .foregroundColor(Color.accentColor)
                }
            }
            .padding(.horizontal)
            .padding(.top, 10)
            
            ZStack{
                HStack {
                    Spacer()
                    Image(uiImage: QRCoder.generate(from: "https://www.youtube.com/watch?v=dQw4w9WgXcQ"))
                        .interpolation(.none)
                        .resizable()
                        .frame(width: 175, height: 175)
                    Spacer()
                }
                .padding(.top, 40)
                
                Text("")
                    .frame(width:60, height:60)
                    .background(Color("MiddleSquare"))
                    .padding(.top, 38)
                
                VStack(spacing: 0){
                    Text(String(first_num))
                        .multilineTextAlignment(.center)
                        .frame(width: 55, height: 44)
                        .truncationMode(.tail)
                        .lineLimit(2)
                    Text(String(second_num))
                        .foregroundColor(Color.white)
                }
                .padding(.top, 36)
            }
            
            VStack(alignment:.leading) {
                Text(String(third_num))
                    .font(.title)
                    .fontWeight(.bold)
                    .foregroundColor(Color.accentColor)
                Text("Dzisiaj \(date.formatted(.dateTime.hour().minute()))")
                    .foregroundColor(Color.accentColor)
            }
            .padding(.top, 60)
            .padding(.leading, -120)
            
            
            Spacer()
            
            
            Image("mzk")
                .onAppear(perform: {
                    withAnimation(self.repeatingAnimation){
                        pX = 330;
                    }
                    withAnimation(Animation.spring(response: 7, dampingFraction: 0).repeatForever()) {
                        scale = 0.6;
                    }
                })
                .padding(.top, 10)
                .scaleEffect(scale)
                .offset(x: pX)
                .padding(.leading, -200)
        }
        .preferredColorScheme(.light)
        .onReceive(timer) { time in
            date = Date()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
