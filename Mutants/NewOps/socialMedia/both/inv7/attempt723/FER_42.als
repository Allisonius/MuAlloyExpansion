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
pred inv7[] {
(all user1,user2,user3: (one User) {
(((user1 !in (user1.suggested)) && (user3 !in (user1.posts)) && (user3 in (user2.follows)) && (user2 in (user1.follows))) => (user3 in (user1.suggested)))
})
}





