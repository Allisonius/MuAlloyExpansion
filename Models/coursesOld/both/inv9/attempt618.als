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

pred inv9{
all c: Course | all p1,p2 : Professor | c in (p1+p2).teaches implies p1 = p2
	all p : Person-Student | all person : Person | (p.enrolled&person.enrolled != none) implies (p.teaches&person.enrolled = none and p!=person)
}