sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all disj t1, t2:Track | t1->t2 not in succs or (t1->t2 not in succs and t2 not in Junction) implies Semaphore not in (t1.signals)
}