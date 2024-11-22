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

pred inv15{
all s1, s2 : Student, g1, g2 : Grade, p : Project, c : Course |
  		s1 + s2 in projects.p & enrolled.c	
  		&& p in c.projects
  		&& s1->g1 + s2->g2 in c.grades
  		=> g1 = g2 || g1.prev = g2 || g1 = g2.prev
}