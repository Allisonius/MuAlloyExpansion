sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv1{
Entry in Track or Exit in Track or Entry in Track.^(succs) or Exit in Track.^(succs)
}