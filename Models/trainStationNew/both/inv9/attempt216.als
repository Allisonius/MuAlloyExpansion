sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all t : Track | all j : Junction | all s : Semaphore | (t not in j.succs) implies (s not in t.signals)
}