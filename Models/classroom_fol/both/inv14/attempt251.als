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
all s:Student,c:Class | studentInClass[s,c] implies some p : Person | p->s in Tutors and p->c in Teaches
}

pred studentInClass[s:Student,c:Class]{
	some g:Group | c->s->g in Groups
}