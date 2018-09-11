//
//  main.swift
//  Assessment4
//
//  Created by Ryan Brashear on 9/10/18.
//  Copyright © 2018 Ryan Brashear. All rights reserved.
//

import Foundation

//1. Create a class called School. Give it properties to model:
// -the name of the school
// -the number of students that attend
// -if it is a public or private school
// -the year it was built
//
// Add a function called schoolDescription to the School class that will print out "\(name of school) was founded in \(the year it was built) and has \(number of students) currently in attendance"

// Create an instance of school and then call it's schoolDescription function

class School {
    let schoolName: String
    var numberOfStudents: Int
    let publicSchool: Bool
    var yearBuilt: String
    
    init(schoolName: String, numberOfStudents: Int, publicSchool:Bool, yearBuilt: String) {
        self.schoolName = schoolName
        self.numberOfStudents = numberOfStudents
        self.publicSchool = publicSchool
        self.yearBuilt = yearBuilt
    }
    func schoolDescription ( ) {
        print("\(schoolName) was founded in \(yearBuilt) and has \(numberOfStudents) currently in attendance")
    }
}

let theSchool = School(schoolName: "Barren", numberOfStudents: 900, publicSchool: true, yearBuilt: "1970")
theSchool.schoolDescription()


//2. Create a HighSchool class that inherits from our base school class. Add a property that will represent a rival highschool. Additionally, add a property that will represent the school mascot.
//
// Add a function called pepRally that will print "\(school name) is the best! \(rival school name) is awful!"
//
// Override the schoolDescription function to make it print "\(school name) is the best in the state since \(the year it was built)! Go \(school mascot)'s!!!"
//
// Create an instance of a highschool and call both the schoolDescription and the pepRally functions.

class HighSchool: School {
    var rivalHighSchool: String
    var mascot: String
    
    init(schoolName: String, numberOfStudents: Int, publicSchool: Bool, yearBuilt: String, rivalHighSchool: String, mascot: String) {
        self.rivalHighSchool = rivalHighSchool
        self.mascot = mascot
        super.init(schoolName: schoolName, numberOfStudents: numberOfStudents, publicSchool: publicSchool, yearBuilt: yearBuilt)
    }
    func pepRally ( ) {
        print("\(schoolName) is the best! \(rivalHighSchool) is awful!")
    }
    override func schoolDescription() {
        print("\(schoolName) is the best in the state since \(yearBuilt)! Go \(mascot)'s!!!")
    }
}

let theHighSchool = HighSchool(schoolName: "BCHS", numberOfStudents: 900, publicSchool: true, yearBuilt: "1970", rivalHighSchool: "Glasgow", mascot: "Trojan")

theHighSchool.pepRally()
theHighSchool.schoolDescription()

//3.Create a new class called MagicalHighSchool (think Hogwarts from Harry Potter) that inherits from our HighSchool class. Add new properties for the size of the castle in square feet and the number of secret passages it contains.
//
// Override the pepRally function to make it print "\(school name) is the most magical school on earth! It's castle is (\castle size) square feet, and it has \(number of secret passages) secret passageways! Hurray!"
//
// Create a new function called quidditchMatch that will print "Time for the big quidditch game!"
//
// Create an instance of a magical highschool. Then call all 3 of the functions that it contains/inherits.

class MagicalHighSchool: HighSchool {
    var areaOfCastle: Int
    var secretPasses: Int
    
    init(schoolName: String, numberOfStudents: Int, publicSchool: Bool, yearBuilt: String, rivalHighSchool: String, mascot: String, areaOfCastle: Int, secretPasses: Int) {
        self.areaOfCastle = areaOfCastle
        self.secretPasses = secretPasses
        super.init(schoolName: schoolName, numberOfStudents: numberOfStudents, publicSchool: publicSchool, yearBuilt: yearBuilt, rivalHighSchool: rivalHighSchool, mascot: mascot)
    }
    override func pepRally() {
        print("\(schoolName) is the most magical school on earth! It's castle is \(areaOfCastle) square feet, and it has \(secretPasses) secret passageways! Hurray!")
    }
    func quidditchMatch ( ) {
        print("Time for the big quidditch game!")
    }
    }

let theMagicalHighSchool = MagicalHighSchool(schoolName: "Magical School", numberOfStudents: 40, publicSchool: false, yearBuilt: "1677", rivalHighSchool: "Nonw", mascot: "broom", areaOfCastle: 15000, secretPasses: 87)
theMagicalHighSchool.pepRally()
theMagicalHighSchool.quidditchMatch()
theMagicalHighSchool.schoolDescription()

//BONUS: Create a new Date() object that represents the current date. Create a date formatter and set the custom date format for it. Use the date formatter to create a formatted String from the date object, and print the formatted String.

