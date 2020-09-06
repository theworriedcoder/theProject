import UIKit

class ViewController: UIViewController {
    var score:Double = 0.0
    var a = true
    var b = true
    var c = true
    var d = true
   // var e:Int = 0
    var f:Int = 0
    var g:Int = 0
    var ratio:Int = 0
    var area:Int = 0
    var h = true
    

    
    @IBOutlet weak var holder: UIView!
    
   private var resultLabel : UILabel = {
        let label = UILabel()
        label.text = "0"
        label.textColor = .black
        label.textAlignment = .right
        label.font = UIFont(name: "Arial", size: 100)
        return label
    }()




    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
                

        setupNumberPad()
        enter()
    }
    

    

    private func setupNumberPad() {
        let buttonSize: CGFloat! = view.frame.size.width / 4
        

        // INDOOR and OUTDOOR questions
            let indoor = UIButton(frame: CGRect(x: buttonSize-7, y: holder.frame.size.height-(buttonSize*37/5), width: buttonSize, height: buttonSize/2))
                indoor.backgroundColor = .systemGray6
                indoor.layer.cornerRadius = 5
                indoor.setTitleColor(.black, for: .normal)
                indoor.setTitle("Indoor", for: .normal)
                holder.addSubview(indoor)
                indoor.tag = 20
                indoor.addTarget(self, action: #selector(buttonPressedOne(_:)), for: .touchUpInside)
            

            let outdoor = UIButton(frame: CGRect(x: (buttonSize * 2)+7, y: holder.frame.size.height-(buttonSize*37/5), width: buttonSize, height: buttonSize/2))
                outdoor.backgroundColor = .systemGray6
                outdoor.layer.cornerRadius = 5
                outdoor.setTitleColor(.black, for: .normal)
                outdoor.setTitle("Outdoor", for: .normal)
                holder.addSubview(outdoor)
                outdoor.tag = 1
                outdoor.addTarget(self, action: #selector(buttonPressedOne(_:)), for: .touchUpInside)
        

        

        // AGE questions
        let zeroToFour = UIButton(frame: CGRect(x: buttonSize-30, y: holder.frame.size.height-(buttonSize*38/6), width: buttonSize-30, height: buttonSize/3))
               zeroToFour.backgroundColor = .systemGray6
               zeroToFour.layer.cornerRadius = 5
               zeroToFour.setTitleColor(.black, for: .normal)
               zeroToFour.setTitle("0-4", for: .normal)
               holder.addSubview(zeroToFour)
               zeroToFour.tag = 3/2
               zeroToFour.addTarget(self, action: #selector(buttonPressedTwo(_:)), for: .touchUpInside)
               

        let fiveToSeventeen = UIButton(frame: CGRect(x: (buttonSize*2)-35, y: holder.frame.size.height-(buttonSize*38/6), width: buttonSize-30, height: buttonSize/3))
               fiveToSeventeen.backgroundColor = .systemGray6
               fiveToSeventeen.layer.cornerRadius = 5
               fiveToSeventeen.setTitleColor(.black, for: .normal)
               fiveToSeventeen.setTitle("5-17", for: .normal)
               holder.addSubview(fiveToSeventeen)
               fiveToSeventeen.tag = 1
               fiveToSeventeen.addTarget(self, action: #selector(buttonPressedTwo(_:)), for: .touchUpInside)
        

        let eighteenToTwentyNine = UIButton(frame: CGRect(x: (buttonSize*2)+65, y: holder.frame.size.height-(buttonSize*38/6), width: buttonSize-30, height: buttonSize/3))
                eighteenToTwentyNine.backgroundColor = .systemGray6
                eighteenToTwentyNine.layer.cornerRadius = 5
                eighteenToTwentyNine.setTitleColor(.black, for: .normal)
                eighteenToTwentyNine.setTitle("18-29", for: .normal)
                holder.addSubview(eighteenToTwentyNine)
                eighteenToTwentyNine.tag = 2
                      eighteenToTwentyNine.addTarget(self, action: #selector(buttonPressedTwo(_:)), for: .touchUpInside)
        

        let thirtyToThirtyNine = UIButton(frame: CGRect(x: buttonSize-30, y: holder.frame.size.height-(buttonSize*35/6), width: buttonSize-30, height: buttonSize/3))
                thirtyToThirtyNine.backgroundColor = .systemGray6
                thirtyToThirtyNine.layer.cornerRadius = 5
                thirtyToThirtyNine.setTitleColor(.black, for: .normal)
                thirtyToThirtyNine.setTitle("30-39", for: .normal)
                holder.addSubview(thirtyToThirtyNine)
                thirtyToThirtyNine.tag = 5/2
                thirtyToThirtyNine.addTarget(self, action: #selector(buttonPressedTwo(_:)), for: .touchUpInside)
        

        let fortyToFortyNine = UIButton(frame: CGRect(x: (buttonSize*2)-35, y: holder.frame.size.height-(buttonSize*35/6), width: buttonSize-30, height: buttonSize/3))
                fortyToFortyNine.backgroundColor = .systemGray6
                fortyToFortyNine.layer.cornerRadius = 5
                fortyToFortyNine.setTitleColor(.black, for: .normal)
                fortyToFortyNine.setTitle("40-49", for: .normal)
                holder.addSubview(fortyToFortyNine)
                fortyToFortyNine.tag = 3
                fortyToFortyNine.addTarget(self, action: #selector(buttonPressedTwo(_:)), for: .touchUpInside)
        

        let fiftyToSixtyFour = UIButton(frame: CGRect(x: (buttonSize*2)+65, y: holder.frame.size.height-(buttonSize*35/6), width: buttonSize-30, height: buttonSize/3))
                fiftyToSixtyFour.backgroundColor = .systemGray6
                fiftyToSixtyFour.layer.cornerRadius = 5
                fiftyToSixtyFour.setTitleColor(.black, for: .normal)
                fiftyToSixtyFour.setTitle("50-64", for: .normal)
                holder.addSubview(fiftyToSixtyFour)
                fiftyToSixtyFour.tag = 7/2
                fiftyToSixtyFour.addTarget(self, action: #selector(buttonPressedTwo(_:)), for: .touchUpInside)
        

        let sixtyFiveToSeventyFour = UIButton(frame: CGRect(x: buttonSize-30, y: holder.frame.size.height-(buttonSize*27/5), width: buttonSize-30, height: buttonSize/3))
                sixtyFiveToSeventyFour.backgroundColor = .systemGray6
                sixtyFiveToSeventyFour.layer.cornerRadius = 5
                sixtyFiveToSeventyFour.setTitleColor(.black, for: .normal)
                sixtyFiveToSeventyFour.setTitle("65-74", for: .normal)
                holder.addSubview(sixtyFiveToSeventyFour)
                sixtyFiveToSeventyFour.tag = 4
                sixtyFiveToSeventyFour.addTarget(self, action: #selector(buttonPressedTwo(_:)), for: .touchUpInside)
        

        let seventyFiveToEightyFour = UIButton(frame: CGRect(x: (buttonSize*2)-35, y: holder.frame.size.height-(buttonSize*27/5), width: buttonSize-30, height: buttonSize/3))
                seventyFiveToEightyFour.backgroundColor = .systemGray6
                seventyFiveToEightyFour.layer.cornerRadius = 5
                seventyFiveToEightyFour.setTitleColor(.black, for: .normal)
                seventyFiveToEightyFour.setTitle("70-84", for: .normal)
                holder.addSubview(seventyFiveToEightyFour)
                seventyFiveToEightyFour.tag = 9/2
                sixtyFiveToSeventyFour.addTarget(self, action: #selector(buttonPressedTwo(_:)), for: .touchUpInside)
        

        let eightyFivePlus = UIButton(frame: CGRect(x: (buttonSize*2)+65, y: holder.frame.size.height-(buttonSize*27/5), width: buttonSize-30, height: buttonSize/3))
                eightyFivePlus.backgroundColor = .systemGray6
                eightyFivePlus.layer.cornerRadius = 5
                eightyFivePlus.setTitleColor(.black, for: .normal)
                eightyFivePlus.setTitle("85+", for: .normal)
                holder.addSubview(eightyFivePlus)
                eightyFivePlus.tag = 5
                eightyFivePlus.addTarget(self, action: #selector(buttonPressedTwo(_:)), for: .touchUpInside)
        

        

        // Prexisting Conditions
        let yes = UIButton(frame: CGRect(x: buttonSize+7, y: holder.frame.size.height-(buttonSize*9/2), width: buttonSize-30, height: buttonSize/3))
                yes.backgroundColor = .systemGray6
                yes.layer.cornerRadius = 5
                yes.setTitleColor(.black, for: .normal)
                yes.setTitle("yes", for: .normal)
                holder.addSubview(yes)
                yes.tag = 5
                yes.addTarget(self, action: #selector(buttonPressedThree(_:)), for: .touchUpInside)
            

        let no = UIButton(frame: CGRect(x: (buttonSize * 2)+7, y: holder.frame.size.height-(buttonSize*9/2), width: buttonSize-30, height: buttonSize/3))
                no.backgroundColor = .systemGray6
                no.layer.cornerRadius = 5
                no.setTitleColor(.black, for: .normal)
                no.setTitle("no", for: .normal)
                holder.addSubview(no)
                no.tag = 1
                no.addTarget(self, action: #selector(buttonPressedThree(_:)), for: .touchUpInside)
        

        

        // Dimensions of room
        var roomLength = UITextField(frame: CGRect(x: buttonSize-7, y: holder.frame.size.height-(buttonSize*7/2), width: buttonSize, height: buttonSize/3))
            roomLength.backgroundColor = .white;
            roomLength.placeholder = "Length"
            holder.addSubview(roomLength)
        

        var roomWidth = UITextField(frame: CGRect(x: buttonSize*2, y: holder.frame.size.height-(buttonSize*7/2), width: buttonSize-10, height: buttonSize/3))
            roomWidth.backgroundColor = .white;
            roomLength.placeholder = "Width"
            holder.addSubview(roomWidth)
        //roomWidth.addTarget(self, action: #selector(buttonPressedTwo(_:)), for: .touchUpOutside)
        

        

       // People
       var numPeople = UITextField(frame: CGRect(x: buttonSize, y: holder.frame.size.height-(buttonSize*3), width: buttonSize*3/2, height: buttonSize/3))
           numPeople.backgroundColor = .white;
           numPeople.placeholder = "Number of People"
           holder.addSubview(numPeople)
       //roomWidth.addTarget(self, action: #selector(buttonPressedTwo(_:)), for: .touchUpOutside)
       

        

        func dimensionsPeople() -> Int {
            let e = Int(roomLength.text!)!
            let f = Int(roomWidth.text!)!
            let g = Int(numPeople.text!)!
            area = e * f
            ratio = area/g
            return ratio
        }
        

         // Masks
        let yesTwo = UIButton(frame: CGRect(x: buttonSize+7, y: holder.frame.size.height-(buttonSize*2), width: buttonSize, height: buttonSize/3))
                yesTwo.backgroundColor = .systemGray6
                yesTwo.layer.cornerRadius = 5
                yesTwo.setTitleColor(.black, for: .normal)
                yesTwo.setTitle("yes", for: .normal)
                holder.addSubview(yesTwo)
                yesTwo.tag = 5
                yesTwo.addTarget(self, action: #selector(buttonPressedFive(_:)), for: .touchUpInside)
            

        let noTwo = UIButton(frame: CGRect(x: (buttonSize * 2)+7, y: holder.frame.size.height-(buttonSize*2), width: buttonSize-30, height: buttonSize/3))
                noTwo.backgroundColor = .systemGray6
                noTwo.layer.cornerRadius = 5
                noTwo.setTitleColor(.black, for: .normal)
                noTwo.setTitle("no", for: .normal)
                holder.addSubview(noTwo)
                noTwo.tag = 5
                noTwo.addTarget(self, action: #selector(buttonPressedFive), for: .touchUpInside)
}

    

    private func enter (){
        let buttonSize: CGFloat! = view.frame.size.width / 4
        

        let enterButton = UIButton(frame: CGRect(x: buttonSize * 2, y: holder.frame.size.height-(buttonSize), width: buttonSize, height: buttonSize/2))
        enterButton.setTitleColor(.black, for: .normal)
        enterButton.backgroundColor = .white
        enterButton.setTitle("Enter", for: .normal)
        holder.addSubview(enterButton)
        enterButton.tag = 20
        enterButton.addTarget(self, action: #selector(enterPressed(_:)), for: .touchUpInside)
    }

    var tag:Float = 0.0;
    

    // INDOOR/OUTDOOR- buttonPressedOne, tagOne, a
    @objc func buttonPressedOne(_ sender: UIButton){
        let tagOne = sender.tag
        if tagOne == 20{
            if a == true{
                score = score + 20
                print(score)
                a = false
                sender.backgroundColor = .systemGreen
            }
        }
        else if tagOne == 1{
            if a == true{
                score = score + 1
                print(score)
                a = false
                sender.backgroundColor = .systemGreen
            }
        }
        else {}
    }
    

    

    // AGE- buttonPressedTwo, tagTwo, b
    @objc func buttonPressedTwo(_ sender: UIButton){
        let tagTwo = sender.tag
        if tagTwo == 1{
            if b == true{
                score = score + 1
                print(score)
                b = false
                sender.backgroundColor = .systemGreen
            }
        }
        else if tagTwo == 3/2{
            if b == true{
                score = score + 1.5
                print(score)
                b = false
                sender.backgroundColor = .systemGreen
            }
        }
        else if tagTwo == 2{
            if b == true{
                score = score + 2
                print(score)
                b = false
                sender.backgroundColor = .systemGreen
            }
        }
        else if tagTwo == 5/2{
            if b == true{
                score = score + 2.5
                print(score)
                b = false
                sender.backgroundColor = .systemGreen
            }
        }
        else if tagTwo == 3{
            if b == true{
                score = score + 3
                print(score)
                b = false
                sender.backgroundColor = .systemGreen
            }
        }
        else if tagTwo == 7/2{
            if b == true{
                score = score + 3.5
                print(score)
                b = false
                sender.backgroundColor = .systemGreen
            }
        }
        else if tagTwo == 4{
            if b == true{
                score = score + 4
                print(score)
                b = false
                sender.backgroundColor = .systemGreen
            }
        }
        else if tagTwo == 9/2{
            if b == true{
                score = score + 4.5
                print(score)
                b = false
                sender.backgroundColor = .systemGreen
            }
        }
        else if tagTwo == 5{
            if b == true{
                score = score + 5
                print(score)
                b = false
                sender.backgroundColor = .systemGreen
            }
        }
        else {}
    }
    

    

    // PREXISTING CONDITIONS- buttonPressedThree, tagThree, c
    @objc func buttonPressedThree(_ sender: UIButton){
        let tagThree = sender.tag
        if tagThree == 5{
            if c == true{
                score = score + 5
                print(score)
                c = false
                sender.backgroundColor = .systemGreen
            }
        }
        else if tagThree == 1{
            if c == true{
                score = score + 1
                print(score)
                c = false
                sender.backgroundColor = .systemGreen
            }
        }
        else {}
    }
    

    // DIMENSIONS/PEOPLE- buttonPressedFour, dimensionsPeople, d, e, f, g, ratio
    @objc func buttonPressedFour(){
        resignFirstResponder()
        print(area)
        print(ratio)
        if ratio >= 113 {
            if d == true{
                score = score + 0
                print(score)
                d = false
            }
        }
        else if ratio <= 112 || ratio >= 90 {
            if d == true{
                score = score + 1
                print(score)
                d = false
            }
        }
        else if ratio <= 89 || ratio >= 67 {
            if d == true{
                score = score + 2
                print(score)
                d = false
            }
        }
        else if ratio <= 66 || ratio >= 44 {
            if d == true{
                score = score + 3
                print(score)
                d = false
            }
        }
        else if ratio <= 43 || ratio >= 21 {
            if d == true{
                score = score + 4
                print(score)
                d = false
            }
        }
        else if ratio <= 20 || ratio >= 0 {
            if d == true{
                score = score + 5
                print(score)
                d = false
            }
        }
    }
    

    // MASKS- buttonPressedFive, tagFour, h
    @objc func buttonPressedFive(_ sender: UIButton){
        let tagFour = sender.tag
        if tagFour == 5{
            if h == true{
                score = score + 5
                print(score)
                h = false
                sender.backgroundColor = .systemGreen
            }
        }
        else if tagFour == 0{
            if h == true{
                score = score + 0
                print(score)
                h = false
                sender.backgroundColor = .systemGreen
            }
        }
        else {}
    }
    

    @objc func enterPressed(_ sender: UIButton){
        buttonPressedFour()
        print(score)
        resultLabel.text = "\(score)"

           }
     }

    extension ViewController : UITextFieldDelegate {
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
            textField.resignFirstResponder()
            return true
        }

}
