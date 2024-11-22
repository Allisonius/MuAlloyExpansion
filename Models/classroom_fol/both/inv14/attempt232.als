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
all s:Person | some c:Class | (some g:Group | c -> s -> g in Groups) implies (some t:Person | t -> c in Teaches implies t -> s in Tutors)
}