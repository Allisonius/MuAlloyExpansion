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
all p: Project, s1, s2: Student | s1 in projects.p and s2 in projects.p and s1 != s2 implies one (s1.projects&s2.projects)
}