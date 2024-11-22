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
all ps : Person, st : Student | some c : Class, g : Group | c->ps->g in Groups implies some t : Teacher | t->c in Teaches and t->st in Tutors
}