sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv1{
some e:Entry | some ex:Exit | some t:Track | e->t in succs and t->ex in succs
}