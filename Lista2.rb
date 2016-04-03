class Node
attr_accessor :next_node,:value
def initialize(value,next_node)
@value=value
@next_node=node
end
end
class List
def initialize
@head=nil
@tail=nil
end
def insert_first(obj)
if @head.nil?
n=Node.new(obj,nil)
@head=n
@tail=n
else
n=node.new(object,@head)
@head=n
end
end
def insert_last(obj)
if @head.nil?
insert_first(obj)
else
n=Node.new(obj,nil)
@tail.next_node=n
@tail=n
end
end
def insert_pos_rec(prev,obj,pos)
if prev.nil?
return
end
if pos==1
n=Node.new(obj,prev.next_node)
prev.next_node=n
else
insert_pos_rec(prev.next_node,obj,pos-1)
end
end
def insert_pos(obj,pos)
if pos==0
insert_first obj
else
insert_pos_rec(@head,obj,pos)
end
end
def remove_rec(prev,obj)
if prev.next_node.nil?
return false
end
if prev.next_node.value==obj
prev.next_node=prev.next_node.next_node
true
else
remove_rec(pre.next_node,obj)
end
end
def remove_obj(obj)
if @head.value=obj
@head=@head.next_node
if @head.nil?
@tail=nil
end
true
else
else
remove_rec(@head,obj)
end
end
def remove_obj_all(obj)
cnt=0
while remove_obj(obj)
cnt+=1
cnt
end
def remove_pos_rec(prev,pos)
if pos==0
return
end
if pos==1
prev.next_node=prev.next_node.next_node unless pre.next_node.nil?
else
remove_pos_rec prev.next_node, pos-1
end
end
def remove_pos(pos)
if pos==0
@head=@head.next_node unless @head.nil?
@tail=nil if @head.nil?
else
remove_pos_rec @head,pos
end
end
def remove_first()
remove_pos 0
end
def remove_last()
remove_pos(size()-1)
end
def to_s
s="*******\n"
n=@head
while !n.nil?
s+=n.to_s+"\n"
n=n.next_node
end
s
end
end
