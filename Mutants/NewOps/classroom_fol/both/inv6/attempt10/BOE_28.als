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
pred inv6[] {
(all p: (one Person) {
(some c: (one Class) {
(((p->c) in Teaches) => ((p in Teacher) && (p !in Student)))
})
})
}





