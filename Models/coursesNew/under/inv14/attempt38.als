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

pred inv14{
all x:Student, y:Student-x, p:Project, g:Project-p| x->p in projects and y->p in projects and x->g in projects implies y->g not in projects
}