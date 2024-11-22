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

pred inv12{
all c : Course, p : enrolled.c | ( all g1,g2 : Grade | p->g1 in c.grades and p->g2 in c.grades implies g1 = g2 )
}