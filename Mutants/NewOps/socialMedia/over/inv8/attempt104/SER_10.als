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
(all a: (one Influencer) {
(all u: (one User) {
((a in (u.sees)) => (some z: (one User) {
(((z in (u.follows)) || (z in (u.suggested))) && (z in (a.posts)))
}))
})
})
}





