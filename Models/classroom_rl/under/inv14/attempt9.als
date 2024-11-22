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
all p : Student, c : Class | some p.(c.Groups) implies (Teacher & Teaches.c) in Tutors.p
}