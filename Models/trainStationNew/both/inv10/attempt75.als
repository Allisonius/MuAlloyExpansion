sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv10{
all j : Junction, t : succs.j, s:Signal | s in t.signals and s in Semaphore
}