module unknown
open util/integer [] as integer
sig State {
trans: (Event->State)
}
sig Init in State {}
sig Event {}
pred inv7[] {
(all x: (one Event),y: (one Init),z: (one Event) {
(trans in (y one->one (z one->one x)))
})
}





