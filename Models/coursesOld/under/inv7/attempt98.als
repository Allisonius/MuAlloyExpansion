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

pred inv7{
all person : Student | all project1, project2 : Project | all course : Course | ((project1 + project2) in person.projects and (project1 + project2) in course.projects) implies project1 = project2
}