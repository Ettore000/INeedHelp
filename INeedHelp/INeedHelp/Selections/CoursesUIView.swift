//
//  CoursesUIView.swift
//  INeedHelp
//
//  Created by antonioperna on 20/02/23.
//

import SwiftUI

struct CoursesUIView: View {
    var body: some View {
        ZStack{
            RoundedRectangle(cornerRadius: 30).padding(.top).frame(width: 400, height: 1600).foregroundColor(Color(red: 0.674, green: 0.432, blue: 0.972)).position(x: -40, y: 30)
            Spacer()
            VStack {
                HStack {
                    Text("Categories")
                        .font(.title3)
                        .fontWeight(.black)
                        .foregroundColor(Color.white)
                    //.multilineTextAlignment(.center)
                        .frame(height: 5.0)
                        .position(x:55,y:10)
                }.padding()
              
                Text("Sweets")
                    .font(.headline)
                    .foregroundColor(.black)
                    .frame(maxWidth: .infinity, minHeight: 44)
                    .frame(width:234, height:70)
                    .background(Color.white.opacity(0.5).gradient)
                    .cornerRadius(15)
                    .padding(.horizontal).position(x:200,y:-60)
                Image("sweet")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 100, height: 100)
                    .position(x:80,y:-250)
                VStack{
                    Text("Italian cuisine")
                        .font(.headline)
                        .foregroundColor(.black)
                        .frame(maxWidth: .infinity, minHeight: 44)
                        .frame(width:234, height:70)
                        .background(Color.white.opacity(0.5).gradient)
                        .cornerRadius(15)
                        .padding(.horizontal).position(x:200,y:-320)
                    Image("Pizza")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 85, height: 135)
                        .position(x:80,y:-380)
                    VStack{
                        Text("Fast food")
                            .font(.headline)
                            .foregroundColor(.black)
                            .frame(maxWidth: .infinity, minHeight: 44)
                            .frame(width:234, height:70)
                            .background(Color.white.opacity(0.5).gradient)
                            .cornerRadius(15)
                            .padding(.horizontal).position(x:200,y:-310)
                        Image("fastfood")
                            .resizable()
                            .scaledToFit()
                            .frame(width: 115, height: 118)
                            .position(x:80,y:-330)
                        VStack{
                            Text("Fruit")
                                .font(.headline)
                                .foregroundColor(.black)
                                .frame(maxWidth: .infinity, minHeight: 44)
                                .frame(width:234, height:70)
                                .background(Color.white.opacity(0.5).gradient)
                                .cornerRadius(15)
                                .padding(.horizontal).position(x:200,y:-220)
                            Image("frutta")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 115, height: 118)
                                .position(x:80,y:-230)
                            VStack{
                                Text("Vegetables")
                                    .font(.headline)
                                    .foregroundColor(.black)
                                    .frame(maxWidth: .infinity, minHeight: 44)
                                    .frame(width:234, height:70)
                                    .background(Color.white.opacity(0.5).gradient)
                                    .cornerRadius(15)
                                    .padding(.horizontal).position(x:200,y:-120)
                                Image("vegetali")
                                    .resizable()
                                    .scaledToFit()
                                    .frame(width: 100, height: 100)
                                    .position(x:80,y:-130)
                                VStack{
                                    Text("Oriental cuisine")
                                        .font(.headline)
                                        .foregroundColor(.black)
                                        .frame(maxWidth: .infinity, minHeight: 44)
                                        .frame(width:234, height:70)
                                        .background(Color.white.opacity(0.5).gradient)
                                        .cornerRadius(15)
                                        .padding(.horizontal).position(x:200,y:-10)
                                    Image("asiatic")
                                        .resizable()
                                        .scaledToFit()
                                        .frame(width: 100, height: 80)
                                        .position(x:80,y:-19)
                                }
                            }
                        }
                    }
                    
                }
                /*Image("sweet")
                    .overlay(
                        VStack {
                            Text("Sweets")
                                .font(.headline)
                                .foregroundColor(.black)
                                .padding(.horizontal)
                        }
                    )*/
            }
            
        }
    }
        }
struct CoursesUIView_Previews: PreviewProvider {
    static var previews: some View {
        CoursesUIView()
        
    }
}
