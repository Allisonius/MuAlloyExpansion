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
all x : Teacher | some c : Class | some d : Class | x->c in Teaches implies x->d not in Teaches
}