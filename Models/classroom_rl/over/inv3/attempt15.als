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


pred inv3{
all p: Person | (p in Student and p not in Teacher) or (p in Teacher and p not in Student)
}