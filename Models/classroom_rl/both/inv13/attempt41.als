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


pred inv13{
no Student.Tutors and (all p : Person.Tutors | p in Student and p not in Teacher)
}