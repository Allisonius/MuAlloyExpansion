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


pred inv11{
all c: Class | some t: Teacher, s:Student, g:Group | c->s->g in Groups =>  t->c in Teaches
}