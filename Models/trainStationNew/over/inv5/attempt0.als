sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv5{
all t, t1: Track | t in (Track-t1).succs && t in t1.succs <=> t in Junction
}