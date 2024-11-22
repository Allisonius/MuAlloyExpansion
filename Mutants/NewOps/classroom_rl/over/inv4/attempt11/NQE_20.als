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
pred inv4[] {
(all s: (one Student) {
(no p: (one Person) {
(all t: (one Teacher) {
((p != s) && (p != t))
})
})
})
}





