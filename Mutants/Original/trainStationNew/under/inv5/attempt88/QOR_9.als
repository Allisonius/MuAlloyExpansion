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
(all t: (one Track) {
((no p1,p2: (one Track) {
((p1 != p2) && (p1 in (t & (Track.succs))) && (p2 in (t & (Track.succs))))
}) => (t in Junction))
})
}





