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
(all x: (one User) {
(all u: (one User) {
(all p: (one Photo) {
((((x in (u.follows)) || (x in (u.suggested))) && (p in (x.posts))) => (Ad in p))
})
})
})
}





