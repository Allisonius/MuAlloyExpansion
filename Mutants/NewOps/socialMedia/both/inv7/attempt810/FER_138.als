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
((all user1,user2,user3: (one User) {
((((user1->user2) in follows) && ((user2->user3) in follows) && ((user1->user3) !in follows)) => ((user1->user3) in suggested))
}) && (all user1,user2,user3: (one User) {
((((user1->user2) in follows) && ((user2->user3) in follows) && ((user1->user3) in follows)) => ((user1->user3) !in follows))
}))
}





