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
pred inv10[] {
(all x: (one Class),p: (Person - Teacher) {
(some g: (one Group) {
(some ((x.Groups).g))
})
})
}





