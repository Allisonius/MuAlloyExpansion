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
pred inv9[] {
(lone c: (one Class) {
(all p1,p2: (one Teacher) {
(((c in (p1.Teaches)) && (c in (p2.Teaches))) => (p1 != p2))
})
})
}





