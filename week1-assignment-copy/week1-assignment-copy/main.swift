//
//  main.swift
//  week1-assignment-copy
//
//  Created by Anıl Öncül on 25.09.2022.
//

import Foundation

var user = User(username: "", gender: "", age: 0, occupation: "", moneyAmount: .zero)
var movieArray = [Product]()
movieArray += [recepIvedik,aykutEniste,babamVeOglum,askiMemnu,avrupayakasi,cennetmahallesi,
               otuzikincigun,planetEarth,insider,cedric,garfield,pokemon]

// MARK: Login Page
func registeration() {
    print("Welcome Friend! Lets get to know each other! In order to you help you efficiently, I'm gonna ask you few questions." )
    print("What is your name?")

// MARK: Optionals & Control Flows
    
    if let inputName = readLine(){
        print("Welcome \(inputName)")
        user.username = inputName
        print("Please enter your age.")
    }
    
    if let inputAge = readLine()
    {
        if let int = Int(inputAge)
        {
            print("Please enter how much is your budget?")
            user.age = int
        }
        else{
            print("Entered input type is wrong. Please enter a number ")
            
        }
    }
    
    if let inputMoney = readLine() {
        if let intMoney = Int(inputMoney)
        {
            print("Okay. Lets find out stuff you might like.")
            user.moneyAmount = intMoney
            
        }
        else{
            print("Entered input type is wrong. Please enter a number ")
            
        }
    }
}

// MARK: Filtering Movie by User Age


func homepage() {
    print("Lets filter some adult contents for children.")
    
    var filteredArray = movieArray.filter {
        $0.ratedOver <= user.age }
    
    for movie in filteredArray {
        print(movie.title, movie.ratedOver, movie.price)
    }
    
    print("Choose a category: 'Horror', 'Drama', 'Cringe', 'Comedy', 'History', 'Nature', 'Action' ")
    
// MARK: Switch Case Exercise
    
    var shoppingCard = [Product]()
    if let inputCategory = readLine() {
        
        if let classCategory = Category(rawValue: inputCategory) {
            switch classCategory{
            case .Action:
                shoppingCard = filteredArray.filter {$0.category == "Action"}
            case .Horror:
                shoppingCard = filteredArray.filter {$0.category == "Horror"}
            case .Drama:
                shoppingCard = filteredArray.filter {$0.category == "Drama"}
            case .Cringe:
                shoppingCard = filteredArray.filter {$0.category == "Cringe"}
            case .Comedy:
                shoppingCard = filteredArray.filter {$0.category == "Comedy"}
            case .History:
                shoppingCard = filteredArray.filter {$0.category == "History"}
            case .Nature:
                shoppingCard = filteredArray.filter {$0.category == "Nature"}
            
            }
            
        }
    }
    
// MARK: Enums
    
    enum Category: String {
        case Horror = "Horror"
        case Drama = "Drama"
        case Cringe = "Cringe"
        case Comedy = "Comedy"
        case History = "History"
        case Nature = "Nature"
        case Action = "Action"
    }
    print("Hello \(user.username) these are the movies are good for you criteria:")
    for movie in shoppingCard {
       
        
        print(" Movie name: \(movie.title). This movie is for age over: \(movie.ratedOver). Movies' category is: \(movie.category). IMDB Point:\( movie.imdbPoints). Price: \(movie.price) ₺")
    }

}







registeration()
homepage()


