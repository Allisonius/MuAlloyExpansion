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
all c : Class, t : Teacher, p : Person, g : Group | (t -> c in Teaches and t not in Student) and (c -> p -> g in Groups)
}