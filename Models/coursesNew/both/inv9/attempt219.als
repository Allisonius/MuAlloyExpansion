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
all p1,p2:Professor, e1: p1.enrolled, e2: p2.enrolled| e1 in p2.teaches implies e2 not in p1.teaches
}