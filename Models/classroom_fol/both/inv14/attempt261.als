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
all c:Class,s:Student,t:Teacher |some g:Group| some s.(c.Groups)->g and some t.(c.Groups)->g and t->c in Teaches implies t in s.^~Tutors
}