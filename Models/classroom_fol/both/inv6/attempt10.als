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


pred inv6{
all p:Person |some c:Class | (p in Teacher and p not in Student) implies p->c in Teaches
}