//
//  SelectionViewController.swift
//  Protocols
//
//  Created by Arika Afrin Boshra on 13/9/21.
//

import UIKit

class SelectionViewController: UIViewController {

    var selectionDelegate: SelectionDelegate!
    
    var truthArray = ["Have you ever cheated on someone?",
                      "What are your top three turn-ons?",
                      "Who is the sexiest person here?",
                      "Who was the last person you licked?",
                      "What was the most embarrassing thing you've ever done on a date?",
                      "What is the most childish thing you still do?",
                      "What is something your friends would never expect that you do?",
                      "What do most people think is true about you, but isn’t?",
                      "What is the most embarrassing thing in your room?",
                      "What was the most awkward romantic encounter you have had?",
                      "What’s the strangest dream you’ve had?",
                      "Tell me something you don’t want me to know.",
                      "What is the naughtiest thing you’ve done in public?",
                      "Describe your most recent romantic encounter in detail.",
                      "What is the most embarrassing nickname you have ever had?",
                      "When was the most inappropriate time you farted?",
                      "Who would you like to kiss in this room?"]
    
    var dareArray = ["Go live on Facebook and read back of a shampoo bottle.",
                     "Pull your friends nose.",
                     "Give a foot massage to the person on your right.",
                     "Twerk for a minute.",
                     "Keep your eyes closed until it’s your go again.",
                     "Send a sext to the last person in your phonebook.",
                     "Give a lap dance to someone of your choice.",
                     "Yell out the first word that comes to your mind.",
                     "Empty out your wallet/purse and show everyone what’s inside.",
                     "Remove one item of clothing.",
                     "Pretend to be the person to your right.",
                     "Belly dance like your life depended on it.",
                     "Howl like a wolf.",
                     "Kiss the person to your left.",
                     "Let the group give you a new hairstyle.",
                     "Choose someone from the group to give you a spanking.",
                     "Sit in a spinning chair and have the group spin you for 30 seconds.",
                     "Let the group pose you in an embarrassing position and take a picture.",
                     "Let the person to your left draw on your face with a pen."]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    @IBAction func truthButtonTapped(_ sender: UIButton) {
        let truthNumber = Int.random(in: 0..<truthArray.count)
        selectionDelegate.didTapChoice(image: UIImage(named: "naughtyFace")!, task: truthArray[truthNumber], color: .red)
        dismiss(animated: true, completion: nil)
    }
    
    @IBAction func dareButtonTapped(_ sender: UIButton) {
        let dareNumber = Int.random(in: 0..<truthArray.count)
        selectionDelegate.didTapChoice(image: UIImage(named: "evilFace")!, task: dareArray[dareNumber], color: .gray)
        dismiss(animated: true, completion: nil)
    }
    
}
