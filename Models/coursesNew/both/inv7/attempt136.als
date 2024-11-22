open util/ordering[Grade]

sig Person {
	teaches : set Course,
	enrolled : set Course,
	projects : set Project
}

sig Professor,Student in Person {}

sig Course {
	projects : set Project,
	grades : Person -> Grade
}

sig Project {}

sig Grade {}

pred inv7{
all s : Student | all c1 : s.enrolled | all c2 : s.enrolled - c1 | all p1 : c1.projects & s.projects | all p2 : c2.projects & s.projects | no p1 & p2
}