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


pred inv8{
all x : Teacher | some y,z : Class | x->y in Teaches and x->z in Teaches implies y=z
}