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
all p1 : Person |
  	(some t : Teacher | p1->t in Tutors) or
	(some p2 : Person, t : Teacher | (p1->p2 in Tutors) and (p2->t in Tutors))
}