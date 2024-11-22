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
all c : Class, t : Teacher | t->c in Teaches => (all s : Student | c->s->Group in Groups => s in t.(Tutors :> Student))
}