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
all p1,p2: Professor, c,c2:Course | p1->c in teaches and p2->c in teaches implies (p2->c2 in teaches implies p1->c2 not in enrolled)
}