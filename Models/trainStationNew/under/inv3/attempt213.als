sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv3{
all t:Track | some e:Track | all ts:Track | t->e in succs and t!=ts and e->ts not in succs implies e in Exit
}