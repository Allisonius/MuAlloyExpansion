sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
not some t:Track | some j:Junction | j in t.^succs and some s:Semaphore | t->s in signals
}