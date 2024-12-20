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
all p:Person | some t :Teacher | t in p.Tutors or t in p.Tutors.Tutors or t in p.Tutors.Tutors.Tutors
}