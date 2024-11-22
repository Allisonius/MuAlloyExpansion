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
((all c: (one Class) {
(lone p: (one Person) {
(((p->c) in Teaches) && (p in Teacher))
})
}) => (some g: (one Group),c: (one Class),p: (one Person) {
((c->(p->g)) in Groups)
}))
}





