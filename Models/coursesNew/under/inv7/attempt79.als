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
all s : Student, p1,p2 : Project, c: Course | (p1 in c.projects && p2 in c.projects) && (p1 in s.projects && p2 in s.projects) implies p1 = p2
}