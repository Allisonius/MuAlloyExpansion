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
all x : Class, y,z : Teacher  | (x->y in Teaches and x->z in Teaches) implies y=z
}