sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv5{
all t, t2: Track | t in t2.succs and some (t & (Track-t2-t).succs) => t in Junction
}