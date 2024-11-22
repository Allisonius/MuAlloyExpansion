sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv1{
all t:Track | #Exit&(t.^succs+^succs.t)>0 and #Entry&(t.^succs+^succs.t)>0
}