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
all t,s : Person | some c : Class, g : Group | c->s->g in Groups and t->c in Teaches and t in Teacher and s in Student
}