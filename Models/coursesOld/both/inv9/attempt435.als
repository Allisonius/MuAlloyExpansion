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
all c : Course, disj p0,p1 : Person | p0 in Professor and c in p0.teaches and p1 in Professor => c not in p1.enrolled
}