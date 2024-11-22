sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv5{
all j : Track | (j in Junction) iff (some p1, p2 : Track - j| p1 -> j in succs and p2 -> j in succs)
}