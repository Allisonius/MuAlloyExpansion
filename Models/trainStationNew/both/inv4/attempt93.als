sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv4{
all x : Track | (x in Entry implies #(x.succs) = 0) and (#(x.succs) = 0 implies x in Entry )
}