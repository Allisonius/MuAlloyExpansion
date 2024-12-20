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
all pj:Project, pr:Professor | lone s:Student | s.projects = pj and pr.projects != pj and pr.teaches.projects != pj
}