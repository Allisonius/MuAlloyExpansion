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
(all x: (one Influencer) {
(all y: (one Photo) {
(all z: (Ad + Photo) {
((y in (x.sees)) && (y !in (x.posts)) && (y != z))
})
})
})
}





