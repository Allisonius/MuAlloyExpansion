module unknown
open util/integer [] as integer
sig Track {
prox: (set Track),
signal: (lone Signal)
}
sig Junction extends Track {}
sig Entry in Track {}
sig Exit in Track {}
sig Signal {}
var sig Green in Signal {}
sig Train {
var pos: (lone Track)
}
pred inv5[] {
((always (all t: (one Train) {
(((one ((t.pos) :> Exit)) && (some ((t.pos).prox))) => (no (t.(pos'))))
})) && (after (always (all t: (one Train) {
(((one (t.pos)) && (some ((t.pos).prox))) => (((t.(pos')) in ((t.pos).prox)) || ((t.(pos')) = (t.pos))))
}))))
}


fact Layout {
((all t: (one Track) {
((t !in Junction) <=> ((lone (t.prox)) && (lone (prox.t))))
}) && (no t: (one Track) {
(t in (t.(^prox)))
}) && (all s: (one Signal) {
(one (signal.s))
}) && (all j: (one Junction),t: (one (prox.j)) {
(some (t.signal))
}) && (all t: (one Track) {
((t in Entry) <=> (no (prox.t)))
}) && (all t: (one Track) {
((t in Exit) <=> (no (t.prox)))
}))
}


