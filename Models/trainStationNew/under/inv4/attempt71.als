sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv4{
all entry : Entry | no succs.entry and (entry in Exit or entry not in Exit) and (entry in Junction or entry not in Junction)
}