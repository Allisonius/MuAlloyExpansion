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
all p1,p2 : Person, c : Course | some (c & p1.teaches & p2.teaches) implies c not in p1.enrolled and c not in p2.enrolled
}