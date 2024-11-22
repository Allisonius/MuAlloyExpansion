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

pred inv9{
all p1,p2 : Person | all c : Course | c in p1.enrolled and c in p2.enrolled implies (p1.teaches&p2.enrolled)=none
}