sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv7{
all t:Exit | all ts:Track-t | ts not in t.succs
all t:Entry | all ts:Track-t | t not in ts.succs
}