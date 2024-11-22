sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all t: Track | all t1: Junction | t1 in t.succs implies some s: Semaphore | s in t.signals
}