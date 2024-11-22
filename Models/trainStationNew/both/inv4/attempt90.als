sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv4{
all t1:Track|all t2:Track-t1| t1 in Entry iff t1 not in t2.^succs
}