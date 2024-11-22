sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv10{
all t: Track | t in Junction implies all t1: ^(succs).t | some s: Semaphore | s in t1.signals
}