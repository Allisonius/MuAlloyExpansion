sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv10{
all t: Track - Exit| all t1: Junction| t1 in t.succs => Semaphore in t.signals
}