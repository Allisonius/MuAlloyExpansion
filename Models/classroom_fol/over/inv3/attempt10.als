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


pred inv3{
not some p:Person | p in Student && p in Teacher
	all p:Person | p in Student or p in Teacher
}