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

pred inv5{
all s: Person, p: Project | s in Student implies s in p.~projects
  	all s: Person, p: Project | s not in Student implies s not in p.~projects
}