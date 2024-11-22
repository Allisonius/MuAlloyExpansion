sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv10{
all f:Track, j:Junction| some s:Semaphore| j->f in succs implies f-> s in signals
}