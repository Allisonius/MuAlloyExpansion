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
all x,y:Person| all z,w:Course | (z in x.enrolled and z in y.enrolled and x in Professor and w in x.teaches) implies w not in y.enrolled
}