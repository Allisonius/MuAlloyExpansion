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
all c: Class, p: c.Groups.Group, t: Teacher & Teaches.c | p -> t in Tutors
}