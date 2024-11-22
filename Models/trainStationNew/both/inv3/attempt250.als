sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv3{
all t: Track | #(succs.t)=0 implies t in Entry
all t: Track |  t in Entry implies #(succs.t)=0
}