sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all t : Track | one k : Junction | one s : Semaphore | t->k not in succs implies t->s not in signals
}