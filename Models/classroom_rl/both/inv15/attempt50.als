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


pred inv15{
all p1, p2:Person |
  (p1 in Teacher implies  p2->p1 not  in Tutors)
}