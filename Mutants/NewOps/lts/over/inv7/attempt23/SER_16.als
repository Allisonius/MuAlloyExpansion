module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all x: (one State),y: (one Init),z: (one Init) {
((trans in (y one->one (z one->one x))) && (z != y))
})
}





