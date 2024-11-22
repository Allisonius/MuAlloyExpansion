sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv4{
all t : Entry | t not in Track.^succs
all t1,t2 : Track | t1 not in t2.succs implies t1 in Entry
}