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

pred inv7{
all x:Student | all y,g:Course | all z,w:Project | (z in x.projects and w in x.projects and 
  z in y.projects and w in g.projects and z!=w) implies y!=g
}