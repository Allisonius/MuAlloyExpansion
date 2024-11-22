sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv1{
all s: Track | (some e: Entry | e in s.succs) and (some x: Exit | x in s.succs)
}