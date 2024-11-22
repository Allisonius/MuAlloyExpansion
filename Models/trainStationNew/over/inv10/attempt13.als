sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv10{
all t:Track|some s: t.signals|  #(t.succs & Junction)>0 implies s in Semaphore
}