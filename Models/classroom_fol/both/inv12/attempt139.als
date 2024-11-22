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


pred inv12{
some t: Teacher | all s :Student|some g:Group |some c:Class | c->(s->g) in Groups implies t->c in Teaches
}