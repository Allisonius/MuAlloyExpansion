sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv5{
all t, t2, t3 : Track | t not in t3 and (t in t2.succs and t2 in t3.succs) iff t in Junction
}