sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv10{
all t:Track | (some t2:Track | t->t2 in succs and t2 in Junction) implies (some s:Signal | t->s in signals and s not in Semaphore)
}