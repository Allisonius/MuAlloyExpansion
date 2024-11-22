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
all p1, p2 : Person, c : Class | some c.(p2.Groups) and c in p1.Teaches implies p2 in p1.Tutors
}