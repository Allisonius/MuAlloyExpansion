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
(some c: (one Class),s: (one Person),g: (one Group) {
(((c->(((Person))->g)) in Groups) && (((Person)) in Teacher))
})
}





