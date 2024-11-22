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
all s:Student,c:Class | some g:Group,t1,t2:Teacher | (c->s->g in Groups and t1->c in Teaches and t2->c in Teaches) implies (t1->s in Tutors and t2->s in Tutors)
}