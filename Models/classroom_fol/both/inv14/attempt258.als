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
all ps : Person, st : Student | some c : Class, g : Group | some t : Teacher | c->ps->g in Groups and t->c in Teaches implies t->st in Tutors
}