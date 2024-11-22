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
pred inv5[] {
((all t1: (one Track) {
((lone (t1 & (Track.succs))) => (no (Junction & t1)))
}) && (all t1: (one Track) {
((some ((t1 & (Track.signals)) - 1)) => (one (Junction & t1)))
}))
}





