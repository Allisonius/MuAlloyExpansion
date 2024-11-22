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
((no var123456 : Group { (Teacher in ((Class.Groups).var123456))}) && (all t: (one Teacher) {
(some c: (one Class) {
((c in (t.Teaches)) => (t in ((c.Groups).Group)))
})
}))
}





