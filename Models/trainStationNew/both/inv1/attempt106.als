sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv1{
all a : Track | some b : Entry, c : Exit | a -> b in succs and a -> c in succs
}