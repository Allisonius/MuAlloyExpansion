sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv2{
all s1,s2 : Signal, t : Track | t -> s1 in signals and t -> s2 in signals implies s1=s2
}