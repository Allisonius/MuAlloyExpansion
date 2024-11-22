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
(some t: (one Teacher) {
(all s: (Person + Student) {
(some g: (one Group) {
(some c: (one Class) {
(((c->(t->g)) in Groups) => ((t->c) in Teaches))
})
})
})
})
}





