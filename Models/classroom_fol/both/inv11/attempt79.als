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


pred inv11{
all c : Class, g : Group, p : Person, t : Teacher | t -> c in Teaches implies c -> p -> g in Groups
}