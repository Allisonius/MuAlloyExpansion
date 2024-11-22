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


pred inv9{
one t1:Teacher | one t2:Teacher| t1.Teaches != t2.Teaches
}