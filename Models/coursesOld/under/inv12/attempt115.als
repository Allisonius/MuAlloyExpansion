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
all s:Student, c:Course, g1,g2: Grade | g1 in s.(c.grades) and g2 in s.(c.grades) and c in s.enrolled implies g1=g2
}