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
all x,y:Student, p:Project | (x->p in projects and y->p in projects and x!=y) implies (all p1:Project-p | x->p1 not in projects or y->p1 not in projects)
}