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
all x, y : Professor | some z: Course | some (x.teaches & y.teaches) implies no (x.teaches & y.enrolled) and no (y.teaches & x.enrolled)
}