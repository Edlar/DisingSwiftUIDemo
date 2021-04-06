//
//  ContentView.swift
//  DisingSwiftUIDemo
//
//  Created by Eduard Laryushkin on 06.04.2021.
//

import SwiftUI

struct ContentView: View {
    @State var show = false
    
    var body: some View {
        ZStack {
            TitleView()
                .blur(radius: show ? 20 : 0)
                .animation(.default)
            BackCardView()
                .background(show ? Color(#colorLiteral(red: 0.9688120484, green: 0.2044850588, blue: 0.3672356009, alpha: 1)) : Color(#colorLiteral(red: 0.3304594755, green: 0.05297198892, blue: 0.8573944569, alpha: 1)))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: show ? -400 : -40)
                .scaleEffect(0.9)
                .rotationEffect(.degrees(show ? 0 : 10))
                .rotation3DEffect(
                    .degrees(10),
                    axis: (x: 10, y: 0, z: 0)
                )
                .blendMode(.hardLight)
                .animation(.easeInOut(duration: 0.5))
            BackCardView()
                .background(show ? Color(#colorLiteral(red: 0.3304594755, green: 0.05297198892, blue: 0.8573944569, alpha: 1)) : Color(#colorLiteral(red: 0.9688120484, green: 0.2044850588, blue: 0.3672356009, alpha: 1)))
                .cornerRadius(20)
                .shadow(radius: 20)
                .offset(x: 0, y: show ? -200 :-20)
                .scaleEffect(0.95)
                .rotationEffect(.degrees(show ? 0 : 5))
                .rotation3DEffect(
                    .degrees(5),
                    axis: (x: 10, y: 0, z: 0)
                )
                .blendMode(.hardLight)
                .animation(.easeInOut(duration: 0.3))
            CardView()
                .blendMode(.hardLight)
                .onTapGesture {
                    show.toggle()
                }
            BottomCardView()
                .blur(radius: show ? 20 : 0)
                .animation(.default)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct CardView: View {
    var body: some View {
        VStack {
            HStack {
                VStack(alignment: .leading) {
                    Text("Дизайн SwiftUI")
                        .font(.title)
                        .fontWeight(.semibold)
                        .foregroundColor(.white)
                    Text("Сертификат")
                        .foregroundColor(Color("Primary"))
                }
                Spacer()
                Image("Logo SwiftUI")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 50)
            }
            .padding(.horizontal, 20)
            .padding(.top, 20)
            Image("2")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 300, height: 110, alignment: .top)
        }
        .frame(width: 340, height: 200)
        .background(Color.black)
        .cornerRadius(20)
        .shadow(radius: 20)
    }
}

struct BackCardView: View {
    var body: some View {
        VStack {
            Spacer()
        }
        .frame(width: 340, height: 200)
    }
}

struct TitleView: View {
    var body: some View {
        VStack {
            HStack {
                Text("Сертификаты")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                Spacer()
            }
            .padding()
            Spacer()
        }
    }
}

struct BottomCardView: View {
    var body: some View {
        VStack(spacing: 20) {
            Rectangle()
                .frame(width: 40, height: 5)
                .cornerRadius(3)
                .opacity(0.1)
            Text("Изучение особенностей разработки адаптивного дизайна в SwiftUI")
                .multilineTextAlignment(.center)
                .font(.subheadline)
                .lineSpacing(4)
            Spacer()
        }
        .padding(.top, 8)
        .padding(.horizontal, 20)
        .frame(maxWidth: .infinity)
        .background(Color("Background 3"))
        .cornerRadius(30)
        .shadow(radius: 30)
        .offset(x: 0, y: 500)
    }
}
