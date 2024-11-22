sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all x1,x2 : Track | x2 in x1.^succs and x1.^succs in Junction implies x1.signals in Semaphore or x2.signals in Semaphore
}