sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv4{
some a:Track| all b:Track-a | b->a in succs and a->b not in succs implies a in Entry
}