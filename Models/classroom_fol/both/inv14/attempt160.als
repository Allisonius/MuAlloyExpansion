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
all s : Student, c : Class, t : Teacher | t -> c in Teaches and (some g : Group | c -> s -> g in Groups) iff t -> s in Tutors
}