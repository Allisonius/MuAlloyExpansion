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
(all user: (one univ) {
((user in User) || (all photo: (one univ) {
((((user->photo) in sees) => (photo in Ad)) || (some follower: (one univ) {
((follower in User) && ((follower->photo) in posts) && ((user->follower) in follows))
}))
}))
})
}





