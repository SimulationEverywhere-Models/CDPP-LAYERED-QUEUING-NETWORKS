[top]
components : gather@LqnGather
components : queue@LqnQueue
components : proc@LqnProcessor

in : in0 in1 in2 in3 in4 in5 in6 in7 in8 in9
out : reply0 reply1 reply2 reply3 reply4 reply5 reply6 reply7 reply8 reply9 qsize qwait procthru procutil

Link : in0 in0@gather
Link : in1 in1@gather
Link : in2 in2@gather
Link : in3 in3@gather
Link : in4 in4@gather
Link : in5 in5@gather
Link : in6 in6@gather
Link : in7 in7@gather
Link : in8 in8@gather
Link : in9 in9@gather

Link : reply0@gather reply0
Link : reply1@gather reply1
Link : reply2@gather reply2
Link : reply3@gather reply3
Link : reply4@gather reply4
Link : reply5@gather reply5
Link : reply6@gather reply6
Link : reply7@gather reply7
Link : reply8@gather reply8
Link : reply9@gather reply9
Link : averagesize@queue qsize
Link : averagewait@queue qwait
Link : throughput@proc procthru
Link : utilization@proc procutil

Link : out@gather in@queue

Link : reply@queue response@gather

Link : out@queue in@proc

Link : reply@proc response@queue
Link : ready@proc ready@queue
