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
(all u: (one User),u2: (one Ad) {
(all p: (one Photo) {
(((p in (u.posts)) && (u != u2)) => (p !in (u2.posts)))
})
})
}





