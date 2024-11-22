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


pred inv15{
some p,q,r : Person | p->q in Tutors and q->r in Tutors implies (p in Teacher or q in Teacher or r in Teacher)
}