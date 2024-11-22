sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all f:Track, t:Junction, s:Semaphore|f in t.^succs implies f->s not in signals
}