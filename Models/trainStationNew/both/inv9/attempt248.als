sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all j : Junction | all t : Track | all s : Semaphore | (no t.succs & j )implies s not in t.signals
}