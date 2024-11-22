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
all t:Teacher | some s:Student,c:Class,g:Group | t->c in Teaches and c->s->g in Groups
}