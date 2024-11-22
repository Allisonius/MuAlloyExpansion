module unknown
open util/integer [] as integer
sig User {
follows: (set User),
sees: (set Photo),
posts: (set Photo),
suggested: (set User)
}
sig Influencer extends User {}
sig Photo {
date: (one Day)
}
sig Ad extends Photo {}
sig Day {}
pred inv3[] {
(no x: (one User) {
(all y: (one Photo) {
((all z: (one Ad) {
((y in (x.sees)) && (y != z) && (y in ((x.follows).posts)))
}) || (all z: (one Ad) {
(z in (x.sees))
}))
})
})
}





