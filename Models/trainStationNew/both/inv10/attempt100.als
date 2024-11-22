sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv10{
all t1:Track, t2:Track, s:Signal| t2 in t1.succs implies s in t1.signals implies s in Semaphore
}