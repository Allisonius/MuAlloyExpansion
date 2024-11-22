sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv3{
all t:Track | t in Exit implies all ts:Track | t!=ts and t->ts not in succs
all t:Track | t in Exit implies all s:Signal | t->s not in signals
}