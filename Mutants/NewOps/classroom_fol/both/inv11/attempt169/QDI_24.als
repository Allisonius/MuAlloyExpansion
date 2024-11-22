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
(some p1,p2: (Person & Student) {
(((c->(p1->g)) in Groups) => (((p2->c) in Teaches) && (p2 in Teacher)))
})
})
}





