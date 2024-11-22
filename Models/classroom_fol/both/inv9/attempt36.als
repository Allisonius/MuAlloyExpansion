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


pred inv9{
some t : Teacher | all c : Class | t->c in Teaches
	all c : Class | all t : Teacher | t->c in Teaches
}