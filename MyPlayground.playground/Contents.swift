import UIKit

var name = "fatema"
var birthyear = 2006
var currentyear = 2022

var age = currentyear - birthyear

print("hello my name is \(name) and my age is \(age)")

if age >= 14 && age <= 18
{print("نعم يمكنكم المشاركة في الكويت تبرمج ")
    
}
else
{print("لا يمكنكم المشاركة في الكويت تبرمج")
    
}


var textname = "8"
var number = 4
var doublenumb : Double

doublenumb = (Double(textname) ?? 0) + Double(number)
