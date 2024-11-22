sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv4{
all entry : univ | entry in Track and no succs.entry and entry not in entry.^succs implies entry in Entry
}