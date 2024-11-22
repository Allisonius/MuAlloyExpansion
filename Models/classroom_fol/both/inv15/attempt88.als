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
all p,q,r : Person | (p->q in Tutors implies p in Teacher) or 
  						 (q->p in Tutors implies q in Teacher) or 
  						 (q->r in Tutors implies q in Teacher) or 
  						 (r->q in Tutors implies r in Teacher) or 
  						 (r->p in Tutors implies r in Teacher) or 
  						 (p->r in Tutors implies p in Teacher)
}