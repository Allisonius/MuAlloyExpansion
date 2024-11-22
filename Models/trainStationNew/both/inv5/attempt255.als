sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv5{
all j: Junction | some t, l : Track | t != l and t!= j and l!=j and j in t.succs and j in l.succs
}