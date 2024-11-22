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
((some c: (one Student),p: (one Person) {
(((p->c) in Teaches) && (p in Teacher))
}) && (some c: (one Class),p: (one Person) {
(some g: (one Group) {
((c->(p->g)) in Groups)
})
}))
}





