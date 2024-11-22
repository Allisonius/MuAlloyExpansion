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
all p : Person, t : Teacher, c : Class, g : Group
  		| (c->p->g in Groups and t->p in Teaches) implies t->p in Tutors
}