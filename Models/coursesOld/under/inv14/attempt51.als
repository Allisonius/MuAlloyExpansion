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
all s:Student | all p:Project | s->p in enrolled implies all s2:Student | lone p2:Project | p2 in s.enrolled and p2 in s2.enrolled
}