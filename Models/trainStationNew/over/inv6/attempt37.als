sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv6{
all t:Track|some s:Signal | t in Entry implies s in Speed and s in t.signals
}