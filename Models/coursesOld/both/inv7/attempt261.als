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
all p : Project | some s : Person | s->p in projects

  	all s : Person | all c : Course | some p : Project | s->c in enrolled and c->p in projects implies (s->p in projects)
}