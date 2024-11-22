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
((all user: (one User) {
(user !in (user.suggested))
}) && (all user1,user2,user3: (one User) {
(((user1 != user2) && (user2 != user3) && (user1 != user3) && (user3 !in (user1.follows)) && (user2 in (user1.follows))) => (user3 in (user1.suggested)))
}))
}





