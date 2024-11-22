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
(some g: (one Group) {
(all c: (one Class) {
((((Person)) in Teacher) => ((c->(((Person))->g)) in Groups))
})
})
}





