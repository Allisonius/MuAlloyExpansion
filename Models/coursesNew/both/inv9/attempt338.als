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
all p, col: Professor | some c1, c2 : Course | (c1 in p.teaches and c2 in col.teaches) implies (all co : Course | co in p.teaches implies co not in col.enrolled)
}