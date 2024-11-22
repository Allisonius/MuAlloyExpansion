module unknown
open util/integer [] as integer
sig Track {
succs: (set Track),
signals: (set Signal)
}
sig Junction in Track {}
sig Entry in Track {}
sig Exit in Track {}
sig Signal {}
sig Semaphore extends Signal {}
sig Speed extends Signal {}
pred inv9[] {
(all x1,x2: (one Track) {
((((x2 in (x1.(^succs))) && ((x1.(*succs)) in Junction)) => ((x1.signals) in Semaphore)) || ((x2.signals) in Semaphore))
})
}





