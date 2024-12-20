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
all p1:Professor | all c:Course | c in p1.teaches implies (all p:Person-Student-p1 | c not in p.enrolled )
}