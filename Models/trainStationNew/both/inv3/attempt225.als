sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv3{
all t:Track,a:Track-t| t->a not in succs and a->t in succs implies t in Exit
}