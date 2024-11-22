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
(all p: (one Class) {
((p in Teacher) => (some g: (one Group) {
(p in ((Class.Groups).g))
}))
})
}





