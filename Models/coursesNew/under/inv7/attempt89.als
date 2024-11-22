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
all x:Person, p,k:Project, c:Course| x->p in projects and x->k in projects implies x in Student and x->c in enrolled and c->p in projects and c->k in projects implies p=k
}