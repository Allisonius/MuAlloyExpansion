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
all t1:Teacher,t2:Teacher,s:Student | s->t1 not in Tutors and t1->t2 not in Tutors
}