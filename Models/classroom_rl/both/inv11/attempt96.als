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
all c : Class, t : Teacher | 
  		t->c not in Teaches => (some p : Person, g : Group | c->p->g not in Groups)
}