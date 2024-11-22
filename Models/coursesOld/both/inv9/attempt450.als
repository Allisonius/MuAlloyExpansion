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
all pe: Person, p: Professor, c: Course | p -> c in teaches and pe -> c in enrolled and p != pe implies pe not in Professor
}