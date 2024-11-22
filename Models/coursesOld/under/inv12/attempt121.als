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
all grade1, grade2: Grade | all person: Student | all course : Course | (person->grade1 + person->grade2) in course.grades implies grade1 = grade2
}