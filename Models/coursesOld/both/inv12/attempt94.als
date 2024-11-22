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

pred inv12{
all u1,u2 : Student | all c : Course | u1 in c.grades.Grade and u2 in c.grades.Grade implies u1!=u2
}