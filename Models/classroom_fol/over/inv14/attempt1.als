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


pred inv14{
all p1, p2 : Person | some g : Group, c : Class | 
  		(c -> p1 -> g in Groups and p2 -> c in Teaches) and (p2 -> p1 in Tutors)
}