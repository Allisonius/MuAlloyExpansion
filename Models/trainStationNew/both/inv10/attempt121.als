sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv10{
all a:Track,b:Track-a| one s:Semaphore| b in Junction and a->b in succs implies a->s in signals
}