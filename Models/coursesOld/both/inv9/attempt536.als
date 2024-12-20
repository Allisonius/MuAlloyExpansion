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
all p : Professor, s : Student, c : Course | p!=s and c in p.teaches and c in s.enrolled => s not in Professor and c not in s.teaches
}