sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all disj t1,t2:Track | t2 in Junction and t2 not in t1.^(succs) implies(all s:Semaphore | s not in t1.signals)
}