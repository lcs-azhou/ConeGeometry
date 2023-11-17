//
//  ConeView.swift
//  ConeGeometry
//
//  Created by Ansheng Zhou on 2023-11-16.
//

import SwiftUI

struct ConeView: View {
    
    // MARK: Stored properties
    @State var currentCone = Cone(radius: 10.0, slantHeight: 10.0)
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            Image("Cone")
                .resizable()
                .scaledToFit()
                .frame(width: 300)
            
            VStack {
                Text("Radius")
                HStack {
                    Text("0")
                        .font(.system(size: 18))
                    
                    Slider(value: $currentCone.radius, in: 0...100)
                    
                    Text("100")
                        .font(.system(size: 18))
                }
                Text("Slant Height")
                HStack {
                    Text("0")
                        .font(.system(size: 18))
                    
                    Slider(value: $currentCone.slantHeight, in: 0...100)
                    
                    Text("100")
                        .font(.system(size: 18))
                }
                
            }
                
                
            }.padding()
        
        List {
            VStack(alignment: .leading){
                Text("Radius")
                    .fontWeight(.semibold)
                Text("\(currentCone.radius)")
                    .fontWeight(.light)
                    .font(.system(size: 15))
            }.frame(height: 55)
            
            VStack(alignment: .leading){
                Text("Base Area")
                    .fontWeight(.semibold)
                Text("\(currentCone.baseArea)")
                    .fontWeight(.light)
                    .font(.system(size: 15))
            }.frame(height: 55)
            
            VStack(alignment: .leading){
                Text("Slant Height")
                    .fontWeight(.semibold)
                Text("\(currentCone.slantHeight)")
                    .fontWeight(.light)
                    .font(.system(size: 15))
            }.frame(height: 55)
            
            VStack(alignment: .leading){
                Text("Lateral Surface Area")
                    .fontWeight(.semibold)
                Text("\(currentCone.lateralSurfaceArea)")
                    .fontWeight(.light)
                    .font(.system(size: 15))
            }.frame(height: 55)
            
            VStack(alignment: .leading){
                Text("Height")
                    .fontWeight(.semibold)
                Text("\(currentCone.height)")
                    .fontWeight(.light)
                    .font(.system(size: 15))
            }.frame(height: 55)
            
            VStack(alignment: .leading){
                Text("Total Area")
                    .fontWeight(.semibold)
                Text("\(currentCone.areaTotal)")
                    .fontWeight(.light)
                    .font(.system(size: 15))
            }.frame(height: 55)
        
            
        }.listStyle(.plain)
        
        }
    }

#Preview {
    ConeView()
}
