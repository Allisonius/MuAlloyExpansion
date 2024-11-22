sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv5{
all j: Junction | some t : Track | some l : Track | t != l and j in t.succs and j in l.succs
}