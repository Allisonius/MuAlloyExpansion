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
all disj p1,p2 : Person, c : Course | (p2.enrolled not in p1.teaches) and (p1.enrolled not in p2.teaches)
}