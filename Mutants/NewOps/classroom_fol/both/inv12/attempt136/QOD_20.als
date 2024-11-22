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
(all x: (one Class) {
(lone g: (one Group) {
(((x->(((Person))->g)) in Groups) => (lone t: (one Teacher) {
((t->x) in Teaches)
}))
})
})
}





