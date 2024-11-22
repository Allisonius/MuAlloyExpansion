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
(some d: (one Class) {
(all c: (one Class) {
(all x: (one Teacher) {
(((x->c) in Teaches) => ((x->d) !in Teaches))
})
})
})
}





