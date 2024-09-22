//
//  FavoriteModel.swift
//  FavoriteBook
//
//  Created by Dilara Akdeniz on 13.07.2023.
//

import Foundation
import SwiftUI

//Identifiable yapılan her struct içerisinde bir id olması zorunludur. SwiftUI'de Identifiable bir protokoldür ve bir koleksiyondaki her nesneyi benzersiz bir şekilde tanımlamaya yarar. Özellikle, ForEach gibi yapı taşlarını kullanarak bir veri listesiyle çalıştığınızda, her bir öğenin benzersiz bir kimliğe sahip olması gerekir. SwiftUI, bu benzersiz kimlikler sayesinde hangi öğenin değiştiğini, eklendiğini veya silindiğini daha verimli bir şekilde yönetir.

struct FavoriteModel : Identifiable {
    var id = UUID() //benzersiz kimlik
    var title : String
    var elements : [FavoriteElements]
    
}

struct FavoriteElements : Identifiable {
    var id = UUID()
    var name : String
    var imageName : String
    var description : String
}

//Bands

let metallica = FavoriteElements(name: "Matallica", imageName: "metallica", description: "No 1 Music Band")
let megadeth = FavoriteElements(name: "Megadeth", imageName: "megadeth", description: "No 2 Music Band")
let ironmaiden = FavoriteElements(name: "Ironmaiden", imageName: "ironmaiden", description: "No 3 Music Band")

let favoriteBands = FavoriteModel(title: "Favorite Bands", elements: [metallica,megadeth,ironmaiden])

//Movies

let pulpfiction = FavoriteElements(name: "Pulp Fiction", imageName: "pulpfiction", description: "No 1 Movie")
let thedarkknight = FavoriteElements(name: "The Dark Knight", imageName: "thedarkknight", description: "No 2 Movie")
let killbill = FavoriteElements(name: "Kill Bill", imageName: "killbill", description: "No 3 Movie")

let favoriteMovies = FavoriteModel(title: "Favorite Movies", elements: [pulpfiction,thedarkknight,killbill])

let myFavorites = [favoriteBands, favoriteMovies]
