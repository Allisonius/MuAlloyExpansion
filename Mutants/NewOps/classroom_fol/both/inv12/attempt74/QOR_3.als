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
(lone t: (one Teacher) {
(all c: (one Class) {
(all g: (one Group) {
(((c->(t->g)) in Groups) => ((t->c) in Teaches))
})
})
})
}





