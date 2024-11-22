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
all c : Class, s : Student, t : Teacher | s in c.Groups.Group and c in t.Teaches implies s in t.Tutors
}