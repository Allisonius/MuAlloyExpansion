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
all p1,p2 : Professor | all c,c2 : Course | (c in p1.teaches and c in p2.teaches) or (c in p1.enrolled and c in p2.enrolled) and c != c2 implies not(c2 in p1.teaches and c2 in p2.enrolled)
}