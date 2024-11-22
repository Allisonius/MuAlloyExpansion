sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all x:Track | all z:Semaphore| some y : Junction | (x in y.^succs and x!=y)implies z not in x.signals
}