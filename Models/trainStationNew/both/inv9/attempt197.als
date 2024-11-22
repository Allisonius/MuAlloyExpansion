sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all t, t1: Track| t1 in Junction and t1 not in t.succs implies no s: Semaphore | s in t.signals
}