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
all s1,s2 : Professor | some c1 : Course | all c2 : Course | c1 in s1.teaches and c1 in s2.teaches and c2 in s2.teaches implies c2 not in s2.enrolled
}