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
(all c: (one Class) {
(lone g: (one Group) {
(all t: (one Person) {
(((c->(t->g)) in Groups) => (((t->c) in Teaches) && (t in Teacher)))
})
})
})
}





