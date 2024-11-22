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
pred inv8[] {
(all x: (one Teacher) {
(all c: (one Class) {
(some d: (one Class) {
(((x->d) !in Teaches) => ((x->c) in Teaches))
})
})
})
}





