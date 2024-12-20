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
(some t : Teacher, s : Student | s->t in Tutors and t->s not in Tutors)
}