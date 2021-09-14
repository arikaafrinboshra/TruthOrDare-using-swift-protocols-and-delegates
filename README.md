### "Truth or Dare" Game using swift protocols and delegates.
There are two base screen. From the home screen we will go to selection screen to choose one option and will pass the data using protocol to home screen. 

### Home Screen
<img src="https://github.com/arikaafrinboshra/TruthOrDare-using-swift-protocols-and-delegates/blob/main/Protocols/Screenshot%202021-09-14%20at%2012.55.19%20PM.png" height="600"/>

### Selection Screen
<img src="https://github.com/arikaafrinboshra/TruthOrDare-using-swift-protocols-and-delegates/blob/main/Protocols/Screenshot%202021-09-14%20at%2012.55.44%20PM.png" height="600"/>

### Set the data on selection screen. 

```
@IBAction func dareButtonTapped(_ sender: UIButton) {
        let dareNumber = Int.random(in: 0..<truthArray.count)
        selectionDelegate.didTapChoice(image: UIImage(named: "evilFace")!, task: dareArray[dareNumber], color: .gray)
        dismiss(animated: true, completion: nil)
    }
```

Implement the delegate on main screen to get the data.

```
extension HomeViewController: SelectionDelegate {
    
    func didTapChoice(image: UIImage, task: String, color: UIColor) {
        mainImage.image = image
        nameLabel.text = task
        view.backgroundColor = color
        
        chooseButton.setTitle("Choose Again", for: .normal)
    }
}
```

### Result on the home screen
<img src="https://github.com/arikaafrinboshra/TruthOrDare-using-swift-protocols-and-delegates/blob/main/Protocols/Screenshot%202021-09-14%20at%2012.56.19%20PM.png" height="600"/>

