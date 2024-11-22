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
all disj p1, p2 : Professor, c1, c2 : Course |
  		p1 in teaches.c1
  		&& p2 in teaches.c1
  		&& p1 in teaches.c2
  		=> p2 not in enrolled.c2
}