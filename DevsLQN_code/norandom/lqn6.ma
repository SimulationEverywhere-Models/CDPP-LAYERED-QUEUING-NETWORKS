[top]
components : ref e1 e2 p1

in : refinitp refinits refin
in : e1initp e1inits
in : e2initp e2inits

link : refinitp initp@ref
link : refinits inits@ref
link : refin in0@ref
link : pcall@ref in0@p1
link : rpl0@p1 prtn@ref

link : e1initp initp@e1
link : e1inits inits@e1
link : out0@ref in0@e1
link : rpl0@e1 rsp0@ref
link : pcall@e1 in1@p1
link : rpl1@p1 prtn@e1

link : e2initp initp@e2
link : e2inits inits@e2
link : out1@ref in0@e2
link : rpl0@e2 rsp1@ref
link : pcall@e2 in2@p1
link : rpl2@p1 prtn@e2


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


[e1]
components : e1dst@LqnDistribute entry1@LqnEntry e1gtr@LqnGather e1que@LqnQueue

in : initp inits in0 in1 in2 in3 in4 in5 in6 in7 in8 in9
out : pcall out0 out1 out2 out3 out4 out5 out6 out7 out8 out9
in : prtn rsp0 rsp1 rsp2 rsp3 rsp4 rsp5 rsp6 rsp7 rsp8 rsp9
out : rpl0 rpl1 rpl2 rpl3 rpl4 rpl5 rpl6 rpl7 rpl8 rpl9

link : initp initproc@entry1
link : inits initserv@entry1

link : in0 in0@e1gtr
link : in1 in1@e1gtr
link : in2 in2@e1gtr
link : in3 in3@e1gtr
link : in4 in4@e1gtr
link : in5 in5@e1gtr
link : in6 in6@e1gtr
link : in7 in7@e1gtr
link : in8 in8@e1gtr
link : in9 in9@e1gtr

link : out@e1gtr in@e1que
link : out@e1que in@entry1
link : servcall@entry1 in@e1dst

link : proccall@entry1 pcall

link : out0@e1dst out0
link : out1@e1dst out1
link : out2@e1dst out2
link : out3@e1dst out3
link : out4@e1dst out4
link : out5@e1dst out5
link : out6@e1dst out6
link : out7@e1dst out7
link : out8@e1dst out8
link : out9@e1dst out9

link : prtn procrtn@entry1

link : rsp0 response0@e1dst
link : rsp1 response1@e1dst
link : rsp2 response2@e1dst
link : rsp3 response3@e1dst
link : rsp4 response4@e1dst
link : rsp5 response5@e1dst
link : rsp6 response6@e1dst
link : rsp7 response7@e1dst
link : rsp8 response8@e1dst
link : rsp9 response9@e1dst

link : reply@e1dst servrtn@entry1
link : reply@entry1 response@e1que
link : ready@entry1 ready@e1que
link : reply@e1que response@e1gtr

link : reply0@e1gtr rpl0
link : reply1@e1gtr rpl1
link : reply2@e1gtr rpl2
link : reply3@e1gtr rpl3
link : reply4@e1gtr rpl4
link : reply5@e1gtr rpl5
link : reply6@e1gtr rpl6
link : reply7@e1gtr rpl7
link : reply8@e1gtr rpl8
link : reply9@e1gtr rpl9


[e2]
components : e2dst@LqnDistribute entry2@LqnEntry e2gtr@LqnGather e2que@LqnQueue

in : initp inits in0 in1 in2 in3 in4 in5 in6 in7 in8 in9
out : pcall out0 out1 out2 out3 out4 out5 out6 out7 out8 out9
in : prtn rsp0 rsp1 rsp2 rsp3 rsp4 rsp5 rsp6 rsp7 rsp8 rsp9
out : rpl0 rpl1 rpl2 rpl3 rpl4 rpl5 rpl6 rpl7 rpl8 rpl9

link : initp initproc@entry2
link : inits initserv@entry2

link : in0 in0@e2gtr
link : in1 in1@e2gtr
link : in2 in2@e2gtr
link : in3 in3@e2gtr
link : in4 in4@e2gtr
link : in5 in5@e2gtr
link : in6 in6@e2gtr
link : in7 in7@e2gtr
link : in8 in8@e2gtr
link : in9 in9@e2gtr

link : out@e2gtr in@e2que
link : out@e2que in@entry2
link : servcall@entry2 in@e2dst

link : proccall@entry2 pcall

link : out0@e2dst out0
link : out1@e2dst out1
link : out2@e2dst out2
link : out3@e2dst out3
link : out4@e2dst out4
link : out5@e2dst out5
link : out6@e2dst out6
link : out7@e2dst out7
link : out8@e2dst out8
link : out9@e2dst out9

link : prtn procrtn@entry2

link : rsp0 response0@e2dst
link : rsp1 response2@e2dst
link : rsp2 response2@e2dst
link : rsp3 response3@e2dst
link : rsp4 response4@e2dst
link : rsp5 response5@e2dst
link : rsp6 response6@e2dst
link : rsp7 response7@e2dst
link : rsp8 response8@e2dst
link : rsp9 response9@e2dst

link : reply@e2dst servrtn@entry2
link : reply@entry2 response@e2que
link : ready@entry2 ready@e2que
link : reply@e2que response@e2gtr

link : reply0@e2gtr rpl0
link : reply1@e2gtr rpl1
link : reply2@e2gtr rpl2
link : reply3@e2gtr rpl3
link : reply4@e2gtr rpl4
link : reply5@e2gtr rpl5
link : reply6@e2gtr rpl6
link : reply7@e2gtr rpl7
link : reply8@e2gtr rpl8
link : reply9@e2gtr rpl9


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
