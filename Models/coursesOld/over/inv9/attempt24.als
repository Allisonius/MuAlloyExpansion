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
all p1, p2: Person | all course: Course | course in p1.teaches and course in p2.teaches implies p1=p2 and p1 in Professor and p2 in Professor
}