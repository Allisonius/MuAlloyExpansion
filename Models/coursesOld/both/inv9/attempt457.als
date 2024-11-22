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
all p1:Professor, c:Course, p:Person | p1->c in teaches and p->c in enrolled implies ( p not in Professor and p != p1 )
}