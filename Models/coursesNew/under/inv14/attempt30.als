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
all disj s1,s2 : Student | all p : Project | p in s2.projects and p in s1.projects implies no (s2.projects - p) & s1.projects
}