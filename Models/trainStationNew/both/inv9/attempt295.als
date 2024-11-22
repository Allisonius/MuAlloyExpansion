sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv9{
all x,y:Track |some s:Signal| x->y not in succs and y in Junction implies x->s not in signals and s in Semaphore
}