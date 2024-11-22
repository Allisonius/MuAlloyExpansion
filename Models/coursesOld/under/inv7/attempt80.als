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
all student: Student | all p1, p2: Project | all course: Course | (p1+p2) in student.projects and (p1+p2) in course.projects implies p1 = p2
}