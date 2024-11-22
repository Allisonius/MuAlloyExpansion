sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all t : Track | all s : Semaphore | some j : Junction | s in t.signals implies j in t.^succs
}