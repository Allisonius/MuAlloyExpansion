sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv10{
all t:Track |all j:Junction| some s:Semaphore | j in t.succs implies s in t.signals
}