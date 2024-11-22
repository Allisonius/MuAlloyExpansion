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


pred inv8{
all p1, p2 : Teacher, c : Class | (p1->c in Teaches and p2->c in Teaches) => p1 = p2
}