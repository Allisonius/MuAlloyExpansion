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

pred inv5{
all p : Person, c : Course, pr : Project | some s : Student | pr in s.projects and no ( p & Student ) implies c not in p.enrolled
}