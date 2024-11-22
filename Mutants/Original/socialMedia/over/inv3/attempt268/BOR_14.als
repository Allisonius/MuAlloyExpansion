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
(all u: (one User) {
(all ph: (one Photo) {
((ph = (u.sees)) => ((ph in Ad) || (one u2: (one (u.follows)) {
(ph in (u2.posts))
})))
})
})
}





