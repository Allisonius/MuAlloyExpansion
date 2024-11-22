sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all x:Track | some y : Junction | all z:Semaphore| y in succs.x implies z not in x.signals
}