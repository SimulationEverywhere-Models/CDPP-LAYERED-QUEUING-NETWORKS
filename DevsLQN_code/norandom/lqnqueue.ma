[top]
components : lqnqueue@LqnQueue
in : in response ready
out : out reply averagesize averagewait

Link : in in@lqnqueue
Link : response response@lqnqueue
Link : ready ready@lqnqueue

Link : out@lqnqueue out
Link : reply@lqnqueue reply
Link : averagesize@lqnqueue averagesize
Link : averagewait@lqnqueue averagewait
