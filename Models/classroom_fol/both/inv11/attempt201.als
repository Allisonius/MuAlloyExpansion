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


pred inv11{
all c : Class | some g : Group | some t, p : Person | (c->p->g in Groups) implies (t->c in Teaches and t in Teacher)
}