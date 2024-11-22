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
all p1,p2: Professor| some c: Course | p1->c in enrolled and p2->c in enrolled and p1!=p2  implies (not (p1->c in teaches or p2->c in teaches) )
}