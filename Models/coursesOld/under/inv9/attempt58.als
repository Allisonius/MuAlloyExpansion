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
all disj p0,p1 : Professor, c : Course | c in p0.teaches => c not in p1.enrolled && c in p1.teaches => c not in p0.enrolled
}