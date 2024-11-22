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
all c : Class, p1, p2 : Person | (p1->p2 in Tutors) implies (p1 in Teacher and p2 in Student and p2 not in Teacher and p1 not in Student and p1->c in Teaches)
}