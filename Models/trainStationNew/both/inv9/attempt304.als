sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all t:Track | some ts:Track | t->ts in succs and ts not in Junction implies all s:Signal | t->s not in signals
}