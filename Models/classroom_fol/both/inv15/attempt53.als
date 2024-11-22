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
all x, y, z : Person | x->y in Tutors and y->z in Tutors and z->x in Tutors and x != y and x != z and y != z implies x in Teacher
}