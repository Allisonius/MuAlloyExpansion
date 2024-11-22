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

pred inv12{
all g1,g2 : Grade | all u : Student | all c : Course | (u->g1 + u->g2) in c.grades implies g1!=g2
}