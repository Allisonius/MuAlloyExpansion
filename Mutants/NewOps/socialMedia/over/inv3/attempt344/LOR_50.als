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
(some u2: (one User) {
(all ph: (one Photo) {
((ph in (u.sees)) => ((ph !in Ad) && (ph in (u2.posts)) && (u2 in (u.follows)) && (ph in Ad)))
})
})
})
}





