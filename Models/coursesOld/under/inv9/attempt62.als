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
all disj p1, p2: Professor, disj c1, c2: Course | c1 in p1.teaches && c1 in p2.teaches &&  c2 in p1.teaches => c2 not in p2.enrolled
}