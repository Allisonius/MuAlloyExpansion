sig Track {
	succs : set Track,
	signals : set Signal
}
sig Junction, Entry, Exit in Track {}

sig Signal {}
sig Semaphore, Speed extends Signal {}


pred inv1{
some t : Track | t = Entry and t != Junction
some t : Track | t = Exit and t != Junction
}