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


pred inv5{
all t : Teacher | some c : Class | teaches_class[t,c]
}

pred teaches_class[t : Teacher, c : Class]{
  	t->c in Teaches
}