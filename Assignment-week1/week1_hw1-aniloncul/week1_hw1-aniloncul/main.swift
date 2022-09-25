//
//  main.swift
//  week1_hw1-aniloncul
//
//  Created by Anıl Öncül on 22.09.2022.
//

import Foundation

var user = User(username: "", gender: "", age: 0, occupation: "", moneyAmount: .zero)
var movieArray = [Product]()
movieArray += [recepIvedik,aykutEniste,babamVeOglum,askiMemnu,avrupayakasi,cennetmahallesi,
               otuzikincigun,planetEarth,insider,cedric,garfield,pokemon]


func registeration() {
    print("Welcome Friend! Lets get to know each other! In order to you help you efficiently, I'm gonna ask you few questions." )
    print("What is your name?")
    
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
    
    if let inputMoney = readLine()
    {
        if let intMoney = Int(inputMoney)
        {
            print("Okay. Lets find out stuff you might like.")
            user.moneyAmount = intMoney
            print(user)
        }
        else{
            print("Entered input type is wrong. Please enter a number ")
            print(user)
        }
    }
    
    
    
}

func homepage() {
    let filteredArray = movieArray.filter {
        $0.ratedOver < user.age
        }
    print(filteredArray)
    // array'in içinde filtreleme
    // enum'da category switch case döndür
    
    
}
  
registeration()
//homepage()








