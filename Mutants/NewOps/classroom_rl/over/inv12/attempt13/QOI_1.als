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
(all var123456 : Teacher { (((~iden).iden) in ((~((var123456.Teaches).Groups)).((var123456.Teaches).Groups)))})
}





