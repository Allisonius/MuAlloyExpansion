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
all c:Class,s:Student | all g:Group |some t:Teacher| c->s->g in Groups implies t->c in Teaches
  
  
  
 
  
  all c:Class,g:Group,s:Student | some t:Teacher | ( c->s->g in Groups) implies t->c in Teaches
}