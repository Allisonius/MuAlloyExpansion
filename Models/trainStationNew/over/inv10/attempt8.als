sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv10{
all t : Track | some s : Semaphore | (t in succs.Junction ) implies s in t.signals
}