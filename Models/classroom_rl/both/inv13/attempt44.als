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
all p : Person, t : Teacher | p->t in Tutors => t in Teacher and p in Student
}