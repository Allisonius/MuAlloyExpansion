sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv8{
all en:Entry, ex:Exit | some t:Track | en->t in succs and t->ex in succs
}