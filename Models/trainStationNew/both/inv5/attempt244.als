sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv5{
some x,z:Track|all y:Track| x->y in succs and z->y in succs and x!=z implies y in Junction
}