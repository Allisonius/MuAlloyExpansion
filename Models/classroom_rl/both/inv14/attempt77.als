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
all s : Student, c : Class, t : Teacher | some s.(c.Groups) and t.Teaches in Class implies (Tutors.s in ( Teacher & Teaches.c))
}