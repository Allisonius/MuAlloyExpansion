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
all c:Class | (some s:Person,g:Group | (c->s->g in Groups)) implies (some t:Person | t->c in Teaches)
}