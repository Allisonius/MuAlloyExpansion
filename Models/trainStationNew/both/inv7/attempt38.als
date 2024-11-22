sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv7{
all x,y : Track | x != y implies y in x.succs
all x : Track | x not in x.succs
}