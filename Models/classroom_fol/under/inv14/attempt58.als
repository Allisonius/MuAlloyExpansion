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
all s : Person, c : Class, g : Group , t : Person | c->s->g in Groups and t in Teacher and s in Student and t->c in Teaches implies t->s in Tutors
}