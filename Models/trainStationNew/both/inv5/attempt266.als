sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv5{
all t: Track | t in Junction implies some t1,t2: Track - t | t1 in succs.t and t2 in succs.t and t1 != t2
}