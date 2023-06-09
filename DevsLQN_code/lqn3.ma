[top]
components : ref p1

in : refinitp refinits refin

link : refinitp initp@ref
link : refinits inits@ref
link : refin in0@ref
link : pcall@ref in0@p1
link : rpl0@p1 prtn@ref


[ref]
components : dist@LqnDistribute ent@LqnEntry gather@LqnGather queue@LqnQueue

in : initp inits in0 in1 in2 in3 in4 in5 in6 in7 in8 in9
out : pcall out0 out1 out2 out3 out4 out5 out6 out7 out8 out9
in : prtn rsp0 rsp1 rsp2 rsp3 rsp4 rsp5 rsp6 rsp7 rsp8 rsp9
out : rpl0 rpl1 rpl2 rpl3 rpl4 rpl5 rpl6 rpl7 rpl8 rpl9

link : initp initproc@ent
link : inits initserv@ent

link : in0 in0@gather
link : in1 in1@gather
link : in2 in2@gather
link : in3 in3@gather
link : in4 in4@gather
link : in5 in5@gather
link : in6 in6@gather
link : in7 in7@gather
link : in8 in8@gather
link : in9 in9@gather

link : out@gather in@queue
link : out@queue in@ent
link : servcall@ent in@dist

link : proccall@ent pcall

link : out0@dist out0
link : out1@dist out1
link : out2@dist out2
link : out3@dist out3
link : out4@dist out4
link : out5@dist out5
link : out6@dist out6
link : out7@dist out7
link : out8@dist out8
link : out9@dist out9

link : prtn procrtn@ent

link : rsp0 response0@dist
link : rsp1 response1@dist
link : rsp2 response2@dist
link : rsp3 response3@dist
link : rsp4 response4@dist
link : rsp5 response5@dist
link : rsp6 response6@dist
link : rsp7 response7@dist
link : rsp8 response8@dist
link : rsp9 response9@dist

link : reply@dist servrtn@ent
link : reply@ent response@queue
link : ready@ent ready@queue
link : reply@queue response@gather

link : reply0@gather rpl0
link : reply1@gather rpl1
link : reply2@gather rpl2
link : reply3@gather rpl3
link : reply4@gather rpl4
link : reply5@gather rpl5
link : reply6@gather rpl6
link : reply7@gather rpl7
link : reply8@gather rpl8
link : reply9@gather rpl9


[p1]
components : pgather@LqnGather proc@LqnProcessor pqueue@LqnQueue

in : in0 in1 in2 in3 in4 in5 in6 in7 in8 in9
out : rpl0 rpl1 rpl2 rpl3 rpl4 rpl5 rpl6 rpl7 rpl8 rpl9

link : in0 in0@pgather
link : in1 in1@pgather
link : in2 in2@pgather
link : in3 in3@pgather
link : in4 in4@pgather
link : in5 in5@pgather
link : in6 in6@pgather
link : in7 in7@pgather
link : in8 in8@pgather
link : in9 in9@pgather

link : out@pgather in@pqueue
link : out@pqueue in@proc

link : reply@proc response@pqueue
link : ready@proc ready@pqueue
link : reply@pqueue response@pgather

link : reply0@pgather rpl0
link : reply1@pgather rpl1
link : reply2@pgather rpl2
link : reply3@pgather rpl3
link : reply4@pgather rpl4
link : reply5@pgather rpl5
link : reply6@pgather rpl6
link : reply7@pgather rpl7
link : reply8@pgather rpl8
link : reply9@pgather rpl9
