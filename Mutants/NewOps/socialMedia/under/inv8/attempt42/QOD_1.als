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
(all p: (one Photo) {
(((p in Ad) && (((User)) in (p.sees))) => (some u: (one User) {
(((u in (((User)).suggested)) || (u in (((User)).follows))) && (p in (u.posts)) && (((User)) != u))
}))
})
}





