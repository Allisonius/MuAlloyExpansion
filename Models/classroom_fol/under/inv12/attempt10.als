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


pred inv12{
all t0, t1 : Teacher | some c : Class, g : Group | c->t0->g in Groups implies t1->c in Teaches
}