sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv4{
all t1,t2,t3: Track| t1 not in t2.succs and t3 in t1.succs <=> t1 in Entry
}