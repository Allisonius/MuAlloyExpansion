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
all p1, p2: Person, c1: Course | lone c2: Course | p1!=p2 && (c2 in p1.enrolled && c2 in p2.enrolled) || (c2 in p1.teaches && c2 in p2.teaches) => c1 in p1.teaches && c1 not in p2.enrolled
}