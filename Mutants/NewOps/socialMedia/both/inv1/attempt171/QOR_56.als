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
pred inv1[] {
((all x: (one Photo) {
(all y,z: (one User) {
((x in (y.posts)) => (x !in (z.posts)))
})
}) && (all ad: (one Ad) {
(lone x: (one Photo) {
(x !in ad)
})
}) && (all x: (one Photo) {
(x !in (x.follows))
}))
}





