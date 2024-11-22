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

pred inv5{
all p1:Person| all pr:Project| (p1->pr in projects implies p1 in Student) and (some p2:Person|p2->pr in projects)
}