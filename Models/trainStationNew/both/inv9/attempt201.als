sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all a,b:Track|b in Junction and a->b not in succs implies all s:Semaphore| a->s not in signals
}