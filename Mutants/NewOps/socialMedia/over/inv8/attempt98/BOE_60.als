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
pred inv8[] {
(all x: (one User),y: (one Ad) {
((y in (x.sees)) => (all z: (one User) {
((y in (z.posts)) && (((x.follows) in z) || (z in (x.suggested))))
}))
})
}





