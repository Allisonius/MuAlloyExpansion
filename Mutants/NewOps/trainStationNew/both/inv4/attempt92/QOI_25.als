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
pred inv4[] {
((some var123456 : Track { (Entry !in (var123456.(^succs)))}) && (all t: (one Track) {
((t !in (Track.(^succs))) => (t in Entry))
}))
}





