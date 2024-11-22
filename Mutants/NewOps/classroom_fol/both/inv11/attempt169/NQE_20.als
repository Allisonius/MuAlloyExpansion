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
(some p1,p2: (one Person) {
(all c: (one Class),g: (one Group) {
(((c->(p1->g)) in Groups) => (((p2->c) in Teaches) && (p2 in Teacher)))
})
})
}





