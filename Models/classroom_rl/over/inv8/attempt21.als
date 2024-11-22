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


pred inv8{
all disj c1,c2: Class | c1 in Teacher.Teaches iff c2 not in Teacher.Teaches
}