//
//  ContentView.swift
//  FavoriteBook
//
//  Created by Dilara Akdeniz on 13.07.2023.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        
        NavigationView {
            
            List {
                
                ForEach(myFavorites) { favorite in
                    Section(header: Text(favorite.title)) { //Başlık için imkan sağlıyor ve ayrı section oluşturabiliyoruz. O yüzden bunu kullandık.
                        ForEach(favorite.elements) { element in
                            //NavigationLink çalışabilmesi için tüm kodun NavigationView içerisinde olmalıdır.
                            NavigationLink(destination: DetailsView(chosenFavoriteElement: element)) {
                                Text(element.name)
                            }
                        }
                    }
                }
                
                
            }.navigationTitle(Text("Favorite Book"))
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
