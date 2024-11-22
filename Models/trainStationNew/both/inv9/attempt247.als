sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all x:Track | all y : Junction | some z:Semaphore| z in x.signals implies x not in y.^succs
}