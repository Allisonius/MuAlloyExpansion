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
(no x: (one User) {
(all p: (one Photo) {
(((p in Ad) && (x in (p.sees))) => (some u: (one User) {
(((u in (x.suggested)) || (u in (x.follows))) && (p in (u.posts)))
}))
})
})
}





