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
all c:Class | some s:Person, g:Group | c->s->g in Groups => 
  		some t:Teacher | t->c in Teaches
}