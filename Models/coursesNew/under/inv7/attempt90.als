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

pred inv7{
all pro1,pro2 : Project | all per : Person | all c : Course | (per in Student and pro1 in per.projects and pro2 in per.projects and pro1 in c.projects and pro1 != pro2) implies pro2 not in c.projects
}