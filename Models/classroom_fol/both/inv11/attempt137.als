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
all c:Class, s:Student, g:Group|some t:Teacher | t->c in Teaches implies c->s->g in Groups
}