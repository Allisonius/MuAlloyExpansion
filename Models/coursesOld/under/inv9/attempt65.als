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
all t1, t2, c1,c2: Course | c1!=c2 and t1!=t2 and t1 in teaches.c1 and t2 in teaches.c1 and t1 in teaches.c2 implies t2 not in enrolled.c2
}