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
all x : Student | all c : Course | c in x.enrolled and (#(x.projects & c.projects)=0 or #(x.projects & c.projects)=1)
}