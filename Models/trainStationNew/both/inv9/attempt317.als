sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all t:Track | no (Junction & t.succs) implies Semaphore not in t.signals



all t:Track | one (Exit & t) implies (some s:Semaphore | s not in t.signals)
}