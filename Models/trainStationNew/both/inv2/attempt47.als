sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv2{
all s:Signal, t1:Track | s in t1.signals and s not in Track.signals - t1.signals
}