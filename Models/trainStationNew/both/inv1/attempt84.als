sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv1{
all t:Track | #Exit&(t.^succs)>0 and #Entry&(^succs.t)>0
}