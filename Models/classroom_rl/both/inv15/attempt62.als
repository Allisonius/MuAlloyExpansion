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


pred inv15{
all p : Person | (p -> p in Tutors and p in Teacher) or (p.*Tutors) in Teacher
}