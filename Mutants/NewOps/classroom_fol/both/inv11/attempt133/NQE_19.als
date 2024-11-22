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
pred inv11[] {
(some p: (one Person),t: (one Teacher) {
(all c: (one Class),g: (one Group) {
(((p->g) in (c.Groups)) => (p in (c.(~Teaches))))
})
})
}





