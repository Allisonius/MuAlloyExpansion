sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv3{
all tr : Track | (no tr.succs implies tr in Exit) or (tr in Exit and tr in Entry and tr in Junction)
}