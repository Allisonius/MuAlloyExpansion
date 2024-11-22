sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv10{
all x1,x2 : Track | all y : Junction | some z : Semaphore | x2 in x1.^succs and y in x1.^succs and y in x2.^succs implies z in x1.signals
}