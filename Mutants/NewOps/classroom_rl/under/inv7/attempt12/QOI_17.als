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
pred inv7[] {
(some var123456 : Class { ((iden & (var123456->var123456)) in ((~Teaches).Teaches))})
}





