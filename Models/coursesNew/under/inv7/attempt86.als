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
all x:Person,y:Course, z,u:Project| x->y in enrolled and x in Student and  x->z in projects and x->u in projects and y->z in projects and y->u in projects implies z=u
}