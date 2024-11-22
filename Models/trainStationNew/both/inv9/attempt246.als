sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all x,y:Track, s:Signal|x->y in succs and x in Junction and y->s in signals implies s not in Semaphore
}