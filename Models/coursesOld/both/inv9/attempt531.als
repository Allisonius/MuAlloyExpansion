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
not some x,x1: Professor | some c: Course | x->c in teaches and x1->c in enrolled and x!=x1 and x in Professor and x1 in Professor
}