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
(some c : Class, s:Student, g:Group | c->s->g in Groups implies some t:Teacher | t->c in Teaches)
}