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
(all c: (one Class),s: (one Student) {
(some g: (one Group) {
(((c->(s->g)) in Groups) => (lone t: (one Teacher) {
((c->(t->g)) in Groups)
}))
})
})
}





