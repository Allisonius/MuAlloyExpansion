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
all s:Person,c:Class,g:Group | (c->s->g in Groups => all t:Person | t->c in Teaches and t->s in Tutors)
}