sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all x,y:Track, s:Signal|x->y in succs and x not in Junction implies y->s in signals and s not in Semaphore
}