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
some p1, p2, p3 : Person | p1 -> p2 in Tutors and p2 -> p3 in Tutors and p1 in Teacher
}