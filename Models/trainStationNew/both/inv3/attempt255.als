sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv3{
no Entry & Junction
no Exit & Entry
no Exit & Junction
all x:Track | x in Exit => no x.succs
}