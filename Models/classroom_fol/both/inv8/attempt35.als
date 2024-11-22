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
all c1, c2 : Class | some p : Person | p in Teacher and p -> c1 in Teaches => not p -> c2 in Teaches
}