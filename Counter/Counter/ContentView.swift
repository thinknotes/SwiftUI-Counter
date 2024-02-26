//
//  ContentView.swift
//  Counter
//
//  Created by StudentAM on 2/26/24.
//

import SwiftUI

struct ContentView: View {
    @State private var counter: Int = 0 //Keeps track of the counter
    var body: some View {
        VStack { //Wraps the view in vertical container
            Text("Click buttons below to change the counter") //Shows title text
                .padding() //Add padding to text
            
            
            
            Text("\(counter)") //Shows the value of counter
                .padding() //Add padding to text
            
            HStack { //Gives a horizontal container to align the buttons
                
                //Increment Button
                Button(action: {
                    addToCounter() //call add function 
                }, label: {
                    Text("Increment")
                        .padding() //gives padding
                        .background(Color.blue)//set the background color to blue
                        .cornerRadius(10) //gives a corner radius of 10
                        .foregroundColor(.white) //set the text color to white

                })
                
                //Decrement Button
                Button(action: {
                    checkCounter() // calls check function
                }, label: {
                    Text("Decrement")
                        .padding() //gives padding
                        .background(Color.blue)//set the background color to blue
                        .cornerRadius(10) //gives a corner radius of 10
                        .foregroundColor(.white) //set the text color to white

                })
            }
        }
        .padding() //give padding
    }
    
    func checkCounter() { //function name
        //Check to make sure counter does not go below zero, if it is zero does not allow the user to remove one. If it is not zero then the user can remove one
        
        if counter != 0 {
            counter -= 1 //subtract one
        } else { //calls else
            return //return if 0 is not equal
        }
    }
    
    func addToCounter() { //function name
        //Add one to the counter
        if counter == 50 { //check if counter is 50
            return //make counter not go up higher
        } else { //calls else
            counter += 1  //if number does not equal zero allows the user to add one
        }
    }
}

#Preview {
    ContentView()
}
