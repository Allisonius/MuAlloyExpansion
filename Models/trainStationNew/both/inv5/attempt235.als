sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv5{
all t : Track | some a : (Track - t), b : (Track - t - a) | t in a.succs and t in b.succs
}