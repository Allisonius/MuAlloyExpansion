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
(all p: (one Teacher) {
(some c: (one Class) {
(((p in Teacher) && (p !in Student)) => ((p->c) in Teaches))
})
})
}





