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
all disj p1, p2: Person | some (p2.teaches & p1.teaches) => ((p1.enrolled & p2.enrolled)=0) && p1.enrolled != p2.teaches
}