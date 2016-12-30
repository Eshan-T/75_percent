//
//  macros.swift
//  75_percent
//
//  Created by Eshan trivedi on 22/12/16.
//  Copyright © 2016 ET. All rights reserved.
//

import Foundation
import SwiftyJSON

var mainString: String!
var studName: String!
var studBranch:  String!
var studRegNo: String!
var attendanceSubjectsNumber: Int!
var attendanceSubjectNames = [String]()
var attendanceClassesTaken = [String]()
var attendanceClassesAttended = [String]()
var attendanceClassesBunked = [String]()
var attendancePercentage = [String]()
var attendanceDate = [String]()
var marksSessionalOneSubject = [String]()
var marksSessionalOneSubjectCode = [String]()
var marksSessionalOneMarks = [String]()
var marksSessionalTwoSubject = [String]()
var marksSessionalTwoSubjectCode = [String]()
var marksSessionalTwoMarks = [String]()
var marksSessionalThreeSubject = [String]()
var marksSessionalThreeSubjectCode = [String]()
var marksSessionalThreeMarks = [String]()
var numberOfAssessments: Int!
var numberOfInternallyMarkedSubjects: Int!
var subjectInternalTotalArray = [Double]()
var CGPA : Double!
var sumOfGpas: Double = 0
var sem8Subjects = [String]()
var sem8CreditsForSubjects = [String]()
var sem8Grades = [String]()
var sem8GPA : String = "0"
var sem8Credits: String!
var sem7Subjects = [String]()
var sem7CreditsForSubjects = [String]()
var sem7Grades = [String]()
var sem7GPA : String = "0"
var sem7Credits: String!
var sem6Subjects = [String]()
var sem6CreditsForSubjects = [String]()
var sem6Grades = [String]()
var sem6GPA : String = "0"
var sem6Credits: String!
var sem5Subjects = [String]()
var sem5CreditsForSubjects = [String]()
var sem5Grades = [String]()
var sem5GPA : String = "0"
var sem5Credits: String!
var sem4Subjects = [String]()
var sem4CreditsForSubjects = [String]()
var sem4Grades = [String]()
var sem4GPA : String = "0"
var sem4Credits: String!
var sem3Subjects = [String]()
var sem3CreditsForSubjects = [String]()
var sem3Grades = [String]()
var sem3GPA : String = "0"
var sem3Credits: String!
var sem2Subjects = [String]()
var sem2CreditsForSubjects = [String]()
var sem2Grades = [String]()
var sem2GPA : String = "0"
var sem2Credits: String!
var sem1Subjects = [String]()
var sem1CreditsForSubjects = [String]()
var sem1Grades = [String]()
var sem1GPA : String = "0"
var sem1Credits: String!
var sumOfCredits: Int = 0
var leastGPA : Double = 10
var maxGPA :Double = 0
var numberOfSems : Int = 0
var subLabelsforsem1 = [UILabel]()
var gradeLabelsforsem1 = [UILabel]()
var creditLabelsforsem1 = [UILabel]()
var subLabelsforsem2 = [UILabel]()
var gradeLabelsforsem2 = [UILabel]()
var creditLabelsforsem2 = [UILabel]()
var subLabelsforsem3 = [UILabel]()
var gradeLabelsforsem3 = [UILabel]()
var creditLabelsforsem3 = [UILabel]()
var subLabelsforsem4 = [UILabel]()
var gradeLabelsforsem4 = [UILabel]()
var creditLabelsforsem4 = [UILabel]()
var subLabelsforsem5 = [UILabel]()
var gradeLabelsforsem5 = [UILabel]()
var creditLabelsforsem5 = [UILabel]()
var subLabelsforsem6 = [UILabel]()
var gradeLabelsforsem6 = [UILabel]()
var creditLabelsforsem6 = [UILabel]()
var subLabelsforsem7 = [UILabel]()
var gradeLabelsforsem7 = [UILabel]()
var creditLabelsforsem7 = [UILabel]()
var subLabelsforsem8 = [UILabel]()
var gradeLabelsforsem8 = [UILabel]()
var creditLabelsforsem8 = [UILabel]()







