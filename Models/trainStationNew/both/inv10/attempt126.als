sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv10{
all t : Track | some j : Junction | some s : Semaphore | j in t.succs implies s in t.signals
all t : Track | some (t.signals & Semaphore) implies some (t.succs & Junction)
}