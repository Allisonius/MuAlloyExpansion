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
all c:Class,s:Student,t:Teacher,g:Group| c->s->g in Groups and c in t.Teaches implies t in s.^(~Tutors)
}