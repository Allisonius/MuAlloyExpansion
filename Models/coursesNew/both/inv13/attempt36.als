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
all x:Person, c:Course, g:Grade, p:Project| c->x->g in grades and x in Student implies x->c in enrolled and c->p in projects and x->p in projects
}