sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv3{
all a:Track, b:Track-a| a->b not in succs and a->a not in succs implies a in Entry
}