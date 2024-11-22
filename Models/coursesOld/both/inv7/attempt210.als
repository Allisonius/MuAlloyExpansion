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
all s : Student, p : Project, c : Course | no (p & c.projects & s.projects) or no (c & s.enrolled) implies p not in s.projects
}