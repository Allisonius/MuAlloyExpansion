sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv3{
some e : Exit, t : Track | e in t implies no t.succs
all t : Track | t.succs != t
}