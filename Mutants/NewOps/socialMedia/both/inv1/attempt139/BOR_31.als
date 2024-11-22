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
(no p: (one Photo) {
(all u1: (one User),u2: (one User) {
((p = (u1.posts)) && (p in (u2.posts)))
})
})
}





