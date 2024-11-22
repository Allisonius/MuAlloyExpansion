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

pred inv15{
all x:Student, y:Course | x in y.enrolled implies lone x.projects.grades[y] & x.projects.grades[y]+1 & x.projects.grades[y]-1
}