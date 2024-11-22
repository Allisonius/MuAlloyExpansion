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
all s1,s2:Student | one p:Project | p in s1.projects and p in s2.projects implies all ps:Project-p | ps in s1.projects and ps not in s2.projects
  	all s1,s2:Student | one p:Project | p in s1.projects and p in s2.projects implies all ps:Project-p | ps in s2.projects and ps not in s1.projects
}