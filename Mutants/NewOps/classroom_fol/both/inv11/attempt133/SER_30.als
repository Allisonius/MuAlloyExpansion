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
(all c: (one Class),g: (one Group) {
(some p: (one Group),t: (one Teacher) {
(((p->g) in (c.Groups)) => (p in (c.(~Teaches))))
})
})
}





