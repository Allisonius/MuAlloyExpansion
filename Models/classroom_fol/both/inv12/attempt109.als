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
all t : Teacher
  		| (some c : Class, g1,g2 : Group | c->t->g1 in Groups and c->t->g2 in Groups and g1 != g2)
}