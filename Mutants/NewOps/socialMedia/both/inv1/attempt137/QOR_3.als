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
(lone x,y: (one User) {
(all z: (one Photo) {
(((z in (x.posts)) && (z in (y.posts))) => (z = y))
})
})
}





