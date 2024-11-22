sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all t:Track | some j:Junction | t->j not in succs implies all s:Semaphore | t->s not in signals
}