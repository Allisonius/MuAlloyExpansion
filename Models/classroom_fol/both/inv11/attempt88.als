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
some c:Class, t:Teacher,g:Group,p:Person | c->p->g in Groups and t->c in Teaches
}