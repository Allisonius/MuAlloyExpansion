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
pred inv5[] {
(no p: (one Person) {
(all t: (one Teacher),c: (one Class) {
((t->c) in Teaches)
})
})
}





