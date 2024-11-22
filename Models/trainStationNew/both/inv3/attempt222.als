sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv3{
all ex:Exit | Exit not in ex.succs and Entry not in ex.succs and Junction not in ex.succs
}