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
all p1,p2,p3:Person | (p1 in Teacher implies (p1->p2 in Tutors) implies (p2 ->p3 in Tutors) ) and p1 not in Student
}