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


pred inv14{
all c : Class, g : Group, t : Teacher, s : Student | {
    ((t->c in Teaches) and (c->s->g in Groups)) implies (t->s in Tutors)  
  }
}