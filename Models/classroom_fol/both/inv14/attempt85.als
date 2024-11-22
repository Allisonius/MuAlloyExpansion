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
all c:Class,s:Student,g:Group,t:Teacher | c->s->g in Groups implies  t->c in Teaches and t->s in Tutors
}