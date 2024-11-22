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
all t,t1 : Professor | all c,c1 : Course | t!=t1 and c in t.teaches&t1.teaches and c1 in t.teaches implies c1 not in t1.enrolled
}