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
all s: Student, c: Course, g: Grade | c->s->g in grades implies (one p: Project | c->p in projects and s->c in enrolled)
}