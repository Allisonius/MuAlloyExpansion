sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv3{
all t1,t2 : Track | t1->t2 in succs implies t2 not in Exit
no Exit.succs
}