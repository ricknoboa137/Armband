��
��
D
AddV2
x"T
y"T
z"T"
Ttype:
2	��
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( �
~
BiasAdd

value"T	
bias"T
output"T" 
Ttype:
2	"-
data_formatstringNHWC:
NHWCNCHW
8
Const
output"dtype"
valuetensor"
dtypetype
^
Fill
dims"
index_type

value"T
output"T"	
Ttype"

index_typetype0:
2	
.
Identity

input"T
output"T"	
Ttype
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(�
?
Mul
x"T
y"T
z"T"
Ttype:
2	�

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetype�
[
Reshape
tensor"T
shape"Tshape
output"T"	
Ttype"
Tshapetype0:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
?
Select
	condition

t"T
e"T
output"T"	
Ttype
P
Shape

input"T
output"out_type"	
Ttype"
out_typetype0:
2	
H
ShardedFilename
basename	
shard

num_shards
filename
0
Sigmoid
x"T
y"T"
Ttype:

2
�
StatefulPartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring ��
@
StaticRegexFullMatch	
input

output
"
patternstring
�
StridedSlice

input"T
begin"Index
end"Index
strides"Index
output"T"	
Ttype"
Indextype:
2	"

begin_maskint "
end_maskint "
ellipsis_maskint "
new_axis_maskint "
shrink_axis_maskint 
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
-
Tanh
x"T
y"T"
Ttype:

2
�
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListReserve
element_shape"
shape_type
num_elements(
handle���element_dtype"
element_dtypetype"

shape_typetype:
2	
�
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint���������
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �
�
While

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint
�"serve*2.9.12v2.9.0-18-gd8ce9f9c3018��
�
*Adam/simple_rnn_4/simple_rnn_cell_4/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*;
shared_name,*Adam/simple_rnn_4/simple_rnn_cell_4/bias/v
�
>Adam/simple_rnn_4/simple_rnn_cell_4/bias/v/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_4/simple_rnn_cell_4/bias/v*
_output_shapes	
:�*
dtype0
�
6Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*G
shared_name86Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/v
�
JAdam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/v* 
_output_shapes
:
��*
dtype0
�
,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	P�*=
shared_name.,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/v
�
@Adam/simple_rnn_4/simple_rnn_cell_4/kernel/v/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/v*
_output_shapes
:	P�*
dtype0
|
Adam/degree/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/degree/bias/v
u
&Adam/degree/bias/v/Read/ReadVariableOpReadVariableOpAdam/degree/bias/v*
_output_shapes
:*
dtype0
�
Adam/degree/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*%
shared_nameAdam/degree/kernel/v
}
(Adam/degree/kernel/v/Read/ReadVariableOpReadVariableOpAdam/degree/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/distance/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/distance/bias/v
y
(Adam/distance/bias/v/Read/ReadVariableOpReadVariableOpAdam/distance/bias/v*
_output_shapes
:*
dtype0
�
Adam/distance/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/distance/kernel/v
�
*Adam/distance/kernel/v/Read/ReadVariableOpReadVariableOpAdam/distance/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_143/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_143/bias/v
{
)Adam/dense_143/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_143/bias/v*
_output_shapes
:
*
dtype0
�
Adam/dense_143/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_143/kernel/v
�
+Adam/dense_143/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_143/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_141/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_141/bias/v
{
)Adam/dense_141/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_141/bias/v*
_output_shapes
:
*
dtype0
�
Adam/dense_141/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_141/kernel/v
�
+Adam/dense_141/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_141/kernel/v*
_output_shapes

:
*
dtype0
�
Adam/dense_142/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_142/bias/v
{
)Adam/dense_142/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_142/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_142/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*(
shared_nameAdam/dense_142/kernel/v
�
+Adam/dense_142/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_142/kernel/v*
_output_shapes
:	�*
dtype0
�
Adam/dense_140/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_140/bias/v
{
)Adam/dense_140/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_140/bias/v*
_output_shapes
:*
dtype0
�
Adam/dense_140/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*(
shared_nameAdam/dense_140/kernel/v
�
+Adam/dense_140/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_140/kernel/v*
_output_shapes
:	�*
dtype0
�
*Adam/simple_rnn_4/simple_rnn_cell_4/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*;
shared_name,*Adam/simple_rnn_4/simple_rnn_cell_4/bias/m
�
>Adam/simple_rnn_4/simple_rnn_cell_4/bias/m/Read/ReadVariableOpReadVariableOp*Adam/simple_rnn_4/simple_rnn_cell_4/bias/m*
_output_shapes	
:�*
dtype0
�
6Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*G
shared_name86Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/m
�
JAdam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp6Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/m* 
_output_shapes
:
��*
dtype0
�
,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	P�*=
shared_name.,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/m
�
@Adam/simple_rnn_4/simple_rnn_cell_4/kernel/m/Read/ReadVariableOpReadVariableOp,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/m*
_output_shapes
:	P�*
dtype0
|
Adam/degree/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/degree/bias/m
u
&Adam/degree/bias/m/Read/ReadVariableOpReadVariableOpAdam/degree/bias/m*
_output_shapes
:*
dtype0
�
Adam/degree/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*%
shared_nameAdam/degree/kernel/m
}
(Adam/degree/kernel/m/Read/ReadVariableOpReadVariableOpAdam/degree/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/distance/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/distance/bias/m
y
(Adam/distance/bias/m/Read/ReadVariableOpReadVariableOpAdam/distance/bias/m*
_output_shapes
:*
dtype0
�
Adam/distance/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/distance/kernel/m
�
*Adam/distance/kernel/m/Read/ReadVariableOpReadVariableOpAdam/distance/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_143/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_143/bias/m
{
)Adam/dense_143/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_143/bias/m*
_output_shapes
:
*
dtype0
�
Adam/dense_143/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_143/kernel/m
�
+Adam/dense_143/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_143/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_141/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_141/bias/m
{
)Adam/dense_141/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_141/bias/m*
_output_shapes
:
*
dtype0
�
Adam/dense_141/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*(
shared_nameAdam/dense_141/kernel/m
�
+Adam/dense_141/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_141/kernel/m*
_output_shapes

:
*
dtype0
�
Adam/dense_142/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_142/bias/m
{
)Adam/dense_142/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_142/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_142/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*(
shared_nameAdam/dense_142/kernel/m
�
+Adam/dense_142/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_142/kernel/m*
_output_shapes
:	�*
dtype0
�
Adam/dense_140/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*&
shared_nameAdam/dense_140/bias/m
{
)Adam/dense_140/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_140/bias/m*
_output_shapes
:*
dtype0
�
Adam/dense_140/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*(
shared_nameAdam/dense_140/kernel/m
�
+Adam/dense_140/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_140/kernel/m*
_output_shapes
:	�*
dtype0
^
countVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
^
totalVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
b
count_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_1
[
count_1/Read/ReadVariableOpReadVariableOpcount_1*
_output_shapes
: *
dtype0
b
total_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_1
[
total_1/Read/ReadVariableOpReadVariableOptotal_1*
_output_shapes
: *
dtype0
b
count_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_2
[
count_2/Read/ReadVariableOpReadVariableOpcount_2*
_output_shapes
: *
dtype0
b
total_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_2
[
total_2/Read/ReadVariableOpReadVariableOptotal_2*
_output_shapes
: *
dtype0
b
count_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_3
[
count_3/Read/ReadVariableOpReadVariableOpcount_3*
_output_shapes
: *
dtype0
b
total_3VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_3
[
total_3/Read/ReadVariableOpReadVariableOptotal_3*
_output_shapes
: *
dtype0
b
count_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	count_4
[
count_4/Read/ReadVariableOpReadVariableOpcount_4*
_output_shapes
: *
dtype0
b
total_4VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name	total_4
[
total_4/Read/ReadVariableOpReadVariableOptotal_4*
_output_shapes
: *
dtype0
h

Adam/decayVarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_name
Adam/decay
a
Adam/decay/Read/ReadVariableOpReadVariableOp
Adam/decay*
_output_shapes
: *
dtype0
j
Adam/beta_2VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_2
c
Adam/beta_2/Read/ReadVariableOpReadVariableOpAdam/beta_2*
_output_shapes
: *
dtype0
j
Adam/beta_1VarHandleOp*
_output_shapes
: *
dtype0*
shape: *
shared_nameAdam/beta_1
c
Adam/beta_1/Read/ReadVariableOpReadVariableOpAdam/beta_1*
_output_shapes
: *
dtype0
f
	Adam/iterVarHandleOp*
_output_shapes
: *
dtype0	*
shape: *
shared_name	Adam/iter
_
Adam/iter/Read/ReadVariableOpReadVariableOp	Adam/iter*
_output_shapes
: *
dtype0	
�
#simple_rnn_4/simple_rnn_cell_4/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*4
shared_name%#simple_rnn_4/simple_rnn_cell_4/bias
�
7simple_rnn_4/simple_rnn_cell_4/bias/Read/ReadVariableOpReadVariableOp#simple_rnn_4/simple_rnn_cell_4/bias*
_output_shapes	
:�*
dtype0
�
/simple_rnn_4/simple_rnn_cell_4/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
��*@
shared_name1/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel
�
Csimple_rnn_4/simple_rnn_cell_4/recurrent_kernel/Read/ReadVariableOpReadVariableOp/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel* 
_output_shapes
:
��*
dtype0
�
%simple_rnn_4/simple_rnn_cell_4/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	P�*6
shared_name'%simple_rnn_4/simple_rnn_cell_4/kernel
�
9simple_rnn_4/simple_rnn_cell_4/kernel/Read/ReadVariableOpReadVariableOp%simple_rnn_4/simple_rnn_cell_4/kernel*
_output_shapes
:	P�*
dtype0
n
degree/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedegree/bias
g
degree/bias/Read/ReadVariableOpReadVariableOpdegree/bias*
_output_shapes
:*
dtype0
v
degree/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namedegree/kernel
o
!degree/kernel/Read/ReadVariableOpReadVariableOpdegree/kernel*
_output_shapes

:
*
dtype0
r
distance/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedistance/bias
k
!distance/bias/Read/ReadVariableOpReadVariableOpdistance/bias*
_output_shapes
:*
dtype0
z
distance/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
* 
shared_namedistance/kernel
s
#distance/kernel/Read/ReadVariableOpReadVariableOpdistance/kernel*
_output_shapes

:
*
dtype0
t
dense_143/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_143/bias
m
"dense_143/bias/Read/ReadVariableOpReadVariableOpdense_143/bias*
_output_shapes
:
*
dtype0
|
dense_143/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_143/kernel
u
$dense_143/kernel/Read/ReadVariableOpReadVariableOpdense_143/kernel*
_output_shapes

:
*
dtype0
t
dense_141/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_141/bias
m
"dense_141/bias/Read/ReadVariableOpReadVariableOpdense_141/bias*
_output_shapes
:
*
dtype0
|
dense_141/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*!
shared_namedense_141/kernel
u
$dense_141/kernel/Read/ReadVariableOpReadVariableOpdense_141/kernel*
_output_shapes

:
*
dtype0
t
dense_142/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_142/bias
m
"dense_142/bias/Read/ReadVariableOpReadVariableOpdense_142/bias*
_output_shapes
:*
dtype0
}
dense_142/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*!
shared_namedense_142/kernel
v
$dense_142/kernel/Read/ReadVariableOpReadVariableOpdense_142/kernel*
_output_shapes
:	�*
dtype0
t
dense_140/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_140/bias
m
"dense_140/bias/Read/ReadVariableOpReadVariableOpdense_140/bias*
_output_shapes
:*
dtype0
}
dense_140/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�*!
shared_namedense_140/kernel
v
$dense_140/kernel/Read/ReadVariableOpReadVariableOpdense_140/kernel*
_output_shapes
:	�*
dtype0

NoOpNoOp
�q
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�p
value�pB�p B�p
�
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures*
* 

	keras_api* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses
"cell
#
state_spec*
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias*
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias*
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias*
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

Bkernel
Cbias*
�
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses

Jkernel
Kbias*
�
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses

Rkernel
Sbias*
r
T0
U1
V2
*3
+4
25
36
:7
;8
B9
C10
J11
K12
R13
S14*
r
T0
U1
V2
*3
+4
25
36
:7
;8
B9
C10
J11
K12
R13
S14*

W0
X1
Y2
Z3* 
�
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
`trace_0
atrace_1
btrace_2
ctrace_3* 
6
dtrace_0
etrace_1
ftrace_2
gtrace_3* 
* 
�
hiter

ibeta_1

jbeta_2
	kdecay*m�+m�2m�3m�:m�;m�Bm�Cm�Jm�Km�Rm�Sm�Tm�Um�Vm�*v�+v�2v�3v�:v�;v�Bv�Cv�Jv�Kv�Rv�Sv�Tv�Uv�Vv�*
* 

lserving_default* 
* 
* 
* 
* 
�
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

rtrace_0* 

strace_0* 

T0
U1
V2*

T0
U1
V2*
	
t0* 
�

ustates
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*
6
{trace_0
|trace_1
}trace_2
~trace_3* 
9
trace_0
�trace_1
�trace_2
�trace_3* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator

Tkernel
Urecurrent_kernel
Vbias*
* 

*0
+1*

*0
+1*
	
W0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEdense_140/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_140/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

20
31*

20
31*
	
X0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEdense_142/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_142/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

:0
;1*

:0
;1*
	
Y0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEdense_141/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_141/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

B0
C1*

B0
C1*
	
Z0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
`Z
VARIABLE_VALUEdense_143/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_143/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

J0
K1*

J0
K1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdistance/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdistance/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

R0
S1*

R0
S1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
]W
VARIABLE_VALUEdegree/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEdegree/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
e_
VARIABLE_VALUE%simple_rnn_4/simple_rnn_cell_4/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
c]
VARIABLE_VALUE#simple_rnn_4/simple_rnn_cell_4/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 
* 
J
0
1
2
3
4
5
6
7
	8

9*
,
�0
�1
�2
�3
�4*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
LF
VARIABLE_VALUE	Adam/iter)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_1+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUE*
PJ
VARIABLE_VALUEAdam/beta_2+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUE*
NH
VARIABLE_VALUE
Adam/decay*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 
* 
* 
* 

�trace_0* 
* 
* 

"0*
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 

T0
U1
V2*

T0
U1
V2*
	
t0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses*

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
	
W0* 
* 
* 
* 
* 
* 
* 
	
X0* 
* 
* 
* 
* 
* 
* 
	
Y0* 
* 
* 
* 
* 
* 
* 
	
Z0* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
* 
<
�	variables
�	keras_api

�total

�count*
<
�	variables
�	keras_api

�total

�count*
<
�	variables
�	keras_api

�total

�count*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
M
�	variables
�	keras_api

�total

�count
�
_fn_kwargs*
* 
* 
* 
* 
	
t0* 
* 
* 
* 
* 
* 

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_44keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_44keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*

�0
�1*

�	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
�}
VARIABLE_VALUEAdam/dense_140/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_140/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_142/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_142/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_141/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_141/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_143/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_143/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/distance/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/distance/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/degree/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/degree/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE6Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE*Adam/simple_rnn_4/simple_rnn_cell_4/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_140/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_140/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_142/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_142/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_141/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_141/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUEAdam/dense_143/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_143/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/distance/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/distance/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/degree/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/degree/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE6Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUE*Adam/simple_rnn_4/simple_rnn_cell_4/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
serving_default_inputPlaceholder*,
_output_shapes
:����������*
dtype0*!
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_input%simple_rnn_4/simple_rnn_cell_4/kernel#simple_rnn_4/simple_rnn_cell_4/bias/simple_rnn_4/simple_rnn_cell_4/recurrent_kerneldense_142/kerneldense_142/biasdense_140/kerneldense_140/biasdense_143/kerneldense_143/biasdense_141/kerneldense_141/biasdegree/kerneldegree/biasdistance/kerneldistance/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*1
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_636981
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$dense_140/kernel/Read/ReadVariableOp"dense_140/bias/Read/ReadVariableOp$dense_142/kernel/Read/ReadVariableOp"dense_142/bias/Read/ReadVariableOp$dense_141/kernel/Read/ReadVariableOp"dense_141/bias/Read/ReadVariableOp$dense_143/kernel/Read/ReadVariableOp"dense_143/bias/Read/ReadVariableOp#distance/kernel/Read/ReadVariableOp!distance/bias/Read/ReadVariableOp!degree/kernel/Read/ReadVariableOpdegree/bias/Read/ReadVariableOp9simple_rnn_4/simple_rnn_cell_4/kernel/Read/ReadVariableOpCsimple_rnn_4/simple_rnn_cell_4/recurrent_kernel/Read/ReadVariableOp7simple_rnn_4/simple_rnn_cell_4/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/dense_140/kernel/m/Read/ReadVariableOp)Adam/dense_140/bias/m/Read/ReadVariableOp+Adam/dense_142/kernel/m/Read/ReadVariableOp)Adam/dense_142/bias/m/Read/ReadVariableOp+Adam/dense_141/kernel/m/Read/ReadVariableOp)Adam/dense_141/bias/m/Read/ReadVariableOp+Adam/dense_143/kernel/m/Read/ReadVariableOp)Adam/dense_143/bias/m/Read/ReadVariableOp*Adam/distance/kernel/m/Read/ReadVariableOp(Adam/distance/bias/m/Read/ReadVariableOp(Adam/degree/kernel/m/Read/ReadVariableOp&Adam/degree/bias/m/Read/ReadVariableOp@Adam/simple_rnn_4/simple_rnn_cell_4/kernel/m/Read/ReadVariableOpJAdam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/m/Read/ReadVariableOp>Adam/simple_rnn_4/simple_rnn_cell_4/bias/m/Read/ReadVariableOp+Adam/dense_140/kernel/v/Read/ReadVariableOp)Adam/dense_140/bias/v/Read/ReadVariableOp+Adam/dense_142/kernel/v/Read/ReadVariableOp)Adam/dense_142/bias/v/Read/ReadVariableOp+Adam/dense_141/kernel/v/Read/ReadVariableOp)Adam/dense_141/bias/v/Read/ReadVariableOp+Adam/dense_143/kernel/v/Read/ReadVariableOp)Adam/dense_143/bias/v/Read/ReadVariableOp*Adam/distance/kernel/v/Read/ReadVariableOp(Adam/distance/bias/v/Read/ReadVariableOp(Adam/degree/kernel/v/Read/ReadVariableOp&Adam/degree/bias/v/Read/ReadVariableOp@Adam/simple_rnn_4/simple_rnn_cell_4/kernel/v/Read/ReadVariableOpJAdam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/v/Read/ReadVariableOp>Adam/simple_rnn_4/simple_rnn_cell_4/bias/v/Read/ReadVariableOpConst*H
TinA
?2=	*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *(
f#R!
__inference__traced_save_638579
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_140/kerneldense_140/biasdense_142/kerneldense_142/biasdense_141/kerneldense_141/biasdense_143/kerneldense_143/biasdistance/kerneldistance/biasdegree/kerneldegree/bias%simple_rnn_4/simple_rnn_cell_4/kernel/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel#simple_rnn_4/simple_rnn_cell_4/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decaytotal_4count_4total_3count_3total_2count_2total_1count_1totalcountAdam/dense_140/kernel/mAdam/dense_140/bias/mAdam/dense_142/kernel/mAdam/dense_142/bias/mAdam/dense_141/kernel/mAdam/dense_141/bias/mAdam/dense_143/kernel/mAdam/dense_143/bias/mAdam/distance/kernel/mAdam/distance/bias/mAdam/degree/kernel/mAdam/degree/bias/m,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/m6Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/m*Adam/simple_rnn_4/simple_rnn_cell_4/bias/mAdam/dense_140/kernel/vAdam/dense_140/bias/vAdam/dense_142/kernel/vAdam/dense_142/bias/vAdam/dense_141/kernel/vAdam/dense_141/bias/vAdam/dense_143/kernel/vAdam/dense_143/bias/vAdam/distance/kernel/vAdam/distance/bias/vAdam/degree/kernel/vAdam/degree/bias/v,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/v6Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/v*Adam/simple_rnn_4/simple_rnn_cell_4/bias/v*G
Tin@
>2<*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__traced_restore_638766��
�
�
*__inference_dense_141_layer_call_fn_638152

inputs
unknown:

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_141_layer_call_and_return_conditional_losses_636237o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_2_638266M
;dense_141_kernel_regularizer_square_readvariableop_resource:

identity��2dense_141/kernel/Regularizer/Square/ReadVariableOp�
2dense_141/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_141_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:
*
dtype0�
#dense_141/kernel/Regularizer/SquareSquare:dense_141/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
s
"dense_141/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_141/kernel/Regularizer/SumSum'dense_141/kernel/Regularizer/Square:y:0+dense_141/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_141/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_141/kernel/Regularizer/mulMul+dense_141/kernel/Regularizer/mul/x:output:0)dense_141/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentity$dense_141/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^dense_141/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2dense_141/kernel/Regularizer/Square/ReadVariableOp2dense_141/kernel/Regularizer/Square/ReadVariableOp
�
�
__inference_loss_fn_1_638255N
;dense_142_kernel_regularizer_square_readvariableop_resource:	�
identity��2dense_142/kernel/Regularizer/Square/ReadVariableOp�
2dense_142/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_142_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	�*
dtype0�
#dense_142/kernel/Regularizer/SquareSquare:dense_142/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�s
"dense_142/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_142/kernel/Regularizer/SumSum'dense_142/kernel/Regularizer/Square:y:0+dense_142/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_142/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_142/kernel/Regularizer/mulMul+dense_142/kernel/Regularizer/mul/x:output:0)dense_142/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentity$dense_142/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^dense_142/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2dense_142/kernel/Regularizer/Square/ReadVariableOp2dense_142/kernel/Regularizer/Square/ReadVariableOp
�$
�
M__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_638378

inputs
states_01
matmul_readvariableop_resource:	P�.
biasadd_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:���������PR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?p
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:���������PO
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������P*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������Po
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������Pi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������PW
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:���������Pu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0k
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:����������H
TanhTanhadd:z:0*
T0*(
_output_shapes
:�����������
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0�
8simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SquareSquareOsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P��
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SumSum<simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square:y:0@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mulMul@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/x:output:0>simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:����������Z

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOpH^simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������P:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpGsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������P
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states/0
�
�
*__inference_dense_142_layer_call_fn_638127

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_142_layer_call_and_return_conditional_losses_636171o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�M
�
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_636147

inputsC
0simple_rnn_cell_4_matmul_readvariableop_resource:	P�@
1simple_rnn_cell_4_biasadd_readvariableop_resource:	�F
2simple_rnn_cell_4_matmul_1_readvariableop_resource:
��
identity��Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp�(simple_rnn_cell_4/BiasAdd/ReadVariableOp�'simple_rnn_cell_4/MatMul/ReadVariableOp�)simple_rnn_cell_4/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d���������PD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������P*
shrink_axis_maski
!simple_rnn_cell_4/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:f
!simple_rnn_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
simple_rnn_cell_4/ones_likeFill*simple_rnn_cell_4/ones_like/Shape:output:0*simple_rnn_cell_4/ones_like/Const:output:0*
T0*'
_output_shapes
:���������P�
simple_rnn_cell_4/mulMulstrided_slice_2:output:0$simple_rnn_cell_4/ones_like:output:0*
T0*'
_output_shapes
:���������P�
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0�
simple_rnn_cell_4/MatMulMatMulsimple_rnn_cell_4/mul:z:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:����������l
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_636070*
condR
while_cond_636069*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:�����������
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0�
8simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SquareSquareOsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P��
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SumSum<simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square:y:0@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mulMul@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/x:output:0>simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOpH^simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������dP: : : 2�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpGsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�2
�
while_body_636070
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:	P�H
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:	�N
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_4_matmul_readvariableop_resource:	P�F
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:	�L
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:
����.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_4/MatMul/ReadVariableOp�/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������P*
element_dtype0�
'while/simple_rnn_cell_4/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:l
'while/simple_rnn_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!while/simple_rnn_cell_4/ones_likeFill0while/simple_rnn_cell_4/ones_like/Shape:output:00while/simple_rnn_cell_4/ones_like/Const:output:0*
T0*'
_output_shapes
:���������P�
while/simple_rnn_cell_4/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0*while/simple_rnn_cell_4/ones_like:output:0*
T0*'
_output_shapes
:���������P�
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	P�*
dtype0�
while/simple_rnn_cell_4/MatMulMatMulwhile/simple_rnn_cell_4/mul:z:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:����������x
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*(
_output_shapes
:����������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0 while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�

b
F__inference_reshape_40_layer_call_and_return_conditional_losses_637515

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :dQ
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :P�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:���������dP\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:���������dP"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�

b
F__inference_reshape_40_layer_call_and_return_conditional_losses_636022

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :dQ
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :P�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:h
ReshapeReshapeinputsReshape/shape:output:0*
T0*+
_output_shapes
:���������dP\
IdentityIdentityReshape:output:0*
T0*+
_output_shapes
:���������dP"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_model_33_layer_call_fn_637048

inputs
unknown:	P�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
	unknown_4:	�
	unknown_5:
	unknown_6:

	unknown_7:

	unknown_8:

	unknown_9:


unknown_10:


unknown_11:

unknown_12:


unknown_13:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*1
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_model_33_layer_call_and_return_conditional_losses_636309o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:����������: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�"
�
while_body_635921
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_03
 while_simple_rnn_cell_4_635943_0:	P�/
 while_simple_rnn_cell_4_635945_0:	�4
 while_simple_rnn_cell_4_635947_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor1
while_simple_rnn_cell_4_635943:	P�-
while_simple_rnn_cell_4_635945:	�2
while_simple_rnn_cell_4_635947:
����/while/simple_rnn_cell_4/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������P*
element_dtype0�
/while/simple_rnn_cell_4/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_4_635943_0 while_simple_rnn_cell_4_635945_0 while_simple_rnn_cell_4_635947_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_635868r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:08while/simple_rnn_cell_4/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity8while/simple_rnn_cell_4/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:����������~

while/NoOpNoOp0^while/simple_rnn_cell_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_4_635943 while_simple_rnn_cell_4_635943_0"B
while_simple_rnn_cell_4_635945 while_simple_rnn_cell_4_635945_0"B
while_simple_rnn_cell_4_635947 while_simple_rnn_cell_4_635947_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2b
/while/simple_rnn_cell_4/StatefulPartitionedCall/while/simple_rnn_cell_4/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
)__inference_model_33_layer_call_fn_636758	
input
unknown:	P�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
	unknown_4:	�
	unknown_5:
	unknown_6:

	unknown_7:

	unknown_8:

	unknown_9:


unknown_10:


unknown_11:

unknown_12:


unknown_13:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*1
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_model_33_layer_call_and_return_conditional_losses_636686o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:����������: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:����������

_user_specified_nameinput
�
�
E__inference_dense_140_layer_call_and_return_conditional_losses_638118

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2dense_140/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2dense_140/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
#dense_140/kernel/Regularizer/SquareSquare:dense_140/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�s
"dense_140/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_140/kernel/Regularizer/SumSum'dense_140/kernel/Regularizer/Square:y:0+dense_140/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_140/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_140/kernel/Regularizer/mulMul+dense_140/kernel/Regularizer/mul/x:output:0)dense_140/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_140/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_140/kernel/Regularizer/Square/ReadVariableOp2dense_140/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�X
�	
D__inference_model_33_layer_call_and_return_conditional_losses_636686

inputs&
simple_rnn_4_636617:	P�"
simple_rnn_4_636619:	�'
simple_rnn_4_636621:
��#
dense_142_636624:	�
dense_142_636626:#
dense_140_636629:	�
dense_140_636631:"
dense_143_636634:

dense_143_636636:
"
dense_141_636639:

dense_141_636641:

degree_636644:

degree_636646:!
distance_636649:

distance_636651:
identity

identity_1��degree/StatefulPartitionedCall�!dense_140/StatefulPartitionedCall�2dense_140/kernel/Regularizer/Square/ReadVariableOp�!dense_141/StatefulPartitionedCall�2dense_141/kernel/Regularizer/Square/ReadVariableOp�!dense_142/StatefulPartitionedCall�2dense_142/kernel/Regularizer/Square/ReadVariableOp�!dense_143/StatefulPartitionedCall�2dense_143/kernel/Regularizer/Square/ReadVariableOp� distance/StatefulPartitionedCall�$simple_rnn_4/StatefulPartitionedCall�Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp}
(tf.compat.v1.transpose_29/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#tf.compat.v1.transpose_29/transpose	Transposeinputs1tf.compat.v1.transpose_29/transpose/perm:output:0*
T0*,
_output_shapes
:�����������
reshape_40/PartitionedCallPartitionedCall'tf.compat.v1.transpose_29/transpose:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_reshape_40_layer_call_and_return_conditional_losses_636022�
$simple_rnn_4/StatefulPartitionedCallStatefulPartitionedCall#reshape_40/PartitionedCall:output:0simple_rnn_4_636617simple_rnn_4_636619simple_rnn_4_636621*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_636557�
!dense_142/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_4/StatefulPartitionedCall:output:0dense_142_636624dense_142_636626*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_142_layer_call_and_return_conditional_losses_636171�
!dense_140/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_4/StatefulPartitionedCall:output:0dense_140_636629dense_140_636631*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_140_layer_call_and_return_conditional_losses_636193�
!dense_143/StatefulPartitionedCallStatefulPartitionedCall*dense_142/StatefulPartitionedCall:output:0dense_143_636634dense_143_636636*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_143_layer_call_and_return_conditional_losses_636215�
!dense_141/StatefulPartitionedCallStatefulPartitionedCall*dense_140/StatefulPartitionedCall:output:0dense_141_636639dense_141_636641*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_141_layer_call_and_return_conditional_losses_636237�
degree/StatefulPartitionedCallStatefulPartitionedCall*dense_143/StatefulPartitionedCall:output:0degree_636644degree_636646*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_degree_layer_call_and_return_conditional_losses_636254�
 distance/StatefulPartitionedCallStatefulPartitionedCall*dense_141/StatefulPartitionedCall:output:0distance_636649distance_636651*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_distance_layer_call_and_return_conditional_losses_636271�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_4_636617*
_output_shapes
:	P�*
dtype0�
8simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SquareSquareOsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P��
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SumSum<simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square:y:0@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mulMul@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/x:output:0>simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_140/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_140_636629*
_output_shapes
:	�*
dtype0�
#dense_140/kernel/Regularizer/SquareSquare:dense_140/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�s
"dense_140/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_140/kernel/Regularizer/SumSum'dense_140/kernel/Regularizer/Square:y:0+dense_140/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_140/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_140/kernel/Regularizer/mulMul+dense_140/kernel/Regularizer/mul/x:output:0)dense_140/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_142/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_142_636624*
_output_shapes
:	�*
dtype0�
#dense_142/kernel/Regularizer/SquareSquare:dense_142/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�s
"dense_142/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_142/kernel/Regularizer/SumSum'dense_142/kernel/Regularizer/Square:y:0+dense_142/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_142/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_142/kernel/Regularizer/mulMul+dense_142/kernel/Regularizer/mul/x:output:0)dense_142/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_141/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_141_636639*
_output_shapes

:
*
dtype0�
#dense_141/kernel/Regularizer/SquareSquare:dense_141/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
s
"dense_141/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_141/kernel/Regularizer/SumSum'dense_141/kernel/Regularizer/Square:y:0+dense_141/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_141/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_141/kernel/Regularizer/mulMul+dense_141/kernel/Regularizer/mul/x:output:0)dense_141/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_143/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_143_636634*
_output_shapes

:
*
dtype0�
#dense_143/kernel/Regularizer/SquareSquare:dense_143/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
s
"dense_143/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_143/kernel/Regularizer/SumSum'dense_143/kernel/Regularizer/Square:y:0+dense_143/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_143/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_143/kernel/Regularizer/mulMul+dense_143/kernel/Regularizer/mul/x:output:0)dense_143/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)distance/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������x

Identity_1Identity'degree/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^degree/StatefulPartitionedCall"^dense_140/StatefulPartitionedCall3^dense_140/kernel/Regularizer/Square/ReadVariableOp"^dense_141/StatefulPartitionedCall3^dense_141/kernel/Regularizer/Square/ReadVariableOp"^dense_142/StatefulPartitionedCall3^dense_142/kernel/Regularizer/Square/ReadVariableOp"^dense_143/StatefulPartitionedCall3^dense_143/kernel/Regularizer/Square/ReadVariableOp!^distance/StatefulPartitionedCall%^simple_rnn_4/StatefulPartitionedCallH^simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:����������: : : : : : : : : : : : : : : 2@
degree/StatefulPartitionedCalldegree/StatefulPartitionedCall2F
!dense_140/StatefulPartitionedCall!dense_140/StatefulPartitionedCall2h
2dense_140/kernel/Regularizer/Square/ReadVariableOp2dense_140/kernel/Regularizer/Square/ReadVariableOp2F
!dense_141/StatefulPartitionedCall!dense_141/StatefulPartitionedCall2h
2dense_141/kernel/Regularizer/Square/ReadVariableOp2dense_141/kernel/Regularizer/Square/ReadVariableOp2F
!dense_142/StatefulPartitionedCall!dense_142/StatefulPartitionedCall2h
2dense_142/kernel/Regularizer/Square/ReadVariableOp2dense_142/kernel/Regularizer/Square/ReadVariableOp2F
!dense_143/StatefulPartitionedCall!dense_143/StatefulPartitionedCall2h
2dense_143/kernel/Regularizer/Square/ReadVariableOp2dense_143/kernel/Regularizer/Square/ReadVariableOp2D
 distance/StatefulPartitionedCall distance/StatefulPartitionedCall2L
$simple_rnn_4/StatefulPartitionedCall$simple_rnn_4/StatefulPartitionedCall2�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpGsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
2__inference_simple_rnn_cell_4_layer_call_fn_638316

inputs
states_0
unknown:	P�
	unknown_0:	�
	unknown_1:
��
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_635868p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������P:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������P
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states/0
�

�
B__inference_degree_layer_call_and_return_conditional_losses_636254

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�X
�	
D__inference_model_33_layer_call_and_return_conditional_losses_636833	
input&
simple_rnn_4_636764:	P�"
simple_rnn_4_636766:	�'
simple_rnn_4_636768:
��#
dense_142_636771:	�
dense_142_636773:#
dense_140_636776:	�
dense_140_636778:"
dense_143_636781:

dense_143_636783:
"
dense_141_636786:

dense_141_636788:

degree_636791:

degree_636793:!
distance_636796:

distance_636798:
identity

identity_1��degree/StatefulPartitionedCall�!dense_140/StatefulPartitionedCall�2dense_140/kernel/Regularizer/Square/ReadVariableOp�!dense_141/StatefulPartitionedCall�2dense_141/kernel/Regularizer/Square/ReadVariableOp�!dense_142/StatefulPartitionedCall�2dense_142/kernel/Regularizer/Square/ReadVariableOp�!dense_143/StatefulPartitionedCall�2dense_143/kernel/Regularizer/Square/ReadVariableOp� distance/StatefulPartitionedCall�$simple_rnn_4/StatefulPartitionedCall�Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp}
(tf.compat.v1.transpose_29/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#tf.compat.v1.transpose_29/transpose	Transposeinput1tf.compat.v1.transpose_29/transpose/perm:output:0*
T0*,
_output_shapes
:�����������
reshape_40/PartitionedCallPartitionedCall'tf.compat.v1.transpose_29/transpose:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_reshape_40_layer_call_and_return_conditional_losses_636022�
$simple_rnn_4/StatefulPartitionedCallStatefulPartitionedCall#reshape_40/PartitionedCall:output:0simple_rnn_4_636764simple_rnn_4_636766simple_rnn_4_636768*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_636147�
!dense_142/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_4/StatefulPartitionedCall:output:0dense_142_636771dense_142_636773*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_142_layer_call_and_return_conditional_losses_636171�
!dense_140/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_4/StatefulPartitionedCall:output:0dense_140_636776dense_140_636778*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_140_layer_call_and_return_conditional_losses_636193�
!dense_143/StatefulPartitionedCallStatefulPartitionedCall*dense_142/StatefulPartitionedCall:output:0dense_143_636781dense_143_636783*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_143_layer_call_and_return_conditional_losses_636215�
!dense_141/StatefulPartitionedCallStatefulPartitionedCall*dense_140/StatefulPartitionedCall:output:0dense_141_636786dense_141_636788*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_141_layer_call_and_return_conditional_losses_636237�
degree/StatefulPartitionedCallStatefulPartitionedCall*dense_143/StatefulPartitionedCall:output:0degree_636791degree_636793*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_degree_layer_call_and_return_conditional_losses_636254�
 distance/StatefulPartitionedCallStatefulPartitionedCall*dense_141/StatefulPartitionedCall:output:0distance_636796distance_636798*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_distance_layer_call_and_return_conditional_losses_636271�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_4_636764*
_output_shapes
:	P�*
dtype0�
8simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SquareSquareOsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P��
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SumSum<simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square:y:0@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mulMul@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/x:output:0>simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_140/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_140_636776*
_output_shapes
:	�*
dtype0�
#dense_140/kernel/Regularizer/SquareSquare:dense_140/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�s
"dense_140/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_140/kernel/Regularizer/SumSum'dense_140/kernel/Regularizer/Square:y:0+dense_140/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_140/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_140/kernel/Regularizer/mulMul+dense_140/kernel/Regularizer/mul/x:output:0)dense_140/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_142/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_142_636771*
_output_shapes
:	�*
dtype0�
#dense_142/kernel/Regularizer/SquareSquare:dense_142/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�s
"dense_142/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_142/kernel/Regularizer/SumSum'dense_142/kernel/Regularizer/Square:y:0+dense_142/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_142/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_142/kernel/Regularizer/mulMul+dense_142/kernel/Regularizer/mul/x:output:0)dense_142/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_141/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_141_636786*
_output_shapes

:
*
dtype0�
#dense_141/kernel/Regularizer/SquareSquare:dense_141/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
s
"dense_141/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_141/kernel/Regularizer/SumSum'dense_141/kernel/Regularizer/Square:y:0+dense_141/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_141/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_141/kernel/Regularizer/mulMul+dense_141/kernel/Regularizer/mul/x:output:0)dense_141/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_143/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_143_636781*
_output_shapes

:
*
dtype0�
#dense_143/kernel/Regularizer/SquareSquare:dense_143/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
s
"dense_143/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_143/kernel/Regularizer/SumSum'dense_143/kernel/Regularizer/Square:y:0+dense_143/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_143/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_143/kernel/Regularizer/mulMul+dense_143/kernel/Regularizer/mul/x:output:0)dense_143/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)distance/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������x

Identity_1Identity'degree/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^degree/StatefulPartitionedCall"^dense_140/StatefulPartitionedCall3^dense_140/kernel/Regularizer/Square/ReadVariableOp"^dense_141/StatefulPartitionedCall3^dense_141/kernel/Regularizer/Square/ReadVariableOp"^dense_142/StatefulPartitionedCall3^dense_142/kernel/Regularizer/Square/ReadVariableOp"^dense_143/StatefulPartitionedCall3^dense_143/kernel/Regularizer/Square/ReadVariableOp!^distance/StatefulPartitionedCall%^simple_rnn_4/StatefulPartitionedCallH^simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:����������: : : : : : : : : : : : : : : 2@
degree/StatefulPartitionedCalldegree/StatefulPartitionedCall2F
!dense_140/StatefulPartitionedCall!dense_140/StatefulPartitionedCall2h
2dense_140/kernel/Regularizer/Square/ReadVariableOp2dense_140/kernel/Regularizer/Square/ReadVariableOp2F
!dense_141/StatefulPartitionedCall!dense_141/StatefulPartitionedCall2h
2dense_141/kernel/Regularizer/Square/ReadVariableOp2dense_141/kernel/Regularizer/Square/ReadVariableOp2F
!dense_142/StatefulPartitionedCall!dense_142/StatefulPartitionedCall2h
2dense_142/kernel/Regularizer/Square/ReadVariableOp2dense_142/kernel/Regularizer/Square/ReadVariableOp2F
!dense_143/StatefulPartitionedCall!dense_143/StatefulPartitionedCall2h
2dense_143/kernel/Regularizer/Square/ReadVariableOp2dense_143/kernel/Regularizer/Square/ReadVariableOp2D
 distance/StatefulPartitionedCall distance/StatefulPartitionedCall2L
$simple_rnn_4/StatefulPartitionedCall$simple_rnn_4/StatefulPartitionedCall2�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpGsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:S O
,
_output_shapes
:����������

_user_specified_nameinput
�?
�
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_635806

inputs+
simple_rnn_cell_4_635723:	P�'
simple_rnn_cell_4_635725:	�,
simple_rnn_cell_4_635727:
��
identity��Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp�)simple_rnn_cell_4/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������PD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������P*
shrink_axis_mask�
)simple_rnn_cell_4/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_4_635723simple_rnn_cell_4_635725simple_rnn_cell_4_635727*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_635722n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_4_635723simple_rnn_cell_4_635725simple_rnn_cell_4_635727*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_635736*
condR
while_cond_635735*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:�����������
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_cell_4_635723*
_output_shapes
:	P�*
dtype0�
8simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SquareSquareOsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P��
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SumSum<simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square:y:0@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mulMul@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/x:output:0>simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOpH^simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp*^simple_rnn_cell_4/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������P: : : 2�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpGsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp2V
)simple_rnn_cell_4/StatefulPartitionedCall)simple_rnn_cell_4/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������P
 
_user_specified_nameinputs
�

�
D__inference_distance_layer_call_and_return_conditional_losses_638213

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
M__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_635722

inputs

states1
matmul_readvariableop_resource:	P�.
biasadd_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:���������PX
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:���������Pu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0k
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:����������H
TanhTanhadd:z:0*
T0*(
_output_shapes
:�����������
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0�
8simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SquareSquareOsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P��
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SumSum<simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square:y:0@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mulMul@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/x:output:0>simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:����������Z

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOpH^simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������P:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpGsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������P
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_namestates
�<
�
while_body_637738
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:	P�H
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:	�N
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_4_matmul_readvariableop_resource:	P�F
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:	�L
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:
����.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_4/MatMul/ReadVariableOp�/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������P*
element_dtype0�
'while/simple_rnn_cell_4/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:l
'while/simple_rnn_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!while/simple_rnn_cell_4/ones_likeFill0while/simple_rnn_cell_4/ones_like/Shape:output:00while/simple_rnn_cell_4/ones_like/Const:output:0*
T0*'
_output_shapes
:���������Pj
%while/simple_rnn_cell_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
#while/simple_rnn_cell_4/dropout/MulMul*while/simple_rnn_cell_4/ones_like:output:0.while/simple_rnn_cell_4/dropout/Const:output:0*
T0*'
_output_shapes
:���������P
%while/simple_rnn_cell_4/dropout/ShapeShape*while/simple_rnn_cell_4/ones_like:output:0*
T0*
_output_shapes
:�
<while/simple_rnn_cell_4/dropout/random_uniform/RandomUniformRandomUniform.while/simple_rnn_cell_4/dropout/Shape:output:0*
T0*'
_output_shapes
:���������P*
dtype0*

seeds
.while/simple_rnn_cell_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
,while/simple_rnn_cell_4/dropout/GreaterEqualGreaterEqualEwhile/simple_rnn_cell_4/dropout/random_uniform/RandomUniform:output:07while/simple_rnn_cell_4/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������P�
$while/simple_rnn_cell_4/dropout/CastCast0while/simple_rnn_cell_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������P�
%while/simple_rnn_cell_4/dropout/Mul_1Mul'while/simple_rnn_cell_4/dropout/Mul:z:0(while/simple_rnn_cell_4/dropout/Cast:y:0*
T0*'
_output_shapes
:���������P�
while/simple_rnn_cell_4/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/simple_rnn_cell_4/dropout/Mul_1:z:0*
T0*'
_output_shapes
:���������P�
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	P�*
dtype0�
while/simple_rnn_cell_4/MatMulMatMulwhile/simple_rnn_cell_4/mul:z:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:����������x
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*(
_output_shapes
:����������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0 while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�M
�
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_637683
inputs_0C
0simple_rnn_cell_4_matmul_readvariableop_resource:	P�@
1simple_rnn_cell_4_biasadd_readvariableop_resource:	�F
2simple_rnn_cell_4_matmul_1_readvariableop_resource:
��
identity��Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp�(simple_rnn_cell_4/BiasAdd/ReadVariableOp�'simple_rnn_cell_4/MatMul/ReadVariableOp�)simple_rnn_cell_4/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������PD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������P*
shrink_axis_maski
!simple_rnn_cell_4/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:f
!simple_rnn_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
simple_rnn_cell_4/ones_likeFill*simple_rnn_cell_4/ones_like/Shape:output:0*simple_rnn_cell_4/ones_like/Const:output:0*
T0*'
_output_shapes
:���������P�
simple_rnn_cell_4/mulMulstrided_slice_2:output:0$simple_rnn_cell_4/ones_like:output:0*
T0*'
_output_shapes
:���������P�
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0�
simple_rnn_cell_4/MatMulMatMulsimple_rnn_cell_4/mul:z:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:����������l
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_637606*
condR
while_cond_637605*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:�����������
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0�
8simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SquareSquareOsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P��
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SumSum<simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square:y:0@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mulMul@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/x:output:0>simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOpH^simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������P: : : 2�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpGsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������P
"
_user_specified_name
inputs/0
�X
�	
D__inference_model_33_layer_call_and_return_conditional_losses_636908	
input&
simple_rnn_4_636839:	P�"
simple_rnn_4_636841:	�'
simple_rnn_4_636843:
��#
dense_142_636846:	�
dense_142_636848:#
dense_140_636851:	�
dense_140_636853:"
dense_143_636856:

dense_143_636858:
"
dense_141_636861:

dense_141_636863:

degree_636866:

degree_636868:!
distance_636871:

distance_636873:
identity

identity_1��degree/StatefulPartitionedCall�!dense_140/StatefulPartitionedCall�2dense_140/kernel/Regularizer/Square/ReadVariableOp�!dense_141/StatefulPartitionedCall�2dense_141/kernel/Regularizer/Square/ReadVariableOp�!dense_142/StatefulPartitionedCall�2dense_142/kernel/Regularizer/Square/ReadVariableOp�!dense_143/StatefulPartitionedCall�2dense_143/kernel/Regularizer/Square/ReadVariableOp� distance/StatefulPartitionedCall�$simple_rnn_4/StatefulPartitionedCall�Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp}
(tf.compat.v1.transpose_29/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#tf.compat.v1.transpose_29/transpose	Transposeinput1tf.compat.v1.transpose_29/transpose/perm:output:0*
T0*,
_output_shapes
:�����������
reshape_40/PartitionedCallPartitionedCall'tf.compat.v1.transpose_29/transpose:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_reshape_40_layer_call_and_return_conditional_losses_636022�
$simple_rnn_4/StatefulPartitionedCallStatefulPartitionedCall#reshape_40/PartitionedCall:output:0simple_rnn_4_636839simple_rnn_4_636841simple_rnn_4_636843*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_636557�
!dense_142/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_4/StatefulPartitionedCall:output:0dense_142_636846dense_142_636848*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_142_layer_call_and_return_conditional_losses_636171�
!dense_140/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_4/StatefulPartitionedCall:output:0dense_140_636851dense_140_636853*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_140_layer_call_and_return_conditional_losses_636193�
!dense_143/StatefulPartitionedCallStatefulPartitionedCall*dense_142/StatefulPartitionedCall:output:0dense_143_636856dense_143_636858*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_143_layer_call_and_return_conditional_losses_636215�
!dense_141/StatefulPartitionedCallStatefulPartitionedCall*dense_140/StatefulPartitionedCall:output:0dense_141_636861dense_141_636863*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_141_layer_call_and_return_conditional_losses_636237�
degree/StatefulPartitionedCallStatefulPartitionedCall*dense_143/StatefulPartitionedCall:output:0degree_636866degree_636868*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_degree_layer_call_and_return_conditional_losses_636254�
 distance/StatefulPartitionedCallStatefulPartitionedCall*dense_141/StatefulPartitionedCall:output:0distance_636871distance_636873*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_distance_layer_call_and_return_conditional_losses_636271�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_4_636839*
_output_shapes
:	P�*
dtype0�
8simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SquareSquareOsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P��
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SumSum<simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square:y:0@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mulMul@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/x:output:0>simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_140/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_140_636851*
_output_shapes
:	�*
dtype0�
#dense_140/kernel/Regularizer/SquareSquare:dense_140/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�s
"dense_140/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_140/kernel/Regularizer/SumSum'dense_140/kernel/Regularizer/Square:y:0+dense_140/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_140/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_140/kernel/Regularizer/mulMul+dense_140/kernel/Regularizer/mul/x:output:0)dense_140/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_142/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_142_636846*
_output_shapes
:	�*
dtype0�
#dense_142/kernel/Regularizer/SquareSquare:dense_142/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�s
"dense_142/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_142/kernel/Regularizer/SumSum'dense_142/kernel/Regularizer/Square:y:0+dense_142/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_142/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_142/kernel/Regularizer/mulMul+dense_142/kernel/Regularizer/mul/x:output:0)dense_142/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_141/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_141_636861*
_output_shapes

:
*
dtype0�
#dense_141/kernel/Regularizer/SquareSquare:dense_141/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
s
"dense_141/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_141/kernel/Regularizer/SumSum'dense_141/kernel/Regularizer/Square:y:0+dense_141/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_141/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_141/kernel/Regularizer/mulMul+dense_141/kernel/Regularizer/mul/x:output:0)dense_141/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_143/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_143_636856*
_output_shapes

:
*
dtype0�
#dense_143/kernel/Regularizer/SquareSquare:dense_143/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
s
"dense_143/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_143/kernel/Regularizer/SumSum'dense_143/kernel/Regularizer/Square:y:0+dense_143/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_143/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_143/kernel/Regularizer/mulMul+dense_143/kernel/Regularizer/mul/x:output:0)dense_143/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)distance/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������x

Identity_1Identity'degree/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^degree/StatefulPartitionedCall"^dense_140/StatefulPartitionedCall3^dense_140/kernel/Regularizer/Square/ReadVariableOp"^dense_141/StatefulPartitionedCall3^dense_141/kernel/Regularizer/Square/ReadVariableOp"^dense_142/StatefulPartitionedCall3^dense_142/kernel/Regularizer/Square/ReadVariableOp"^dense_143/StatefulPartitionedCall3^dense_143/kernel/Regularizer/Square/ReadVariableOp!^distance/StatefulPartitionedCall%^simple_rnn_4/StatefulPartitionedCallH^simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:����������: : : : : : : : : : : : : : : 2@
degree/StatefulPartitionedCalldegree/StatefulPartitionedCall2F
!dense_140/StatefulPartitionedCall!dense_140/StatefulPartitionedCall2h
2dense_140/kernel/Regularizer/Square/ReadVariableOp2dense_140/kernel/Regularizer/Square/ReadVariableOp2F
!dense_141/StatefulPartitionedCall!dense_141/StatefulPartitionedCall2h
2dense_141/kernel/Regularizer/Square/ReadVariableOp2dense_141/kernel/Regularizer/Square/ReadVariableOp2F
!dense_142/StatefulPartitionedCall!dense_142/StatefulPartitionedCall2h
2dense_142/kernel/Regularizer/Square/ReadVariableOp2dense_142/kernel/Regularizer/Square/ReadVariableOp2F
!dense_143/StatefulPartitionedCall!dense_143/StatefulPartitionedCall2h
2dense_143/kernel/Regularizer/Square/ReadVariableOp2dense_143/kernel/Regularizer/Square/ReadVariableOp2D
 distance/StatefulPartitionedCall distance/StatefulPartitionedCall2L
$simple_rnn_4/StatefulPartitionedCall$simple_rnn_4/StatefulPartitionedCall2�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpGsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:S O
,
_output_shapes
:����������

_user_specified_nameinput
�s
�
__inference__traced_save_638579
file_prefix/
+savev2_dense_140_kernel_read_readvariableop-
)savev2_dense_140_bias_read_readvariableop/
+savev2_dense_142_kernel_read_readvariableop-
)savev2_dense_142_bias_read_readvariableop/
+savev2_dense_141_kernel_read_readvariableop-
)savev2_dense_141_bias_read_readvariableop/
+savev2_dense_143_kernel_read_readvariableop-
)savev2_dense_143_bias_read_readvariableop.
*savev2_distance_kernel_read_readvariableop,
(savev2_distance_bias_read_readvariableop,
(savev2_degree_kernel_read_readvariableop*
&savev2_degree_bias_read_readvariableopD
@savev2_simple_rnn_4_simple_rnn_cell_4_kernel_read_readvariableopN
Jsavev2_simple_rnn_4_simple_rnn_cell_4_recurrent_kernel_read_readvariableopB
>savev2_simple_rnn_4_simple_rnn_cell_4_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop&
"savev2_total_4_read_readvariableop&
"savev2_count_4_read_readvariableop&
"savev2_total_3_read_readvariableop&
"savev2_count_3_read_readvariableop&
"savev2_total_2_read_readvariableop&
"savev2_count_2_read_readvariableop&
"savev2_total_1_read_readvariableop&
"savev2_count_1_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop6
2savev2_adam_dense_140_kernel_m_read_readvariableop4
0savev2_adam_dense_140_bias_m_read_readvariableop6
2savev2_adam_dense_142_kernel_m_read_readvariableop4
0savev2_adam_dense_142_bias_m_read_readvariableop6
2savev2_adam_dense_141_kernel_m_read_readvariableop4
0savev2_adam_dense_141_bias_m_read_readvariableop6
2savev2_adam_dense_143_kernel_m_read_readvariableop4
0savev2_adam_dense_143_bias_m_read_readvariableop5
1savev2_adam_distance_kernel_m_read_readvariableop3
/savev2_adam_distance_bias_m_read_readvariableop3
/savev2_adam_degree_kernel_m_read_readvariableop1
-savev2_adam_degree_bias_m_read_readvariableopK
Gsavev2_adam_simple_rnn_4_simple_rnn_cell_4_kernel_m_read_readvariableopU
Qsavev2_adam_simple_rnn_4_simple_rnn_cell_4_recurrent_kernel_m_read_readvariableopI
Esavev2_adam_simple_rnn_4_simple_rnn_cell_4_bias_m_read_readvariableop6
2savev2_adam_dense_140_kernel_v_read_readvariableop4
0savev2_adam_dense_140_bias_v_read_readvariableop6
2savev2_adam_dense_142_kernel_v_read_readvariableop4
0savev2_adam_dense_142_bias_v_read_readvariableop6
2savev2_adam_dense_141_kernel_v_read_readvariableop4
0savev2_adam_dense_141_bias_v_read_readvariableop6
2savev2_adam_dense_143_kernel_v_read_readvariableop4
0savev2_adam_dense_143_bias_v_read_readvariableop5
1savev2_adam_distance_kernel_v_read_readvariableop3
/savev2_adam_distance_bias_v_read_readvariableop3
/savev2_adam_degree_kernel_v_read_readvariableop1
-savev2_adam_degree_bias_v_read_readvariableopK
Gsavev2_adam_simple_rnn_4_simple_rnn_cell_4_kernel_v_read_readvariableopU
Qsavev2_adam_simple_rnn_4_simple_rnn_cell_4_recurrent_kernel_v_read_readvariableopI
Esavev2_adam_simple_rnn_4_simple_rnn_cell_4_bias_v_read_readvariableop
savev2_const

identity_1��MergeV2Checkpointsw
StaticRegexFullMatchStaticRegexFullMatchfile_prefix"/device:CPU:**
_output_shapes
: *
pattern
^s3://.*Z
ConstConst"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B.parta
Const_1Const"/device:CPU:**
_output_shapes
: *
dtype0*
valueB B
_temp/part�
SelectSelectStaticRegexFullMatch:output:0Const:output:0Const_1:output:0"/device:CPU:**
T0*
_output_shapes
: f

StringJoin
StringJoinfile_prefixSelect:output:0"/device:CPU:**
N*
_output_shapes
: L

num_shardsConst*
_output_shapes
: *
dtype0*
value	B :f
ShardedFilename/shardConst"/device:CPU:0*
_output_shapes
: *
dtype0*
value	B : �
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*�
value�B�<B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*�
value�B�<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_dense_140_kernel_read_readvariableop)savev2_dense_140_bias_read_readvariableop+savev2_dense_142_kernel_read_readvariableop)savev2_dense_142_bias_read_readvariableop+savev2_dense_141_kernel_read_readvariableop)savev2_dense_141_bias_read_readvariableop+savev2_dense_143_kernel_read_readvariableop)savev2_dense_143_bias_read_readvariableop*savev2_distance_kernel_read_readvariableop(savev2_distance_bias_read_readvariableop(savev2_degree_kernel_read_readvariableop&savev2_degree_bias_read_readvariableop@savev2_simple_rnn_4_simple_rnn_cell_4_kernel_read_readvariableopJsavev2_simple_rnn_4_simple_rnn_cell_4_recurrent_kernel_read_readvariableop>savev2_simple_rnn_4_simple_rnn_cell_4_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_dense_140_kernel_m_read_readvariableop0savev2_adam_dense_140_bias_m_read_readvariableop2savev2_adam_dense_142_kernel_m_read_readvariableop0savev2_adam_dense_142_bias_m_read_readvariableop2savev2_adam_dense_141_kernel_m_read_readvariableop0savev2_adam_dense_141_bias_m_read_readvariableop2savev2_adam_dense_143_kernel_m_read_readvariableop0savev2_adam_dense_143_bias_m_read_readvariableop1savev2_adam_distance_kernel_m_read_readvariableop/savev2_adam_distance_bias_m_read_readvariableop/savev2_adam_degree_kernel_m_read_readvariableop-savev2_adam_degree_bias_m_read_readvariableopGsavev2_adam_simple_rnn_4_simple_rnn_cell_4_kernel_m_read_readvariableopQsavev2_adam_simple_rnn_4_simple_rnn_cell_4_recurrent_kernel_m_read_readvariableopEsavev2_adam_simple_rnn_4_simple_rnn_cell_4_bias_m_read_readvariableop2savev2_adam_dense_140_kernel_v_read_readvariableop0savev2_adam_dense_140_bias_v_read_readvariableop2savev2_adam_dense_142_kernel_v_read_readvariableop0savev2_adam_dense_142_bias_v_read_readvariableop2savev2_adam_dense_141_kernel_v_read_readvariableop0savev2_adam_dense_141_bias_v_read_readvariableop2savev2_adam_dense_143_kernel_v_read_readvariableop0savev2_adam_dense_143_bias_v_read_readvariableop1savev2_adam_distance_kernel_v_read_readvariableop/savev2_adam_distance_bias_v_read_readvariableop/savev2_adam_degree_kernel_v_read_readvariableop-savev2_adam_degree_bias_v_read_readvariableopGsavev2_adam_simple_rnn_4_simple_rnn_cell_4_kernel_v_read_readvariableopQsavev2_adam_simple_rnn_4_simple_rnn_cell_4_recurrent_kernel_v_read_readvariableopEsavev2_adam_simple_rnn_4_simple_rnn_cell_4_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *J
dtypes@
>2<	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*
_output_shapes
 f
IdentityIdentityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: Q

Identity_1IdentityIdentity:output:0^NoOp*
T0*
_output_shapes
: [
NoOpNoOp^MergeV2Checkpoints*"
_acd_function_control_output(*
_output_shapes
 "!

identity_1Identity_1:output:0*�
_input_shapes�
�: :	�::	�::
:
:
:
:
::
::	P�:
��:�: : : : : : : : : : : : : : :	�::	�::
:
:
:
:
::
::	P�:
��:�:	�::	�::
:
:
:
:
::
::	P�:
��:�: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�: 

_output_shapes
::%!

_output_shapes
:	�: 

_output_shapes
::$ 

_output_shapes

:
: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
:
:$	 

_output_shapes

:
: 


_output_shapes
::$ 

_output_shapes

:
: 

_output_shapes
::%!

_output_shapes
:	P�:&"
 
_output_shapes
:
��:!

_output_shapes	
:�:

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	�: 

_output_shapes
::% !

_output_shapes
:	�: !

_output_shapes
::$" 

_output_shapes

:
: #

_output_shapes
:
:$$ 

_output_shapes

:
: %

_output_shapes
:
:$& 

_output_shapes

:
: '

_output_shapes
::$( 

_output_shapes

:
: )

_output_shapes
::%*!

_output_shapes
:	P�:&+"
 
_output_shapes
:
��:!,

_output_shapes	
:�:%-!

_output_shapes
:	�: .

_output_shapes
::%/!

_output_shapes
:	�: 0

_output_shapes
::$1 

_output_shapes

:
: 2

_output_shapes
:
:$3 

_output_shapes

:
: 4

_output_shapes
:
:$5 

_output_shapes

:
: 6

_output_shapes
::$7 

_output_shapes

:
: 8

_output_shapes
::%9!

_output_shapes
:	P�:&:"
 
_output_shapes
:
��:!;

_output_shapes	
:�:<

_output_shapes
: 
�
�
while_cond_636471
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_636471___redundant_placeholder04
0while_while_cond_636471___redundant_placeholder14
0while_while_cond_636471___redundant_placeholder24
0while_while_cond_636471___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
E__inference_dense_141_layer_call_and_return_conditional_losses_636237

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2dense_141/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
2dense_141/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
#dense_141/kernel/Regularizer/SquareSquare:dense_141/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
s
"dense_141/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_141/kernel/Regularizer/SumSum'dense_141/kernel/Regularizer/Square:y:0+dense_141/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_141/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_141/kernel/Regularizer/mulMul+dense_141/kernel/Regularizer/mul/x:output:0)dense_141/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_141/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_141/kernel/Regularizer/Square/ReadVariableOp2dense_141/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
D__inference_model_33_layer_call_and_return_conditional_losses_637497

inputsP
=simple_rnn_4_simple_rnn_cell_4_matmul_readvariableop_resource:	P�M
>simple_rnn_4_simple_rnn_cell_4_biasadd_readvariableop_resource:	�S
?simple_rnn_4_simple_rnn_cell_4_matmul_1_readvariableop_resource:
��;
(dense_142_matmul_readvariableop_resource:	�7
)dense_142_biasadd_readvariableop_resource:;
(dense_140_matmul_readvariableop_resource:	�7
)dense_140_biasadd_readvariableop_resource::
(dense_143_matmul_readvariableop_resource:
7
)dense_143_biasadd_readvariableop_resource:
:
(dense_141_matmul_readvariableop_resource:
7
)dense_141_biasadd_readvariableop_resource:
7
%degree_matmul_readvariableop_resource:
4
&degree_biasadd_readvariableop_resource:9
'distance_matmul_readvariableop_resource:
6
(distance_biasadd_readvariableop_resource:
identity

identity_1��degree/BiasAdd/ReadVariableOp�degree/MatMul/ReadVariableOp� dense_140/BiasAdd/ReadVariableOp�dense_140/MatMul/ReadVariableOp�2dense_140/kernel/Regularizer/Square/ReadVariableOp� dense_141/BiasAdd/ReadVariableOp�dense_141/MatMul/ReadVariableOp�2dense_141/kernel/Regularizer/Square/ReadVariableOp� dense_142/BiasAdd/ReadVariableOp�dense_142/MatMul/ReadVariableOp�2dense_142/kernel/Regularizer/Square/ReadVariableOp� dense_143/BiasAdd/ReadVariableOp�dense_143/MatMul/ReadVariableOp�2dense_143/kernel/Regularizer/Square/ReadVariableOp�distance/BiasAdd/ReadVariableOp�distance/MatMul/ReadVariableOp�5simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp�4simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp�6simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp�Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp�simple_rnn_4/while}
(tf.compat.v1.transpose_29/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#tf.compat.v1.transpose_29/transpose	Transposeinputs1tf.compat.v1.transpose_29/transpose/perm:output:0*
T0*,
_output_shapes
:����������g
reshape_40/ShapeShape'tf.compat.v1.transpose_29/transpose:y:0*
T0*
_output_shapes
:h
reshape_40/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_40/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_40/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_40/strided_sliceStridedSlicereshape_40/Shape:output:0'reshape_40/strided_slice/stack:output:0)reshape_40/strided_slice/stack_1:output:0)reshape_40/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_40/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :d\
reshape_40/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :P�
reshape_40/Reshape/shapePack!reshape_40/strided_slice:output:0#reshape_40/Reshape/shape/1:output:0#reshape_40/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
reshape_40/ReshapeReshape'tf.compat.v1.transpose_29/transpose:y:0!reshape_40/Reshape/shape:output:0*
T0*+
_output_shapes
:���������dP]
simple_rnn_4/ShapeShapereshape_40/Reshape:output:0*
T0*
_output_shapes
:j
 simple_rnn_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_4/strided_sliceStridedSlicesimple_rnn_4/Shape:output:0)simple_rnn_4/strided_slice/stack:output:0+simple_rnn_4/strided_slice/stack_1:output:0+simple_rnn_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
simple_rnn_4/zeros/packedPack#simple_rnn_4/strided_slice:output:0$simple_rnn_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_4/zerosFill"simple_rnn_4/zeros/packed:output:0!simple_rnn_4/zeros/Const:output:0*
T0*(
_output_shapes
:����������p
simple_rnn_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_4/transpose	Transposereshape_40/Reshape:output:0$simple_rnn_4/transpose/perm:output:0*
T0*+
_output_shapes
:d���������P^
simple_rnn_4/Shape_1Shapesimple_rnn_4/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_4/strided_slice_1StridedSlicesimple_rnn_4/Shape_1:output:0+simple_rnn_4/strided_slice_1/stack:output:0-simple_rnn_4/strided_slice_1/stack_1:output:0-simple_rnn_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_4/TensorArrayV2TensorListReserve1simple_rnn_4/TensorArrayV2/element_shape:output:0%simple_rnn_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Bsimple_rnn_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
4simple_rnn_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_4/transpose:y:0Ksimple_rnn_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���l
"simple_rnn_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_4/strided_slice_2StridedSlicesimple_rnn_4/transpose:y:0+simple_rnn_4/strided_slice_2/stack:output:0-simple_rnn_4/strided_slice_2/stack_1:output:0-simple_rnn_4/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������P*
shrink_axis_mask�
.simple_rnn_4/simple_rnn_cell_4/ones_like/ShapeShape%simple_rnn_4/strided_slice_2:output:0*
T0*
_output_shapes
:s
.simple_rnn_4/simple_rnn_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
(simple_rnn_4/simple_rnn_cell_4/ones_likeFill7simple_rnn_4/simple_rnn_cell_4/ones_like/Shape:output:07simple_rnn_4/simple_rnn_cell_4/ones_like/Const:output:0*
T0*'
_output_shapes
:���������Pq
,simple_rnn_4/simple_rnn_cell_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
*simple_rnn_4/simple_rnn_cell_4/dropout/MulMul1simple_rnn_4/simple_rnn_cell_4/ones_like:output:05simple_rnn_4/simple_rnn_cell_4/dropout/Const:output:0*
T0*'
_output_shapes
:���������P�
,simple_rnn_4/simple_rnn_cell_4/dropout/ShapeShape1simple_rnn_4/simple_rnn_cell_4/ones_like:output:0*
T0*
_output_shapes
:�
Csimple_rnn_4/simple_rnn_cell_4/dropout/random_uniform/RandomUniformRandomUniform5simple_rnn_4/simple_rnn_cell_4/dropout/Shape:output:0*
T0*'
_output_shapes
:���������P*
dtype0*

seedz
5simple_rnn_4/simple_rnn_cell_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
3simple_rnn_4/simple_rnn_cell_4/dropout/GreaterEqualGreaterEqualLsimple_rnn_4/simple_rnn_cell_4/dropout/random_uniform/RandomUniform:output:0>simple_rnn_4/simple_rnn_cell_4/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������P�
+simple_rnn_4/simple_rnn_cell_4/dropout/CastCast7simple_rnn_4/simple_rnn_cell_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������P�
,simple_rnn_4/simple_rnn_cell_4/dropout/Mul_1Mul.simple_rnn_4/simple_rnn_cell_4/dropout/Mul:z:0/simple_rnn_4/simple_rnn_cell_4/dropout/Cast:y:0*
T0*'
_output_shapes
:���������P�
"simple_rnn_4/simple_rnn_cell_4/mulMul%simple_rnn_4/strided_slice_2:output:00simple_rnn_4/simple_rnn_cell_4/dropout/Mul_1:z:0*
T0*'
_output_shapes
:���������P�
4simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp=simple_rnn_4_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0�
%simple_rnn_4/simple_rnn_cell_4/MatMulMatMul&simple_rnn_4/simple_rnn_cell_4/mul:z:0<simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
5simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_4_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
&simple_rnn_4/simple_rnn_cell_4/BiasAddBiasAdd/simple_rnn_4/simple_rnn_cell_4/MatMul:product:0=simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
6simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_4_simple_rnn_cell_4_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
'simple_rnn_4/simple_rnn_cell_4/MatMul_1MatMulsimple_rnn_4/zeros:output:0>simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"simple_rnn_4/simple_rnn_cell_4/addAddV2/simple_rnn_4/simple_rnn_cell_4/BiasAdd:output:01simple_rnn_4/simple_rnn_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#simple_rnn_4/simple_rnn_cell_4/TanhTanh&simple_rnn_4/simple_rnn_cell_4/add:z:0*
T0*(
_output_shapes
:����������{
*simple_rnn_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  k
)simple_rnn_4/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_4/TensorArrayV2_1TensorListReserve3simple_rnn_4/TensorArrayV2_1/element_shape:output:02simple_rnn_4/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���S
simple_rnn_4/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������a
simple_rnn_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_4/whileWhile(simple_rnn_4/while/loop_counter:output:0.simple_rnn_4/while/maximum_iterations:output:0simple_rnn_4/time:output:0%simple_rnn_4/TensorArrayV2_1:handle:0simple_rnn_4/zeros:output:0%simple_rnn_4/strided_slice_1:output:0Dsimple_rnn_4/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_4_simple_rnn_cell_4_matmul_readvariableop_resource>simple_rnn_4_simple_rnn_cell_4_biasadd_readvariableop_resource?simple_rnn_4_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( **
body"R 
simple_rnn_4_while_body_637349**
cond"R 
simple_rnn_4_while_cond_637348*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
=simple_rnn_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  �
/simple_rnn_4/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_4/while:output:3Fsimple_rnn_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elementsu
"simple_rnn_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������n
$simple_rnn_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_4/strided_slice_3StridedSlice8simple_rnn_4/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_4/strided_slice_3/stack:output:0-simple_rnn_4/strided_slice_3/stack_1:output:0-simple_rnn_4/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maskr
simple_rnn_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_4/transpose_1	Transpose8simple_rnn_4/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_4/transpose_1/perm:output:0*
T0*,
_output_shapes
:�����������
dense_142/MatMul/ReadVariableOpReadVariableOp(dense_142_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_142/MatMulMatMul%simple_rnn_4/strided_slice_3:output:0'dense_142/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_142/BiasAdd/ReadVariableOpReadVariableOp)dense_142_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_142/BiasAddBiasAdddense_142/MatMul:product:0(dense_142/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_140/MatMul/ReadVariableOpReadVariableOp(dense_140_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_140/MatMulMatMul%simple_rnn_4/strided_slice_3:output:0'dense_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_140/BiasAdd/ReadVariableOpReadVariableOp)dense_140_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_140/BiasAddBiasAdddense_140/MatMul:product:0(dense_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_143/MatMul/ReadVariableOpReadVariableOp(dense_143_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_143/MatMulMatMuldense_142/BiasAdd:output:0'dense_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
 dense_143/BiasAdd/ReadVariableOpReadVariableOp)dense_143_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_143/BiasAddBiasAdddense_143/MatMul:product:0(dense_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_141/MatMul/ReadVariableOpReadVariableOp(dense_141_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_141/MatMulMatMuldense_140/BiasAdd:output:0'dense_141/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
 dense_141/BiasAdd/ReadVariableOpReadVariableOp)dense_141_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_141/BiasAddBiasAdddense_141/MatMul:product:0(dense_141/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
degree/MatMul/ReadVariableOpReadVariableOp%degree_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
degree/MatMulMatMuldense_143/BiasAdd:output:0$degree/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
degree/BiasAdd/ReadVariableOpReadVariableOp&degree_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
degree/BiasAddBiasAdddegree/MatMul:product:0%degree/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������^
degree/TanhTanhdegree/BiasAdd:output:0*
T0*'
_output_shapes
:����������
distance/MatMul/ReadVariableOpReadVariableOp'distance_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
distance/MatMulMatMuldense_141/BiasAdd:output:0&distance/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
distance/BiasAdd/ReadVariableOpReadVariableOp(distance_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
distance/BiasAddBiasAdddistance/MatMul:product:0'distance/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
distance/SigmoidSigmoiddistance/BiasAdd:output:0*
T0*'
_output_shapes
:����������
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp=simple_rnn_4_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0�
8simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SquareSquareOsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P��
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SumSum<simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square:y:0@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mulMul@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/x:output:0>simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_140/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_140_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
#dense_140/kernel/Regularizer/SquareSquare:dense_140/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�s
"dense_140/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_140/kernel/Regularizer/SumSum'dense_140/kernel/Regularizer/Square:y:0+dense_140/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_140/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_140/kernel/Regularizer/mulMul+dense_140/kernel/Regularizer/mul/x:output:0)dense_140/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_142/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_142_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
#dense_142/kernel/Regularizer/SquareSquare:dense_142/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�s
"dense_142/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_142/kernel/Regularizer/SumSum'dense_142/kernel/Regularizer/Square:y:0+dense_142/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_142/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_142/kernel/Regularizer/mulMul+dense_142/kernel/Regularizer/mul/x:output:0)dense_142/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_141/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_141_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
#dense_141/kernel/Regularizer/SquareSquare:dense_141/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
s
"dense_141/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_141/kernel/Regularizer/SumSum'dense_141/kernel/Regularizer/Square:y:0+dense_141/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_141/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_141/kernel/Regularizer/mulMul+dense_141/kernel/Regularizer/mul/x:output:0)dense_141/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_143/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_143_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
#dense_143/kernel/Regularizer/SquareSquare:dense_143/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
s
"dense_143/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_143/kernel/Regularizer/SumSum'dense_143/kernel/Regularizer/Square:y:0+dense_143/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_143/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_143/kernel/Regularizer/mulMul+dense_143/kernel/Regularizer/mul/x:output:0)dense_143/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: c
IdentityIdentitydistance/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������`

Identity_1Identitydegree/Tanh:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^degree/BiasAdd/ReadVariableOp^degree/MatMul/ReadVariableOp!^dense_140/BiasAdd/ReadVariableOp ^dense_140/MatMul/ReadVariableOp3^dense_140/kernel/Regularizer/Square/ReadVariableOp!^dense_141/BiasAdd/ReadVariableOp ^dense_141/MatMul/ReadVariableOp3^dense_141/kernel/Regularizer/Square/ReadVariableOp!^dense_142/BiasAdd/ReadVariableOp ^dense_142/MatMul/ReadVariableOp3^dense_142/kernel/Regularizer/Square/ReadVariableOp!^dense_143/BiasAdd/ReadVariableOp ^dense_143/MatMul/ReadVariableOp3^dense_143/kernel/Regularizer/Square/ReadVariableOp ^distance/BiasAdd/ReadVariableOp^distance/MatMul/ReadVariableOp6^simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp5^simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp7^simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOpH^simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp^simple_rnn_4/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:����������: : : : : : : : : : : : : : : 2>
degree/BiasAdd/ReadVariableOpdegree/BiasAdd/ReadVariableOp2<
degree/MatMul/ReadVariableOpdegree/MatMul/ReadVariableOp2D
 dense_140/BiasAdd/ReadVariableOp dense_140/BiasAdd/ReadVariableOp2B
dense_140/MatMul/ReadVariableOpdense_140/MatMul/ReadVariableOp2h
2dense_140/kernel/Regularizer/Square/ReadVariableOp2dense_140/kernel/Regularizer/Square/ReadVariableOp2D
 dense_141/BiasAdd/ReadVariableOp dense_141/BiasAdd/ReadVariableOp2B
dense_141/MatMul/ReadVariableOpdense_141/MatMul/ReadVariableOp2h
2dense_141/kernel/Regularizer/Square/ReadVariableOp2dense_141/kernel/Regularizer/Square/ReadVariableOp2D
 dense_142/BiasAdd/ReadVariableOp dense_142/BiasAdd/ReadVariableOp2B
dense_142/MatMul/ReadVariableOpdense_142/MatMul/ReadVariableOp2h
2dense_142/kernel/Regularizer/Square/ReadVariableOp2dense_142/kernel/Regularizer/Square/ReadVariableOp2D
 dense_143/BiasAdd/ReadVariableOp dense_143/BiasAdd/ReadVariableOp2B
dense_143/MatMul/ReadVariableOpdense_143/MatMul/ReadVariableOp2h
2dense_143/kernel/Regularizer/Square/ReadVariableOp2dense_143/kernel/Regularizer/Square/ReadVariableOp2B
distance/BiasAdd/ReadVariableOpdistance/BiasAdd/ReadVariableOp2@
distance/MatMul/ReadVariableOpdistance/MatMul/ReadVariableOp2n
5simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp5simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp2l
4simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp4simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp2p
6simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp6simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp2�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpGsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp2(
simple_rnn_4/whilesimple_rnn_4/while:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�K
�
simple_rnn_4_while_body_6373496
2simple_rnn_4_while_simple_rnn_4_while_loop_counter<
8simple_rnn_4_while_simple_rnn_4_while_maximum_iterations"
simple_rnn_4_while_placeholder$
 simple_rnn_4_while_placeholder_1$
 simple_rnn_4_while_placeholder_25
1simple_rnn_4_while_simple_rnn_4_strided_slice_1_0q
msimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0X
Esimple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:	P�U
Fsimple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:	�[
Gsimple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:
��
simple_rnn_4_while_identity!
simple_rnn_4_while_identity_1!
simple_rnn_4_while_identity_2!
simple_rnn_4_while_identity_3!
simple_rnn_4_while_identity_43
/simple_rnn_4_while_simple_rnn_4_strided_slice_1o
ksimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensorV
Csimple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource:	P�S
Dsimple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource:	�Y
Esimple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:
����;simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp�:simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp�<simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp�
Dsimple_rnn_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
6simple_rnn_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_4_while_placeholderMsimple_rnn_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������P*
element_dtype0�
4simple_rnn_4/while/simple_rnn_cell_4/ones_like/ShapeShape=simple_rnn_4/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:y
4simple_rnn_4/while/simple_rnn_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
.simple_rnn_4/while/simple_rnn_cell_4/ones_likeFill=simple_rnn_4/while/simple_rnn_cell_4/ones_like/Shape:output:0=simple_rnn_4/while/simple_rnn_cell_4/ones_like/Const:output:0*
T0*'
_output_shapes
:���������Pw
2simple_rnn_4/while/simple_rnn_cell_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
0simple_rnn_4/while/simple_rnn_cell_4/dropout/MulMul7simple_rnn_4/while/simple_rnn_cell_4/ones_like:output:0;simple_rnn_4/while/simple_rnn_cell_4/dropout/Const:output:0*
T0*'
_output_shapes
:���������P�
2simple_rnn_4/while/simple_rnn_cell_4/dropout/ShapeShape7simple_rnn_4/while/simple_rnn_cell_4/ones_like:output:0*
T0*
_output_shapes
:�
Isimple_rnn_4/while/simple_rnn_cell_4/dropout/random_uniform/RandomUniformRandomUniform;simple_rnn_4/while/simple_rnn_cell_4/dropout/Shape:output:0*
T0*'
_output_shapes
:���������P*
dtype0*

seed�
;simple_rnn_4/while/simple_rnn_cell_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
9simple_rnn_4/while/simple_rnn_cell_4/dropout/GreaterEqualGreaterEqualRsimple_rnn_4/while/simple_rnn_cell_4/dropout/random_uniform/RandomUniform:output:0Dsimple_rnn_4/while/simple_rnn_cell_4/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������P�
1simple_rnn_4/while/simple_rnn_cell_4/dropout/CastCast=simple_rnn_4/while/simple_rnn_cell_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������P�
2simple_rnn_4/while/simple_rnn_cell_4/dropout/Mul_1Mul4simple_rnn_4/while/simple_rnn_cell_4/dropout/Mul:z:05simple_rnn_4/while/simple_rnn_cell_4/dropout/Cast:y:0*
T0*'
_output_shapes
:���������P�
(simple_rnn_4/while/simple_rnn_cell_4/mulMul=simple_rnn_4/while/TensorArrayV2Read/TensorListGetItem:item:06simple_rnn_4/while/simple_rnn_cell_4/dropout/Mul_1:z:0*
T0*'
_output_shapes
:���������P�
:simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	P�*
dtype0�
+simple_rnn_4/while/simple_rnn_cell_4/MatMulMatMul,simple_rnn_4/while/simple_rnn_cell_4/mul:z:0Bsimple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
;simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
,simple_rnn_4/while/simple_rnn_cell_4/BiasAddBiasAdd5simple_rnn_4/while/simple_rnn_cell_4/MatMul:product:0Csimple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
<simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
-simple_rnn_4/while/simple_rnn_cell_4/MatMul_1MatMul simple_rnn_4_while_placeholder_2Dsimple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(simple_rnn_4/while/simple_rnn_cell_4/addAddV25simple_rnn_4/while/simple_rnn_cell_4/BiasAdd:output:07simple_rnn_4/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)simple_rnn_4/while/simple_rnn_cell_4/TanhTanh,simple_rnn_4/while/simple_rnn_cell_4/add:z:0*
T0*(
_output_shapes
:����������
=simple_rnn_4/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
7simple_rnn_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_4_while_placeholder_1Fsimple_rnn_4/while/TensorArrayV2Write/TensorListSetItem/index:output:0-simple_rnn_4/while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:���Z
simple_rnn_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_4/while/addAddV2simple_rnn_4_while_placeholder!simple_rnn_4/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_4/while/add_1AddV22simple_rnn_4_while_simple_rnn_4_while_loop_counter#simple_rnn_4/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_4/while/IdentityIdentitysimple_rnn_4/while/add_1:z:0^simple_rnn_4/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_4/while/Identity_1Identity8simple_rnn_4_while_simple_rnn_4_while_maximum_iterations^simple_rnn_4/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_4/while/Identity_2Identitysimple_rnn_4/while/add:z:0^simple_rnn_4/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_4/while/Identity_3IdentityGsimple_rnn_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_4/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_4/while/Identity_4Identity-simple_rnn_4/while/simple_rnn_cell_4/Tanh:y:0^simple_rnn_4/while/NoOp*
T0*(
_output_shapes
:�����������
simple_rnn_4/while/NoOpNoOp<^simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp;^simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp=^simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_4_while_identity$simple_rnn_4/while/Identity:output:0"G
simple_rnn_4_while_identity_1&simple_rnn_4/while/Identity_1:output:0"G
simple_rnn_4_while_identity_2&simple_rnn_4/while/Identity_2:output:0"G
simple_rnn_4_while_identity_3&simple_rnn_4/while/Identity_3:output:0"G
simple_rnn_4_while_identity_4&simple_rnn_4/while/Identity_4:output:0"d
/simple_rnn_4_while_simple_rnn_4_strided_slice_11simple_rnn_4_while_simple_rnn_4_strided_slice_1_0"�
Dsimple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resourceFsimple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"�
Esimple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resourceGsimple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"�
Csimple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resourceEsimple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"�
ksimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensormsimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2z
;simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp;simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2x
:simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp:simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp2|
<simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp<simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
˟
�
!__inference__wrapped_model_635664	
inputY
Fmodel_33_simple_rnn_4_simple_rnn_cell_4_matmul_readvariableop_resource:	P�V
Gmodel_33_simple_rnn_4_simple_rnn_cell_4_biasadd_readvariableop_resource:	�\
Hmodel_33_simple_rnn_4_simple_rnn_cell_4_matmul_1_readvariableop_resource:
��D
1model_33_dense_142_matmul_readvariableop_resource:	�@
2model_33_dense_142_biasadd_readvariableop_resource:D
1model_33_dense_140_matmul_readvariableop_resource:	�@
2model_33_dense_140_biasadd_readvariableop_resource:C
1model_33_dense_143_matmul_readvariableop_resource:
@
2model_33_dense_143_biasadd_readvariableop_resource:
C
1model_33_dense_141_matmul_readvariableop_resource:
@
2model_33_dense_141_biasadd_readvariableop_resource:
@
.model_33_degree_matmul_readvariableop_resource:
=
/model_33_degree_biasadd_readvariableop_resource:B
0model_33_distance_matmul_readvariableop_resource:
?
1model_33_distance_biasadd_readvariableop_resource:
identity

identity_1��&model_33/degree/BiasAdd/ReadVariableOp�%model_33/degree/MatMul/ReadVariableOp�)model_33/dense_140/BiasAdd/ReadVariableOp�(model_33/dense_140/MatMul/ReadVariableOp�)model_33/dense_141/BiasAdd/ReadVariableOp�(model_33/dense_141/MatMul/ReadVariableOp�)model_33/dense_142/BiasAdd/ReadVariableOp�(model_33/dense_142/MatMul/ReadVariableOp�)model_33/dense_143/BiasAdd/ReadVariableOp�(model_33/dense_143/MatMul/ReadVariableOp�(model_33/distance/BiasAdd/ReadVariableOp�'model_33/distance/MatMul/ReadVariableOp�>model_33/simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp�=model_33/simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp�?model_33/simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp�model_33/simple_rnn_4/while�
1model_33/tf.compat.v1.transpose_29/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
,model_33/tf.compat.v1.transpose_29/transpose	Transposeinput:model_33/tf.compat.v1.transpose_29/transpose/perm:output:0*
T0*,
_output_shapes
:����������y
model_33/reshape_40/ShapeShape0model_33/tf.compat.v1.transpose_29/transpose:y:0*
T0*
_output_shapes
:q
'model_33/reshape_40/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)model_33/reshape_40/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)model_33/reshape_40/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
!model_33/reshape_40/strided_sliceStridedSlice"model_33/reshape_40/Shape:output:00model_33/reshape_40/strided_slice/stack:output:02model_33/reshape_40/strided_slice/stack_1:output:02model_33/reshape_40/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#model_33/reshape_40/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :de
#model_33/reshape_40/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :P�
!model_33/reshape_40/Reshape/shapePack*model_33/reshape_40/strided_slice:output:0,model_33/reshape_40/Reshape/shape/1:output:0,model_33/reshape_40/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
model_33/reshape_40/ReshapeReshape0model_33/tf.compat.v1.transpose_29/transpose:y:0*model_33/reshape_40/Reshape/shape:output:0*
T0*+
_output_shapes
:���������dPo
model_33/simple_rnn_4/ShapeShape$model_33/reshape_40/Reshape:output:0*
T0*
_output_shapes
:s
)model_33/simple_rnn_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: u
+model_33/simple_rnn_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:u
+model_33/simple_rnn_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
#model_33/simple_rnn_4/strided_sliceStridedSlice$model_33/simple_rnn_4/Shape:output:02model_33/simple_rnn_4/strided_slice/stack:output:04model_33/simple_rnn_4/strided_slice/stack_1:output:04model_33/simple_rnn_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskg
$model_33/simple_rnn_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
"model_33/simple_rnn_4/zeros/packedPack,model_33/simple_rnn_4/strided_slice:output:0-model_33/simple_rnn_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:f
!model_33/simple_rnn_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
model_33/simple_rnn_4/zerosFill+model_33/simple_rnn_4/zeros/packed:output:0*model_33/simple_rnn_4/zeros/Const:output:0*
T0*(
_output_shapes
:����������y
$model_33/simple_rnn_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
model_33/simple_rnn_4/transpose	Transpose$model_33/reshape_40/Reshape:output:0-model_33/simple_rnn_4/transpose/perm:output:0*
T0*+
_output_shapes
:d���������Pp
model_33/simple_rnn_4/Shape_1Shape#model_33/simple_rnn_4/transpose:y:0*
T0*
_output_shapes
:u
+model_33/simple_rnn_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-model_33/simple_rnn_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-model_33/simple_rnn_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%model_33/simple_rnn_4/strided_slice_1StridedSlice&model_33/simple_rnn_4/Shape_1:output:04model_33/simple_rnn_4/strided_slice_1/stack:output:06model_33/simple_rnn_4/strided_slice_1/stack_1:output:06model_33/simple_rnn_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask|
1model_33/simple_rnn_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
#model_33/simple_rnn_4/TensorArrayV2TensorListReserve:model_33/simple_rnn_4/TensorArrayV2/element_shape:output:0.model_33/simple_rnn_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Kmodel_33/simple_rnn_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
=model_33/simple_rnn_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#model_33/simple_rnn_4/transpose:y:0Tmodel_33/simple_rnn_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���u
+model_33/simple_rnn_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: w
-model_33/simple_rnn_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:w
-model_33/simple_rnn_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%model_33/simple_rnn_4/strided_slice_2StridedSlice#model_33/simple_rnn_4/transpose:y:04model_33/simple_rnn_4/strided_slice_2/stack:output:06model_33/simple_rnn_4/strided_slice_2/stack_1:output:06model_33/simple_rnn_4/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������P*
shrink_axis_mask�
7model_33/simple_rnn_4/simple_rnn_cell_4/ones_like/ShapeShape.model_33/simple_rnn_4/strided_slice_2:output:0*
T0*
_output_shapes
:|
7model_33/simple_rnn_4/simple_rnn_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
1model_33/simple_rnn_4/simple_rnn_cell_4/ones_likeFill@model_33/simple_rnn_4/simple_rnn_cell_4/ones_like/Shape:output:0@model_33/simple_rnn_4/simple_rnn_cell_4/ones_like/Const:output:0*
T0*'
_output_shapes
:���������P�
+model_33/simple_rnn_4/simple_rnn_cell_4/mulMul.model_33/simple_rnn_4/strided_slice_2:output:0:model_33/simple_rnn_4/simple_rnn_cell_4/ones_like:output:0*
T0*'
_output_shapes
:���������P�
=model_33/simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpFmodel_33_simple_rnn_4_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0�
.model_33/simple_rnn_4/simple_rnn_cell_4/MatMulMatMul/model_33/simple_rnn_4/simple_rnn_cell_4/mul:z:0Emodel_33/simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
>model_33/simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpGmodel_33_simple_rnn_4_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
/model_33/simple_rnn_4/simple_rnn_cell_4/BiasAddBiasAdd8model_33/simple_rnn_4/simple_rnn_cell_4/MatMul:product:0Fmodel_33/simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
?model_33/simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpHmodel_33_simple_rnn_4_simple_rnn_cell_4_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
0model_33/simple_rnn_4/simple_rnn_cell_4/MatMul_1MatMul$model_33/simple_rnn_4/zeros:output:0Gmodel_33/simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
+model_33/simple_rnn_4/simple_rnn_cell_4/addAddV28model_33/simple_rnn_4/simple_rnn_cell_4/BiasAdd:output:0:model_33/simple_rnn_4/simple_rnn_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
,model_33/simple_rnn_4/simple_rnn_cell_4/TanhTanh/model_33/simple_rnn_4/simple_rnn_cell_4/add:z:0*
T0*(
_output_shapes
:�����������
3model_33/simple_rnn_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  t
2model_33/simple_rnn_4/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
%model_33/simple_rnn_4/TensorArrayV2_1TensorListReserve<model_33/simple_rnn_4/TensorArrayV2_1/element_shape:output:0;model_33/simple_rnn_4/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���\
model_33/simple_rnn_4/timeConst*
_output_shapes
: *
dtype0*
value	B : y
.model_33/simple_rnn_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������j
(model_33/simple_rnn_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
model_33/simple_rnn_4/whileWhile1model_33/simple_rnn_4/while/loop_counter:output:07model_33/simple_rnn_4/while/maximum_iterations:output:0#model_33/simple_rnn_4/time:output:0.model_33/simple_rnn_4/TensorArrayV2_1:handle:0$model_33/simple_rnn_4/zeros:output:0.model_33/simple_rnn_4/strided_slice_1:output:0Mmodel_33/simple_rnn_4/TensorArrayUnstack/TensorListFromTensor:output_handle:0Fmodel_33_simple_rnn_4_simple_rnn_cell_4_matmul_readvariableop_resourceGmodel_33_simple_rnn_4_simple_rnn_cell_4_biasadd_readvariableop_resourceHmodel_33_simple_rnn_4_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *3
body+R)
'model_33_simple_rnn_4_while_body_635554*3
cond+R)
'model_33_simple_rnn_4_while_cond_635553*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
Fmodel_33/simple_rnn_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  �
8model_33/simple_rnn_4/TensorArrayV2Stack/TensorListStackTensorListStack$model_33/simple_rnn_4/while:output:3Omodel_33/simple_rnn_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elements~
+model_33/simple_rnn_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������w
-model_33/simple_rnn_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: w
-model_33/simple_rnn_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
%model_33/simple_rnn_4/strided_slice_3StridedSliceAmodel_33/simple_rnn_4/TensorArrayV2Stack/TensorListStack:tensor:04model_33/simple_rnn_4/strided_slice_3/stack:output:06model_33/simple_rnn_4/strided_slice_3/stack_1:output:06model_33/simple_rnn_4/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask{
&model_33/simple_rnn_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
!model_33/simple_rnn_4/transpose_1	TransposeAmodel_33/simple_rnn_4/TensorArrayV2Stack/TensorListStack:tensor:0/model_33/simple_rnn_4/transpose_1/perm:output:0*
T0*,
_output_shapes
:�����������
(model_33/dense_142/MatMul/ReadVariableOpReadVariableOp1model_33_dense_142_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model_33/dense_142/MatMulMatMul.model_33/simple_rnn_4/strided_slice_3:output:00model_33/dense_142/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)model_33/dense_142/BiasAdd/ReadVariableOpReadVariableOp2model_33_dense_142_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_33/dense_142/BiasAddBiasAdd#model_33/dense_142/MatMul:product:01model_33/dense_142/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(model_33/dense_140/MatMul/ReadVariableOpReadVariableOp1model_33_dense_140_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
model_33/dense_140/MatMulMatMul.model_33/simple_rnn_4/strided_slice_3:output:00model_33/dense_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
)model_33/dense_140/BiasAdd/ReadVariableOpReadVariableOp2model_33_dense_140_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_33/dense_140/BiasAddBiasAdd#model_33/dense_140/MatMul:product:01model_33/dense_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(model_33/dense_143/MatMul/ReadVariableOpReadVariableOp1model_33_dense_143_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
model_33/dense_143/MatMulMatMul#model_33/dense_142/BiasAdd:output:00model_33/dense_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
)model_33/dense_143/BiasAdd/ReadVariableOpReadVariableOp2model_33_dense_143_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
model_33/dense_143/BiasAddBiasAdd#model_33/dense_143/MatMul:product:01model_33/dense_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
(model_33/dense_141/MatMul/ReadVariableOpReadVariableOp1model_33_dense_141_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
model_33/dense_141/MatMulMatMul#model_33/dense_140/BiasAdd:output:00model_33/dense_141/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
)model_33/dense_141/BiasAdd/ReadVariableOpReadVariableOp2model_33_dense_141_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
model_33/dense_141/BiasAddBiasAdd#model_33/dense_141/MatMul:product:01model_33/dense_141/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
%model_33/degree/MatMul/ReadVariableOpReadVariableOp.model_33_degree_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
model_33/degree/MatMulMatMul#model_33/dense_143/BiasAdd:output:0-model_33/degree/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
&model_33/degree/BiasAdd/ReadVariableOpReadVariableOp/model_33_degree_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_33/degree/BiasAddBiasAdd model_33/degree/MatMul:product:0.model_33/degree/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������p
model_33/degree/TanhTanh model_33/degree/BiasAdd:output:0*
T0*'
_output_shapes
:����������
'model_33/distance/MatMul/ReadVariableOpReadVariableOp0model_33_distance_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
model_33/distance/MatMulMatMul#model_33/dense_141/BiasAdd:output:0/model_33/distance/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(model_33/distance/BiasAdd/ReadVariableOpReadVariableOp1model_33_distance_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_33/distance/BiasAddBiasAdd"model_33/distance/MatMul:product:00model_33/distance/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������z
model_33/distance/SigmoidSigmoid"model_33/distance/BiasAdd:output:0*
T0*'
_output_shapes
:���������g
IdentityIdentitymodel_33/degree/Tanh:y:0^NoOp*
T0*'
_output_shapes
:���������n

Identity_1Identitymodel_33/distance/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp'^model_33/degree/BiasAdd/ReadVariableOp&^model_33/degree/MatMul/ReadVariableOp*^model_33/dense_140/BiasAdd/ReadVariableOp)^model_33/dense_140/MatMul/ReadVariableOp*^model_33/dense_141/BiasAdd/ReadVariableOp)^model_33/dense_141/MatMul/ReadVariableOp*^model_33/dense_142/BiasAdd/ReadVariableOp)^model_33/dense_142/MatMul/ReadVariableOp*^model_33/dense_143/BiasAdd/ReadVariableOp)^model_33/dense_143/MatMul/ReadVariableOp)^model_33/distance/BiasAdd/ReadVariableOp(^model_33/distance/MatMul/ReadVariableOp?^model_33/simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp>^model_33/simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp@^model_33/simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp^model_33/simple_rnn_4/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:����������: : : : : : : : : : : : : : : 2P
&model_33/degree/BiasAdd/ReadVariableOp&model_33/degree/BiasAdd/ReadVariableOp2N
%model_33/degree/MatMul/ReadVariableOp%model_33/degree/MatMul/ReadVariableOp2V
)model_33/dense_140/BiasAdd/ReadVariableOp)model_33/dense_140/BiasAdd/ReadVariableOp2T
(model_33/dense_140/MatMul/ReadVariableOp(model_33/dense_140/MatMul/ReadVariableOp2V
)model_33/dense_141/BiasAdd/ReadVariableOp)model_33/dense_141/BiasAdd/ReadVariableOp2T
(model_33/dense_141/MatMul/ReadVariableOp(model_33/dense_141/MatMul/ReadVariableOp2V
)model_33/dense_142/BiasAdd/ReadVariableOp)model_33/dense_142/BiasAdd/ReadVariableOp2T
(model_33/dense_142/MatMul/ReadVariableOp(model_33/dense_142/MatMul/ReadVariableOp2V
)model_33/dense_143/BiasAdd/ReadVariableOp)model_33/dense_143/BiasAdd/ReadVariableOp2T
(model_33/dense_143/MatMul/ReadVariableOp(model_33/dense_143/MatMul/ReadVariableOp2T
(model_33/distance/BiasAdd/ReadVariableOp(model_33/distance/BiasAdd/ReadVariableOp2R
'model_33/distance/MatMul/ReadVariableOp'model_33/distance/MatMul/ReadVariableOp2�
>model_33/simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp>model_33/simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp2~
=model_33/simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp=model_33/simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp2�
?model_33/simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp?model_33/simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp2:
model_33/simple_rnn_4/whilemodel_33/simple_rnn_4/while:S O
,
_output_shapes
:����������

_user_specified_nameinput
�
�
'model_33_simple_rnn_4_while_cond_635553H
Dmodel_33_simple_rnn_4_while_model_33_simple_rnn_4_while_loop_counterN
Jmodel_33_simple_rnn_4_while_model_33_simple_rnn_4_while_maximum_iterations+
'model_33_simple_rnn_4_while_placeholder-
)model_33_simple_rnn_4_while_placeholder_1-
)model_33_simple_rnn_4_while_placeholder_2J
Fmodel_33_simple_rnn_4_while_less_model_33_simple_rnn_4_strided_slice_1`
\model_33_simple_rnn_4_while_model_33_simple_rnn_4_while_cond_635553___redundant_placeholder0`
\model_33_simple_rnn_4_while_model_33_simple_rnn_4_while_cond_635553___redundant_placeholder1`
\model_33_simple_rnn_4_while_model_33_simple_rnn_4_while_cond_635553___redundant_placeholder2`
\model_33_simple_rnn_4_while_model_33_simple_rnn_4_while_cond_635553___redundant_placeholder3(
$model_33_simple_rnn_4_while_identity
�
 model_33/simple_rnn_4/while/LessLess'model_33_simple_rnn_4_while_placeholderFmodel_33_simple_rnn_4_while_less_model_33_simple_rnn_4_strided_slice_1*
T0*
_output_shapes
: w
$model_33/simple_rnn_4/while/IdentityIdentity$model_33/simple_rnn_4/while/Less:z:0*
T0
*
_output_shapes
: "U
$model_33_simple_rnn_4_while_identity-model_33/simple_rnn_4/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�$
�
M__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_635868

inputs

states1
matmul_readvariableop_resource:	P�.
biasadd_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:���������PR
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?p
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*'
_output_shapes
:���������PO
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*'
_output_shapes
:���������P*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������Po
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������Pi
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*'
_output_shapes
:���������PW
mulMulinputsdropout/Mul_1:z:0*
T0*'
_output_shapes
:���������Pu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0k
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:����������H
TanhTanhadd:z:0*
T0*(
_output_shapes
:�����������
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0�
8simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SquareSquareOsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P��
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SumSum<simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square:y:0@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mulMul@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/x:output:0>simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:����������Z

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOpH^simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������P:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpGsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������P
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_namestates
�<
�
while_body_638002
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:	P�H
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:	�N
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_4_matmul_readvariableop_resource:	P�F
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:	�L
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:
����.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_4/MatMul/ReadVariableOp�/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������P*
element_dtype0�
'while/simple_rnn_cell_4/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:l
'while/simple_rnn_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!while/simple_rnn_cell_4/ones_likeFill0while/simple_rnn_cell_4/ones_like/Shape:output:00while/simple_rnn_cell_4/ones_like/Const:output:0*
T0*'
_output_shapes
:���������Pj
%while/simple_rnn_cell_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
#while/simple_rnn_cell_4/dropout/MulMul*while/simple_rnn_cell_4/ones_like:output:0.while/simple_rnn_cell_4/dropout/Const:output:0*
T0*'
_output_shapes
:���������P
%while/simple_rnn_cell_4/dropout/ShapeShape*while/simple_rnn_cell_4/ones_like:output:0*
T0*
_output_shapes
:�
<while/simple_rnn_cell_4/dropout/random_uniform/RandomUniformRandomUniform.while/simple_rnn_cell_4/dropout/Shape:output:0*
T0*'
_output_shapes
:���������P*
dtype0*

seeds
.while/simple_rnn_cell_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
,while/simple_rnn_cell_4/dropout/GreaterEqualGreaterEqualEwhile/simple_rnn_cell_4/dropout/random_uniform/RandomUniform:output:07while/simple_rnn_cell_4/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������P�
$while/simple_rnn_cell_4/dropout/CastCast0while/simple_rnn_cell_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������P�
%while/simple_rnn_cell_4/dropout/Mul_1Mul'while/simple_rnn_cell_4/dropout/Mul:z:0(while/simple_rnn_cell_4/dropout/Cast:y:0*
T0*'
_output_shapes
:���������P�
while/simple_rnn_cell_4/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/simple_rnn_cell_4/dropout/Mul_1:z:0*
T0*'
_output_shapes
:���������P�
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	P�*
dtype0�
while/simple_rnn_cell_4/MatMulMatMulwhile/simple_rnn_cell_4/mul:z:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:����������x
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*(
_output_shapes
:����������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0 while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�2
�
while_body_637606
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:	P�H
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:	�N
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_4_matmul_readvariableop_resource:	P�F
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:	�L
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:
����.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_4/MatMul/ReadVariableOp�/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������P*
element_dtype0�
'while/simple_rnn_cell_4/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:l
'while/simple_rnn_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!while/simple_rnn_cell_4/ones_likeFill0while/simple_rnn_cell_4/ones_like/Shape:output:00while/simple_rnn_cell_4/ones_like/Const:output:0*
T0*'
_output_shapes
:���������P�
while/simple_rnn_cell_4/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0*while/simple_rnn_cell_4/ones_like:output:0*
T0*'
_output_shapes
:���������P�
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	P�*
dtype0�
while/simple_rnn_cell_4/MatMulMatMulwhile/simple_rnn_cell_4/mul:z:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:����������x
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*(
_output_shapes
:����������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0 while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
)__inference_model_33_layer_call_fn_636344	
input
unknown:	P�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
	unknown_4:	�
	unknown_5:
	unknown_6:

	unknown_7:

	unknown_8:

	unknown_9:


unknown_10:


unknown_11:

unknown_12:


unknown_13:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*1
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_model_33_layer_call_and_return_conditional_losses_636309o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:����������: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:����������

_user_specified_nameinput
�X
�	
D__inference_model_33_layer_call_and_return_conditional_losses_636309

inputs&
simple_rnn_4_636148:	P�"
simple_rnn_4_636150:	�'
simple_rnn_4_636152:
��#
dense_142_636172:	�
dense_142_636174:#
dense_140_636194:	�
dense_140_636196:"
dense_143_636216:

dense_143_636218:
"
dense_141_636238:

dense_141_636240:

degree_636255:

degree_636257:!
distance_636272:

distance_636274:
identity

identity_1��degree/StatefulPartitionedCall�!dense_140/StatefulPartitionedCall�2dense_140/kernel/Regularizer/Square/ReadVariableOp�!dense_141/StatefulPartitionedCall�2dense_141/kernel/Regularizer/Square/ReadVariableOp�!dense_142/StatefulPartitionedCall�2dense_142/kernel/Regularizer/Square/ReadVariableOp�!dense_143/StatefulPartitionedCall�2dense_143/kernel/Regularizer/Square/ReadVariableOp� distance/StatefulPartitionedCall�$simple_rnn_4/StatefulPartitionedCall�Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp}
(tf.compat.v1.transpose_29/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#tf.compat.v1.transpose_29/transpose	Transposeinputs1tf.compat.v1.transpose_29/transpose/perm:output:0*
T0*,
_output_shapes
:�����������
reshape_40/PartitionedCallPartitionedCall'tf.compat.v1.transpose_29/transpose:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_reshape_40_layer_call_and_return_conditional_losses_636022�
$simple_rnn_4/StatefulPartitionedCallStatefulPartitionedCall#reshape_40/PartitionedCall:output:0simple_rnn_4_636148simple_rnn_4_636150simple_rnn_4_636152*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_636147�
!dense_142/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_4/StatefulPartitionedCall:output:0dense_142_636172dense_142_636174*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_142_layer_call_and_return_conditional_losses_636171�
!dense_140/StatefulPartitionedCallStatefulPartitionedCall-simple_rnn_4/StatefulPartitionedCall:output:0dense_140_636194dense_140_636196*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_140_layer_call_and_return_conditional_losses_636193�
!dense_143/StatefulPartitionedCallStatefulPartitionedCall*dense_142/StatefulPartitionedCall:output:0dense_143_636216dense_143_636218*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_143_layer_call_and_return_conditional_losses_636215�
!dense_141/StatefulPartitionedCallStatefulPartitionedCall*dense_140/StatefulPartitionedCall:output:0dense_141_636238dense_141_636240*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_141_layer_call_and_return_conditional_losses_636237�
degree/StatefulPartitionedCallStatefulPartitionedCall*dense_143/StatefulPartitionedCall:output:0degree_636255degree_636257*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_degree_layer_call_and_return_conditional_losses_636254�
 distance/StatefulPartitionedCallStatefulPartitionedCall*dense_141/StatefulPartitionedCall:output:0distance_636272distance_636274*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_distance_layer_call_and_return_conditional_losses_636271�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_4_636148*
_output_shapes
:	P�*
dtype0�
8simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SquareSquareOsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P��
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SumSum<simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square:y:0@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mulMul@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/x:output:0>simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_140/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_140_636194*
_output_shapes
:	�*
dtype0�
#dense_140/kernel/Regularizer/SquareSquare:dense_140/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�s
"dense_140/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_140/kernel/Regularizer/SumSum'dense_140/kernel/Regularizer/Square:y:0+dense_140/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_140/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_140/kernel/Regularizer/mulMul+dense_140/kernel/Regularizer/mul/x:output:0)dense_140/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_142/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_142_636172*
_output_shapes
:	�*
dtype0�
#dense_142/kernel/Regularizer/SquareSquare:dense_142/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�s
"dense_142/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_142/kernel/Regularizer/SumSum'dense_142/kernel/Regularizer/Square:y:0+dense_142/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_142/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_142/kernel/Regularizer/mulMul+dense_142/kernel/Regularizer/mul/x:output:0)dense_142/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_141/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_141_636238*
_output_shapes

:
*
dtype0�
#dense_141/kernel/Regularizer/SquareSquare:dense_141/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
s
"dense_141/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_141/kernel/Regularizer/SumSum'dense_141/kernel/Regularizer/Square:y:0+dense_141/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_141/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_141/kernel/Regularizer/mulMul+dense_141/kernel/Regularizer/mul/x:output:0)dense_141/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_143/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_143_636216*
_output_shapes

:
*
dtype0�
#dense_143/kernel/Regularizer/SquareSquare:dense_143/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
s
"dense_143/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_143/kernel/Regularizer/SumSum'dense_143/kernel/Regularizer/Square:y:0+dense_143/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_143/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_143/kernel/Regularizer/mulMul+dense_143/kernel/Regularizer/mul/x:output:0)dense_143/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)distance/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������x

Identity_1Identity'degree/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^degree/StatefulPartitionedCall"^dense_140/StatefulPartitionedCall3^dense_140/kernel/Regularizer/Square/ReadVariableOp"^dense_141/StatefulPartitionedCall3^dense_141/kernel/Regularizer/Square/ReadVariableOp"^dense_142/StatefulPartitionedCall3^dense_142/kernel/Regularizer/Square/ReadVariableOp"^dense_143/StatefulPartitionedCall3^dense_143/kernel/Regularizer/Square/ReadVariableOp!^distance/StatefulPartitionedCall%^simple_rnn_4/StatefulPartitionedCallH^simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:����������: : : : : : : : : : : : : : : 2@
degree/StatefulPartitionedCalldegree/StatefulPartitionedCall2F
!dense_140/StatefulPartitionedCall!dense_140/StatefulPartitionedCall2h
2dense_140/kernel/Regularizer/Square/ReadVariableOp2dense_140/kernel/Regularizer/Square/ReadVariableOp2F
!dense_141/StatefulPartitionedCall!dense_141/StatefulPartitionedCall2h
2dense_141/kernel/Regularizer/Square/ReadVariableOp2dense_141/kernel/Regularizer/Square/ReadVariableOp2F
!dense_142/StatefulPartitionedCall!dense_142/StatefulPartitionedCall2h
2dense_142/kernel/Regularizer/Square/ReadVariableOp2dense_142/kernel/Regularizer/Square/ReadVariableOp2F
!dense_143/StatefulPartitionedCall!dense_143/StatefulPartitionedCall2h
2dense_143/kernel/Regularizer/Square/ReadVariableOp2dense_143/kernel/Regularizer/Square/ReadVariableOp2D
 distance/StatefulPartitionedCall distance/StatefulPartitionedCall2L
$simple_rnn_4/StatefulPartitionedCall$simple_rnn_4/StatefulPartitionedCall2�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpGsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_distance_layer_call_fn_638202

inputs
unknown:

	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_distance_layer_call_and_return_conditional_losses_636271o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�?
�
simple_rnn_4_while_body_6371436
2simple_rnn_4_while_simple_rnn_4_while_loop_counter<
8simple_rnn_4_while_simple_rnn_4_while_maximum_iterations"
simple_rnn_4_while_placeholder$
 simple_rnn_4_while_placeholder_1$
 simple_rnn_4_while_placeholder_25
1simple_rnn_4_while_simple_rnn_4_strided_slice_1_0q
msimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0X
Esimple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:	P�U
Fsimple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:	�[
Gsimple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:
��
simple_rnn_4_while_identity!
simple_rnn_4_while_identity_1!
simple_rnn_4_while_identity_2!
simple_rnn_4_while_identity_3!
simple_rnn_4_while_identity_43
/simple_rnn_4_while_simple_rnn_4_strided_slice_1o
ksimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensorV
Csimple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource:	P�S
Dsimple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource:	�Y
Esimple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:
����;simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp�:simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp�<simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp�
Dsimple_rnn_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
6simple_rnn_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmsimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0simple_rnn_4_while_placeholderMsimple_rnn_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������P*
element_dtype0�
4simple_rnn_4/while/simple_rnn_cell_4/ones_like/ShapeShape=simple_rnn_4/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:y
4simple_rnn_4/while/simple_rnn_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
.simple_rnn_4/while/simple_rnn_cell_4/ones_likeFill=simple_rnn_4/while/simple_rnn_cell_4/ones_like/Shape:output:0=simple_rnn_4/while/simple_rnn_cell_4/ones_like/Const:output:0*
T0*'
_output_shapes
:���������P�
(simple_rnn_4/while/simple_rnn_cell_4/mulMul=simple_rnn_4/while/TensorArrayV2Read/TensorListGetItem:item:07simple_rnn_4/while/simple_rnn_cell_4/ones_like:output:0*
T0*'
_output_shapes
:���������P�
:simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpEsimple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	P�*
dtype0�
+simple_rnn_4/while/simple_rnn_cell_4/MatMulMatMul,simple_rnn_4/while/simple_rnn_cell_4/mul:z:0Bsimple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
;simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpFsimple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
,simple_rnn_4/while/simple_rnn_cell_4/BiasAddBiasAdd5simple_rnn_4/while/simple_rnn_cell_4/MatMul:product:0Csimple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
<simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpGsimple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
-simple_rnn_4/while/simple_rnn_cell_4/MatMul_1MatMul simple_rnn_4_while_placeholder_2Dsimple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(simple_rnn_4/while/simple_rnn_cell_4/addAddV25simple_rnn_4/while/simple_rnn_cell_4/BiasAdd:output:07simple_rnn_4/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
)simple_rnn_4/while/simple_rnn_cell_4/TanhTanh,simple_rnn_4/while/simple_rnn_cell_4/add:z:0*
T0*(
_output_shapes
:����������
=simple_rnn_4/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
7simple_rnn_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem simple_rnn_4_while_placeholder_1Fsimple_rnn_4/while/TensorArrayV2Write/TensorListSetItem/index:output:0-simple_rnn_4/while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:���Z
simple_rnn_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_4/while/addAddV2simple_rnn_4_while_placeholder!simple_rnn_4/while/add/y:output:0*
T0*
_output_shapes
: \
simple_rnn_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_4/while/add_1AddV22simple_rnn_4_while_simple_rnn_4_while_loop_counter#simple_rnn_4/while/add_1/y:output:0*
T0*
_output_shapes
: �
simple_rnn_4/while/IdentityIdentitysimple_rnn_4/while/add_1:z:0^simple_rnn_4/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_4/while/Identity_1Identity8simple_rnn_4_while_simple_rnn_4_while_maximum_iterations^simple_rnn_4/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_4/while/Identity_2Identitysimple_rnn_4/while/add:z:0^simple_rnn_4/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_4/while/Identity_3IdentityGsimple_rnn_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^simple_rnn_4/while/NoOp*
T0*
_output_shapes
: �
simple_rnn_4/while/Identity_4Identity-simple_rnn_4/while/simple_rnn_cell_4/Tanh:y:0^simple_rnn_4/while/NoOp*
T0*(
_output_shapes
:�����������
simple_rnn_4/while/NoOpNoOp<^simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp;^simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp=^simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "C
simple_rnn_4_while_identity$simple_rnn_4/while/Identity:output:0"G
simple_rnn_4_while_identity_1&simple_rnn_4/while/Identity_1:output:0"G
simple_rnn_4_while_identity_2&simple_rnn_4/while/Identity_2:output:0"G
simple_rnn_4_while_identity_3&simple_rnn_4/while/Identity_3:output:0"G
simple_rnn_4_while_identity_4&simple_rnn_4/while/Identity_4:output:0"d
/simple_rnn_4_while_simple_rnn_4_strided_slice_11simple_rnn_4_while_simple_rnn_4_strided_slice_1_0"�
Dsimple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resourceFsimple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"�
Esimple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resourceGsimple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"�
Csimple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resourceEsimple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"�
ksimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensormsimple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2z
;simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp;simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2x
:simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp:simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp2|
<simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp<simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�W
�
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_638087

inputsC
0simple_rnn_cell_4_matmul_readvariableop_resource:	P�@
1simple_rnn_cell_4_biasadd_readvariableop_resource:	�F
2simple_rnn_cell_4_matmul_1_readvariableop_resource:
��
identity��Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp�(simple_rnn_cell_4/BiasAdd/ReadVariableOp�'simple_rnn_cell_4/MatMul/ReadVariableOp�)simple_rnn_cell_4/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d���������PD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������P*
shrink_axis_maski
!simple_rnn_cell_4/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:f
!simple_rnn_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
simple_rnn_cell_4/ones_likeFill*simple_rnn_cell_4/ones_like/Shape:output:0*simple_rnn_cell_4/ones_like/Const:output:0*
T0*'
_output_shapes
:���������Pd
simple_rnn_cell_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
simple_rnn_cell_4/dropout/MulMul$simple_rnn_cell_4/ones_like:output:0(simple_rnn_cell_4/dropout/Const:output:0*
T0*'
_output_shapes
:���������Ps
simple_rnn_cell_4/dropout/ShapeShape$simple_rnn_cell_4/ones_like:output:0*
T0*
_output_shapes
:�
6simple_rnn_cell_4/dropout/random_uniform/RandomUniformRandomUniform(simple_rnn_cell_4/dropout/Shape:output:0*
T0*'
_output_shapes
:���������P*
dtype0*

seedm
(simple_rnn_cell_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
&simple_rnn_cell_4/dropout/GreaterEqualGreaterEqual?simple_rnn_cell_4/dropout/random_uniform/RandomUniform:output:01simple_rnn_cell_4/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������P�
simple_rnn_cell_4/dropout/CastCast*simple_rnn_cell_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������P�
simple_rnn_cell_4/dropout/Mul_1Mul!simple_rnn_cell_4/dropout/Mul:z:0"simple_rnn_cell_4/dropout/Cast:y:0*
T0*'
_output_shapes
:���������P�
simple_rnn_cell_4/mulMulstrided_slice_2:output:0#simple_rnn_cell_4/dropout/Mul_1:z:0*
T0*'
_output_shapes
:���������P�
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0�
simple_rnn_cell_4/MatMulMatMulsimple_rnn_cell_4/mul:z:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:����������l
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_638002*
condR
while_cond_638001*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:�����������
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0�
8simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SquareSquareOsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P��
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SumSum<simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square:y:0@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mulMul@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/x:output:0>simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOpH^simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������dP: : : 2�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpGsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�
�
E__inference_dense_142_layer_call_and_return_conditional_losses_636171

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2dense_142/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2dense_142/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
#dense_142/kernel/Regularizer/SquareSquare:dense_142/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�s
"dense_142/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_142/kernel/Regularizer/SumSum'dense_142/kernel/Regularizer/Square:y:0+dense_142/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_142/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_142/kernel/Regularizer/mulMul+dense_142/kernel/Regularizer/mul/x:output:0)dense_142/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_142/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_142/kernel/Regularizer/Square/ReadVariableOp2dense_142/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
��
�$
"__inference__traced_restore_638766
file_prefix4
!assignvariableop_dense_140_kernel:	�/
!assignvariableop_1_dense_140_bias:6
#assignvariableop_2_dense_142_kernel:	�/
!assignvariableop_3_dense_142_bias:5
#assignvariableop_4_dense_141_kernel:
/
!assignvariableop_5_dense_141_bias:
5
#assignvariableop_6_dense_143_kernel:
/
!assignvariableop_7_dense_143_bias:
4
"assignvariableop_8_distance_kernel:
.
 assignvariableop_9_distance_bias:3
!assignvariableop_10_degree_kernel:
-
assignvariableop_11_degree_bias:L
9assignvariableop_12_simple_rnn_4_simple_rnn_cell_4_kernel:	P�W
Cassignvariableop_13_simple_rnn_4_simple_rnn_cell_4_recurrent_kernel:
��F
7assignvariableop_14_simple_rnn_4_simple_rnn_cell_4_bias:	�'
assignvariableop_15_adam_iter:	 )
assignvariableop_16_adam_beta_1: )
assignvariableop_17_adam_beta_2: (
assignvariableop_18_adam_decay: %
assignvariableop_19_total_4: %
assignvariableop_20_count_4: %
assignvariableop_21_total_3: %
assignvariableop_22_count_3: %
assignvariableop_23_total_2: %
assignvariableop_24_count_2: %
assignvariableop_25_total_1: %
assignvariableop_26_count_1: #
assignvariableop_27_total: #
assignvariableop_28_count: >
+assignvariableop_29_adam_dense_140_kernel_m:	�7
)assignvariableop_30_adam_dense_140_bias_m:>
+assignvariableop_31_adam_dense_142_kernel_m:	�7
)assignvariableop_32_adam_dense_142_bias_m:=
+assignvariableop_33_adam_dense_141_kernel_m:
7
)assignvariableop_34_adam_dense_141_bias_m:
=
+assignvariableop_35_adam_dense_143_kernel_m:
7
)assignvariableop_36_adam_dense_143_bias_m:
<
*assignvariableop_37_adam_distance_kernel_m:
6
(assignvariableop_38_adam_distance_bias_m::
(assignvariableop_39_adam_degree_kernel_m:
4
&assignvariableop_40_adam_degree_bias_m:S
@assignvariableop_41_adam_simple_rnn_4_simple_rnn_cell_4_kernel_m:	P�^
Jassignvariableop_42_adam_simple_rnn_4_simple_rnn_cell_4_recurrent_kernel_m:
��M
>assignvariableop_43_adam_simple_rnn_4_simple_rnn_cell_4_bias_m:	�>
+assignvariableop_44_adam_dense_140_kernel_v:	�7
)assignvariableop_45_adam_dense_140_bias_v:>
+assignvariableop_46_adam_dense_142_kernel_v:	�7
)assignvariableop_47_adam_dense_142_bias_v:=
+assignvariableop_48_adam_dense_141_kernel_v:
7
)assignvariableop_49_adam_dense_141_bias_v:
=
+assignvariableop_50_adam_dense_143_kernel_v:
7
)assignvariableop_51_adam_dense_143_bias_v:
<
*assignvariableop_52_adam_distance_kernel_v:
6
(assignvariableop_53_adam_distance_bias_v::
(assignvariableop_54_adam_degree_kernel_v:
4
&assignvariableop_55_adam_degree_bias_v:S
@assignvariableop_56_adam_simple_rnn_4_simple_rnn_cell_4_kernel_v:	P�^
Jassignvariableop_57_adam_simple_rnn_4_simple_rnn_cell_4_recurrent_kernel_v:
��M
>assignvariableop_58_adam_simple_rnn_4_simple_rnn_cell_4_bias_v:	�
identity_60��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*�
value�B�<B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:<*
dtype0*�
value�B�<B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*J
dtypes@
>2<	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp!assignvariableop_dense_140_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp!assignvariableop_1_dense_140_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_142_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_142_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_141_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_141_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_143_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_143_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_distance_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_distance_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp!assignvariableop_10_degree_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpassignvariableop_11_degree_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp9assignvariableop_12_simple_rnn_4_simple_rnn_cell_4_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpCassignvariableop_13_simple_rnn_4_simple_rnn_cell_4_recurrent_kernelIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp7assignvariableop_14_simple_rnn_4_simple_rnn_cell_4_biasIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_iterIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_1Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_2Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_decayIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_total_4Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_count_4Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_3Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_3Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_2Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_2Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_totalIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_countIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp+assignvariableop_29_adam_dense_140_kernel_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp)assignvariableop_30_adam_dense_140_bias_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_dense_142_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_dense_142_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_dense_141_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_dense_141_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_dense_143_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_dense_143_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp*assignvariableop_37_adam_distance_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp(assignvariableop_38_adam_distance_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_degree_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp&assignvariableop_40_adam_degree_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp@assignvariableop_41_adam_simple_rnn_4_simple_rnn_cell_4_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOpJassignvariableop_42_adam_simple_rnn_4_simple_rnn_cell_4_recurrent_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp>assignvariableop_43_adam_simple_rnn_4_simple_rnn_cell_4_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp+assignvariableop_44_adam_dense_140_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp)assignvariableop_45_adam_dense_140_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp+assignvariableop_46_adam_dense_142_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp)assignvariableop_47_adam_dense_142_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp+assignvariableop_48_adam_dense_141_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_dense_141_bias_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp+assignvariableop_50_adam_dense_143_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_dense_143_bias_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp*assignvariableop_52_adam_distance_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp(assignvariableop_53_adam_distance_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp(assignvariableop_54_adam_degree_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp&assignvariableop_55_adam_degree_bias_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp@assignvariableop_56_adam_simple_rnn_4_simple_rnn_cell_4_kernel_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOpJassignvariableop_57_adam_simple_rnn_4_simple_rnn_cell_4_recurrent_kernel_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp>assignvariableop_58_adam_simple_rnn_4_simple_rnn_cell_4_bias_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �

Identity_59Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_60IdentityIdentity_59:output:0^NoOp_1*
T0*
_output_shapes
: �

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_60Identity_60:output:0*�
_input_shapesz
x: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
AssignVariableOpAssignVariableOp2(
AssignVariableOp_1AssignVariableOp_12*
AssignVariableOp_10AssignVariableOp_102*
AssignVariableOp_11AssignVariableOp_112*
AssignVariableOp_12AssignVariableOp_122*
AssignVariableOp_13AssignVariableOp_132*
AssignVariableOp_14AssignVariableOp_142*
AssignVariableOp_15AssignVariableOp_152*
AssignVariableOp_16AssignVariableOp_162*
AssignVariableOp_17AssignVariableOp_172*
AssignVariableOp_18AssignVariableOp_182*
AssignVariableOp_19AssignVariableOp_192(
AssignVariableOp_2AssignVariableOp_22*
AssignVariableOp_20AssignVariableOp_202*
AssignVariableOp_21AssignVariableOp_212*
AssignVariableOp_22AssignVariableOp_222*
AssignVariableOp_23AssignVariableOp_232*
AssignVariableOp_24AssignVariableOp_242*
AssignVariableOp_25AssignVariableOp_252*
AssignVariableOp_26AssignVariableOp_262*
AssignVariableOp_27AssignVariableOp_272*
AssignVariableOp_28AssignVariableOp_282*
AssignVariableOp_29AssignVariableOp_292(
AssignVariableOp_3AssignVariableOp_32*
AssignVariableOp_30AssignVariableOp_302*
AssignVariableOp_31AssignVariableOp_312*
AssignVariableOp_32AssignVariableOp_322*
AssignVariableOp_33AssignVariableOp_332*
AssignVariableOp_34AssignVariableOp_342*
AssignVariableOp_35AssignVariableOp_352*
AssignVariableOp_36AssignVariableOp_362*
AssignVariableOp_37AssignVariableOp_372*
AssignVariableOp_38AssignVariableOp_382*
AssignVariableOp_39AssignVariableOp_392(
AssignVariableOp_4AssignVariableOp_42*
AssignVariableOp_40AssignVariableOp_402*
AssignVariableOp_41AssignVariableOp_412*
AssignVariableOp_42AssignVariableOp_422*
AssignVariableOp_43AssignVariableOp_432*
AssignVariableOp_44AssignVariableOp_442*
AssignVariableOp_45AssignVariableOp_452*
AssignVariableOp_46AssignVariableOp_462*
AssignVariableOp_47AssignVariableOp_472*
AssignVariableOp_48AssignVariableOp_482*
AssignVariableOp_49AssignVariableOp_492(
AssignVariableOp_5AssignVariableOp_52*
AssignVariableOp_50AssignVariableOp_502*
AssignVariableOp_51AssignVariableOp_512*
AssignVariableOp_52AssignVariableOp_522*
AssignVariableOp_53AssignVariableOp_532*
AssignVariableOp_54AssignVariableOp_542*
AssignVariableOp_55AssignVariableOp_552*
AssignVariableOp_56AssignVariableOp_562*
AssignVariableOp_57AssignVariableOp_572*
AssignVariableOp_58AssignVariableOp_582(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
while_cond_635920
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_635920___redundant_placeholder04
0while_while_cond_635920___redundant_placeholder14
0while_while_cond_635920___redundant_placeholder24
0while_while_cond_635920___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�

�
simple_rnn_4_while_cond_6371426
2simple_rnn_4_while_simple_rnn_4_while_loop_counter<
8simple_rnn_4_while_simple_rnn_4_while_maximum_iterations"
simple_rnn_4_while_placeholder$
 simple_rnn_4_while_placeholder_1$
 simple_rnn_4_while_placeholder_28
4simple_rnn_4_while_less_simple_rnn_4_strided_slice_1N
Jsimple_rnn_4_while_simple_rnn_4_while_cond_637142___redundant_placeholder0N
Jsimple_rnn_4_while_simple_rnn_4_while_cond_637142___redundant_placeholder1N
Jsimple_rnn_4_while_simple_rnn_4_while_cond_637142___redundant_placeholder2N
Jsimple_rnn_4_while_simple_rnn_4_while_cond_637142___redundant_placeholder3
simple_rnn_4_while_identity
�
simple_rnn_4/while/LessLesssimple_rnn_4_while_placeholder4simple_rnn_4_while_less_simple_rnn_4_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_4/while/IdentityIdentitysimple_rnn_4/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_4_while_identity$simple_rnn_4/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
*__inference_dense_143_layer_call_fn_638177

inputs
unknown:

	unknown_0:

identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_143_layer_call_and_return_conditional_losses_636215o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
��
�
D__inference_model_33_layer_call_and_return_conditional_losses_637283

inputsP
=simple_rnn_4_simple_rnn_cell_4_matmul_readvariableop_resource:	P�M
>simple_rnn_4_simple_rnn_cell_4_biasadd_readvariableop_resource:	�S
?simple_rnn_4_simple_rnn_cell_4_matmul_1_readvariableop_resource:
��;
(dense_142_matmul_readvariableop_resource:	�7
)dense_142_biasadd_readvariableop_resource:;
(dense_140_matmul_readvariableop_resource:	�7
)dense_140_biasadd_readvariableop_resource::
(dense_143_matmul_readvariableop_resource:
7
)dense_143_biasadd_readvariableop_resource:
:
(dense_141_matmul_readvariableop_resource:
7
)dense_141_biasadd_readvariableop_resource:
7
%degree_matmul_readvariableop_resource:
4
&degree_biasadd_readvariableop_resource:9
'distance_matmul_readvariableop_resource:
6
(distance_biasadd_readvariableop_resource:
identity

identity_1��degree/BiasAdd/ReadVariableOp�degree/MatMul/ReadVariableOp� dense_140/BiasAdd/ReadVariableOp�dense_140/MatMul/ReadVariableOp�2dense_140/kernel/Regularizer/Square/ReadVariableOp� dense_141/BiasAdd/ReadVariableOp�dense_141/MatMul/ReadVariableOp�2dense_141/kernel/Regularizer/Square/ReadVariableOp� dense_142/BiasAdd/ReadVariableOp�dense_142/MatMul/ReadVariableOp�2dense_142/kernel/Regularizer/Square/ReadVariableOp� dense_143/BiasAdd/ReadVariableOp�dense_143/MatMul/ReadVariableOp�2dense_143/kernel/Regularizer/Square/ReadVariableOp�distance/BiasAdd/ReadVariableOp�distance/MatMul/ReadVariableOp�5simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp�4simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp�6simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp�Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp�simple_rnn_4/while}
(tf.compat.v1.transpose_29/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
#tf.compat.v1.transpose_29/transpose	Transposeinputs1tf.compat.v1.transpose_29/transpose/perm:output:0*
T0*,
_output_shapes
:����������g
reshape_40/ShapeShape'tf.compat.v1.transpose_29/transpose:y:0*
T0*
_output_shapes
:h
reshape_40/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_40/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_40/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_40/strided_sliceStridedSlicereshape_40/Shape:output:0'reshape_40/strided_slice/stack:output:0)reshape_40/strided_slice/stack_1:output:0)reshape_40/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_40/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :d\
reshape_40/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :P�
reshape_40/Reshape/shapePack!reshape_40/strided_slice:output:0#reshape_40/Reshape/shape/1:output:0#reshape_40/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:�
reshape_40/ReshapeReshape'tf.compat.v1.transpose_29/transpose:y:0!reshape_40/Reshape/shape:output:0*
T0*+
_output_shapes
:���������dP]
simple_rnn_4/ShapeShapereshape_40/Reshape:output:0*
T0*
_output_shapes
:j
 simple_rnn_4/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: l
"simple_rnn_4/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:l
"simple_rnn_4/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_4/strided_sliceStridedSlicesimple_rnn_4/Shape:output:0)simple_rnn_4/strided_slice/stack:output:0+simple_rnn_4/strided_slice/stack_1:output:0+simple_rnn_4/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask^
simple_rnn_4/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
simple_rnn_4/zeros/packedPack#simple_rnn_4/strided_slice:output:0$simple_rnn_4/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:]
simple_rnn_4/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
simple_rnn_4/zerosFill"simple_rnn_4/zeros/packed:output:0!simple_rnn_4/zeros/Const:output:0*
T0*(
_output_shapes
:����������p
simple_rnn_4/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_4/transpose	Transposereshape_40/Reshape:output:0$simple_rnn_4/transpose/perm:output:0*
T0*+
_output_shapes
:d���������P^
simple_rnn_4/Shape_1Shapesimple_rnn_4/transpose:y:0*
T0*
_output_shapes
:l
"simple_rnn_4/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_4/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_4/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_4/strided_slice_1StridedSlicesimple_rnn_4/Shape_1:output:0+simple_rnn_4/strided_slice_1/stack:output:0-simple_rnn_4/strided_slice_1/stack_1:output:0-simple_rnn_4/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
(simple_rnn_4/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
simple_rnn_4/TensorArrayV2TensorListReserve1simple_rnn_4/TensorArrayV2/element_shape:output:0%simple_rnn_4/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Bsimple_rnn_4/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
4simple_rnn_4/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorsimple_rnn_4/transpose:y:0Ksimple_rnn_4/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���l
"simple_rnn_4/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_4/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$simple_rnn_4/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_4/strided_slice_2StridedSlicesimple_rnn_4/transpose:y:0+simple_rnn_4/strided_slice_2/stack:output:0-simple_rnn_4/strided_slice_2/stack_1:output:0-simple_rnn_4/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������P*
shrink_axis_mask�
.simple_rnn_4/simple_rnn_cell_4/ones_like/ShapeShape%simple_rnn_4/strided_slice_2:output:0*
T0*
_output_shapes
:s
.simple_rnn_4/simple_rnn_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
(simple_rnn_4/simple_rnn_cell_4/ones_likeFill7simple_rnn_4/simple_rnn_cell_4/ones_like/Shape:output:07simple_rnn_4/simple_rnn_cell_4/ones_like/Const:output:0*
T0*'
_output_shapes
:���������P�
"simple_rnn_4/simple_rnn_cell_4/mulMul%simple_rnn_4/strided_slice_2:output:01simple_rnn_4/simple_rnn_cell_4/ones_like:output:0*
T0*'
_output_shapes
:���������P�
4simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp=simple_rnn_4_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0�
%simple_rnn_4/simple_rnn_cell_4/MatMulMatMul&simple_rnn_4/simple_rnn_cell_4/mul:z:0<simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
5simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp>simple_rnn_4_simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
&simple_rnn_4/simple_rnn_cell_4/BiasAddBiasAdd/simple_rnn_4/simple_rnn_cell_4/MatMul:product:0=simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
6simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp?simple_rnn_4_simple_rnn_cell_4_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
'simple_rnn_4/simple_rnn_cell_4/MatMul_1MatMulsimple_rnn_4/zeros:output:0>simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
"simple_rnn_4/simple_rnn_cell_4/addAddV2/simple_rnn_4/simple_rnn_cell_4/BiasAdd:output:01simple_rnn_4/simple_rnn_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
#simple_rnn_4/simple_rnn_cell_4/TanhTanh&simple_rnn_4/simple_rnn_cell_4/add:z:0*
T0*(
_output_shapes
:����������{
*simple_rnn_4/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  k
)simple_rnn_4/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
simple_rnn_4/TensorArrayV2_1TensorListReserve3simple_rnn_4/TensorArrayV2_1/element_shape:output:02simple_rnn_4/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���S
simple_rnn_4/timeConst*
_output_shapes
: *
dtype0*
value	B : p
%simple_rnn_4/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������a
simple_rnn_4/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
simple_rnn_4/whileWhile(simple_rnn_4/while/loop_counter:output:0.simple_rnn_4/while/maximum_iterations:output:0simple_rnn_4/time:output:0%simple_rnn_4/TensorArrayV2_1:handle:0simple_rnn_4/zeros:output:0%simple_rnn_4/strided_slice_1:output:0Dsimple_rnn_4/TensorArrayUnstack/TensorListFromTensor:output_handle:0=simple_rnn_4_simple_rnn_cell_4_matmul_readvariableop_resource>simple_rnn_4_simple_rnn_cell_4_biasadd_readvariableop_resource?simple_rnn_4_simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( **
body"R 
simple_rnn_4_while_body_637143**
cond"R 
simple_rnn_4_while_cond_637142*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
=simple_rnn_4/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  �
/simple_rnn_4/TensorArrayV2Stack/TensorListStackTensorListStacksimple_rnn_4/while:output:3Fsimple_rnn_4/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elementsu
"simple_rnn_4/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������n
$simple_rnn_4/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: n
$simple_rnn_4/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
simple_rnn_4/strided_slice_3StridedSlice8simple_rnn_4/TensorArrayV2Stack/TensorListStack:tensor:0+simple_rnn_4/strided_slice_3/stack:output:0-simple_rnn_4/strided_slice_3/stack_1:output:0-simple_rnn_4/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maskr
simple_rnn_4/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
simple_rnn_4/transpose_1	Transpose8simple_rnn_4/TensorArrayV2Stack/TensorListStack:tensor:0&simple_rnn_4/transpose_1/perm:output:0*
T0*,
_output_shapes
:�����������
dense_142/MatMul/ReadVariableOpReadVariableOp(dense_142_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_142/MatMulMatMul%simple_rnn_4/strided_slice_3:output:0'dense_142/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_142/BiasAdd/ReadVariableOpReadVariableOp)dense_142_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_142/BiasAddBiasAdddense_142/MatMul:product:0(dense_142/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_140/MatMul/ReadVariableOpReadVariableOp(dense_140_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
dense_140/MatMulMatMul%simple_rnn_4/strided_slice_3:output:0'dense_140/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
 dense_140/BiasAdd/ReadVariableOpReadVariableOp)dense_140_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
dense_140/BiasAddBiasAdddense_140/MatMul:product:0(dense_140/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
dense_143/MatMul/ReadVariableOpReadVariableOp(dense_143_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_143/MatMulMatMuldense_142/BiasAdd:output:0'dense_143/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
 dense_143/BiasAdd/ReadVariableOpReadVariableOp)dense_143_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_143/BiasAddBiasAdddense_143/MatMul:product:0(dense_143/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_141/MatMul/ReadVariableOpReadVariableOp(dense_141_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
dense_141/MatMulMatMuldense_140/BiasAdd:output:0'dense_141/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
 dense_141/BiasAdd/ReadVariableOpReadVariableOp)dense_141_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_141/BiasAddBiasAdddense_141/MatMul:product:0(dense_141/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
degree/MatMul/ReadVariableOpReadVariableOp%degree_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
degree/MatMulMatMuldense_143/BiasAdd:output:0$degree/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
degree/BiasAdd/ReadVariableOpReadVariableOp&degree_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
degree/BiasAddBiasAdddegree/MatMul:product:0%degree/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������^
degree/TanhTanhdegree/BiasAdd:output:0*
T0*'
_output_shapes
:����������
distance/MatMul/ReadVariableOpReadVariableOp'distance_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
distance/MatMulMatMuldense_141/BiasAdd:output:0&distance/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
distance/BiasAdd/ReadVariableOpReadVariableOp(distance_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
distance/BiasAddBiasAdddistance/MatMul:product:0'distance/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������h
distance/SigmoidSigmoiddistance/BiasAdd:output:0*
T0*'
_output_shapes
:����������
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp=simple_rnn_4_simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0�
8simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SquareSquareOsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P��
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SumSum<simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square:y:0@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mulMul@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/x:output:0>simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_140/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_140_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
#dense_140/kernel/Regularizer/SquareSquare:dense_140/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�s
"dense_140/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_140/kernel/Regularizer/SumSum'dense_140/kernel/Regularizer/Square:y:0+dense_140/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_140/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_140/kernel/Regularizer/mulMul+dense_140/kernel/Regularizer/mul/x:output:0)dense_140/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_142/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_142_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
#dense_142/kernel/Regularizer/SquareSquare:dense_142/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�s
"dense_142/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_142/kernel/Regularizer/SumSum'dense_142/kernel/Regularizer/Square:y:0+dense_142/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_142/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_142/kernel/Regularizer/mulMul+dense_142/kernel/Regularizer/mul/x:output:0)dense_142/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_141/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_141_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
#dense_141/kernel/Regularizer/SquareSquare:dense_141/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
s
"dense_141/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_141/kernel/Regularizer/SumSum'dense_141/kernel/Regularizer/Square:y:0+dense_141/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_141/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_141/kernel/Regularizer/mulMul+dense_141/kernel/Regularizer/mul/x:output:0)dense_141/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
2dense_143/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_143_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
#dense_143/kernel/Regularizer/SquareSquare:dense_143/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
s
"dense_143/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_143/kernel/Regularizer/SumSum'dense_143/kernel/Regularizer/Square:y:0+dense_143/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_143/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_143/kernel/Regularizer/mulMul+dense_143/kernel/Regularizer/mul/x:output:0)dense_143/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: c
IdentityIdentitydistance/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������`

Identity_1Identitydegree/Tanh:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^degree/BiasAdd/ReadVariableOp^degree/MatMul/ReadVariableOp!^dense_140/BiasAdd/ReadVariableOp ^dense_140/MatMul/ReadVariableOp3^dense_140/kernel/Regularizer/Square/ReadVariableOp!^dense_141/BiasAdd/ReadVariableOp ^dense_141/MatMul/ReadVariableOp3^dense_141/kernel/Regularizer/Square/ReadVariableOp!^dense_142/BiasAdd/ReadVariableOp ^dense_142/MatMul/ReadVariableOp3^dense_142/kernel/Regularizer/Square/ReadVariableOp!^dense_143/BiasAdd/ReadVariableOp ^dense_143/MatMul/ReadVariableOp3^dense_143/kernel/Regularizer/Square/ReadVariableOp ^distance/BiasAdd/ReadVariableOp^distance/MatMul/ReadVariableOp6^simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp5^simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp7^simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOpH^simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp^simple_rnn_4/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:����������: : : : : : : : : : : : : : : 2>
degree/BiasAdd/ReadVariableOpdegree/BiasAdd/ReadVariableOp2<
degree/MatMul/ReadVariableOpdegree/MatMul/ReadVariableOp2D
 dense_140/BiasAdd/ReadVariableOp dense_140/BiasAdd/ReadVariableOp2B
dense_140/MatMul/ReadVariableOpdense_140/MatMul/ReadVariableOp2h
2dense_140/kernel/Regularizer/Square/ReadVariableOp2dense_140/kernel/Regularizer/Square/ReadVariableOp2D
 dense_141/BiasAdd/ReadVariableOp dense_141/BiasAdd/ReadVariableOp2B
dense_141/MatMul/ReadVariableOpdense_141/MatMul/ReadVariableOp2h
2dense_141/kernel/Regularizer/Square/ReadVariableOp2dense_141/kernel/Regularizer/Square/ReadVariableOp2D
 dense_142/BiasAdd/ReadVariableOp dense_142/BiasAdd/ReadVariableOp2B
dense_142/MatMul/ReadVariableOpdense_142/MatMul/ReadVariableOp2h
2dense_142/kernel/Regularizer/Square/ReadVariableOp2dense_142/kernel/Regularizer/Square/ReadVariableOp2D
 dense_143/BiasAdd/ReadVariableOp dense_143/BiasAdd/ReadVariableOp2B
dense_143/MatMul/ReadVariableOpdense_143/MatMul/ReadVariableOp2h
2dense_143/kernel/Regularizer/Square/ReadVariableOp2dense_143/kernel/Regularizer/Square/ReadVariableOp2B
distance/BiasAdd/ReadVariableOpdistance/BiasAdd/ReadVariableOp2@
distance/MatMul/ReadVariableOpdistance/MatMul/ReadVariableOp2n
5simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp5simple_rnn_4/simple_rnn_cell_4/BiasAdd/ReadVariableOp2l
4simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp4simple_rnn_4/simple_rnn_cell_4/MatMul/ReadVariableOp2p
6simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp6simple_rnn_4/simple_rnn_cell_4/MatMul_1/ReadVariableOp2�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpGsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp2(
simple_rnn_4/whilesimple_rnn_4/while:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�H
�
'model_33_simple_rnn_4_while_body_635554H
Dmodel_33_simple_rnn_4_while_model_33_simple_rnn_4_while_loop_counterN
Jmodel_33_simple_rnn_4_while_model_33_simple_rnn_4_while_maximum_iterations+
'model_33_simple_rnn_4_while_placeholder-
)model_33_simple_rnn_4_while_placeholder_1-
)model_33_simple_rnn_4_while_placeholder_2G
Cmodel_33_simple_rnn_4_while_model_33_simple_rnn_4_strided_slice_1_0�
model_33_simple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_model_33_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0a
Nmodel_33_simple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource_0:	P�^
Omodel_33_simple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:	�d
Pmodel_33_simple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:
��(
$model_33_simple_rnn_4_while_identity*
&model_33_simple_rnn_4_while_identity_1*
&model_33_simple_rnn_4_while_identity_2*
&model_33_simple_rnn_4_while_identity_3*
&model_33_simple_rnn_4_while_identity_4E
Amodel_33_simple_rnn_4_while_model_33_simple_rnn_4_strided_slice_1�
}model_33_simple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_model_33_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_
Lmodel_33_simple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource:	P�\
Mmodel_33_simple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource:	�b
Nmodel_33_simple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource:
����Dmodel_33/simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp�Cmodel_33/simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp�Emodel_33/simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp�
Mmodel_33/simple_rnn_4/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
?model_33/simple_rnn_4/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmodel_33_simple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_model_33_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0'model_33_simple_rnn_4_while_placeholderVmodel_33/simple_rnn_4/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������P*
element_dtype0�
=model_33/simple_rnn_4/while/simple_rnn_cell_4/ones_like/ShapeShapeFmodel_33/simple_rnn_4/while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:�
=model_33/simple_rnn_4/while/simple_rnn_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
7model_33/simple_rnn_4/while/simple_rnn_cell_4/ones_likeFillFmodel_33/simple_rnn_4/while/simple_rnn_cell_4/ones_like/Shape:output:0Fmodel_33/simple_rnn_4/while/simple_rnn_cell_4/ones_like/Const:output:0*
T0*'
_output_shapes
:���������P�
1model_33/simple_rnn_4/while/simple_rnn_cell_4/mulMulFmodel_33/simple_rnn_4/while/TensorArrayV2Read/TensorListGetItem:item:0@model_33/simple_rnn_4/while/simple_rnn_cell_4/ones_like:output:0*
T0*'
_output_shapes
:���������P�
Cmodel_33/simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOpNmodel_33_simple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	P�*
dtype0�
4model_33/simple_rnn_4/while/simple_rnn_cell_4/MatMulMatMul5model_33/simple_rnn_4/while/simple_rnn_cell_4/mul:z:0Kmodel_33/simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Dmodel_33/simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOpOmodel_33_simple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
5model_33/simple_rnn_4/while/simple_rnn_cell_4/BiasAddBiasAdd>model_33/simple_rnn_4/while/simple_rnn_cell_4/MatMul:product:0Lmodel_33/simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Emodel_33/simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOpPmodel_33_simple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
6model_33/simple_rnn_4/while/simple_rnn_cell_4/MatMul_1MatMul)model_33_simple_rnn_4_while_placeholder_2Mmodel_33/simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1model_33/simple_rnn_4/while/simple_rnn_cell_4/addAddV2>model_33/simple_rnn_4/while/simple_rnn_cell_4/BiasAdd:output:0@model_33/simple_rnn_4/while/simple_rnn_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
2model_33/simple_rnn_4/while/simple_rnn_cell_4/TanhTanh5model_33/simple_rnn_4/while/simple_rnn_cell_4/add:z:0*
T0*(
_output_shapes
:�����������
Fmodel_33/simple_rnn_4/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
@model_33/simple_rnn_4/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem)model_33_simple_rnn_4_while_placeholder_1Omodel_33/simple_rnn_4/while/TensorArrayV2Write/TensorListSetItem/index:output:06model_33/simple_rnn_4/while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:���c
!model_33/simple_rnn_4/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
model_33/simple_rnn_4/while/addAddV2'model_33_simple_rnn_4_while_placeholder*model_33/simple_rnn_4/while/add/y:output:0*
T0*
_output_shapes
: e
#model_33/simple_rnn_4/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
!model_33/simple_rnn_4/while/add_1AddV2Dmodel_33_simple_rnn_4_while_model_33_simple_rnn_4_while_loop_counter,model_33/simple_rnn_4/while/add_1/y:output:0*
T0*
_output_shapes
: �
$model_33/simple_rnn_4/while/IdentityIdentity%model_33/simple_rnn_4/while/add_1:z:0!^model_33/simple_rnn_4/while/NoOp*
T0*
_output_shapes
: �
&model_33/simple_rnn_4/while/Identity_1IdentityJmodel_33_simple_rnn_4_while_model_33_simple_rnn_4_while_maximum_iterations!^model_33/simple_rnn_4/while/NoOp*
T0*
_output_shapes
: �
&model_33/simple_rnn_4/while/Identity_2Identity#model_33/simple_rnn_4/while/add:z:0!^model_33/simple_rnn_4/while/NoOp*
T0*
_output_shapes
: �
&model_33/simple_rnn_4/while/Identity_3IdentityPmodel_33/simple_rnn_4/while/TensorArrayV2Write/TensorListSetItem:output_handle:0!^model_33/simple_rnn_4/while/NoOp*
T0*
_output_shapes
: �
&model_33/simple_rnn_4/while/Identity_4Identity6model_33/simple_rnn_4/while/simple_rnn_cell_4/Tanh:y:0!^model_33/simple_rnn_4/while/NoOp*
T0*(
_output_shapes
:�����������
 model_33/simple_rnn_4/while/NoOpNoOpE^model_33/simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpD^model_33/simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOpF^model_33/simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "U
$model_33_simple_rnn_4_while_identity-model_33/simple_rnn_4/while/Identity:output:0"Y
&model_33_simple_rnn_4_while_identity_1/model_33/simple_rnn_4/while/Identity_1:output:0"Y
&model_33_simple_rnn_4_while_identity_2/model_33/simple_rnn_4/while/Identity_2:output:0"Y
&model_33_simple_rnn_4_while_identity_3/model_33/simple_rnn_4/while/Identity_3:output:0"Y
&model_33_simple_rnn_4_while_identity_4/model_33/simple_rnn_4/while/Identity_4:output:0"�
Amodel_33_simple_rnn_4_while_model_33_simple_rnn_4_strided_slice_1Cmodel_33_simple_rnn_4_while_model_33_simple_rnn_4_strided_slice_1_0"�
Mmodel_33_simple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resourceOmodel_33_simple_rnn_4_while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"�
Nmodel_33_simple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resourcePmodel_33_simple_rnn_4_while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"�
Lmodel_33_simple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resourceNmodel_33_simple_rnn_4_while_simple_rnn_cell_4_matmul_readvariableop_resource_0"�
}model_33_simple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_model_33_simple_rnn_4_tensorarrayunstack_tensorlistfromtensormodel_33_simple_rnn_4_while_tensorarrayv2read_tensorlistgetitem_model_33_simple_rnn_4_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2�
Dmodel_33/simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOpDmodel_33/simple_rnn_4/while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2�
Cmodel_33/simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOpCmodel_33/simple_rnn_4/while/simple_rnn_cell_4/MatMul/ReadVariableOp2�
Emodel_33/simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpEmodel_33/simple_rnn_4/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
__inference_loss_fn_4_638288c
Psimple_rnn_4_simple_rnn_cell_4_kernel_regularizer_square_readvariableop_resource:	P�
identity��Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpPsimple_rnn_4_simple_rnn_cell_4_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	P�*
dtype0�
8simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SquareSquareOsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P��
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SumSum<simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square:y:0@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mulMul@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/x:output:0>simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: w
IdentityIdentity9simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOpH^simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpGsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp
�
�
*__inference_dense_140_layer_call_fn_638102

inputs
unknown:	�
	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dense_140_layer_call_and_return_conditional_losses_636193o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
while_cond_638001
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_638001___redundant_placeholder04
0while_while_cond_638001___redundant_placeholder14
0while_while_cond_638001___redundant_placeholder24
0while_while_cond_638001___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�W
�
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_637823
inputs_0C
0simple_rnn_cell_4_matmul_readvariableop_resource:	P�@
1simple_rnn_cell_4_biasadd_readvariableop_resource:	�F
2simple_rnn_cell_4_matmul_1_readvariableop_resource:
��
identity��Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp�(simple_rnn_cell_4/BiasAdd/ReadVariableOp�'simple_rnn_cell_4/MatMul/ReadVariableOp�)simple_rnn_cell_4/MatMul_1/ReadVariableOp�while=
ShapeShapeinputs_0*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������PD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������P*
shrink_axis_maski
!simple_rnn_cell_4/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:f
!simple_rnn_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
simple_rnn_cell_4/ones_likeFill*simple_rnn_cell_4/ones_like/Shape:output:0*simple_rnn_cell_4/ones_like/Const:output:0*
T0*'
_output_shapes
:���������Pd
simple_rnn_cell_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
simple_rnn_cell_4/dropout/MulMul$simple_rnn_cell_4/ones_like:output:0(simple_rnn_cell_4/dropout/Const:output:0*
T0*'
_output_shapes
:���������Ps
simple_rnn_cell_4/dropout/ShapeShape$simple_rnn_cell_4/ones_like:output:0*
T0*
_output_shapes
:�
6simple_rnn_cell_4/dropout/random_uniform/RandomUniformRandomUniform(simple_rnn_cell_4/dropout/Shape:output:0*
T0*'
_output_shapes
:���������P*
dtype0*

seedm
(simple_rnn_cell_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
&simple_rnn_cell_4/dropout/GreaterEqualGreaterEqual?simple_rnn_cell_4/dropout/random_uniform/RandomUniform:output:01simple_rnn_cell_4/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������P�
simple_rnn_cell_4/dropout/CastCast*simple_rnn_cell_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������P�
simple_rnn_cell_4/dropout/Mul_1Mul!simple_rnn_cell_4/dropout/Mul:z:0"simple_rnn_cell_4/dropout/Cast:y:0*
T0*'
_output_shapes
:���������P�
simple_rnn_cell_4/mulMulstrided_slice_2:output:0#simple_rnn_cell_4/dropout/Mul_1:z:0*
T0*'
_output_shapes
:���������P�
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0�
simple_rnn_cell_4/MatMulMatMulsimple_rnn_cell_4/mul:z:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:����������l
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_637738*
condR
while_cond_637737*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:�����������
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0�
8simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SquareSquareOsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P��
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SumSum<simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square:y:0@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mulMul@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/x:output:0>simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOpH^simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������P: : : 2�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpGsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������P
"
_user_specified_name
inputs/0
�
�
M__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_638343

inputs
states_01
matmul_readvariableop_resource:	P�.
biasadd_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��
identity

identity_1��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOp�Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?w
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*'
_output_shapes
:���������PX
mulMulinputsones_like:output:0*
T0*'
_output_shapes
:���������Pu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0k
MatMulMatMulmul:z:0MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0w
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2BiasAdd:output:0MatMul_1:product:0*
T0*(
_output_shapes
:����������H
TanhTanhadd:z:0*
T0*(
_output_shapes
:�����������
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0�
8simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SquareSquareOsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P��
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SumSum<simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square:y:0@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mulMul@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/x:output:0>simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: X
IdentityIdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:����������Z

Identity_1IdentityTanh:y:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOpH^simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������P:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp2�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpGsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������P
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states/0
�
�
while_cond_637869
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_637869___redundant_placeholder04
0while_while_cond_637869___redundant_placeholder14
0while_while_cond_637869___redundant_placeholder24
0while_while_cond_637869___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
__inference_loss_fn_3_638277M
;dense_143_kernel_regularizer_square_readvariableop_resource:

identity��2dense_143/kernel/Regularizer/Square/ReadVariableOp�
2dense_143/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_143_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:
*
dtype0�
#dense_143/kernel/Regularizer/SquareSquare:dense_143/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
s
"dense_143/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_143/kernel/Regularizer/SumSum'dense_143/kernel/Regularizer/Square:y:0+dense_143/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_143/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_143/kernel/Regularizer/mulMul+dense_143/kernel/Regularizer/mul/x:output:0)dense_143/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentity$dense_143/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^dense_143/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2dense_143/kernel/Regularizer/Square/ReadVariableOp2dense_143/kernel/Regularizer/Square/ReadVariableOp
�
�
-__inference_simple_rnn_4_layer_call_fn_637526
inputs_0
unknown:	P�
	unknown_0:	�
	unknown_1:
��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_635806p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������P: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������P
"
_user_specified_name
inputs/0
�

�
simple_rnn_4_while_cond_6373486
2simple_rnn_4_while_simple_rnn_4_while_loop_counter<
8simple_rnn_4_while_simple_rnn_4_while_maximum_iterations"
simple_rnn_4_while_placeholder$
 simple_rnn_4_while_placeholder_1$
 simple_rnn_4_while_placeholder_28
4simple_rnn_4_while_less_simple_rnn_4_strided_slice_1N
Jsimple_rnn_4_while_simple_rnn_4_while_cond_637348___redundant_placeholder0N
Jsimple_rnn_4_while_simple_rnn_4_while_cond_637348___redundant_placeholder1N
Jsimple_rnn_4_while_simple_rnn_4_while_cond_637348___redundant_placeholder2N
Jsimple_rnn_4_while_simple_rnn_4_while_cond_637348___redundant_placeholder3
simple_rnn_4_while_identity
�
simple_rnn_4/while/LessLesssimple_rnn_4_while_placeholder4simple_rnn_4_while_less_simple_rnn_4_strided_slice_1*
T0*
_output_shapes
: e
simple_rnn_4/while/IdentityIdentitysimple_rnn_4/while/Less:z:0*
T0
*
_output_shapes
: "C
simple_rnn_4_while_identity$simple_rnn_4/while/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�

�
2__inference_simple_rnn_cell_4_layer_call_fn_638302

inputs
states_0
unknown:	P�
	unknown_0:	�
	unknown_1:
��
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0unknown	unknown_0	unknown_1*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_635722p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*@
_input_shapes/
-:���������P:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������P
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states/0
�
�
'__inference_degree_layer_call_fn_638222

inputs
unknown:

	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_degree_layer_call_and_return_conditional_losses_636254o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
-__inference_simple_rnn_4_layer_call_fn_637537
inputs_0
unknown:	P�
	unknown_0:	�
	unknown_1:
��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_635991p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������P: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������P
"
_user_specified_name
inputs/0
�
�
__inference_loss_fn_0_638244N
;dense_140_kernel_regularizer_square_readvariableop_resource:	�
identity��2dense_140/kernel/Regularizer/Square/ReadVariableOp�
2dense_140/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_140_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	�*
dtype0�
#dense_140/kernel/Regularizer/SquareSquare:dense_140/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�s
"dense_140/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_140/kernel/Regularizer/SumSum'dense_140/kernel/Regularizer/Square:y:0+dense_140/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_140/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_140/kernel/Regularizer/mulMul+dense_140/kernel/Regularizer/mul/x:output:0)dense_140/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentity$dense_140/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^dense_140/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2dense_140/kernel/Regularizer/Square/ReadVariableOp2dense_140/kernel/Regularizer/Square/ReadVariableOp
�
�
E__inference_dense_143_layer_call_and_return_conditional_losses_638193

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2dense_143/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
2dense_143/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
#dense_143/kernel/Regularizer/SquareSquare:dense_143/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
s
"dense_143/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_143/kernel/Regularizer/SumSum'dense_143/kernel/Regularizer/Square:y:0+dense_143/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_143/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_143/kernel/Regularizer/mulMul+dense_143/kernel/Regularizer/mul/x:output:0)dense_143/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_143/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_143/kernel/Regularizer/Square/ReadVariableOp2dense_143/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_636981	
input
unknown:	P�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
	unknown_4:	�
	unknown_5:
	unknown_6:

	unknown_7:

	unknown_8:

	unknown_9:


unknown_10:


unknown_11:

unknown_12:


unknown_13:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*1
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_635664o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:����������: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:����������

_user_specified_nameinput
�
�
)__inference_model_33_layer_call_fn_637085

inputs
unknown:	P�
	unknown_0:	�
	unknown_1:
��
	unknown_2:	�
	unknown_3:
	unknown_4:	�
	unknown_5:
	unknown_6:

	unknown_7:

	unknown_8:

	unknown_9:


unknown_10:


unknown_11:

unknown_12:


unknown_13:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*1
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_model_33_layer_call_and_return_conditional_losses_636686o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:����������: : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�2
�
while_body_637870
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:	P�H
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:	�N
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_4_matmul_readvariableop_resource:	P�F
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:	�L
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:
����.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_4/MatMul/ReadVariableOp�/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������P*
element_dtype0�
'while/simple_rnn_cell_4/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:l
'while/simple_rnn_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!while/simple_rnn_cell_4/ones_likeFill0while/simple_rnn_cell_4/ones_like/Shape:output:00while/simple_rnn_cell_4/ones_like/Const:output:0*
T0*'
_output_shapes
:���������P�
while/simple_rnn_cell_4/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0*while/simple_rnn_cell_4/ones_like:output:0*
T0*'
_output_shapes
:���������P�
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	P�*
dtype0�
while/simple_rnn_cell_4/MatMulMatMulwhile/simple_rnn_cell_4/mul:z:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:����������x
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*(
_output_shapes
:����������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0 while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�
�
E__inference_dense_140_layer_call_and_return_conditional_losses_636193

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2dense_140/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2dense_140/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
#dense_140/kernel/Regularizer/SquareSquare:dense_140/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�s
"dense_140/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_140/kernel/Regularizer/SumSum'dense_140/kernel/Regularizer/Square:y:0+dense_140/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_140/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_140/kernel/Regularizer/mulMul+dense_140/kernel/Regularizer/mul/x:output:0)dense_140/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_140/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_140/kernel/Regularizer/Square/ReadVariableOp2dense_140/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
E__inference_dense_143_layer_call_and_return_conditional_losses_636215

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2dense_143/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
2dense_143/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
#dense_143/kernel/Regularizer/SquareSquare:dense_143/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
s
"dense_143/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_143/kernel/Regularizer/SumSum'dense_143/kernel/Regularizer/Square:y:0+dense_143/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_143/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_143/kernel/Regularizer/mulMul+dense_143/kernel/Regularizer/mul/x:output:0)dense_143/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_143/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_143/kernel/Regularizer/Square/ReadVariableOp2dense_143/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�M
�
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_637947

inputsC
0simple_rnn_cell_4_matmul_readvariableop_resource:	P�@
1simple_rnn_cell_4_biasadd_readvariableop_resource:	�F
2simple_rnn_cell_4_matmul_1_readvariableop_resource:
��
identity��Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp�(simple_rnn_cell_4/BiasAdd/ReadVariableOp�'simple_rnn_cell_4/MatMul/ReadVariableOp�)simple_rnn_cell_4/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d���������PD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������P*
shrink_axis_maski
!simple_rnn_cell_4/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:f
!simple_rnn_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
simple_rnn_cell_4/ones_likeFill*simple_rnn_cell_4/ones_like/Shape:output:0*simple_rnn_cell_4/ones_like/Const:output:0*
T0*'
_output_shapes
:���������P�
simple_rnn_cell_4/mulMulstrided_slice_2:output:0$simple_rnn_cell_4/ones_like:output:0*
T0*'
_output_shapes
:���������P�
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0�
simple_rnn_cell_4/MatMulMatMulsimple_rnn_cell_4/mul:z:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:����������l
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_637870*
condR
while_cond_637869*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:�����������
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0�
8simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SquareSquareOsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P��
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SumSum<simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square:y:0@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mulMul@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/x:output:0>simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOpH^simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������dP: : : 2�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpGsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�

�
B__inference_degree_layer_call_and_return_conditional_losses_638233

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:���������W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�W
�
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_636557

inputsC
0simple_rnn_cell_4_matmul_readvariableop_resource:	P�@
1simple_rnn_cell_4_biasadd_readvariableop_resource:	�F
2simple_rnn_cell_4_matmul_1_readvariableop_resource:
��
identity��Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp�(simple_rnn_cell_4/BiasAdd/ReadVariableOp�'simple_rnn_cell_4/MatMul/ReadVariableOp�)simple_rnn_cell_4/MatMul_1/ReadVariableOp�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:d���������PD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������P*
shrink_axis_maski
!simple_rnn_cell_4/ones_like/ShapeShapestrided_slice_2:output:0*
T0*
_output_shapes
:f
!simple_rnn_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
simple_rnn_cell_4/ones_likeFill*simple_rnn_cell_4/ones_like/Shape:output:0*simple_rnn_cell_4/ones_like/Const:output:0*
T0*'
_output_shapes
:���������Pd
simple_rnn_cell_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
simple_rnn_cell_4/dropout/MulMul$simple_rnn_cell_4/ones_like:output:0(simple_rnn_cell_4/dropout/Const:output:0*
T0*'
_output_shapes
:���������Ps
simple_rnn_cell_4/dropout/ShapeShape$simple_rnn_cell_4/ones_like:output:0*
T0*
_output_shapes
:�
6simple_rnn_cell_4/dropout/random_uniform/RandomUniformRandomUniform(simple_rnn_cell_4/dropout/Shape:output:0*
T0*'
_output_shapes
:���������P*
dtype0*

seedm
(simple_rnn_cell_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
&simple_rnn_cell_4/dropout/GreaterEqualGreaterEqual?simple_rnn_cell_4/dropout/random_uniform/RandomUniform:output:01simple_rnn_cell_4/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������P�
simple_rnn_cell_4/dropout/CastCast*simple_rnn_cell_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������P�
simple_rnn_cell_4/dropout/Mul_1Mul!simple_rnn_cell_4/dropout/Mul:z:0"simple_rnn_cell_4/dropout/Cast:y:0*
T0*'
_output_shapes
:���������P�
simple_rnn_cell_4/mulMulstrided_slice_2:output:0#simple_rnn_cell_4/dropout/Mul_1:z:0*
T0*'
_output_shapes
:���������P�
'simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0�
simple_rnn_cell_4/MatMulMatMulsimple_rnn_cell_4/mul:z:0/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
(simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp1simple_rnn_cell_4_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
simple_rnn_cell_4/BiasAddBiasAdd"simple_rnn_cell_4/MatMul:product:00simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
)simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp2simple_rnn_cell_4_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
simple_rnn_cell_4/MatMul_1MatMulzeros:output:01simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
simple_rnn_cell_4/addAddV2"simple_rnn_cell_4/BiasAdd:output:0$simple_rnn_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:����������l
simple_rnn_cell_4/TanhTanhsimple_rnn_cell_4/add:z:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:00simple_rnn_cell_4_matmul_readvariableop_resource1simple_rnn_cell_4_biasadd_readvariableop_resource2simple_rnn_cell_4_matmul_1_readvariableop_resource*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_636472*
condR
while_cond_636471*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:�����������
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOp0simple_rnn_cell_4_matmul_readvariableop_resource*
_output_shapes
:	P�*
dtype0�
8simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SquareSquareOsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P��
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SumSum<simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square:y:0@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mulMul@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/x:output:0>simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOpH^simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp)^simple_rnn_cell_4/BiasAdd/ReadVariableOp(^simple_rnn_cell_4/MatMul/ReadVariableOp*^simple_rnn_cell_4/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������dP: : : 2�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpGsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp2T
(simple_rnn_cell_4/BiasAdd/ReadVariableOp(simple_rnn_cell_4/BiasAdd/ReadVariableOp2R
'simple_rnn_cell_4/MatMul/ReadVariableOp'simple_rnn_cell_4/MatMul/ReadVariableOp2V
)simple_rnn_cell_4/MatMul_1/ReadVariableOp)simple_rnn_cell_4/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�
�
while_cond_635735
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_635735___redundant_placeholder04
0while_while_cond_635735___redundant_placeholder14
0while_while_cond_635735___redundant_placeholder24
0while_while_cond_635735___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
while_cond_636069
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_636069___redundant_placeholder04
0while_while_cond_636069___redundant_placeholder14
0while_while_cond_636069___redundant_placeholder24
0while_while_cond_636069___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�"
�
while_body_635736
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_03
 while_simple_rnn_cell_4_635758_0:	P�/
 while_simple_rnn_cell_4_635760_0:	�4
 while_simple_rnn_cell_4_635762_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor1
while_simple_rnn_cell_4_635758:	P�-
while_simple_rnn_cell_4_635760:	�2
while_simple_rnn_cell_4_635762:
����/while/simple_rnn_cell_4/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������P*
element_dtype0�
/while/simple_rnn_cell_4/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2 while_simple_rnn_cell_4_635758_0 while_simple_rnn_cell_4_635760_0 while_simple_rnn_cell_4_635762_0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_635722r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:08while/simple_rnn_cell_4/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_4Identity8while/simple_rnn_cell_4/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:����������~

while/NoOpNoOp0^while/simple_rnn_cell_4/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"B
while_simple_rnn_cell_4_635758 while_simple_rnn_cell_4_635758_0"B
while_simple_rnn_cell_4_635760 while_simple_rnn_cell_4_635760_0"B
while_simple_rnn_cell_4_635762 while_simple_rnn_cell_4_635762_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2b
/while/simple_rnn_cell_4/StatefulPartitionedCall/while/simple_rnn_cell_4/StatefulPartitionedCall: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: 
�

�
D__inference_distance_layer_call_and_return_conditional_losses_636271

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:���������Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:���������

 
_user_specified_nameinputs
�
�
while_cond_637605
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_637605___redundant_placeholder04
0while_while_cond_637605___redundant_placeholder14
0while_while_cond_637605___redundant_placeholder24
0while_while_cond_637605___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�
�
-__inference_simple_rnn_4_layer_call_fn_637559

inputs
unknown:	P�
	unknown_0:	�
	unknown_1:
��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_636557p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������dP: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�
�
E__inference_dense_142_layer_call_and_return_conditional_losses_638143

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2dense_142/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
2dense_142/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
#dense_142/kernel/Regularizer/SquareSquare:dense_142/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�s
"dense_142/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_142/kernel/Regularizer/SumSum'dense_142/kernel/Regularizer/Square:y:0+dense_142/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_142/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_142/kernel/Regularizer/mulMul+dense_142/kernel/Regularizer/mul/x:output:0)dense_142/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_142/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_142/kernel/Regularizer/Square/ReadVariableOp2dense_142/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
-__inference_simple_rnn_4_layer_call_fn_637548

inputs
unknown:	P�
	unknown_0:	�
	unknown_1:
��
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *Q
fLRJ
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_636147p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:���������dP: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������dP
 
_user_specified_nameinputs
�
�
E__inference_dense_141_layer_call_and_return_conditional_losses_638168

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�2dense_141/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
2dense_141/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
#dense_141/kernel/Regularizer/SquareSquare:dense_141/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:
s
"dense_141/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
 dense_141/kernel/Regularizer/SumSum'dense_141/kernel/Regularizer/Square:y:0+dense_141/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_141/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
 dense_141/kernel/Regularizer/mulMul+dense_141/kernel/Regularizer/mul/x:output:0)dense_141/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_141/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_141/kernel/Regularizer/Square/ReadVariableOp2dense_141/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�?
�
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_635991

inputs+
simple_rnn_cell_4_635908:	P�'
simple_rnn_cell_4_635910:	�,
simple_rnn_cell_4_635912:
��
identity��Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp�)simple_rnn_cell_4/StatefulPartitionedCall�while;
ShapeShapeinputs*
T0*
_output_shapes
:]
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:_
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskQ
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�s
zeros/packedPackstrided_slice:output:0zeros/packed/1:output:0*
N*
T0*
_output_shapes
:P
zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    m
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������PD
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
:_
strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_1StridedSliceShape_1:output:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���_
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������P*
shrink_axis_mask�
)simple_rnn_cell_4/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0simple_rnn_cell_4_635908simple_rnn_cell_4_635910simple_rnn_cell_4_635912*
Tin	
2*
Tout
2*
_collective_manager_ids
 *<
_output_shapes*
(:����������:����������*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *V
fQRO
M__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_635868n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���F
timeConst*
_output_shapes
: *
dtype0*
value	B : c
while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0simple_rnn_cell_4_635908simple_rnn_cell_4_635910simple_rnn_cell_4_635912*
T
2
*
_lower_using_switch_merge(*
_num_original_outputs
*:
_output_shapes(
&: : : : :����������: : : : : *%
_read_only_resource_inputs
	*
_stateful_parallelism( *
bodyR
while_body_635921*
condR
while_cond_635920*9
output_shapes(
&: : : : :����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"�����  �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������a
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:�����������
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpReadVariableOpsimple_rnn_cell_4_635908*
_output_shapes
:	P�*
dtype0�
8simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SquareSquareOsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	P��
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/SumSum<simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square:y:0@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: |
7simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
5simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mulMul@simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/mul/x:output:0>simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOpH^simple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp*^simple_rnn_cell_4/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������P: : : 2�
Gsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOpGsimple_rnn_4/simple_rnn_cell_4/kernel/Regularizer/Square/ReadVariableOp2V
)simple_rnn_cell_4/StatefulPartitionedCall)simple_rnn_cell_4/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������P
 
_user_specified_nameinputs
�
G
+__inference_reshape_40_layer_call_fn_637502

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������dP* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_reshape_40_layer_call_and_return_conditional_losses_636022d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������dP"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
while_cond_637737
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice_14
0while_while_cond_637737___redundant_placeholder04
0while_while_cond_637737___redundant_placeholder14
0while_while_cond_637737___redundant_placeholder24
0while_while_cond_637737___redundant_placeholder3
while_identity
b

while/LessLesswhile_placeholderwhile_less_strided_slice_1*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*A
_input_shapes0
.: : : : :����������: ::::: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
:
�<
�
while_body_636472
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0K
8while_simple_rnn_cell_4_matmul_readvariableop_resource_0:	P�H
9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0:	�N
:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0:
��
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorI
6while_simple_rnn_cell_4_matmul_readvariableop_resource:	P�F
7while_simple_rnn_cell_4_biasadd_readvariableop_resource:	�L
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:
����.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp�-while/simple_rnn_cell_4/MatMul/ReadVariableOp�/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����P   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������P*
element_dtype0�
'while/simple_rnn_cell_4/ones_like/ShapeShape0while/TensorArrayV2Read/TensorListGetItem:item:0*
T0*
_output_shapes
:l
'while/simple_rnn_cell_4/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
!while/simple_rnn_cell_4/ones_likeFill0while/simple_rnn_cell_4/ones_like/Shape:output:00while/simple_rnn_cell_4/ones_like/Const:output:0*
T0*'
_output_shapes
:���������Pj
%while/simple_rnn_cell_4/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *�8�?�
#while/simple_rnn_cell_4/dropout/MulMul*while/simple_rnn_cell_4/ones_like:output:0.while/simple_rnn_cell_4/dropout/Const:output:0*
T0*'
_output_shapes
:���������P
%while/simple_rnn_cell_4/dropout/ShapeShape*while/simple_rnn_cell_4/ones_like:output:0*
T0*
_output_shapes
:�
<while/simple_rnn_cell_4/dropout/random_uniform/RandomUniformRandomUniform.while/simple_rnn_cell_4/dropout/Shape:output:0*
T0*'
_output_shapes
:���������P*
dtype0*

seeds
.while/simple_rnn_cell_4/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *���=�
,while/simple_rnn_cell_4/dropout/GreaterEqualGreaterEqualEwhile/simple_rnn_cell_4/dropout/random_uniform/RandomUniform:output:07while/simple_rnn_cell_4/dropout/GreaterEqual/y:output:0*
T0*'
_output_shapes
:���������P�
$while/simple_rnn_cell_4/dropout/CastCast0while/simple_rnn_cell_4/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*'
_output_shapes
:���������P�
%while/simple_rnn_cell_4/dropout/Mul_1Mul'while/simple_rnn_cell_4/dropout/Mul:z:0(while/simple_rnn_cell_4/dropout/Cast:y:0*
T0*'
_output_shapes
:���������P�
while/simple_rnn_cell_4/mulMul0while/TensorArrayV2Read/TensorListGetItem:item:0)while/simple_rnn_cell_4/dropout/Mul_1:z:0*
T0*'
_output_shapes
:���������P�
-while/simple_rnn_cell_4/MatMul/ReadVariableOpReadVariableOp8while_simple_rnn_cell_4_matmul_readvariableop_resource_0*
_output_shapes
:	P�*
dtype0�
while/simple_rnn_cell_4/MatMulMatMulwhile/simple_rnn_cell_4/mul:z:05while/simple_rnn_cell_4/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOpReadVariableOp9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/simple_rnn_cell_4/BiasAddBiasAdd(while/simple_rnn_cell_4/MatMul:product:06while/simple_rnn_cell_4/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOpReadVariableOp:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
 while/simple_rnn_cell_4/MatMul_1MatMulwhile_placeholder_27while/simple_rnn_cell_4/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/simple_rnn_cell_4/addAddV2(while/simple_rnn_cell_4/BiasAdd:output:0*while/simple_rnn_cell_4/MatMul_1:product:0*
T0*(
_output_shapes
:����������x
while/simple_rnn_cell_4/TanhTanhwhile/simple_rnn_cell_4/add:z:0*
T0*(
_output_shapes
:����������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0 while/simple_rnn_cell_4/Tanh:y:0*
_output_shapes
: *
element_dtype0:���M
while/add/yConst*
_output_shapes
: *
dtype0*
value	B :\
	while/addAddV2while_placeholderwhile/add/y:output:0*
T0*
_output_shapes
: O
while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_1AddV2while_while_loop_counterwhile/add_1/y:output:0*
T0*
_output_shapes
: Y
while/IdentityIdentitywhile/add_1:z:0^while/NoOp*
T0*
_output_shapes
: j
while/Identity_1Identitywhile_while_maximum_iterations^while/NoOp*
T0*
_output_shapes
: Y
while/Identity_2Identitywhile/add:z:0^while/NoOp*
T0*
_output_shapes
: �
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: ~
while/Identity_4Identity while/simple_rnn_cell_4/Tanh:y:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp/^while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.^while/simple_rnn_cell_4/MatMul/ReadVariableOp0^while/simple_rnn_cell_4/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"t
7while_simple_rnn_cell_4_biasadd_readvariableop_resource9while_simple_rnn_cell_4_biasadd_readvariableop_resource_0"v
8while_simple_rnn_cell_4_matmul_1_readvariableop_resource:while_simple_rnn_cell_4_matmul_1_readvariableop_resource_0"r
6while_simple_rnn_cell_4_matmul_readvariableop_resource8while_simple_rnn_cell_4_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&: : : : :����������: : : : : 2`
.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp.while/simple_rnn_cell_4/BiasAdd/ReadVariableOp2^
-while/simple_rnn_cell_4/MatMul/ReadVariableOp-while/simple_rnn_cell_4/MatMul/ReadVariableOp2b
/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp/while/simple_rnn_cell_4/MatMul_1/ReadVariableOp: 

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:

_output_shapes
: :

_output_shapes
: "�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
<
input3
serving_default_input:0����������:
degree0
StatefulPartitionedCall:0���������<
distance0
StatefulPartitionedCall:1���������tensorflow/serving/predict:��
�
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer_with_weights-1
layer-4
layer_with_weights-2
layer-5
layer_with_weights-3
layer-6
layer_with_weights-4
layer-7
	layer_with_weights-5
	layer-8

layer_with_weights-6

layer-9
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses
"cell
#
state_spec"
_tf_keras_rnn_layer
�
$	variables
%trainable_variables
&regularization_losses
'	keras_api
(__call__
*)&call_and_return_all_conditional_losses

*kernel
+bias"
_tf_keras_layer
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses

2kernel
3bias"
_tf_keras_layer
�
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses

:kernel
;bias"
_tf_keras_layer
�
<	variables
=trainable_variables
>regularization_losses
?	keras_api
@__call__
*A&call_and_return_all_conditional_losses

Bkernel
Cbias"
_tf_keras_layer
�
D	variables
Etrainable_variables
Fregularization_losses
G	keras_api
H__call__
*I&call_and_return_all_conditional_losses

Jkernel
Kbias"
_tf_keras_layer
�
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses

Rkernel
Sbias"
_tf_keras_layer
�
T0
U1
V2
*3
+4
25
36
:7
;8
B9
C10
J11
K12
R13
S14"
trackable_list_wrapper
�
T0
U1
V2
*3
+4
25
36
:7
;8
B9
C10
J11
K12
R13
S14"
trackable_list_wrapper
<
W0
X1
Y2
Z3"
trackable_list_wrapper
�
[non_trainable_variables

\layers
]metrics
^layer_regularization_losses
_layer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
`trace_0
atrace_1
btrace_2
ctrace_32�
)__inference_model_33_layer_call_fn_636344
)__inference_model_33_layer_call_fn_637048
)__inference_model_33_layer_call_fn_637085
)__inference_model_33_layer_call_fn_636758�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z`trace_0zatrace_1zbtrace_2zctrace_3
�
dtrace_0
etrace_1
ftrace_2
gtrace_32�
D__inference_model_33_layer_call_and_return_conditional_losses_637283
D__inference_model_33_layer_call_and_return_conditional_losses_637497
D__inference_model_33_layer_call_and_return_conditional_losses_636833
D__inference_model_33_layer_call_and_return_conditional_losses_636908�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 zdtrace_0zetrace_1zftrace_2zgtrace_3
�B�
!__inference__wrapped_model_635664input"�
���
FullArgSpec
args� 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
hiter

ibeta_1

jbeta_2
	kdecay*m�+m�2m�3m�:m�;m�Bm�Cm�Jm�Km�Rm�Sm�Tm�Um�Vm�*v�+v�2v�3v�:v�;v�Bv�Cv�Jv�Kv�Rv�Sv�Tv�Uv�Vv�"
	optimizer
 "
trackable_dict_wrapper
,
lserving_default"
signature_map
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
rtrace_02�
+__inference_reshape_40_layer_call_fn_637502�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zrtrace_0
�
strace_02�
F__inference_reshape_40_layer_call_and_return_conditional_losses_637515�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zstrace_0
5
T0
U1
V2"
trackable_list_wrapper
5
T0
U1
V2"
trackable_list_wrapper
'
t0"
trackable_list_wrapper
�

ustates
vnon_trainable_variables

wlayers
xmetrics
ylayer_regularization_losses
zlayer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
�
{trace_0
|trace_1
}trace_2
~trace_32�
-__inference_simple_rnn_4_layer_call_fn_637526
-__inference_simple_rnn_4_layer_call_fn_637537
-__inference_simple_rnn_4_layer_call_fn_637548
-__inference_simple_rnn_4_layer_call_fn_637559�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z{trace_0z|trace_1z}trace_2z~trace_3
�
trace_0
�trace_1
�trace_2
�trace_32�
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_637683
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_637823
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_637947
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_638087�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 ztrace_0z�trace_1z�trace_2z�trace_3
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator

Tkernel
Urecurrent_kernel
Vbias"
_tf_keras_layer
 "
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
.
*0
+1"
trackable_list_wrapper
'
W0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
$	variables
%trainable_variables
&regularization_losses
(__call__
*)&call_and_return_all_conditional_losses
&)"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_140_layer_call_fn_638102�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_140_layer_call_and_return_conditional_losses_638118�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
#:!	�2dense_140/kernel
:2dense_140/bias
.
20
31"
trackable_list_wrapper
.
20
31"
trackable_list_wrapper
'
X0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_142_layer_call_fn_638127�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_142_layer_call_and_return_conditional_losses_638143�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
#:!	�2dense_142/kernel
:2dense_142/bias
.
:0
;1"
trackable_list_wrapper
.
:0
;1"
trackable_list_wrapper
'
Y0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_141_layer_call_fn_638152�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_141_layer_call_and_return_conditional_losses_638168�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 
2dense_141/kernel
:
2dense_141/bias
.
B0
C1"
trackable_list_wrapper
.
B0
C1"
trackable_list_wrapper
'
Z0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
<	variables
=trainable_variables
>regularization_losses
@__call__
*A&call_and_return_all_conditional_losses
&A"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_143_layer_call_fn_638177�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
E__inference_dense_143_layer_call_and_return_conditional_losses_638193�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
": 
2dense_143/kernel
:
2dense_143/bias
.
J0
K1"
trackable_list_wrapper
.
J0
K1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
D	variables
Etrainable_variables
Fregularization_losses
H__call__
*I&call_and_return_all_conditional_losses
&I"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_distance_layer_call_fn_638202�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
D__inference_distance_layer_call_and_return_conditional_losses_638213�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
!:
2distance/kernel
:2distance/bias
.
R0
S1"
trackable_list_wrapper
.
R0
S1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_degree_layer_call_fn_638222�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
�
�trace_02�
B__inference_degree_layer_call_and_return_conditional_losses_638233�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0
:
2degree/kernel
:2degree/bias
8:6	P�2%simple_rnn_4/simple_rnn_cell_4/kernel
C:A
��2/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel
2:0�2#simple_rnn_4/simple_rnn_cell_4/bias
�
�trace_02�
__inference_loss_fn_0_638244�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_1_638255�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_2_638266�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
�
�trace_02�
__inference_loss_fn_3_638277�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
 "
trackable_list_wrapper
f
0
1
2
3
4
5
6
7
	8

9"
trackable_list_wrapper
H
�0
�1
�2
�3
�4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_model_33_layer_call_fn_636344input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
)__inference_model_33_layer_call_fn_637048inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
)__inference_model_33_layer_call_fn_637085inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
)__inference_model_33_layer_call_fn_636758input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
D__inference_model_33_layer_call_and_return_conditional_losses_637283inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
D__inference_model_33_layer_call_and_return_conditional_losses_637497inputs"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
D__inference_model_33_layer_call_and_return_conditional_losses_636833input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
D__inference_model_33_layer_call_and_return_conditional_losses_636908input"�
���
FullArgSpec1
args)�&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults�
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
�B�
$__inference_signature_wrapper_636981input"�
���
FullArgSpec
args� 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
+__inference_reshape_40_layer_call_fn_637502inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
F__inference_reshape_40_layer_call_and_return_conditional_losses_637515inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
�trace_02�
__inference_loss_fn_4_638288�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� z�trace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
"0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
-__inference_simple_rnn_4_layer_call_fn_637526inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
-__inference_simple_rnn_4_layer_call_fn_637537inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
-__inference_simple_rnn_4_layer_call_fn_637548inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
-__inference_simple_rnn_4_layer_call_fn_637559inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_637683inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_637823inputs/0"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_637947inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_638087inputs"�
���
FullArgSpecB
args:�7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults�

 
p 

 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
5
T0
U1
V2"
trackable_list_wrapper
5
T0
U1
V2"
trackable_list_wrapper
'
t0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
�	variables
�trainable_variables
�regularization_losses
�__call__
+�&call_and_return_all_conditional_losses
'�"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
2__inference_simple_rnn_cell_4_layer_call_fn_638302
2__inference_simple_rnn_cell_4_layer_call_fn_638316�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
M__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_638343
M__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_638378�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
W0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_140_layer_call_fn_638102inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_140_layer_call_and_return_conditional_losses_638118inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
X0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_142_layer_call_fn_638127inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_142_layer_call_and_return_conditional_losses_638143inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
Y0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_141_layer_call_fn_638152inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_141_layer_call_and_return_conditional_losses_638168inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
Z0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_143_layer_call_fn_638177inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_dense_143_layer_call_and_return_conditional_losses_638193inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_distance_layer_call_fn_638202inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
D__inference_distance_layer_call_and_return_conditional_losses_638213inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
'__inference_degree_layer_call_fn_638222inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
B__inference_degree_layer_call_and_return_conditional_losses_638233inputs"�
���
FullArgSpec
args�
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
__inference_loss_fn_0_638244"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_1_638255"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_2_638266"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
�B�
__inference_loss_fn_3_638277"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
c
�	variables
�	keras_api

�total

�count
�
_fn_kwargs"
_tf_keras_metric
�B�
__inference_loss_fn_4_638288"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *� 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
t0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
2__inference_simple_rnn_cell_4_layer_call_fn_638302inputsstates/0"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
2__inference_simple_rnn_cell_4_layer_call_fn_638316inputsstates/0"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
M__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_638343inputsstates/0"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
�B�
M__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_638378inputsstates/0"�
���
FullArgSpec3
args+�(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults� 
annotations� *
 
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
�0
�1"
trackable_list_wrapper
.
�	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
(:&	�2Adam/dense_140/kernel/m
!:2Adam/dense_140/bias/m
(:&	�2Adam/dense_142/kernel/m
!:2Adam/dense_142/bias/m
':%
2Adam/dense_141/kernel/m
!:
2Adam/dense_141/bias/m
':%
2Adam/dense_143/kernel/m
!:
2Adam/dense_143/bias/m
&:$
2Adam/distance/kernel/m
 :2Adam/distance/bias/m
$:"
2Adam/degree/kernel/m
:2Adam/degree/bias/m
=:;	P�2,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/m
H:F
��26Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/m
7:5�2*Adam/simple_rnn_4/simple_rnn_cell_4/bias/m
(:&	�2Adam/dense_140/kernel/v
!:2Adam/dense_140/bias/v
(:&	�2Adam/dense_142/kernel/v
!:2Adam/dense_142/bias/v
':%
2Adam/dense_141/kernel/v
!:
2Adam/dense_141/bias/v
':%
2Adam/dense_143/kernel/v
!:
2Adam/dense_143/bias/v
&:$
2Adam/distance/kernel/v
 :2Adam/distance/bias/v
$:"
2Adam/degree/kernel/v
:2Adam/degree/bias/v
=:;	P�2,Adam/simple_rnn_4/simple_rnn_cell_4/kernel/v
H:F
��26Adam/simple_rnn_4/simple_rnn_cell_4/recurrent_kernel/v
7:5�2*Adam/simple_rnn_4/simple_rnn_cell_4/bias/v�
!__inference__wrapped_model_635664�TVU23*+BC:;RSJK3�0
)�&
$�!
input����������
� "_�\
*
degree �
degree���������
.
distance"�
distance����������
B__inference_degree_layer_call_and_return_conditional_losses_638233\RS/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� z
'__inference_degree_layer_call_fn_638222ORS/�,
%�"
 �
inputs���������

� "�����������
E__inference_dense_140_layer_call_and_return_conditional_losses_638118]*+0�-
&�#
!�
inputs����������
� "%�"
�
0���������
� ~
*__inference_dense_140_layer_call_fn_638102P*+0�-
&�#
!�
inputs����������
� "�����������
E__inference_dense_141_layer_call_and_return_conditional_losses_638168\:;/�,
%�"
 �
inputs���������
� "%�"
�
0���������

� }
*__inference_dense_141_layer_call_fn_638152O:;/�,
%�"
 �
inputs���������
� "����������
�
E__inference_dense_142_layer_call_and_return_conditional_losses_638143]230�-
&�#
!�
inputs����������
� "%�"
�
0���������
� ~
*__inference_dense_142_layer_call_fn_638127P230�-
&�#
!�
inputs����������
� "�����������
E__inference_dense_143_layer_call_and_return_conditional_losses_638193\BC/�,
%�"
 �
inputs���������
� "%�"
�
0���������

� }
*__inference_dense_143_layer_call_fn_638177OBC/�,
%�"
 �
inputs���������
� "����������
�
D__inference_distance_layer_call_and_return_conditional_losses_638213\JK/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� |
)__inference_distance_layer_call_fn_638202OJK/�,
%�"
 �
inputs���������

� "����������;
__inference_loss_fn_0_638244*�

� 
� "� ;
__inference_loss_fn_1_6382552�

� 
� "� ;
__inference_loss_fn_2_638266:�

� 
� "� ;
__inference_loss_fn_3_638277B�

� 
� "� ;
__inference_loss_fn_4_638288T�

� 
� "� �
D__inference_model_33_layer_call_and_return_conditional_losses_636833�TVU23*+BC:;RSJK;�8
1�.
$�!
input����������
p 

 
� "K�H
A�>
�
0/0���������
�
0/1���������
� �
D__inference_model_33_layer_call_and_return_conditional_losses_636908�TVU23*+BC:;RSJK;�8
1�.
$�!
input����������
p

 
� "K�H
A�>
�
0/0���������
�
0/1���������
� �
D__inference_model_33_layer_call_and_return_conditional_losses_637283�TVU23*+BC:;RSJK<�9
2�/
%�"
inputs����������
p 

 
� "K�H
A�>
�
0/0���������
�
0/1���������
� �
D__inference_model_33_layer_call_and_return_conditional_losses_637497�TVU23*+BC:;RSJK<�9
2�/
%�"
inputs����������
p

 
� "K�H
A�>
�
0/0���������
�
0/1���������
� �
)__inference_model_33_layer_call_fn_636344�TVU23*+BC:;RSJK;�8
1�.
$�!
input����������
p 

 
� "=�:
�
0���������
�
1����������
)__inference_model_33_layer_call_fn_636758�TVU23*+BC:;RSJK;�8
1�.
$�!
input����������
p

 
� "=�:
�
0���������
�
1����������
)__inference_model_33_layer_call_fn_637048�TVU23*+BC:;RSJK<�9
2�/
%�"
inputs����������
p 

 
� "=�:
�
0���������
�
1����������
)__inference_model_33_layer_call_fn_637085�TVU23*+BC:;RSJK<�9
2�/
%�"
inputs����������
p

 
� "=�:
�
0���������
�
1����������
F__inference_reshape_40_layer_call_and_return_conditional_losses_637515a4�1
*�'
%�"
inputs����������
� ")�&
�
0���������dP
� �
+__inference_reshape_40_layer_call_fn_637502T4�1
*�'
%�"
inputs����������
� "����������dP�
$__inference_signature_wrapper_636981�TVU23*+BC:;RSJK<�9
� 
2�/
-
input$�!
input����������"_�\
*
degree �
degree���������
.
distance"�
distance����������
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_637683~TVUO�L
E�B
4�1
/�,
inputs/0������������������P

 
p 

 
� "&�#
�
0����������
� �
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_637823~TVUO�L
E�B
4�1
/�,
inputs/0������������������P

 
p

 
� "&�#
�
0����������
� �
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_637947nTVU?�<
5�2
$�!
inputs���������dP

 
p 

 
� "&�#
�
0����������
� �
H__inference_simple_rnn_4_layer_call_and_return_conditional_losses_638087nTVU?�<
5�2
$�!
inputs���������dP

 
p

 
� "&�#
�
0����������
� �
-__inference_simple_rnn_4_layer_call_fn_637526qTVUO�L
E�B
4�1
/�,
inputs/0������������������P

 
p 

 
� "������������
-__inference_simple_rnn_4_layer_call_fn_637537qTVUO�L
E�B
4�1
/�,
inputs/0������������������P

 
p

 
� "������������
-__inference_simple_rnn_4_layer_call_fn_637548aTVU?�<
5�2
$�!
inputs���������dP

 
p 

 
� "������������
-__inference_simple_rnn_4_layer_call_fn_637559aTVU?�<
5�2
$�!
inputs���������dP

 
p

 
� "������������
M__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_638343�TVU]�Z
S�P
 �
inputs���������P
(�%
#� 
states/0����������
p 
� "T�Q
J�G
�
0/0����������
%�"
 �
0/1/0����������
� �
M__inference_simple_rnn_cell_4_layer_call_and_return_conditional_losses_638378�TVU]�Z
S�P
 �
inputs���������P
(�%
#� 
states/0����������
p
� "T�Q
J�G
�
0/0����������
%�"
 �
0/1/0����������
� �
2__inference_simple_rnn_cell_4_layer_call_fn_638302�TVU]�Z
S�P
 �
inputs���������P
(�%
#� 
states/0����������
p 
� "F�C
�
0����������
#� 
�
1/0�����������
2__inference_simple_rnn_cell_4_layer_call_fn_638316�TVU]�Z
S�P
 �
inputs���������P
(�%
#� 
states/0����������
p
� "F�C
�
0����������
#� 
�
1/0����������