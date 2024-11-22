sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv5{
all t : Track | #(t.succs) > 1 implies t not in (Track - Junction) and t in Junction
}