sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv8{
all t:Track | t in Entry implies (all t1:Track | t1 in Exit implies t1 in t.^succs)
}