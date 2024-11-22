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
all x : Teacher | all c : Class | some d : Class | x->c in Teaches implies c!=d and x->d not in Teaches
}