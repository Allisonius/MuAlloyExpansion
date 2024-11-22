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
all p1,p2 : Person | all c,c2 : Course | (c2 not in p1.enrolled and c2 not in p2.enrolled) implies ((c in p1.teaches and c in p2.enrolled) and c!=c2 and p1!=p2)
}