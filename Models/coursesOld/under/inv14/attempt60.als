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
all s,s1:Student | all p,p1:Project | p in s.projects and p in s1.projects and p1 in s.projects and p1 in s1.projects and p!=p1 and s!=s1 implies p = p1
}