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

pred inv13{
all c : Course | all p : Student | all g : Grade | ((g = max[Grade]) and p->g in c.grades) implies ((c.projects & p.projects) != none)
}