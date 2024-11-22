sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv1{
all s: Track | s in Junction + Entry + Exit => #(s.succs & Entry) > 0 && #(s.succs & Exit) > 0
}