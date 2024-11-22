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


pred inv4{
always (all s:Student | s not in Teacher)
	always (all t:Teacher | t not in Student)
}