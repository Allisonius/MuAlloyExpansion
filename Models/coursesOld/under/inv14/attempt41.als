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

pred inv14{
all s : Student , u : Student - s | lone( s.projects & u.projects )
  	all s : Student, t : Student - s | lone (s.projects & t.projects)
}