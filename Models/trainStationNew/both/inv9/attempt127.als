sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all t:Track | one (Exit & t) implies (Semaphore not in t.signals and Signal not in t.signals)
}