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
(all u: (one User),ad: (one Ad) {
((ad in (u.sees)) => (some u2: (one User) {
((u2 != u) && (ad in (u2.posts)) && ((u2 in (u.sees)) || (u2 in (u.suggested))))
}))
})
}





