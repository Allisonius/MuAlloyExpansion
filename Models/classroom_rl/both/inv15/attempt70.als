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
all t1 : Teacher | some t : Teacher | t1->t in Tutors or t1->t in Tutors.Tutors
}