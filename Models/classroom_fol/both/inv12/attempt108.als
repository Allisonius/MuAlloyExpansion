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
all c : Class, g : Group | all t1, t2 : Teacher | c->t1->g in Groups and c->t2->g in Groups implies t1=t2
}