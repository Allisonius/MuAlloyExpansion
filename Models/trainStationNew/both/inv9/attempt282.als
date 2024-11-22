sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all disj t,t2:Track, s:Semaphore, j:Junction | t2 in Junction && t2 not in t.succs => s not in t.signals
}