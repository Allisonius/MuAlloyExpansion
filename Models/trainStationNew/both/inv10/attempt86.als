sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv10{
all t: Track| (t.succs in Junction and t.succs not in Exit) => Semaphore in t.signals
}