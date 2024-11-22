sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all x:Track | all y : Junction | some z:Semaphore| x in y.^succs or z not in x.signals
}