sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv3{
all ex:Exit, j:Junction, e:Entry, t:Track | j not in ex.succs and e not in ex.succs and ex not in ex.succs and t not in ex.succs
}