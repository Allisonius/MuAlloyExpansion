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
(lone x: (one Teacher) {
(all c: (one Class) {
(all d: (one Class) {
(((x->c) in Teaches) => ((x->d) !in Teaches))
})
})
})
}





