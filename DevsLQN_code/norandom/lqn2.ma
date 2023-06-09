[top]
components : entry+proc

in : initproc initserv in servrtn
out : servcall

link : in in@entry+proc
link : initproc initproc@entry+proc
link : initserv initserv@entry+proc
link : servrtn servrtn@entry+proc


[entry+proc]
components : lqnentry@LqnEntry
components : lqngather@LqnGather
components : lqnqueue@LqnQueue
components : lqnprocessor@LqnProcessor

in : initproc initserv in
out : servcall
in : servrtn

link : initproc initproc@lqnentry
link : initserv initserv@lqnentry
link : in in@lqnentry

link : servcall@lqnentry servcall
link : servrtn servrtn@lqnentry

link : proccall@lqnentry in5@lqngather
link : reply5@lqngather procrtn@lqnentry

link : out@lqngather in@lqnqueue
link : reply@lqnqueue response@lqngather

link : out@lqnqueue in@lqnprocessor
link : reply@lqnprocessor response@lqnqueue
link : ready@lqnprocessor ready@lqnqueue
