sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv1{
all t: Track | #(succs.t & Entry)>=1 && #(t.succs & Exit)>=1
}