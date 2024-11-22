sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv6{
all x : Track | some y : Signal | x in Entry and y in Speed implies y in x.signals
}