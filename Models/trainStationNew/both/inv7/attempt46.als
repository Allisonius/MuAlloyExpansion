sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv7{
all t:Track | one e:Entry, ex:Exit | (t not in t.succs) and ex in e.succs => e not in ex.succs
}