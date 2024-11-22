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
(some c: (one Class) {
(all x: (one Teacher) {
(some d: (one Class) {
(((x->c) in Teaches) => ((x->d) !in Teaches))
})
})
})
}





