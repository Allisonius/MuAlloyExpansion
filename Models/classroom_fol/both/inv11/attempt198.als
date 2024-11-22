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
all c : Class | all t : Teacher | (t -> c not in Teaches) implies not (some p : Person, g : Group | c -> p -> g in Groups)
}