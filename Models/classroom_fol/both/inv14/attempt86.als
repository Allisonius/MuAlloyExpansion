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
all p : Student, c : Class, g : Group, t : Teacher | (c->p->g in Groups and t->c in Teaches) implies p->t in Tutors
}