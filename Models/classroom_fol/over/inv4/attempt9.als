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
all p : Person | p in Student or p in Teacher and inv3
}

pred inv3{
  all p : Person | p in Student implies p not in Teacher
}