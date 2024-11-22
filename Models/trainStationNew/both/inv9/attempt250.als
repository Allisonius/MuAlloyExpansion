sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all x:Track | some z:Semaphore| all y : Junction | z in x.signals implies x not in y.^succs
}