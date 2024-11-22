sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv10{
all x:Junction | all t :Track |some z:Semaphore | x in t.succs implies z in t.signals
}