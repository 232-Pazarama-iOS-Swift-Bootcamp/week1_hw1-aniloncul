//
//  Product.swift
//  week1-assignment-copy
//
//  Created by Anıl Öncül on 25.09.2022.
//

import Foundation


protocol First {
    func addToList()
    func deleteFromList()
    
}

class Product:First {
    
    var title: String
    var price: Int
    var category: String = ""
    var ratedOver: Int = .zero
    var imdbPoints: Float = .zero
    
    
    init(title: String, price: Int, category: String,ratedOver: Int, imdbPoints: Float) {
        self.title = title
        self.price = price
        self.category = category
        self.ratedOver = ratedOver
        self.imdbPoints = imdbPoints
    }
    
    
    func addToList() {
       
        
    }
    
    func deleteFromList() {
       
    }
    
}

class Movie: Product {
    var type: String = "Movie"
}

class Series: Product {
    var type: String = "TV Series"
}

class Documentaries: Product {
    var type: String = "Documentaries"
}

class Cartoon: Product {
    var type: String = "Cartoon"
}

let recepIvedik = Movie(title: "Recep İvedik", price: 20, category: "Horror", ratedOver: 7, imdbPoints: 3.1)
let aykutEniste = Movie(title: "Aykut Enişte", price: 15, category: "Cringe", ratedOver: 7, imdbPoints: 2.4)
let babamVeOglum = Movie(title: "Babam ve Oğlum", price: 13, category: "Drama", ratedOver: 13, imdbPoints: 8.3)

let askiMemnu = Series(title: "Aşkı Memnu", price: 100, category: "Drama", ratedOver: 13, imdbPoints: 9.9)
let avrupayakasi = Series(title: "Avrupa Yakasi", price: 50, category: "Comedy", ratedOver: 0, imdbPoints: 7.5)
let cennetmahallesi = Series(title: "Cennet Mahallesi", price: 30, category: "Comedy", ratedOver: 0, imdbPoints: 4.1)

let otuzikincigun = Documentaries(title: "32. Gün", price: 569, category: "History", ratedOver: 0, imdbPoints: 9.5)
let planetEarth = Documentaries(title: "Planet Earth", price: 900, category: "Nature", ratedOver: 0, imdbPoints: 9.4)
let insider = Documentaries(title: "Insider", price: 398, category: "History", ratedOver: 0, imdbPoints: 7.3)

let cedric = Cartoon(title: "Cedric", price: 34, category: "Action", ratedOver: 0, imdbPoints: 5.4)
let garfield = Cartoon(title: "Garfield", price: 90, category: "Comedy", ratedOver: 0, imdbPoints: 7.4)
let pokemon = Cartoon(title: "Pokemon", price: 999, category: "Action", ratedOver: 7, imdbPoints: 8.4)

