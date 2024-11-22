sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv5{
all x:Track-Junction| one succs.x
some x,z:Track|all y:Track| y in Junction implies x->y in succs and z->y in succs and x!=z
}