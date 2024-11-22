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
all c : Class | has_groups[c] implies (some t : Teacher | t->c in Teaches)
}

pred has_groups[c : Class]{
  	some s : Student, g : Group | c->s->g in Groups
}