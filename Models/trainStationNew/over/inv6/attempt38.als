sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv6{
all  x:Track|one y:Signal| x in Entry implies x->y in signals and y in Speed
}