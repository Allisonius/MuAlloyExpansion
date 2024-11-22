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
(all c : Class | some p : Teacher | p -> c in Teaches) and 
		(all g : Group, c : Class, p : Person | c -> p -> g in Groups)
}