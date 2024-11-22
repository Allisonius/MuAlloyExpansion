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
all x,y,z:Student, p,g:Project| x->p in projects and y->p in projects implies z->g in projects and x->g in projects implies z!=y
}