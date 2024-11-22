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
all c:Class,t:Teacher,p:Person | some g:Group | c->p->g in Groups implies t->p in Tutors
}