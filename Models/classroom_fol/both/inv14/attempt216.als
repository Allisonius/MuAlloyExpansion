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
all x : Class, y : Student  | (some z : Group | x->y->z in Groups) and some v : Teacher | v->x in Teaches implies v->y in Tutors
}