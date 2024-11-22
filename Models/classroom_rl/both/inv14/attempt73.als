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
all c : Class, t : Teaches.c | all s : Student | some g : Group | c->s->g in Groups and s in t.Tutors
}