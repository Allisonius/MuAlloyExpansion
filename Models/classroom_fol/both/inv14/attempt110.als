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
all c:Class,s:Student| some t:Teacher | s in c.Groups.Group and t in c.Groups.Group implies t in s.^(~Tutors)
}