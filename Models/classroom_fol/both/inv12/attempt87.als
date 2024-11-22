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
all t : Teacher
  	| some c1,c2 : Class, g1,g2 : Group | c1->t->g1 in Groups and c2->t->g2 in Groups
}