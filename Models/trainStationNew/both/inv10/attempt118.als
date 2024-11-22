sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv10{
all t: Track | t in Junction implies some s: Semaphore, t1: Track | t1 in succs.t and s in t1.signals
}