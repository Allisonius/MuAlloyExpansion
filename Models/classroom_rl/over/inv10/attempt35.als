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


pred inv10{
all s: Student, c: Class { one g: Group | s->g in c.Groups and s.Teaches = none }
}