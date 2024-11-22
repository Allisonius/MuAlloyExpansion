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
(all ad: (one Ad) {
(all user1,user2: (one User) {
(((ad in (user2.posts)) && (user2 in (user1.follows))) => (ad in (user1.sees)))
})
})
}





