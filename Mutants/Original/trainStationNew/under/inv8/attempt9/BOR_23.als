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
pred inv8[] {
(all x: (one Track) {
((x in (Entry - Exit)) => ((((x.(^succs)) in Exit) && (x in (Exit + Entry))) => ((x.(^succs)) in Entry)))
})
}





