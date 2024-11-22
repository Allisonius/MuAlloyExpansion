sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv7{
all disj t1,t2:Track | (t2 in t1.succs => t1 not in t2.succs)
}