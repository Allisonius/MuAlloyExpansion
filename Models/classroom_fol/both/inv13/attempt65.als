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


pred inv13{
all t:Teacher,s:Student,c:Class | t->c in Teaches and t->s in Tutors and not s->c in Teaches
}