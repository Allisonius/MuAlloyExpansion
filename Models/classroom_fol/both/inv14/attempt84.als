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
all c:Class , t:Teacher, s:Student, g:Group|(c->s->g in Groups and t->c in Teaches) implies t->c in Tutors
}