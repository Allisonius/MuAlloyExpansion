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
no c:Class | some s:Person | some g:Group | some t:Teacher | (c->s->g) in Groups implies t->c in Teaches
}