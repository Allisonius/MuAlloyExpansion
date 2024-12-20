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


pred inv12{
all t : Teacher | all c : Class | (some s : Person | some g : Group | c->s->g in Groups) => t->c in Teaches
}