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
pred inv8[] {
(no var123456 : Teacher { ((((~Teaches) :> var123456).(Teaches :> var123456)) in iden)})
}





