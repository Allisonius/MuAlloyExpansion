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

pred inv14{
all p1 : Project | all s1,s2 : Student | p1 in s1.projects&s2.projects and s1 != s2 implies s1.projects&s2.projects-p1 = none
}