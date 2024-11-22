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
all s:Student, c:Class, g:Group, t:Teacher | (t->s in Tutors and c->s->g in Groups) implies t->c in Teaches
}