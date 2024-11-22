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
(some c : Class, p : Person | p -> c in Teaches and p in Teacher) and 
		(all c : Class, p : Person | some g : Group | c -> p -> g in Groups)
}