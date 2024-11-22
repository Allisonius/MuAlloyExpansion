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

pred inv3{
all p : Person | all c1,c2 : Course | c1 in p.enrolled and c2 in p.teaches implies c2 in c1
}