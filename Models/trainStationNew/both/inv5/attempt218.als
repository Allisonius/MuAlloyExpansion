sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv5{
all x,y,z:Track| x in Junction implies y->x in succs and z->x in succs and x->x not in succs
}