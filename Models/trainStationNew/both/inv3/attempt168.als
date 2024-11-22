sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv3{
all t1,t2: Track | t1!=t2 and t2 not in t1.succs implies t1 in Exit
}