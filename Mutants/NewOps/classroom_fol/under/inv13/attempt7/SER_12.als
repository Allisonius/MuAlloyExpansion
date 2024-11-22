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
pred inv13[] {
(all p: (one Teacher) {
(all s: (one Student) {
(((p->s) in Tutors) => (p in Teacher))
})
})
}





