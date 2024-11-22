sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv1{
all e:Entry, ex:Exit | some t:Track | e in t.succs and ex in t.succs
}