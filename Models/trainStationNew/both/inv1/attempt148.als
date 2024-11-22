sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv1{
all t:Track | some en:Entry | en->t in succs
all t:Track | one ex:Exit | t->ex in succs
}