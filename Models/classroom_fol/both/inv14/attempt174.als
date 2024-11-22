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
all t : Teacher | some c : Class, s : Person | t->c in Teaches and (some g : Group | c->s->g in Groups) and t->s in Tutors
}