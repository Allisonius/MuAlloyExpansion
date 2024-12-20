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

pred inv13{
all c : Course, s : Student | c in s.enrolled and s.(c.grades) = max[s.(c.grades)] implies some c.projects & s.projects
}