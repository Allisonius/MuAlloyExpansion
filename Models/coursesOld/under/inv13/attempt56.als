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

pred inv13{
all s : Student, c : Course, g : Grade | 
  		c->s->g in grades && g = max[Grade] => some p : Project |  s->p in projects && c->p in projects
}