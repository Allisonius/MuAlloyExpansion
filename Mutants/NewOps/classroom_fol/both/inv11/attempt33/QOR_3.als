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
pred inv11[] {
(lone c: (one Class),g: (one Group),p: (one Person) {
(((c->(p->g)) in Groups) => (p in Teacher))
})
}





