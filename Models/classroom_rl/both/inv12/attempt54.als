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
all t:Teacher | some p:Person, c:Class, g:Group |  c->p->g in Groups implies t->p in Teaches
}