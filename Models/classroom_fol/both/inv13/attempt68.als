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
all p : Person
  		| (p in Teacher implies all p2 : Person | p2->p not in Tutors) and
  		  (p in Student implies all p2 : Person | p->p2 not in Tutors)
}