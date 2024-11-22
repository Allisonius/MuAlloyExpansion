sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all t, t1: Track | all s: Semaphore | t1 not in t.succs implies s not in t.signals
}