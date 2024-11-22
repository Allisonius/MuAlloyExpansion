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

pred inv9{
all a,b : Professor | all c : Course |  a!=b and a->c in teaches and b->c in teaches implies (a->c not in enrolled or b->c not in enrolled)
}