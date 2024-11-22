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
all x,y:Person| all z:Course | (z in x.enrolled and z in y.enrolled and x in Professor) implies (x.teaches not in y.enrolled and y.enrolled not in x.teaches)
}