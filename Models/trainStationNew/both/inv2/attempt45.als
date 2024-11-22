sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv2{
all s : Signal, t1, t2 : Track | t1->s in signals and t2->s in signals and t1 = t2
}