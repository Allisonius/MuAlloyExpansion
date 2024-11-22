sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv1{
all t1,t2,t : Track | t1 in Entry and t2 in Exit implies (t1 in t.succs and t2 in t.succs)
}