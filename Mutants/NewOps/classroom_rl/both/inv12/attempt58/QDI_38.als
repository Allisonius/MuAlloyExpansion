module unknown
open util/integer [] as integer
sig Person {
Tutors: (set Person),
Teaches: (set Class)
}
sig Group {}
sig Class {
Groups: (Person->Group)
}
sig Teacher in Person {}
sig Student in Person {}
pred inv12[] {
((Teacher in ((Class.Groups).Group)) && (all t: (Person + Teacher) {
(some c: (one Class) {
((c in (t.Teaches)) => (t in ((c.Groups).Group)))
})
}))
}





