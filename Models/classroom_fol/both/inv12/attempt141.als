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
all t:Teacher | some c:Class | some s:Student | some g:Group | (c->s->g in Groups) implies (t->c in Teaches)
}