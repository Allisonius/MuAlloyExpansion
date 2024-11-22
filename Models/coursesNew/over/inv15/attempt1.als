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
all p : Project, g1, g2 : (projects.p).grades[projects.p] | g1 in (g2 + prev[g2] + next[g2])
}