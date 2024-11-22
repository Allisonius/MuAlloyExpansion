sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all t : Track,s : Semaphore|all t2:t.succs| (t2 not in Junction) implies no (Semaphore & t.signals)
}