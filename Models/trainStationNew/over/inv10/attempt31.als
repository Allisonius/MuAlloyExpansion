sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv10{
all t: Junction | some s: Semaphore | all t1: Track | t1 in succs.t implies s in t1.signals
}