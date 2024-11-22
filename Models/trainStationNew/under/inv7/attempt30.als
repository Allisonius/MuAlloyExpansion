sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv7{
all t : Track | all k : Track | t->k in succs implies (all z : Track | k->z in succs implies z->t not in succs)
}