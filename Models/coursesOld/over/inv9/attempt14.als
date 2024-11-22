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
all c1, c2 : Course, p1, p2 : teaches.c1 | p1 in teaches.c2 implies p2 not in enrolled.c2
}