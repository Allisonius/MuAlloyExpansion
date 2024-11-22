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
all s : Student, c : Class, t : Teacher | some s.(c.Groups) and some Teacher & Teaches.c implies some Tutors.t
}