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
pred inv15[] {
(no t: (one Teacher) {
(all p: (one Person) {
(t in (p.(^(~Tutors))))
})
})
}





