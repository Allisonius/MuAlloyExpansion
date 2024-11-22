sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv10{
all x: Track | some y: x.signals | Junction in x.succs implies y in Semaphore
}