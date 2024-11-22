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


pred inv13{
all p:Person,t:Teacher,s:Student | s->p not in Tutors and p->t not in Tutors and t->s in Tutors
}