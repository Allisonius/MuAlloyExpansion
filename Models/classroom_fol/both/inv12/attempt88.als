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
all t:Teacher | some g:Group, s:Student, c:Class | t->c in Teaches implies s->g in c.Groups
}