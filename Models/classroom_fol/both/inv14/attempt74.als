sig Person  {
	Tutors : set Person,
	Teaches : set Class
}
sig Group {}

sig Class  {
	Groups : Person -> Group
}

sig Teacher in Person  {}

sig Student in Person  {}


pred inv14{
all s: Person, c: Class | some t: Teacher | t->c in Teaches implies some g: Group | c->s->g in Groups
}