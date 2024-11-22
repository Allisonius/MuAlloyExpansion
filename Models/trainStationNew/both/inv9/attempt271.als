sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all disj t1:Track, t2:Track, s:Semaphore | (t2 not in Junction and t2 in t1.^(succs)) implies (s not in t1.signals)
}