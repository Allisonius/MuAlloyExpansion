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
(all g: (one Teacher) {
(some t: (one Teacher) {
(t in ((Class.Groups).Group))
})
})
}





