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
(all p : Person, proj1 : Project | p->proj1 in projects implies p in Student ) and (all proj : Project, s : Student | s->proj in projects)
}