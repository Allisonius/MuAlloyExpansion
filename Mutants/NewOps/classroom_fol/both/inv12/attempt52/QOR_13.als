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
(all c: (one Class) {
(lone g: (one Group) {
(some t: (one Teacher) {
((c->(t->g)) in Groups)
})
})
})
}





