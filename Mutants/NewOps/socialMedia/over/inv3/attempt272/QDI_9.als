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
(all x: (one Photo),y: (User & Influencer) {
(((x != Ad) && (x in (y.sees))) => (some z: (one User) {
(((z.posts) = x) && (z in (x.follows)))
}))
})
}





