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
all c: Course, p: Project, s1,s2: Student | p in c.projects&s1.projects&s2.projects implies s2 in c.grades.s1.next or s1 in c.grades.s2.next
}