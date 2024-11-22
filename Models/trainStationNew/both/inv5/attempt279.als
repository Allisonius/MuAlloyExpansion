sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv5{
all t:Track | t not in t.succs
all disj t1,t2,t3:Track | t1 in t2.succs and t1 in t3.succs => t1 in Junction
}