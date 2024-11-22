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
(all t: (one Person) {
(lone c: (one Class),s: (one Person),g: (one Group) {
(((c->(t->g)) in Groups) && (t in Teacher))
})
})
}





