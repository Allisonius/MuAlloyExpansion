sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv2{
all s, s1: Signal, t: Track | t->s in signals and t->s1 in signals implies s = s1
}