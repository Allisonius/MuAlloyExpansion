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


pred inv12{
all x : Class | (all t : Teacher | t->x in Teaches) implies (some p : Person, g : Group | x -> p -> g in Groups)
}