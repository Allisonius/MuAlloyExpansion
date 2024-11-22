sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv7{
all t:Track | t not in Exit implies some t2:Track | t->t2 in succs
}