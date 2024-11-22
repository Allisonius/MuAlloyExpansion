sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv10{
all x: Track, j: Junction | some s: Semaphore | j in x.succs implies s in x.signals
}