sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv5{
all t : Track | t in Junction implies #(succs.t)>0
all t : Track |   #(succs.t)>0 implies t in Junction
}