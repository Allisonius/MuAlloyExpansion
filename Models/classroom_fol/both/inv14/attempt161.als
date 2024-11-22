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
all ps : Person, t : Teacher | some c : Class, g : Group | c->ps->g in Groups and t->c in Teaches implies t->ps in Tutors
}