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
((all x: (one User) {
(all y: (one Ad) {
((x->y) in sees)
})
}) && (all x: (one User) {
(all y: (one Photo) {
((y in (x.posts)) => (one z: (one User) {
((z in (y.posts)) && (z in (x.follows)))
}))
})
}))
}





