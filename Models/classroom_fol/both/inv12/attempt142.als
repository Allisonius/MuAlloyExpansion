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
some t: Teacher |some g:Group |some c:Class | some p:Person|(t->c) in Teaches and c->(p->g) in Groups
}