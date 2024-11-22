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
pred inv12[] {
(all p: (one Person) {
(some c: (one Class),g: (one Person) {
(((c->(p->g)) in Groups) && (p in Teacher))
})
})
}





