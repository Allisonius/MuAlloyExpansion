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
}) && (all user1,user2: (one (User + Influencer)) {
((user2 in (user1.follows)) => (user2 !in (user1.suggested)))
}) && (((User + Influencer) in ((User + Influencer).suggested)) => (((User + Influencer) in ((User + Influencer).follows)) && ((User + Influencer) in ((User + Influencer).follows)))))
}





