��
��
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
h
ConcatV2
values"T*N
axis"Tidx
output"T"
Nint(0"	
Ttype"
Tidxtype0:
2	
8
Const
output"dtype"
valuetensor"
dtypetype
�
GatherV2
params"Tparams
indices"Tindices
axis"Taxis
output"Tparams"

batch_dimsint "
Tparamstype"
Tindicestype:
2	"
Taxistype:
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
�
Prod

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
@
ReadVariableOp
resource
value"dtype"
dtypetype�
E
Relu
features"T
activations"T"
Ttype:
2	
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
9
Softmax
logits"T
softmax"T"
Ttype:
2
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
N

StringJoin
inputs*N

output"
Nint(0"
	separatorstring 
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
 �"serve*2.9.12v2.9.0-18-gd8ce9f9c3018��
|
Adam/degree/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/degree/bias/v
u
&Adam/degree/bias/v/Read/ReadVariableOpReadVariableOpAdam/degree/bias/v*
_output_shapes
:*
dtype0
�
Adam/degree/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*%
shared_nameAdam/degree/kernel/v
}
(Adam/degree/kernel/v/Read/ReadVariableOpReadVariableOpAdam/degree/kernel/v*
_output_shapes

:
*
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
Adam/dense_45/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_45/bias/v
y
(Adam/dense_45/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_45/bias/v*
_output_shapes
:
*
dtype0
�
Adam/dense_45/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
*'
shared_nameAdam/dense_45/kernel/v
�
*Adam/dense_45/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_45/kernel/v*
_output_shapes

:2
*
dtype0
�
Adam/dense_43/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_43/bias/v
y
(Adam/dense_43/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_43/bias/v*
_output_shapes
:
*
dtype0
�
Adam/dense_43/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
*'
shared_nameAdam/dense_43/kernel/v
�
*Adam/dense_43/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_43/kernel/v*
_output_shapes

:2
*
dtype0
�
Adam/dense_44/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_44/bias/v
y
(Adam/dense_44/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_44/bias/v*
_output_shapes
:2*
dtype0
�
Adam/dense_44/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*'
shared_nameAdam/dense_44/kernel/v
�
*Adam/dense_44/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_44/kernel/v*
_output_shapes
:	�2*
dtype0
�
Adam/dense_42/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_42/bias/v
y
(Adam/dense_42/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_42/bias/v*
_output_shapes
:2*
dtype0
�
Adam/dense_42/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*'
shared_nameAdam/dense_42/kernel/v
�
*Adam/dense_42/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_42/kernel/v*
_output_shapes
:	�2*
dtype0
�
Adam/dense_41/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_41/bias/v
y
(Adam/dense_41/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_41/bias/v*
_output_shapes
:d*
dtype0
�
Adam/dense_41/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*'
shared_nameAdam/dense_41/kernel/v
�
*Adam/dense_41/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_41/kernel/v*
_output_shapes

:dd*
dtype0
�
Adam/dense_40/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_40/bias/v
y
(Adam/dense_40/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_40/bias/v*
_output_shapes
:d*
dtype0
�
Adam/dense_40/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�d*'
shared_nameAdam/dense_40/kernel/v
�
*Adam/dense_40/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_40/kernel/v*
_output_shapes
:	�d*
dtype0
|
Adam/degree/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*#
shared_nameAdam/degree/bias/m
u
&Adam/degree/bias/m/Read/ReadVariableOpReadVariableOpAdam/degree/bias/m*
_output_shapes
:*
dtype0
�
Adam/degree/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*%
shared_nameAdam/degree/kernel/m
}
(Adam/degree/kernel/m/Read/ReadVariableOpReadVariableOpAdam/degree/kernel/m*
_output_shapes

:
*
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
Adam/dense_45/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_45/bias/m
y
(Adam/dense_45/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_45/bias/m*
_output_shapes
:
*
dtype0
�
Adam/dense_45/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
*'
shared_nameAdam/dense_45/kernel/m
�
*Adam/dense_45/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_45/kernel/m*
_output_shapes

:2
*
dtype0
�
Adam/dense_43/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_43/bias/m
y
(Adam/dense_43/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_43/bias/m*
_output_shapes
:
*
dtype0
�
Adam/dense_43/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
*'
shared_nameAdam/dense_43/kernel/m
�
*Adam/dense_43/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_43/kernel/m*
_output_shapes

:2
*
dtype0
�
Adam/dense_44/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_44/bias/m
y
(Adam/dense_44/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_44/bias/m*
_output_shapes
:2*
dtype0
�
Adam/dense_44/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*'
shared_nameAdam/dense_44/kernel/m
�
*Adam/dense_44/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_44/kernel/m*
_output_shapes
:	�2*
dtype0
�
Adam/dense_42/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_42/bias/m
y
(Adam/dense_42/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_42/bias/m*
_output_shapes
:2*
dtype0
�
Adam/dense_42/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*'
shared_nameAdam/dense_42/kernel/m
�
*Adam/dense_42/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_42/kernel/m*
_output_shapes
:	�2*
dtype0
�
Adam/dense_41/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_41/bias/m
y
(Adam/dense_41/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_41/bias/m*
_output_shapes
:d*
dtype0
�
Adam/dense_41/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd*'
shared_nameAdam/dense_41/kernel/m
�
*Adam/dense_41/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_41/kernel/m*
_output_shapes

:dd*
dtype0
�
Adam/dense_40/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*%
shared_nameAdam/dense_40/bias/m
y
(Adam/dense_40/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_40/bias/m*
_output_shapes
:d*
dtype0
�
Adam/dense_40/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�d*'
shared_nameAdam/dense_40/kernel/m
�
*Adam/dense_40/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_40/kernel/m*
_output_shapes
:	�d*
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
n
degree/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedegree/bias
g
degree/bias/Read/ReadVariableOpReadVariableOpdegree/bias*
_output_shapes
:*
dtype0
v
degree/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*
shared_namedegree/kernel
o
!degree/kernel/Read/ReadVariableOpReadVariableOpdegree/kernel*
_output_shapes

:
*
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
r
dense_45/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_45/bias
k
!dense_45/bias/Read/ReadVariableOpReadVariableOpdense_45/bias*
_output_shapes
:
*
dtype0
z
dense_45/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
* 
shared_namedense_45/kernel
s
#dense_45/kernel/Read/ReadVariableOpReadVariableOpdense_45/kernel*
_output_shapes

:2
*
dtype0
r
dense_43/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_43/bias
k
!dense_43/bias/Read/ReadVariableOpReadVariableOpdense_43/bias*
_output_shapes
:
*
dtype0
z
dense_43/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
* 
shared_namedense_43/kernel
s
#dense_43/kernel/Read/ReadVariableOpReadVariableOpdense_43/kernel*
_output_shapes

:2
*
dtype0
r
dense_44/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_44/bias
k
!dense_44/bias/Read/ReadVariableOpReadVariableOpdense_44/bias*
_output_shapes
:2*
dtype0
{
dense_44/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2* 
shared_namedense_44/kernel
t
#dense_44/kernel/Read/ReadVariableOpReadVariableOpdense_44/kernel*
_output_shapes
:	�2*
dtype0
r
dense_42/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_42/bias
k
!dense_42/bias/Read/ReadVariableOpReadVariableOpdense_42/bias*
_output_shapes
:2*
dtype0
{
dense_42/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2* 
shared_namedense_42/kernel
t
#dense_42/kernel/Read/ReadVariableOpReadVariableOpdense_42/kernel*
_output_shapes
:	�2*
dtype0
r
dense_41/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_41/bias
k
!dense_41/bias/Read/ReadVariableOpReadVariableOpdense_41/bias*
_output_shapes
:d*
dtype0
z
dense_41/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:dd* 
shared_namedense_41/kernel
s
#dense_41/kernel/Read/ReadVariableOpReadVariableOpdense_41/kernel*
_output_shapes

:dd*
dtype0
r
dense_40/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:d*
shared_namedense_40/bias
k
!dense_40/bias/Read/ReadVariableOpReadVariableOpdense_40/bias*
_output_shapes
:d*
dtype0
{
dense_40/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�d* 
shared_namedense_40/kernel
t
#dense_40/kernel/Read/ReadVariableOpReadVariableOpdense_40/kernel*
_output_shapes
:	�d*
dtype0

NoOpNoOp
�v
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�u
value�uB�u B�u
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
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
layer_with_weights-7
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures*
* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias*
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias*
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
,_random_generator* 
�
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses* 
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias*
�
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

Akernel
Bbias*
�
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

Ikernel
Jbias*
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias*
�
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses

Ykernel
Zbias*
�
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses

akernel
bbias*
z
0
1
$2
%3
94
:5
A6
B7
I8
J9
Q10
R11
Y12
Z13
a14
b15*
z
0
1
$2
%3
94
:5
A6
B7
I8
J9
Q10
R11
Y12
Z13
a14
b15*
,
c0
d1
e2
f3
g4
h5* 
�
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
ntrace_0
otrace_1
ptrace_2
qtrace_3* 
6
rtrace_0
strace_1
ttrace_2
utrace_3* 
* 
�
viter

wbeta_1

xbeta_2
	ydecaym�m�$m�%m�9m�:m�Am�Bm�Im�Jm�Qm�Rm�Ym�Zm�am�bm�v�v�$v�%v�9v�:v�Av�Bv�Iv�Jv�Qv�Rv�Yv�Zv�av�bv�*
* 

zserving_default* 

0
1*

0
1*
	
c0* 
�
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_40/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_40/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*

$0
%1*

$0
%1*
	
d0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_41/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_41/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses* 

�trace_0
�trace_1* 

�trace_0
�trace_1* 
* 
* 
* 
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

90
:1*

90
:1*
	
e0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_42/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_42/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

A0
B1*

A0
B1*
	
f0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_44/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_44/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

I0
J1*

I0
J1*
	
g0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_43/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_43/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

Q0
R1*

Q0
R1*
	
h0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_45/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_45/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

Y0
Z1*

Y0
Z1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdistance/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdistance/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

a0
b1*

a0
b1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
]W
VARIABLE_VALUEdegree/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEdegree/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 

�trace_0* 
* 
R
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
9
10*
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
	
c0* 
* 
* 
* 
* 
* 
* 
	
d0* 
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
* 
	
e0* 
* 
* 
* 
* 
* 
* 
	
f0* 
* 
* 
* 
* 
* 
* 
	
g0* 
* 
* 
* 
* 
* 
* 
	
h0* 
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
�|
VARIABLE_VALUEAdam/dense_40/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_40/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_41/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_41/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_42/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_42/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_44/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_44/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_43/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_43/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_45/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_45/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/distance/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/distance/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/degree/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/degree/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_40/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_40/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_41/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_41/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_42/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_42/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_44/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_44/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_43/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_43/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_45/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_45/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/distance/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/distance/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/degree/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/degree/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
serving_default_inputPlaceholder*,
_output_shapes
:����������*
dtype0*!
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputdense_40/kerneldense_40/biasdense_41/kerneldense_41/biasdense_44/kerneldense_44/biasdense_42/kerneldense_42/biasdense_45/kerneldense_45/biasdense_43/kerneldense_43/biasdegree/kerneldegree/biasdistance/kerneldistance/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *-
f(R&
$__inference_signature_wrapper_788682
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_40/kernel/Read/ReadVariableOp!dense_40/bias/Read/ReadVariableOp#dense_41/kernel/Read/ReadVariableOp!dense_41/bias/Read/ReadVariableOp#dense_42/kernel/Read/ReadVariableOp!dense_42/bias/Read/ReadVariableOp#dense_44/kernel/Read/ReadVariableOp!dense_44/bias/Read/ReadVariableOp#dense_43/kernel/Read/ReadVariableOp!dense_43/bias/Read/ReadVariableOp#dense_45/kernel/Read/ReadVariableOp!dense_45/bias/Read/ReadVariableOp#distance/kernel/Read/ReadVariableOp!distance/bias/Read/ReadVariableOp!degree/kernel/Read/ReadVariableOpdegree/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_40/kernel/m/Read/ReadVariableOp(Adam/dense_40/bias/m/Read/ReadVariableOp*Adam/dense_41/kernel/m/Read/ReadVariableOp(Adam/dense_41/bias/m/Read/ReadVariableOp*Adam/dense_42/kernel/m/Read/ReadVariableOp(Adam/dense_42/bias/m/Read/ReadVariableOp*Adam/dense_44/kernel/m/Read/ReadVariableOp(Adam/dense_44/bias/m/Read/ReadVariableOp*Adam/dense_43/kernel/m/Read/ReadVariableOp(Adam/dense_43/bias/m/Read/ReadVariableOp*Adam/dense_45/kernel/m/Read/ReadVariableOp(Adam/dense_45/bias/m/Read/ReadVariableOp*Adam/distance/kernel/m/Read/ReadVariableOp(Adam/distance/bias/m/Read/ReadVariableOp(Adam/degree/kernel/m/Read/ReadVariableOp&Adam/degree/bias/m/Read/ReadVariableOp*Adam/dense_40/kernel/v/Read/ReadVariableOp(Adam/dense_40/bias/v/Read/ReadVariableOp*Adam/dense_41/kernel/v/Read/ReadVariableOp(Adam/dense_41/bias/v/Read/ReadVariableOp*Adam/dense_42/kernel/v/Read/ReadVariableOp(Adam/dense_42/bias/v/Read/ReadVariableOp*Adam/dense_44/kernel/v/Read/ReadVariableOp(Adam/dense_44/bias/v/Read/ReadVariableOp*Adam/dense_43/kernel/v/Read/ReadVariableOp(Adam/dense_43/bias/v/Read/ReadVariableOp*Adam/dense_45/kernel/v/Read/ReadVariableOp(Adam/dense_45/bias/v/Read/ReadVariableOp*Adam/distance/kernel/v/Read/ReadVariableOp(Adam/distance/bias/v/Read/ReadVariableOp(Adam/degree/kernel/v/Read/ReadVariableOp&Adam/degree/bias/v/Read/ReadVariableOpConst*K
TinD
B2@	*
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
__inference__traced_save_789621
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_40/kerneldense_40/biasdense_41/kerneldense_41/biasdense_42/kerneldense_42/biasdense_44/kerneldense_44/biasdense_43/kerneldense_43/biasdense_45/kerneldense_45/biasdistance/kerneldistance/biasdegree/kerneldegree/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decaytotal_4count_4total_3count_3total_2count_2total_1count_1totalcountAdam/dense_40/kernel/mAdam/dense_40/bias/mAdam/dense_41/kernel/mAdam/dense_41/bias/mAdam/dense_42/kernel/mAdam/dense_42/bias/mAdam/dense_44/kernel/mAdam/dense_44/bias/mAdam/dense_43/kernel/mAdam/dense_43/bias/mAdam/dense_45/kernel/mAdam/dense_45/bias/mAdam/distance/kernel/mAdam/distance/bias/mAdam/degree/kernel/mAdam/degree/bias/mAdam/dense_40/kernel/vAdam/dense_40/bias/vAdam/dense_41/kernel/vAdam/dense_41/bias/vAdam/dense_42/kernel/vAdam/dense_42/bias/vAdam/dense_44/kernel/vAdam/dense_44/bias/vAdam/dense_43/kernel/vAdam/dense_43/bias/vAdam/dense_45/kernel/vAdam/dense_45/bias/vAdam/distance/kernel/vAdam/distance/bias/vAdam/degree/kernel/vAdam/degree/bias/v*J
TinC
A2?*
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
"__inference__traced_restore_789817�
�
�
)__inference_dense_44_layer_call_fn_789239

inputs
unknown:	�2
	unknown_0:2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_44_layer_call_and_return_conditional_losses_787945o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
a
E__inference_flatten_9_layer_call_and_return_conditional_losses_787927

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�a
�	
C__inference_model_9_layer_call_and_return_conditional_losses_788089

inputs"
dense_40_787866:	�d
dense_40_787868:d!
dense_41_787909:dd
dense_41_787911:d"
dense_44_787946:	�2
dense_44_787948:2"
dense_42_787968:	�2
dense_42_787970:2!
dense_45_787990:2

dense_45_787992:
!
dense_43_788012:2

dense_43_788014:

degree_788029:

degree_788031:!
distance_788046:

distance_788048:
identity

identity_1��degree/StatefulPartitionedCall� dense_40/StatefulPartitionedCall�1dense_40/kernel/Regularizer/Square/ReadVariableOp� dense_41/StatefulPartitionedCall�1dense_41/kernel/Regularizer/Square/ReadVariableOp� dense_42/StatefulPartitionedCall�1dense_42/kernel/Regularizer/Square/ReadVariableOp� dense_43/StatefulPartitionedCall�1dense_43/kernel/Regularizer/Square/ReadVariableOp� dense_44/StatefulPartitionedCall�1dense_44/kernel/Regularizer/Square/ReadVariableOp� dense_45/StatefulPartitionedCall�1dense_45/kernel/Regularizer/Square/ReadVariableOp� distance/StatefulPartitionedCall�
 dense_40/StatefulPartitionedCallStatefulPartitionedCallinputsdense_40_787866dense_40_787868*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_40_layer_call_and_return_conditional_losses_787865�
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0dense_41_787909dense_41_787911*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_787908�
dropout_9/PartitionedCallPartitionedCall)dense_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_787919�
flatten_9/PartitionedCallPartitionedCall"dropout_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_787927�
 dense_44/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_44_787946dense_44_787948*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_44_layer_call_and_return_conditional_losses_787945�
 dense_42/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_42_787968dense_42_787970*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_42_layer_call_and_return_conditional_losses_787967�
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0dense_45_787990dense_45_787992*
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
GPU2*0J 8� *M
fHRF
D__inference_dense_45_layer_call_and_return_conditional_losses_787989�
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_788012dense_43_788014*
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
GPU2*0J 8� *M
fHRF
D__inference_dense_43_layer_call_and_return_conditional_losses_788011�
degree/StatefulPartitionedCallStatefulPartitionedCall)dense_45/StatefulPartitionedCall:output:0degree_788029degree_788031*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_degree_layer_call_and_return_conditional_losses_788028�
 distance/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0distance_788046distance_788048*
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
D__inference_distance_layer_call_and_return_conditional_losses_788045�
1dense_40/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_40_787866*
_output_shapes
:	�d*
dtype0�
"dense_40/kernel/Regularizer/SquareSquare9dense_40/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�dr
!dense_40/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_40/kernel/Regularizer/SumSum&dense_40/kernel/Regularizer/Square:y:0*dense_40/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_40/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_40/kernel/Regularizer/mulMul*dense_40/kernel/Regularizer/mul/x:output:0(dense_40/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_41/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_41_787909*
_output_shapes

:dd*
dtype0�
"dense_41/kernel/Regularizer/SquareSquare9dense_41/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:ddr
!dense_41/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_41/kernel/Regularizer/SumSum&dense_41/kernel/Regularizer/Square:y:0*dense_41/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_41/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_41/kernel/Regularizer/mulMul*dense_41/kernel/Regularizer/mul/x:output:0(dense_41/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_42/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_42_787968*
_output_shapes
:	�2*
dtype0�
"dense_42/kernel/Regularizer/SquareSquare9dense_42/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_42/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_42/kernel/Regularizer/SumSum&dense_42/kernel/Regularizer/Square:y:0*dense_42/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_42/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_42/kernel/Regularizer/mulMul*dense_42/kernel/Regularizer/mul/x:output:0(dense_42/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_44_787946*
_output_shapes
:	�2*
dtype0�
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_43_788012*
_output_shapes

:2
*
dtype0�
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_45_787990*
_output_shapes

:2
*
dtype0�
"dense_45/kernel/Regularizer/SquareSquare9dense_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_45/kernel/Regularizer/SumSum&dense_45/kernel/Regularizer/Square:y:0*dense_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_45/kernel/Regularizer/mulMul*dense_45/kernel/Regularizer/mul/x:output:0(dense_45/kernel/Regularizer/Sum:output:0*
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
:����������
NoOpNoOp^degree/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall2^dense_40/kernel/Regularizer/Square/ReadVariableOp!^dense_41/StatefulPartitionedCall2^dense_41/kernel/Regularizer/Square/ReadVariableOp!^dense_42/StatefulPartitionedCall2^dense_42/kernel/Regularizer/Square/ReadVariableOp!^dense_43/StatefulPartitionedCall2^dense_43/kernel/Regularizer/Square/ReadVariableOp!^dense_44/StatefulPartitionedCall2^dense_44/kernel/Regularizer/Square/ReadVariableOp!^dense_45/StatefulPartitionedCall2^dense_45/kernel/Regularizer/Square/ReadVariableOp!^distance/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������: : : : : : : : : : : : : : : : 2@
degree/StatefulPartitionedCalldegree/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2f
1dense_40/kernel/Regularizer/Square/ReadVariableOp1dense_40/kernel/Regularizer/Square/ReadVariableOp2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2f
1dense_41/kernel/Regularizer/Square/ReadVariableOp1dense_41/kernel/Regularizer/Square/ReadVariableOp2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2f
1dense_42/kernel/Regularizer/Square/ReadVariableOp1dense_42/kernel/Regularizer/Square/ReadVariableOp2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2f
1dense_45/kernel/Regularizer/Square/ReadVariableOp1dense_45/kernel/Regularizer/Square/ReadVariableOp2D
 distance/StatefulPartitionedCall distance/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�u
�
__inference__traced_save_789621
file_prefix.
*savev2_dense_40_kernel_read_readvariableop,
(savev2_dense_40_bias_read_readvariableop.
*savev2_dense_41_kernel_read_readvariableop,
(savev2_dense_41_bias_read_readvariableop.
*savev2_dense_42_kernel_read_readvariableop,
(savev2_dense_42_bias_read_readvariableop.
*savev2_dense_44_kernel_read_readvariableop,
(savev2_dense_44_bias_read_readvariableop.
*savev2_dense_43_kernel_read_readvariableop,
(savev2_dense_43_bias_read_readvariableop.
*savev2_dense_45_kernel_read_readvariableop,
(savev2_dense_45_bias_read_readvariableop.
*savev2_distance_kernel_read_readvariableop,
(savev2_distance_bias_read_readvariableop,
(savev2_degree_kernel_read_readvariableop*
&savev2_degree_bias_read_readvariableop(
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
 savev2_count_read_readvariableop5
1savev2_adam_dense_40_kernel_m_read_readvariableop3
/savev2_adam_dense_40_bias_m_read_readvariableop5
1savev2_adam_dense_41_kernel_m_read_readvariableop3
/savev2_adam_dense_41_bias_m_read_readvariableop5
1savev2_adam_dense_42_kernel_m_read_readvariableop3
/savev2_adam_dense_42_bias_m_read_readvariableop5
1savev2_adam_dense_44_kernel_m_read_readvariableop3
/savev2_adam_dense_44_bias_m_read_readvariableop5
1savev2_adam_dense_43_kernel_m_read_readvariableop3
/savev2_adam_dense_43_bias_m_read_readvariableop5
1savev2_adam_dense_45_kernel_m_read_readvariableop3
/savev2_adam_dense_45_bias_m_read_readvariableop5
1savev2_adam_distance_kernel_m_read_readvariableop3
/savev2_adam_distance_bias_m_read_readvariableop3
/savev2_adam_degree_kernel_m_read_readvariableop1
-savev2_adam_degree_bias_m_read_readvariableop5
1savev2_adam_dense_40_kernel_v_read_readvariableop3
/savev2_adam_dense_40_bias_v_read_readvariableop5
1savev2_adam_dense_41_kernel_v_read_readvariableop3
/savev2_adam_dense_41_bias_v_read_readvariableop5
1savev2_adam_dense_42_kernel_v_read_readvariableop3
/savev2_adam_dense_42_bias_v_read_readvariableop5
1savev2_adam_dense_44_kernel_v_read_readvariableop3
/savev2_adam_dense_44_bias_v_read_readvariableop5
1savev2_adam_dense_43_kernel_v_read_readvariableop3
/savev2_adam_dense_43_bias_v_read_readvariableop5
1savev2_adam_dense_45_kernel_v_read_readvariableop3
/savev2_adam_dense_45_bias_v_read_readvariableop5
1savev2_adam_distance_kernel_v_read_readvariableop3
/savev2_adam_distance_bias_v_read_readvariableop3
/savev2_adam_degree_kernel_v_read_readvariableop1
-savev2_adam_degree_bias_v_read_readvariableop
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
: �"
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:?*
dtype0*�!
value�!B�!?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:?*
dtype0*�
value�B�?B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_40_kernel_read_readvariableop(savev2_dense_40_bias_read_readvariableop*savev2_dense_41_kernel_read_readvariableop(savev2_dense_41_bias_read_readvariableop*savev2_dense_42_kernel_read_readvariableop(savev2_dense_42_bias_read_readvariableop*savev2_dense_44_kernel_read_readvariableop(savev2_dense_44_bias_read_readvariableop*savev2_dense_43_kernel_read_readvariableop(savev2_dense_43_bias_read_readvariableop*savev2_dense_45_kernel_read_readvariableop(savev2_dense_45_bias_read_readvariableop*savev2_distance_kernel_read_readvariableop(savev2_distance_bias_read_readvariableop(savev2_degree_kernel_read_readvariableop&savev2_degree_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_40_kernel_m_read_readvariableop/savev2_adam_dense_40_bias_m_read_readvariableop1savev2_adam_dense_41_kernel_m_read_readvariableop/savev2_adam_dense_41_bias_m_read_readvariableop1savev2_adam_dense_42_kernel_m_read_readvariableop/savev2_adam_dense_42_bias_m_read_readvariableop1savev2_adam_dense_44_kernel_m_read_readvariableop/savev2_adam_dense_44_bias_m_read_readvariableop1savev2_adam_dense_43_kernel_m_read_readvariableop/savev2_adam_dense_43_bias_m_read_readvariableop1savev2_adam_dense_45_kernel_m_read_readvariableop/savev2_adam_dense_45_bias_m_read_readvariableop1savev2_adam_distance_kernel_m_read_readvariableop/savev2_adam_distance_bias_m_read_readvariableop/savev2_adam_degree_kernel_m_read_readvariableop-savev2_adam_degree_bias_m_read_readvariableop1savev2_adam_dense_40_kernel_v_read_readvariableop/savev2_adam_dense_40_bias_v_read_readvariableop1savev2_adam_dense_41_kernel_v_read_readvariableop/savev2_adam_dense_41_bias_v_read_readvariableop1savev2_adam_dense_42_kernel_v_read_readvariableop/savev2_adam_dense_42_bias_v_read_readvariableop1savev2_adam_dense_44_kernel_v_read_readvariableop/savev2_adam_dense_44_bias_v_read_readvariableop1savev2_adam_dense_43_kernel_v_read_readvariableop/savev2_adam_dense_43_bias_v_read_readvariableop1savev2_adam_dense_45_kernel_v_read_readvariableop/savev2_adam_dense_45_bias_v_read_readvariableop1savev2_adam_distance_kernel_v_read_readvariableop/savev2_adam_distance_bias_v_read_readvariableop/savev2_adam_degree_kernel_v_read_readvariableop-savev2_adam_degree_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *M
dtypesC
A2?	�
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
�: :	�d:d:dd:d:	�2:2:	�2:2:2
:
:2
:
:
::
:: : : : : : : : : : : : : : :	�d:d:dd:d:	�2:2:	�2:2:2
:
:2
:
:
::
::	�d:d:dd:d:	�2:2:	�2:2:2
:
:2
:
:
::
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	�d: 

_output_shapes
:d:$ 

_output_shapes

:dd: 

_output_shapes
:d:%!

_output_shapes
:	�2: 

_output_shapes
:2:%!

_output_shapes
:	�2: 

_output_shapes
:2:$	 

_output_shapes

:2
: 


_output_shapes
:
:$ 

_output_shapes

:2
: 

_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::$ 

_output_shapes

:
: 

_output_shapes
::
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
: :

_output_shapes
: :%!

_output_shapes
:	�d:  

_output_shapes
:d:$! 

_output_shapes

:dd: "

_output_shapes
:d:%#!

_output_shapes
:	�2: $

_output_shapes
:2:%%!

_output_shapes
:	�2: &

_output_shapes
:2:$' 

_output_shapes

:2
: (

_output_shapes
:
:$) 

_output_shapes

:2
: *

_output_shapes
:
:$+ 

_output_shapes

:
: ,

_output_shapes
::$- 

_output_shapes

:
: .

_output_shapes
::%/!

_output_shapes
:	�d: 0

_output_shapes
:d:$1 

_output_shapes

:dd: 2

_output_shapes
:d:%3!

_output_shapes
:	�2: 4

_output_shapes
:2:%5!

_output_shapes
:	�2: 6

_output_shapes
:2:$7 

_output_shapes

:2
: 8

_output_shapes
:
:$9 

_output_shapes

:2
: :

_output_shapes
:
:$; 

_output_shapes

:
: <

_output_shapes
::$= 

_output_shapes

:
: >

_output_shapes
::?

_output_shapes
: 
�
�
'__inference_degree_layer_call_fn_789334

inputs
unknown:

	unknown_0:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_degree_layer_call_and_return_conditional_losses_788028o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������`
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
�%
�
D__inference_dense_41_layer_call_and_return_conditional_losses_789167

inputs3
!tensordot_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�1dense_41/kernel/Regularizer/Square/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������d�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:dY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������d�
1dense_41/kernel/Regularizer/Square/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype0�
"dense_41/kernel/Regularizer/SquareSquare9dense_41/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:ddr
!dense_41/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_41/kernel/Regularizer/SumSum&dense_41/kernel/Regularizer/Square:y:0*dense_41/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_41/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_41/kernel/Regularizer/mulMul*dense_41/kernel/Regularizer/mul/x:output:0(dense_41/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp2^dense_41/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp2f
1dense_41/kernel/Regularizer/Square/ReadVariableOp1dense_41/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
__inference_loss_fn_0_789356M
:dense_40_kernel_regularizer_square_readvariableop_resource:	�d
identity��1dense_40/kernel/Regularizer/Square/ReadVariableOp�
1dense_40/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_40_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	�d*
dtype0�
"dense_40/kernel/Regularizer/SquareSquare9dense_40/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�dr
!dense_40/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_40/kernel/Regularizer/SumSum&dense_40/kernel/Regularizer/Square:y:0*dense_40/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_40/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_40/kernel/Regularizer/mulMul*dense_40/kernel/Regularizer/mul/x:output:0(dense_40/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#dense_40/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^dense_40/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_40/kernel/Regularizer/Square/ReadVariableOp1dense_40/kernel/Regularizer/Square/ReadVariableOp
�
�
D__inference_dense_45_layer_call_and_return_conditional_losses_787989

inputs0
matmul_readvariableop_resource:2
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_45/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
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
1dense_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
"dense_45/kernel/Regularizer/SquareSquare9dense_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_45/kernel/Regularizer/SumSum&dense_45/kernel/Regularizer/Square:y:0*dense_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_45/kernel/Regularizer/mulMul*dense_45/kernel/Regularizer/mul/x:output:0(dense_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_45/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_45/kernel/Regularizer/Square/ReadVariableOp1dense_45/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
D__inference_dense_42_layer_call_and_return_conditional_losses_789230

inputs1
matmul_readvariableop_resource:	�2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_42/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
1dense_42/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
"dense_42/kernel/Regularizer/SquareSquare9dense_42/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_42/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_42/kernel/Regularizer/SumSum&dense_42/kernel/Regularizer/Square:y:0*dense_42/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_42/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_42/kernel/Regularizer/mulMul*dense_42/kernel/Regularizer/mul/x:output:0(dense_42/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_42/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_42/kernel/Regularizer/Square/ReadVariableOp1dense_42/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
a
E__inference_flatten_9_layer_call_and_return_conditional_losses_789205

inputs
identityV
ConstConst*
_output_shapes
:*
dtype0*
valueB"����   ]
ReshapeReshapeinputsConst:output:0*
T0*(
_output_shapes
:����������Y
IdentityIdentityReshape:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
D__inference_dense_42_layer_call_and_return_conditional_losses_787967

inputs1
matmul_readvariableop_resource:	�2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_42/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
1dense_42/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
"dense_42/kernel/Regularizer/SquareSquare9dense_42/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_42/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_42/kernel/Regularizer/SumSum&dense_42/kernel/Regularizer/Square:y:0*dense_42/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_42/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_42/kernel/Regularizer/mulMul*dense_42/kernel/Regularizer/mul/x:output:0(dense_42/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_42/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_42/kernel/Regularizer/Square/ReadVariableOp1dense_42/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_dense_43_layer_call_and_return_conditional_losses_789280

inputs0
matmul_readvariableop_resource:2
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_43/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
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
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_43/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
(__inference_model_9_layer_call_fn_788796

inputs
unknown:	�d
	unknown_0:d
	unknown_1:dd
	unknown_2:d
	unknown_3:	�2
	unknown_4:2
	unknown_5:	�2
	unknown_6:2
	unknown_7:2

	unknown_8:

	unknown_9:2


unknown_10:


unknown_11:


unknown_12:

unknown_13:


unknown_14:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_model_9_layer_call_and_return_conditional_losses_788359o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_789182

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:���������d_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������d"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
D__inference_dense_44_layer_call_and_return_conditional_losses_787945

inputs1
matmul_readvariableop_resource:	�2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_44/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_44/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
B__inference_degree_layer_call_and_return_conditional_losses_788028

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
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
�
F
*__inference_flatten_9_layer_call_fn_789199

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_787927a
IdentityIdentityPartitionedCall:output:0*
T0*(
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_788682	
input
unknown:	�d
	unknown_0:d
	unknown_1:dd
	unknown_2:d
	unknown_3:	�2
	unknown_4:2
	unknown_5:	�2
	unknown_6:2
	unknown_7:2

	unknown_8:

	unknown_9:2


unknown_10:


unknown_11:


unknown_12:

unknown_13:


unknown_14:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� **
f%R#
!__inference__wrapped_model_787821o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

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
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:����������

_user_specified_nameinput
�
F
*__inference_dropout_9_layer_call_fn_789172

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
:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_787919d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
D__inference_dense_44_layer_call_and_return_conditional_losses_789255

inputs1
matmul_readvariableop_resource:	�2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_44/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_44/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_model_9_layer_call_fn_788126	
input
unknown:	�d
	unknown_0:d
	unknown_1:dd
	unknown_2:d
	unknown_3:	�2
	unknown_4:2
	unknown_5:	�2
	unknown_6:2
	unknown_7:2

	unknown_8:

	unknown_9:2


unknown_10:


unknown_11:


unknown_12:

unknown_13:


unknown_14:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_model_9_layer_call_and_return_conditional_losses_788089o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:����������

_user_specified_nameinput
�a
�	
C__inference_model_9_layer_call_and_return_conditional_losses_788518	
input"
dense_40_788438:	�d
dense_40_788440:d!
dense_41_788443:dd
dense_41_788445:d"
dense_44_788450:	�2
dense_44_788452:2"
dense_42_788455:	�2
dense_42_788457:2!
dense_45_788460:2

dense_45_788462:
!
dense_43_788465:2

dense_43_788467:

degree_788470:

degree_788472:!
distance_788475:

distance_788477:
identity

identity_1��degree/StatefulPartitionedCall� dense_40/StatefulPartitionedCall�1dense_40/kernel/Regularizer/Square/ReadVariableOp� dense_41/StatefulPartitionedCall�1dense_41/kernel/Regularizer/Square/ReadVariableOp� dense_42/StatefulPartitionedCall�1dense_42/kernel/Regularizer/Square/ReadVariableOp� dense_43/StatefulPartitionedCall�1dense_43/kernel/Regularizer/Square/ReadVariableOp� dense_44/StatefulPartitionedCall�1dense_44/kernel/Regularizer/Square/ReadVariableOp� dense_45/StatefulPartitionedCall�1dense_45/kernel/Regularizer/Square/ReadVariableOp� distance/StatefulPartitionedCall�
 dense_40/StatefulPartitionedCallStatefulPartitionedCallinputdense_40_788438dense_40_788440*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_40_layer_call_and_return_conditional_losses_787865�
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0dense_41_788443dense_41_788445*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_787908�
dropout_9/PartitionedCallPartitionedCall)dense_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_787919�
flatten_9/PartitionedCallPartitionedCall"dropout_9/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_787927�
 dense_44/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_44_788450dense_44_788452*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_44_layer_call_and_return_conditional_losses_787945�
 dense_42/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_42_788455dense_42_788457*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_42_layer_call_and_return_conditional_losses_787967�
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0dense_45_788460dense_45_788462*
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
GPU2*0J 8� *M
fHRF
D__inference_dense_45_layer_call_and_return_conditional_losses_787989�
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_788465dense_43_788467*
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
GPU2*0J 8� *M
fHRF
D__inference_dense_43_layer_call_and_return_conditional_losses_788011�
degree/StatefulPartitionedCallStatefulPartitionedCall)dense_45/StatefulPartitionedCall:output:0degree_788470degree_788472*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_degree_layer_call_and_return_conditional_losses_788028�
 distance/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0distance_788475distance_788477*
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
D__inference_distance_layer_call_and_return_conditional_losses_788045�
1dense_40/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_40_788438*
_output_shapes
:	�d*
dtype0�
"dense_40/kernel/Regularizer/SquareSquare9dense_40/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�dr
!dense_40/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_40/kernel/Regularizer/SumSum&dense_40/kernel/Regularizer/Square:y:0*dense_40/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_40/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_40/kernel/Regularizer/mulMul*dense_40/kernel/Regularizer/mul/x:output:0(dense_40/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_41/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_41_788443*
_output_shapes

:dd*
dtype0�
"dense_41/kernel/Regularizer/SquareSquare9dense_41/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:ddr
!dense_41/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_41/kernel/Regularizer/SumSum&dense_41/kernel/Regularizer/Square:y:0*dense_41/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_41/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_41/kernel/Regularizer/mulMul*dense_41/kernel/Regularizer/mul/x:output:0(dense_41/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_42/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_42_788455*
_output_shapes
:	�2*
dtype0�
"dense_42/kernel/Regularizer/SquareSquare9dense_42/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_42/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_42/kernel/Regularizer/SumSum&dense_42/kernel/Regularizer/Square:y:0*dense_42/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_42/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_42/kernel/Regularizer/mulMul*dense_42/kernel/Regularizer/mul/x:output:0(dense_42/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_44_788450*
_output_shapes
:	�2*
dtype0�
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_43_788465*
_output_shapes

:2
*
dtype0�
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_45_788460*
_output_shapes

:2
*
dtype0�
"dense_45/kernel/Regularizer/SquareSquare9dense_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_45/kernel/Regularizer/SumSum&dense_45/kernel/Regularizer/Square:y:0*dense_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_45/kernel/Regularizer/mulMul*dense_45/kernel/Regularizer/mul/x:output:0(dense_45/kernel/Regularizer/Sum:output:0*
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
:����������
NoOpNoOp^degree/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall2^dense_40/kernel/Regularizer/Square/ReadVariableOp!^dense_41/StatefulPartitionedCall2^dense_41/kernel/Regularizer/Square/ReadVariableOp!^dense_42/StatefulPartitionedCall2^dense_42/kernel/Regularizer/Square/ReadVariableOp!^dense_43/StatefulPartitionedCall2^dense_43/kernel/Regularizer/Square/ReadVariableOp!^dense_44/StatefulPartitionedCall2^dense_44/kernel/Regularizer/Square/ReadVariableOp!^dense_45/StatefulPartitionedCall2^dense_45/kernel/Regularizer/Square/ReadVariableOp!^distance/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������: : : : : : : : : : : : : : : : 2@
degree/StatefulPartitionedCalldegree/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2f
1dense_40/kernel/Regularizer/Square/ReadVariableOp1dense_40/kernel/Regularizer/Square/ReadVariableOp2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2f
1dense_41/kernel/Regularizer/Square/ReadVariableOp1dense_41/kernel/Regularizer/Square/ReadVariableOp2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2f
1dense_42/kernel/Regularizer/Square/ReadVariableOp1dense_42/kernel/Regularizer/Square/ReadVariableOp2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2f
1dense_45/kernel/Regularizer/Square/ReadVariableOp1dense_45/kernel/Regularizer/Square/ReadVariableOp2D
 distance/StatefulPartitionedCall distance/StatefulPartitionedCall:S O
,
_output_shapes
:����������

_user_specified_nameinput
�
�
)__inference_distance_layer_call_fn_789314

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
D__inference_distance_layer_call_and_return_conditional_losses_788045o
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
�
�
__inference_loss_fn_2_789378M
:dense_42_kernel_regularizer_square_readvariableop_resource:	�2
identity��1dense_42/kernel/Regularizer/Square/ReadVariableOp�
1dense_42/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_42_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
"dense_42/kernel/Regularizer/SquareSquare9dense_42/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_42/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_42/kernel/Regularizer/SumSum&dense_42/kernel/Regularizer/Square:y:0*dense_42/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_42/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_42/kernel/Regularizer/mulMul*dense_42/kernel/Regularizer/mul/x:output:0(dense_42/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#dense_42/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^dense_42/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_42/kernel/Regularizer/Square/ReadVariableOp1dense_42/kernel/Regularizer/Square/ReadVariableOp
�
�
)__inference_dense_41_layer_call_fn_789130

inputs
unknown:dd
	unknown_0:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_787908s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
D__inference_dense_45_layer_call_and_return_conditional_losses_789305

inputs0
matmul_readvariableop_resource:2
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_45/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
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
1dense_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
"dense_45/kernel/Regularizer/SquareSquare9dense_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_45/kernel/Regularizer/SumSum&dense_45/kernel/Regularizer/Square:y:0*dense_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_45/kernel/Regularizer/mulMul*dense_45/kernel/Regularizer/mul/x:output:0(dense_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_45/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_45/kernel/Regularizer/Square/ReadVariableOp1dense_45/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�b
�	
C__inference_model_9_layer_call_and_return_conditional_losses_788601	
input"
dense_40_788521:	�d
dense_40_788523:d!
dense_41_788526:dd
dense_41_788528:d"
dense_44_788533:	�2
dense_44_788535:2"
dense_42_788538:	�2
dense_42_788540:2!
dense_45_788543:2

dense_45_788545:
!
dense_43_788548:2

dense_43_788550:

degree_788553:

degree_788555:!
distance_788558:

distance_788560:
identity

identity_1��degree/StatefulPartitionedCall� dense_40/StatefulPartitionedCall�1dense_40/kernel/Regularizer/Square/ReadVariableOp� dense_41/StatefulPartitionedCall�1dense_41/kernel/Regularizer/Square/ReadVariableOp� dense_42/StatefulPartitionedCall�1dense_42/kernel/Regularizer/Square/ReadVariableOp� dense_43/StatefulPartitionedCall�1dense_43/kernel/Regularizer/Square/ReadVariableOp� dense_44/StatefulPartitionedCall�1dense_44/kernel/Regularizer/Square/ReadVariableOp� dense_45/StatefulPartitionedCall�1dense_45/kernel/Regularizer/Square/ReadVariableOp� distance/StatefulPartitionedCall�!dropout_9/StatefulPartitionedCall�
 dense_40/StatefulPartitionedCallStatefulPartitionedCallinputdense_40_788521dense_40_788523*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_40_layer_call_and_return_conditional_losses_787865�
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0dense_41_788526dense_41_788528*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_787908�
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall)dense_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_788212�
flatten_9/PartitionedCallPartitionedCall*dropout_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_787927�
 dense_44/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_44_788533dense_44_788535*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_44_layer_call_and_return_conditional_losses_787945�
 dense_42/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_42_788538dense_42_788540*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_42_layer_call_and_return_conditional_losses_787967�
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0dense_45_788543dense_45_788545*
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
GPU2*0J 8� *M
fHRF
D__inference_dense_45_layer_call_and_return_conditional_losses_787989�
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_788548dense_43_788550*
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
GPU2*0J 8� *M
fHRF
D__inference_dense_43_layer_call_and_return_conditional_losses_788011�
degree/StatefulPartitionedCallStatefulPartitionedCall)dense_45/StatefulPartitionedCall:output:0degree_788553degree_788555*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_degree_layer_call_and_return_conditional_losses_788028�
 distance/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0distance_788558distance_788560*
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
D__inference_distance_layer_call_and_return_conditional_losses_788045�
1dense_40/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_40_788521*
_output_shapes
:	�d*
dtype0�
"dense_40/kernel/Regularizer/SquareSquare9dense_40/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�dr
!dense_40/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_40/kernel/Regularizer/SumSum&dense_40/kernel/Regularizer/Square:y:0*dense_40/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_40/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_40/kernel/Regularizer/mulMul*dense_40/kernel/Regularizer/mul/x:output:0(dense_40/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_41/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_41_788526*
_output_shapes

:dd*
dtype0�
"dense_41/kernel/Regularizer/SquareSquare9dense_41/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:ddr
!dense_41/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_41/kernel/Regularizer/SumSum&dense_41/kernel/Regularizer/Square:y:0*dense_41/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_41/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_41/kernel/Regularizer/mulMul*dense_41/kernel/Regularizer/mul/x:output:0(dense_41/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_42/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_42_788538*
_output_shapes
:	�2*
dtype0�
"dense_42/kernel/Regularizer/SquareSquare9dense_42/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_42/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_42/kernel/Regularizer/SumSum&dense_42/kernel/Regularizer/Square:y:0*dense_42/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_42/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_42/kernel/Regularizer/mulMul*dense_42/kernel/Regularizer/mul/x:output:0(dense_42/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_44_788533*
_output_shapes
:	�2*
dtype0�
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_43_788548*
_output_shapes

:2
*
dtype0�
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_45_788543*
_output_shapes

:2
*
dtype0�
"dense_45/kernel/Regularizer/SquareSquare9dense_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_45/kernel/Regularizer/SumSum&dense_45/kernel/Regularizer/Square:y:0*dense_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_45/kernel/Regularizer/mulMul*dense_45/kernel/Regularizer/mul/x:output:0(dense_45/kernel/Regularizer/Sum:output:0*
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
:����������
NoOpNoOp^degree/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall2^dense_40/kernel/Regularizer/Square/ReadVariableOp!^dense_41/StatefulPartitionedCall2^dense_41/kernel/Regularizer/Square/ReadVariableOp!^dense_42/StatefulPartitionedCall2^dense_42/kernel/Regularizer/Square/ReadVariableOp!^dense_43/StatefulPartitionedCall2^dense_43/kernel/Regularizer/Square/ReadVariableOp!^dense_44/StatefulPartitionedCall2^dense_44/kernel/Regularizer/Square/ReadVariableOp!^dense_45/StatefulPartitionedCall2^dense_45/kernel/Regularizer/Square/ReadVariableOp!^distance/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������: : : : : : : : : : : : : : : : 2@
degree/StatefulPartitionedCalldegree/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2f
1dense_40/kernel/Regularizer/Square/ReadVariableOp1dense_40/kernel/Regularizer/Square/ReadVariableOp2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2f
1dense_41/kernel/Regularizer/Square/ReadVariableOp1dense_41/kernel/Regularizer/Square/ReadVariableOp2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2f
1dense_42/kernel/Regularizer/Square/ReadVariableOp1dense_42/kernel/Regularizer/Square/ReadVariableOp2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2f
1dense_45/kernel/Regularizer/Square/ReadVariableOp1dense_45/kernel/Regularizer/Square/ReadVariableOp2D
 distance/StatefulPartitionedCall distance/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:S O
,
_output_shapes
:����������

_user_specified_nameinput
�

�
D__inference_distance_layer_call_and_return_conditional_losses_788045

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
��
�
C__inference_model_9_layer_call_and_return_conditional_losses_789075

inputs=
*dense_40_tensordot_readvariableop_resource:	�d6
(dense_40_biasadd_readvariableop_resource:d<
*dense_41_tensordot_readvariableop_resource:dd6
(dense_41_biasadd_readvariableop_resource:d:
'dense_44_matmul_readvariableop_resource:	�26
(dense_44_biasadd_readvariableop_resource:2:
'dense_42_matmul_readvariableop_resource:	�26
(dense_42_biasadd_readvariableop_resource:29
'dense_45_matmul_readvariableop_resource:2
6
(dense_45_biasadd_readvariableop_resource:
9
'dense_43_matmul_readvariableop_resource:2
6
(dense_43_biasadd_readvariableop_resource:
7
%degree_matmul_readvariableop_resource:
4
&degree_biasadd_readvariableop_resource:9
'distance_matmul_readvariableop_resource:
6
(distance_biasadd_readvariableop_resource:
identity

identity_1��degree/BiasAdd/ReadVariableOp�degree/MatMul/ReadVariableOp�dense_40/BiasAdd/ReadVariableOp�!dense_40/Tensordot/ReadVariableOp�1dense_40/kernel/Regularizer/Square/ReadVariableOp�dense_41/BiasAdd/ReadVariableOp�!dense_41/Tensordot/ReadVariableOp�1dense_41/kernel/Regularizer/Square/ReadVariableOp�dense_42/BiasAdd/ReadVariableOp�dense_42/MatMul/ReadVariableOp�1dense_42/kernel/Regularizer/Square/ReadVariableOp�dense_43/BiasAdd/ReadVariableOp�dense_43/MatMul/ReadVariableOp�1dense_43/kernel/Regularizer/Square/ReadVariableOp�dense_44/BiasAdd/ReadVariableOp�dense_44/MatMul/ReadVariableOp�1dense_44/kernel/Regularizer/Square/ReadVariableOp�dense_45/BiasAdd/ReadVariableOp�dense_45/MatMul/ReadVariableOp�1dense_45/kernel/Regularizer/Square/ReadVariableOp�distance/BiasAdd/ReadVariableOp�distance/MatMul/ReadVariableOp�
!dense_40/Tensordot/ReadVariableOpReadVariableOp*dense_40_tensordot_readvariableop_resource*
_output_shapes
:	�d*
dtype0a
dense_40/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_40/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       N
dense_40/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:b
 dense_40/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_40/Tensordot/GatherV2GatherV2!dense_40/Tensordot/Shape:output:0 dense_40/Tensordot/free:output:0)dense_40/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_40/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_40/Tensordot/GatherV2_1GatherV2!dense_40/Tensordot/Shape:output:0 dense_40/Tensordot/axes:output:0+dense_40/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_40/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_40/Tensordot/ProdProd$dense_40/Tensordot/GatherV2:output:0!dense_40/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_40/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_40/Tensordot/Prod_1Prod&dense_40/Tensordot/GatherV2_1:output:0#dense_40/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_40/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_40/Tensordot/concatConcatV2 dense_40/Tensordot/free:output:0 dense_40/Tensordot/axes:output:0'dense_40/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_40/Tensordot/stackPack dense_40/Tensordot/Prod:output:0"dense_40/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_40/Tensordot/transpose	Transposeinputs"dense_40/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
dense_40/Tensordot/ReshapeReshape dense_40/Tensordot/transpose:y:0!dense_40/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_40/Tensordot/MatMulMatMul#dense_40/Tensordot/Reshape:output:0)dense_40/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dd
dense_40/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:db
 dense_40/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_40/Tensordot/concat_1ConcatV2$dense_40/Tensordot/GatherV2:output:0#dense_40/Tensordot/Const_2:output:0)dense_40/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_40/TensordotReshape#dense_40/Tensordot/MatMul:product:0$dense_40/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d�
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
dense_40/BiasAddBiasAdddense_40/Tensordot:output:0'dense_40/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������df
dense_40/ReluReludense_40/BiasAdd:output:0*
T0*+
_output_shapes
:���������d�
!dense_41/Tensordot/ReadVariableOpReadVariableOp*dense_41_tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype0a
dense_41/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_41/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_41/Tensordot/ShapeShapedense_40/Relu:activations:0*
T0*
_output_shapes
:b
 dense_41/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_41/Tensordot/GatherV2GatherV2!dense_41/Tensordot/Shape:output:0 dense_41/Tensordot/free:output:0)dense_41/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_41/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_41/Tensordot/GatherV2_1GatherV2!dense_41/Tensordot/Shape:output:0 dense_41/Tensordot/axes:output:0+dense_41/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_41/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_41/Tensordot/ProdProd$dense_41/Tensordot/GatherV2:output:0!dense_41/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_41/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_41/Tensordot/Prod_1Prod&dense_41/Tensordot/GatherV2_1:output:0#dense_41/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_41/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_41/Tensordot/concatConcatV2 dense_41/Tensordot/free:output:0 dense_41/Tensordot/axes:output:0'dense_41/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_41/Tensordot/stackPack dense_41/Tensordot/Prod:output:0"dense_41/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_41/Tensordot/transpose	Transposedense_40/Relu:activations:0"dense_41/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d�
dense_41/Tensordot/ReshapeReshape dense_41/Tensordot/transpose:y:0!dense_41/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_41/Tensordot/MatMulMatMul#dense_41/Tensordot/Reshape:output:0)dense_41/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dd
dense_41/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:db
 dense_41/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_41/Tensordot/concat_1ConcatV2$dense_41/Tensordot/GatherV2:output:0#dense_41/Tensordot/Const_2:output:0)dense_41/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_41/TensordotReshape#dense_41/Tensordot/MatMul:product:0$dense_41/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d�
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
dense_41/BiasAddBiasAdddense_41/Tensordot:output:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������df
dense_41/ReluReludense_41/BiasAdd:output:0*
T0*+
_output_shapes
:���������d\
dropout_9/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_9/dropout/MulMuldense_41/Relu:activations:0 dropout_9/dropout/Const:output:0*
T0*+
_output_shapes
:���������db
dropout_9/dropout/ShapeShapedense_41/Relu:activations:0*
T0*
_output_shapes
:�
.dropout_9/dropout/random_uniform/RandomUniformRandomUniform dropout_9/dropout/Shape:output:0*
T0*+
_output_shapes
:���������d*
dtype0*

seede
 dropout_9/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_9/dropout/GreaterEqualGreaterEqual7dropout_9/dropout/random_uniform/RandomUniform:output:0)dropout_9/dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������d�
dropout_9/dropout/CastCast"dropout_9/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������d�
dropout_9/dropout/Mul_1Muldropout_9/dropout/Mul:z:0dropout_9/dropout/Cast:y:0*
T0*+
_output_shapes
:���������d`
flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
flatten_9/ReshapeReshapedropout_9/dropout/Mul_1:z:0flatten_9/Const:output:0*
T0*(
_output_shapes
:�����������
dense_44/MatMul/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_44/MatMulMatMulflatten_9/Reshape:output:0&dense_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_44/BiasAdd/ReadVariableOpReadVariableOp(dense_44_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
dense_44/BiasAddBiasAdddense_44/MatMul:product:0'dense_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_42/MatMul/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_42/MatMulMatMulflatten_9/Reshape:output:0&dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_42/BiasAdd/ReadVariableOpReadVariableOp(dense_42_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
dense_42/BiasAddBiasAdddense_42/MatMul:product:0'dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_45/MatMul/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
dense_45/MatMulMatMuldense_44/BiasAdd:output:0&dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_45/BiasAddBiasAdddense_45/MatMul:product:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_43/MatMul/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
dense_43/MatMulMatMuldense_42/BiasAdd:output:0&dense_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_43/BiasAdd/ReadVariableOpReadVariableOp(dense_43_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_43/BiasAddBiasAdddense_43/MatMul:product:0'dense_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
degree/MatMul/ReadVariableOpReadVariableOp%degree_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
degree/MatMulMatMuldense_45/BiasAdd:output:0$degree/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
degree/BiasAdd/ReadVariableOpReadVariableOp&degree_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
degree/BiasAddBiasAdddegree/MatMul:product:0%degree/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d
degree/SoftmaxSoftmaxdegree/BiasAdd:output:0*
T0*'
_output_shapes
:����������
distance/MatMul/ReadVariableOpReadVariableOp'distance_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
distance/MatMulMatMuldense_43/BiasAdd:output:0&distance/MatMul/ReadVariableOp:value:0*
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
1dense_40/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*dense_40_tensordot_readvariableop_resource*
_output_shapes
:	�d*
dtype0�
"dense_40/kernel/Regularizer/SquareSquare9dense_40/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�dr
!dense_40/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_40/kernel/Regularizer/SumSum&dense_40/kernel/Regularizer/Square:y:0*dense_40/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_40/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_40/kernel/Regularizer/mulMul*dense_40/kernel/Regularizer/mul/x:output:0(dense_40/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_41/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*dense_41_tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype0�
"dense_41/kernel/Regularizer/SquareSquare9dense_41/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:ddr
!dense_41/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_41/kernel/Regularizer/SumSum&dense_41/kernel/Regularizer/Square:y:0*dense_41/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_41/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_41/kernel/Regularizer/mulMul*dense_41/kernel/Regularizer/mul/x:output:0(dense_41/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_42/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
"dense_42/kernel/Regularizer/SquareSquare9dense_42/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_42/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_42/kernel/Regularizer/SumSum&dense_42/kernel/Regularizer/Square:y:0*dense_42/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_42/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_42/kernel/Regularizer/mulMul*dense_42/kernel/Regularizer/mul/x:output:0(dense_42/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
"dense_45/kernel/Regularizer/SquareSquare9dense_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_45/kernel/Regularizer/SumSum&dense_45/kernel/Regularizer/Square:y:0*dense_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_45/kernel/Regularizer/mulMul*dense_45/kernel/Regularizer/mul/x:output:0(dense_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: c
IdentityIdentitydistance/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_1Identitydegree/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^degree/BiasAdd/ReadVariableOp^degree/MatMul/ReadVariableOp ^dense_40/BiasAdd/ReadVariableOp"^dense_40/Tensordot/ReadVariableOp2^dense_40/kernel/Regularizer/Square/ReadVariableOp ^dense_41/BiasAdd/ReadVariableOp"^dense_41/Tensordot/ReadVariableOp2^dense_41/kernel/Regularizer/Square/ReadVariableOp ^dense_42/BiasAdd/ReadVariableOp^dense_42/MatMul/ReadVariableOp2^dense_42/kernel/Regularizer/Square/ReadVariableOp ^dense_43/BiasAdd/ReadVariableOp^dense_43/MatMul/ReadVariableOp2^dense_43/kernel/Regularizer/Square/ReadVariableOp ^dense_44/BiasAdd/ReadVariableOp^dense_44/MatMul/ReadVariableOp2^dense_44/kernel/Regularizer/Square/ReadVariableOp ^dense_45/BiasAdd/ReadVariableOp^dense_45/MatMul/ReadVariableOp2^dense_45/kernel/Regularizer/Square/ReadVariableOp ^distance/BiasAdd/ReadVariableOp^distance/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������: : : : : : : : : : : : : : : : 2>
degree/BiasAdd/ReadVariableOpdegree/BiasAdd/ReadVariableOp2<
degree/MatMul/ReadVariableOpdegree/MatMul/ReadVariableOp2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2F
!dense_40/Tensordot/ReadVariableOp!dense_40/Tensordot/ReadVariableOp2f
1dense_40/kernel/Regularizer/Square/ReadVariableOp1dense_40/kernel/Regularizer/Square/ReadVariableOp2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2F
!dense_41/Tensordot/ReadVariableOp!dense_41/Tensordot/ReadVariableOp2f
1dense_41/kernel/Regularizer/Square/ReadVariableOp1dense_41/kernel/Regularizer/Square/ReadVariableOp2B
dense_42/BiasAdd/ReadVariableOpdense_42/BiasAdd/ReadVariableOp2@
dense_42/MatMul/ReadVariableOpdense_42/MatMul/ReadVariableOp2f
1dense_42/kernel/Regularizer/Square/ReadVariableOp1dense_42/kernel/Regularizer/Square/ReadVariableOp2B
dense_43/BiasAdd/ReadVariableOpdense_43/BiasAdd/ReadVariableOp2@
dense_43/MatMul/ReadVariableOpdense_43/MatMul/ReadVariableOp2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp2B
dense_44/BiasAdd/ReadVariableOpdense_44/BiasAdd/ReadVariableOp2@
dense_44/MatMul/ReadVariableOpdense_44/MatMul/ReadVariableOp2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2@
dense_45/MatMul/ReadVariableOpdense_45/MatMul/ReadVariableOp2f
1dense_45/kernel/Regularizer/Square/ReadVariableOp1dense_45/kernel/Regularizer/Square/ReadVariableOp2B
distance/BiasAdd/ReadVariableOpdistance/BiasAdd/ReadVariableOp2@
distance/MatMul/ReadVariableOpdistance/MatMul/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
˂
�
!__inference__wrapped_model_787821	
inputE
2model_9_dense_40_tensordot_readvariableop_resource:	�d>
0model_9_dense_40_biasadd_readvariableop_resource:dD
2model_9_dense_41_tensordot_readvariableop_resource:dd>
0model_9_dense_41_biasadd_readvariableop_resource:dB
/model_9_dense_44_matmul_readvariableop_resource:	�2>
0model_9_dense_44_biasadd_readvariableop_resource:2B
/model_9_dense_42_matmul_readvariableop_resource:	�2>
0model_9_dense_42_biasadd_readvariableop_resource:2A
/model_9_dense_45_matmul_readvariableop_resource:2
>
0model_9_dense_45_biasadd_readvariableop_resource:
A
/model_9_dense_43_matmul_readvariableop_resource:2
>
0model_9_dense_43_biasadd_readvariableop_resource:
?
-model_9_degree_matmul_readvariableop_resource:
<
.model_9_degree_biasadd_readvariableop_resource:A
/model_9_distance_matmul_readvariableop_resource:
>
0model_9_distance_biasadd_readvariableop_resource:
identity

identity_1��%model_9/degree/BiasAdd/ReadVariableOp�$model_9/degree/MatMul/ReadVariableOp�'model_9/dense_40/BiasAdd/ReadVariableOp�)model_9/dense_40/Tensordot/ReadVariableOp�'model_9/dense_41/BiasAdd/ReadVariableOp�)model_9/dense_41/Tensordot/ReadVariableOp�'model_9/dense_42/BiasAdd/ReadVariableOp�&model_9/dense_42/MatMul/ReadVariableOp�'model_9/dense_43/BiasAdd/ReadVariableOp�&model_9/dense_43/MatMul/ReadVariableOp�'model_9/dense_44/BiasAdd/ReadVariableOp�&model_9/dense_44/MatMul/ReadVariableOp�'model_9/dense_45/BiasAdd/ReadVariableOp�&model_9/dense_45/MatMul/ReadVariableOp�'model_9/distance/BiasAdd/ReadVariableOp�&model_9/distance/MatMul/ReadVariableOp�
)model_9/dense_40/Tensordot/ReadVariableOpReadVariableOp2model_9_dense_40_tensordot_readvariableop_resource*
_output_shapes
:	�d*
dtype0i
model_9/dense_40/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:p
model_9/dense_40/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       U
 model_9/dense_40/Tensordot/ShapeShapeinput*
T0*
_output_shapes
:j
(model_9/dense_40/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#model_9/dense_40/Tensordot/GatherV2GatherV2)model_9/dense_40/Tensordot/Shape:output:0(model_9/dense_40/Tensordot/free:output:01model_9/dense_40/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
*model_9/dense_40/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%model_9/dense_40/Tensordot/GatherV2_1GatherV2)model_9/dense_40/Tensordot/Shape:output:0(model_9/dense_40/Tensordot/axes:output:03model_9/dense_40/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:j
 model_9/dense_40/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
model_9/dense_40/Tensordot/ProdProd,model_9/dense_40/Tensordot/GatherV2:output:0)model_9/dense_40/Tensordot/Const:output:0*
T0*
_output_shapes
: l
"model_9/dense_40/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
!model_9/dense_40/Tensordot/Prod_1Prod.model_9/dense_40/Tensordot/GatherV2_1:output:0+model_9/dense_40/Tensordot/Const_1:output:0*
T0*
_output_shapes
: h
&model_9/dense_40/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
!model_9/dense_40/Tensordot/concatConcatV2(model_9/dense_40/Tensordot/free:output:0(model_9/dense_40/Tensordot/axes:output:0/model_9/dense_40/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
 model_9/dense_40/Tensordot/stackPack(model_9/dense_40/Tensordot/Prod:output:0*model_9/dense_40/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
$model_9/dense_40/Tensordot/transpose	Transposeinput*model_9/dense_40/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
"model_9/dense_40/Tensordot/ReshapeReshape(model_9/dense_40/Tensordot/transpose:y:0)model_9/dense_40/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
!model_9/dense_40/Tensordot/MatMulMatMul+model_9/dense_40/Tensordot/Reshape:output:01model_9/dense_40/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dl
"model_9/dense_40/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:dj
(model_9/dense_40/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#model_9/dense_40/Tensordot/concat_1ConcatV2,model_9/dense_40/Tensordot/GatherV2:output:0+model_9/dense_40/Tensordot/Const_2:output:01model_9/dense_40/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
model_9/dense_40/TensordotReshape+model_9/dense_40/Tensordot/MatMul:product:0,model_9/dense_40/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d�
'model_9/dense_40/BiasAdd/ReadVariableOpReadVariableOp0model_9_dense_40_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
model_9/dense_40/BiasAddBiasAdd#model_9/dense_40/Tensordot:output:0/model_9/dense_40/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dv
model_9/dense_40/ReluRelu!model_9/dense_40/BiasAdd:output:0*
T0*+
_output_shapes
:���������d�
)model_9/dense_41/Tensordot/ReadVariableOpReadVariableOp2model_9_dense_41_tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype0i
model_9/dense_41/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:p
model_9/dense_41/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       s
 model_9/dense_41/Tensordot/ShapeShape#model_9/dense_40/Relu:activations:0*
T0*
_output_shapes
:j
(model_9/dense_41/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#model_9/dense_41/Tensordot/GatherV2GatherV2)model_9/dense_41/Tensordot/Shape:output:0(model_9/dense_41/Tensordot/free:output:01model_9/dense_41/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:l
*model_9/dense_41/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
%model_9/dense_41/Tensordot/GatherV2_1GatherV2)model_9/dense_41/Tensordot/Shape:output:0(model_9/dense_41/Tensordot/axes:output:03model_9/dense_41/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:j
 model_9/dense_41/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
model_9/dense_41/Tensordot/ProdProd,model_9/dense_41/Tensordot/GatherV2:output:0)model_9/dense_41/Tensordot/Const:output:0*
T0*
_output_shapes
: l
"model_9/dense_41/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
!model_9/dense_41/Tensordot/Prod_1Prod.model_9/dense_41/Tensordot/GatherV2_1:output:0+model_9/dense_41/Tensordot/Const_1:output:0*
T0*
_output_shapes
: h
&model_9/dense_41/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
!model_9/dense_41/Tensordot/concatConcatV2(model_9/dense_41/Tensordot/free:output:0(model_9/dense_41/Tensordot/axes:output:0/model_9/dense_41/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
 model_9/dense_41/Tensordot/stackPack(model_9/dense_41/Tensordot/Prod:output:0*model_9/dense_41/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
$model_9/dense_41/Tensordot/transpose	Transpose#model_9/dense_40/Relu:activations:0*model_9/dense_41/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d�
"model_9/dense_41/Tensordot/ReshapeReshape(model_9/dense_41/Tensordot/transpose:y:0)model_9/dense_41/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
!model_9/dense_41/Tensordot/MatMulMatMul+model_9/dense_41/Tensordot/Reshape:output:01model_9/dense_41/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dl
"model_9/dense_41/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:dj
(model_9/dense_41/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
#model_9/dense_41/Tensordot/concat_1ConcatV2,model_9/dense_41/Tensordot/GatherV2:output:0+model_9/dense_41/Tensordot/Const_2:output:01model_9/dense_41/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
model_9/dense_41/TensordotReshape+model_9/dense_41/Tensordot/MatMul:product:0,model_9/dense_41/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d�
'model_9/dense_41/BiasAdd/ReadVariableOpReadVariableOp0model_9_dense_41_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
model_9/dense_41/BiasAddBiasAdd#model_9/dense_41/Tensordot:output:0/model_9/dense_41/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dv
model_9/dense_41/ReluRelu!model_9/dense_41/BiasAdd:output:0*
T0*+
_output_shapes
:���������d�
model_9/dropout_9/IdentityIdentity#model_9/dense_41/Relu:activations:0*
T0*+
_output_shapes
:���������dh
model_9/flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
model_9/flatten_9/ReshapeReshape#model_9/dropout_9/Identity:output:0 model_9/flatten_9/Const:output:0*
T0*(
_output_shapes
:�����������
&model_9/dense_44/MatMul/ReadVariableOpReadVariableOp/model_9_dense_44_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
model_9/dense_44/MatMulMatMul"model_9/flatten_9/Reshape:output:0.model_9/dense_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
'model_9/dense_44/BiasAdd/ReadVariableOpReadVariableOp0model_9_dense_44_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
model_9/dense_44/BiasAddBiasAdd!model_9/dense_44/MatMul:product:0/model_9/dense_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
&model_9/dense_42/MatMul/ReadVariableOpReadVariableOp/model_9_dense_42_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
model_9/dense_42/MatMulMatMul"model_9/flatten_9/Reshape:output:0.model_9/dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
'model_9/dense_42/BiasAdd/ReadVariableOpReadVariableOp0model_9_dense_42_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
model_9/dense_42/BiasAddBiasAdd!model_9/dense_42/MatMul:product:0/model_9/dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
&model_9/dense_45/MatMul/ReadVariableOpReadVariableOp/model_9_dense_45_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
model_9/dense_45/MatMulMatMul!model_9/dense_44/BiasAdd:output:0.model_9/dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
'model_9/dense_45/BiasAdd/ReadVariableOpReadVariableOp0model_9_dense_45_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
model_9/dense_45/BiasAddBiasAdd!model_9/dense_45/MatMul:product:0/model_9/dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
&model_9/dense_43/MatMul/ReadVariableOpReadVariableOp/model_9_dense_43_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
model_9/dense_43/MatMulMatMul!model_9/dense_42/BiasAdd:output:0.model_9/dense_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
'model_9/dense_43/BiasAdd/ReadVariableOpReadVariableOp0model_9_dense_43_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
model_9/dense_43/BiasAddBiasAdd!model_9/dense_43/MatMul:product:0/model_9/dense_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
$model_9/degree/MatMul/ReadVariableOpReadVariableOp-model_9_degree_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
model_9/degree/MatMulMatMul!model_9/dense_45/BiasAdd:output:0,model_9/degree/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
%model_9/degree/BiasAdd/ReadVariableOpReadVariableOp.model_9_degree_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_9/degree/BiasAddBiasAddmodel_9/degree/MatMul:product:0-model_9/degree/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������t
model_9/degree/SoftmaxSoftmaxmodel_9/degree/BiasAdd:output:0*
T0*'
_output_shapes
:����������
&model_9/distance/MatMul/ReadVariableOpReadVariableOp/model_9_distance_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
model_9/distance/MatMulMatMul!model_9/dense_43/BiasAdd:output:0.model_9/distance/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
'model_9/distance/BiasAdd/ReadVariableOpReadVariableOp0model_9_distance_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_9/distance/BiasAddBiasAdd!model_9/distance/MatMul:product:0/model_9/distance/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������x
model_9/distance/SigmoidSigmoid!model_9/distance/BiasAdd:output:0*
T0*'
_output_shapes
:���������o
IdentityIdentity model_9/degree/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������m

Identity_1Identitymodel_9/distance/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp&^model_9/degree/BiasAdd/ReadVariableOp%^model_9/degree/MatMul/ReadVariableOp(^model_9/dense_40/BiasAdd/ReadVariableOp*^model_9/dense_40/Tensordot/ReadVariableOp(^model_9/dense_41/BiasAdd/ReadVariableOp*^model_9/dense_41/Tensordot/ReadVariableOp(^model_9/dense_42/BiasAdd/ReadVariableOp'^model_9/dense_42/MatMul/ReadVariableOp(^model_9/dense_43/BiasAdd/ReadVariableOp'^model_9/dense_43/MatMul/ReadVariableOp(^model_9/dense_44/BiasAdd/ReadVariableOp'^model_9/dense_44/MatMul/ReadVariableOp(^model_9/dense_45/BiasAdd/ReadVariableOp'^model_9/dense_45/MatMul/ReadVariableOp(^model_9/distance/BiasAdd/ReadVariableOp'^model_9/distance/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������: : : : : : : : : : : : : : : : 2N
%model_9/degree/BiasAdd/ReadVariableOp%model_9/degree/BiasAdd/ReadVariableOp2L
$model_9/degree/MatMul/ReadVariableOp$model_9/degree/MatMul/ReadVariableOp2R
'model_9/dense_40/BiasAdd/ReadVariableOp'model_9/dense_40/BiasAdd/ReadVariableOp2V
)model_9/dense_40/Tensordot/ReadVariableOp)model_9/dense_40/Tensordot/ReadVariableOp2R
'model_9/dense_41/BiasAdd/ReadVariableOp'model_9/dense_41/BiasAdd/ReadVariableOp2V
)model_9/dense_41/Tensordot/ReadVariableOp)model_9/dense_41/Tensordot/ReadVariableOp2R
'model_9/dense_42/BiasAdd/ReadVariableOp'model_9/dense_42/BiasAdd/ReadVariableOp2P
&model_9/dense_42/MatMul/ReadVariableOp&model_9/dense_42/MatMul/ReadVariableOp2R
'model_9/dense_43/BiasAdd/ReadVariableOp'model_9/dense_43/BiasAdd/ReadVariableOp2P
&model_9/dense_43/MatMul/ReadVariableOp&model_9/dense_43/MatMul/ReadVariableOp2R
'model_9/dense_44/BiasAdd/ReadVariableOp'model_9/dense_44/BiasAdd/ReadVariableOp2P
&model_9/dense_44/MatMul/ReadVariableOp&model_9/dense_44/MatMul/ReadVariableOp2R
'model_9/dense_45/BiasAdd/ReadVariableOp'model_9/dense_45/BiasAdd/ReadVariableOp2P
&model_9/dense_45/MatMul/ReadVariableOp&model_9/dense_45/MatMul/ReadVariableOp2R
'model_9/distance/BiasAdd/ReadVariableOp'model_9/distance/BiasAdd/ReadVariableOp2P
&model_9/distance/MatMul/ReadVariableOp&model_9/distance/MatMul/ReadVariableOp:S O
,
_output_shapes
:����������

_user_specified_nameinput
�

�
B__inference_degree_layer_call_and_return_conditional_losses_789345

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������V
SoftmaxSoftmaxBiasAdd:output:0*
T0*'
_output_shapes
:���������`
IdentityIdentitySoftmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������w
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
�
__inference_loss_fn_5_789411L
:dense_45_kernel_regularizer_square_readvariableop_resource:2

identity��1dense_45/kernel/Regularizer/Square/ReadVariableOp�
1dense_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_45_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:2
*
dtype0�
"dense_45/kernel/Regularizer/SquareSquare9dense_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_45/kernel/Regularizer/SumSum&dense_45/kernel/Regularizer/Square:y:0*dense_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_45/kernel/Regularizer/mulMul*dense_45/kernel/Regularizer/mul/x:output:0(dense_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#dense_45/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^dense_45/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_45/kernel/Regularizer/Square/ReadVariableOp1dense_45/kernel/Regularizer/Square/ReadVariableOp
�%
�
D__inference_dense_40_layer_call_and_return_conditional_losses_789121

inputs4
!tensordot_readvariableop_resource:	�d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�1dense_40/kernel/Regularizer/Square/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�d*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:�����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:dY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������d�
1dense_40/kernel/Regularizer/Square/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�d*
dtype0�
"dense_40/kernel/Regularizer/SquareSquare9dense_40/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�dr
!dense_40/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_40/kernel/Regularizer/SumSum&dense_40/kernel/Regularizer/Square:y:0*dense_40/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_40/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_40/kernel/Regularizer/mulMul*dense_40/kernel/Regularizer/mul/x:output:0(dense_40/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp2^dense_40/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp2f
1dense_40/kernel/Regularizer/Square/ReadVariableOp1dense_40/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_1_789367L
:dense_41_kernel_regularizer_square_readvariableop_resource:dd
identity��1dense_41/kernel/Regularizer/Square/ReadVariableOp�
1dense_41/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_41_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:dd*
dtype0�
"dense_41/kernel/Regularizer/SquareSquare9dense_41/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:ddr
!dense_41/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_41/kernel/Regularizer/SumSum&dense_41/kernel/Regularizer/Square:y:0*dense_41/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_41/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_41/kernel/Regularizer/mulMul*dense_41/kernel/Regularizer/mul/x:output:0(dense_41/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#dense_41/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^dense_41/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_41/kernel/Regularizer/Square/ReadVariableOp1dense_41/kernel/Regularizer/Square/ReadVariableOp
�
�
__inference_loss_fn_4_789400L
:dense_43_kernel_regularizer_square_readvariableop_resource:2

identity��1dense_43/kernel/Regularizer/Square/ReadVariableOp�
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_43_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:2
*
dtype0�
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#dense_43/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^dense_43/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp
�
c
E__inference_dropout_9_layer_call_and_return_conditional_losses_787919

inputs

identity_1R
IdentityIdentityinputs*
T0*+
_output_shapes
:���������d_

Identity_1IdentityIdentity:output:0*
T0*+
_output_shapes
:���������d"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
)__inference_dense_45_layer_call_fn_789289

inputs
unknown:2
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
GPU2*0J 8� *M
fHRF
D__inference_dense_45_layer_call_and_return_conditional_losses_787989o
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
:���������2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
��
�$
"__inference__traced_restore_789817
file_prefix3
 assignvariableop_dense_40_kernel:	�d.
 assignvariableop_1_dense_40_bias:d4
"assignvariableop_2_dense_41_kernel:dd.
 assignvariableop_3_dense_41_bias:d5
"assignvariableop_4_dense_42_kernel:	�2.
 assignvariableop_5_dense_42_bias:25
"assignvariableop_6_dense_44_kernel:	�2.
 assignvariableop_7_dense_44_bias:24
"assignvariableop_8_dense_43_kernel:2
.
 assignvariableop_9_dense_43_bias:
5
#assignvariableop_10_dense_45_kernel:2
/
!assignvariableop_11_dense_45_bias:
5
#assignvariableop_12_distance_kernel:
/
!assignvariableop_13_distance_bias:3
!assignvariableop_14_degree_kernel:
-
assignvariableop_15_degree_bias:'
assignvariableop_16_adam_iter:	 )
assignvariableop_17_adam_beta_1: )
assignvariableop_18_adam_beta_2: (
assignvariableop_19_adam_decay: %
assignvariableop_20_total_4: %
assignvariableop_21_count_4: %
assignvariableop_22_total_3: %
assignvariableop_23_count_3: %
assignvariableop_24_total_2: %
assignvariableop_25_count_2: %
assignvariableop_26_total_1: %
assignvariableop_27_count_1: #
assignvariableop_28_total: #
assignvariableop_29_count: =
*assignvariableop_30_adam_dense_40_kernel_m:	�d6
(assignvariableop_31_adam_dense_40_bias_m:d<
*assignvariableop_32_adam_dense_41_kernel_m:dd6
(assignvariableop_33_adam_dense_41_bias_m:d=
*assignvariableop_34_adam_dense_42_kernel_m:	�26
(assignvariableop_35_adam_dense_42_bias_m:2=
*assignvariableop_36_adam_dense_44_kernel_m:	�26
(assignvariableop_37_adam_dense_44_bias_m:2<
*assignvariableop_38_adam_dense_43_kernel_m:2
6
(assignvariableop_39_adam_dense_43_bias_m:
<
*assignvariableop_40_adam_dense_45_kernel_m:2
6
(assignvariableop_41_adam_dense_45_bias_m:
<
*assignvariableop_42_adam_distance_kernel_m:
6
(assignvariableop_43_adam_distance_bias_m::
(assignvariableop_44_adam_degree_kernel_m:
4
&assignvariableop_45_adam_degree_bias_m:=
*assignvariableop_46_adam_dense_40_kernel_v:	�d6
(assignvariableop_47_adam_dense_40_bias_v:d<
*assignvariableop_48_adam_dense_41_kernel_v:dd6
(assignvariableop_49_adam_dense_41_bias_v:d=
*assignvariableop_50_adam_dense_42_kernel_v:	�26
(assignvariableop_51_adam_dense_42_bias_v:2=
*assignvariableop_52_adam_dense_44_kernel_v:	�26
(assignvariableop_53_adam_dense_44_bias_v:2<
*assignvariableop_54_adam_dense_43_kernel_v:2
6
(assignvariableop_55_adam_dense_43_bias_v:
<
*assignvariableop_56_adam_dense_45_kernel_v:2
6
(assignvariableop_57_adam_dense_45_bias_v:
<
*assignvariableop_58_adam_distance_kernel_v:
6
(assignvariableop_59_adam_distance_bias_v::
(assignvariableop_60_adam_degree_kernel_v:
4
&assignvariableop_61_adam_degree_bias_v:
identity_63��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_56�AssignVariableOp_57�AssignVariableOp_58�AssignVariableOp_59�AssignVariableOp_6�AssignVariableOp_60�AssignVariableOp_61�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�"
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:?*
dtype0*�!
value�!B�!?B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:?*
dtype0*�
value�B�?B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*M
dtypesC
A2?	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp assignvariableop_dense_40_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_40_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_41_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_41_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_42_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_42_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_44_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_44_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_43_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_43_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp#assignvariableop_10_dense_45_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp!assignvariableop_11_dense_45_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp#assignvariableop_12_distance_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOp!assignvariableop_13_distance_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOp!assignvariableop_14_degree_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_degree_biasIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_iterIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_beta_1Identity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_2Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_decayIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_4Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_4Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_total_3Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_count_3Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_total_2Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_count_2Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_total_1Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_count_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOpassignvariableop_28_totalIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOpassignvariableop_29_countIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_dense_40_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_dense_40_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_dense_41_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_dense_41_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_dense_42_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_dense_42_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_dense_44_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_dense_44_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_dense_43_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_dense_43_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp*assignvariableop_40_adam_dense_45_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp(assignvariableop_41_adam_dense_45_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_distance_kernel_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_distance_bias_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp(assignvariableop_44_adam_degree_kernel_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp&assignvariableop_45_adam_degree_bias_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp*assignvariableop_46_adam_dense_40_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp(assignvariableop_47_adam_dense_40_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp*assignvariableop_48_adam_dense_41_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_dense_41_bias_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp*assignvariableop_50_adam_dense_42_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp(assignvariableop_51_adam_dense_42_bias_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_52AssignVariableOp*assignvariableop_52_adam_dense_44_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_53AssignVariableOp(assignvariableop_53_adam_dense_44_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_54AssignVariableOp*assignvariableop_54_adam_dense_43_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_55AssignVariableOp(assignvariableop_55_adam_dense_43_bias_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_56AssignVariableOp*assignvariableop_56_adam_dense_45_kernel_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_57AssignVariableOp(assignvariableop_57_adam_dense_45_bias_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_58AssignVariableOp*assignvariableop_58_adam_distance_kernel_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_59AssignVariableOp(assignvariableop_59_adam_distance_bias_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_degree_kernel_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_61AssignVariableOp&assignvariableop_61_adam_degree_bias_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �
Identity_62Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_63IdentityIdentity_62:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_63Identity_63:output:0*�
_input_shapes�
~: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_58AssignVariableOp_582*
AssignVariableOp_59AssignVariableOp_592(
AssignVariableOp_6AssignVariableOp_62*
AssignVariableOp_60AssignVariableOp_602*
AssignVariableOp_61AssignVariableOp_612(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�
�
(__inference_model_9_layer_call_fn_788757

inputs
unknown:	�d
	unknown_0:d
	unknown_1:dd
	unknown_2:d
	unknown_3:	�2
	unknown_4:2
	unknown_5:	�2
	unknown_6:2
	unknown_7:2

	unknown_8:

	unknown_9:2


unknown_10:


unknown_11:


unknown_12:

unknown_13:


unknown_14:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_model_9_layer_call_and_return_conditional_losses_788089o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�b
�	
C__inference_model_9_layer_call_and_return_conditional_losses_788359

inputs"
dense_40_788279:	�d
dense_40_788281:d!
dense_41_788284:dd
dense_41_788286:d"
dense_44_788291:	�2
dense_44_788293:2"
dense_42_788296:	�2
dense_42_788298:2!
dense_45_788301:2

dense_45_788303:
!
dense_43_788306:2

dense_43_788308:

degree_788311:

degree_788313:!
distance_788316:

distance_788318:
identity

identity_1��degree/StatefulPartitionedCall� dense_40/StatefulPartitionedCall�1dense_40/kernel/Regularizer/Square/ReadVariableOp� dense_41/StatefulPartitionedCall�1dense_41/kernel/Regularizer/Square/ReadVariableOp� dense_42/StatefulPartitionedCall�1dense_42/kernel/Regularizer/Square/ReadVariableOp� dense_43/StatefulPartitionedCall�1dense_43/kernel/Regularizer/Square/ReadVariableOp� dense_44/StatefulPartitionedCall�1dense_44/kernel/Regularizer/Square/ReadVariableOp� dense_45/StatefulPartitionedCall�1dense_45/kernel/Regularizer/Square/ReadVariableOp� distance/StatefulPartitionedCall�!dropout_9/StatefulPartitionedCall�
 dense_40/StatefulPartitionedCallStatefulPartitionedCallinputsdense_40_788279dense_40_788281*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_40_layer_call_and_return_conditional_losses_787865�
 dense_41/StatefulPartitionedCallStatefulPartitionedCall)dense_40/StatefulPartitionedCall:output:0dense_41_788284dense_41_788286*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_41_layer_call_and_return_conditional_losses_787908�
!dropout_9/StatefulPartitionedCallStatefulPartitionedCall)dense_41/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_788212�
flatten_9/PartitionedCallPartitionedCall*dropout_9/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_flatten_9_layer_call_and_return_conditional_losses_787927�
 dense_44/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_44_788291dense_44_788293*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_44_layer_call_and_return_conditional_losses_787945�
 dense_42/StatefulPartitionedCallStatefulPartitionedCall"flatten_9/PartitionedCall:output:0dense_42_788296dense_42_788298*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_42_layer_call_and_return_conditional_losses_787967�
 dense_45/StatefulPartitionedCallStatefulPartitionedCall)dense_44/StatefulPartitionedCall:output:0dense_45_788301dense_45_788303*
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
GPU2*0J 8� *M
fHRF
D__inference_dense_45_layer_call_and_return_conditional_losses_787989�
 dense_43/StatefulPartitionedCallStatefulPartitionedCall)dense_42/StatefulPartitionedCall:output:0dense_43_788306dense_43_788308*
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
GPU2*0J 8� *M
fHRF
D__inference_dense_43_layer_call_and_return_conditional_losses_788011�
degree/StatefulPartitionedCallStatefulPartitionedCall)dense_45/StatefulPartitionedCall:output:0degree_788311degree_788313*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *K
fFRD
B__inference_degree_layer_call_and_return_conditional_losses_788028�
 distance/StatefulPartitionedCallStatefulPartitionedCall)dense_43/StatefulPartitionedCall:output:0distance_788316distance_788318*
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
D__inference_distance_layer_call_and_return_conditional_losses_788045�
1dense_40/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_40_788279*
_output_shapes
:	�d*
dtype0�
"dense_40/kernel/Regularizer/SquareSquare9dense_40/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�dr
!dense_40/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_40/kernel/Regularizer/SumSum&dense_40/kernel/Regularizer/Square:y:0*dense_40/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_40/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_40/kernel/Regularizer/mulMul*dense_40/kernel/Regularizer/mul/x:output:0(dense_40/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_41/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_41_788284*
_output_shapes

:dd*
dtype0�
"dense_41/kernel/Regularizer/SquareSquare9dense_41/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:ddr
!dense_41/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_41/kernel/Regularizer/SumSum&dense_41/kernel/Regularizer/Square:y:0*dense_41/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_41/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_41/kernel/Regularizer/mulMul*dense_41/kernel/Regularizer/mul/x:output:0(dense_41/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_42/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_42_788296*
_output_shapes
:	�2*
dtype0�
"dense_42/kernel/Regularizer/SquareSquare9dense_42/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_42/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_42/kernel/Regularizer/SumSum&dense_42/kernel/Regularizer/Square:y:0*dense_42/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_42/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_42/kernel/Regularizer/mulMul*dense_42/kernel/Regularizer/mul/x:output:0(dense_42/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_44_788291*
_output_shapes
:	�2*
dtype0�
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_43_788306*
_output_shapes

:2
*
dtype0�
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_45_788301*
_output_shapes

:2
*
dtype0�
"dense_45/kernel/Regularizer/SquareSquare9dense_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_45/kernel/Regularizer/SumSum&dense_45/kernel/Regularizer/Square:y:0*dense_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_45/kernel/Regularizer/mulMul*dense_45/kernel/Regularizer/mul/x:output:0(dense_45/kernel/Regularizer/Sum:output:0*
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
:����������
NoOpNoOp^degree/StatefulPartitionedCall!^dense_40/StatefulPartitionedCall2^dense_40/kernel/Regularizer/Square/ReadVariableOp!^dense_41/StatefulPartitionedCall2^dense_41/kernel/Regularizer/Square/ReadVariableOp!^dense_42/StatefulPartitionedCall2^dense_42/kernel/Regularizer/Square/ReadVariableOp!^dense_43/StatefulPartitionedCall2^dense_43/kernel/Regularizer/Square/ReadVariableOp!^dense_44/StatefulPartitionedCall2^dense_44/kernel/Regularizer/Square/ReadVariableOp!^dense_45/StatefulPartitionedCall2^dense_45/kernel/Regularizer/Square/ReadVariableOp!^distance/StatefulPartitionedCall"^dropout_9/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������: : : : : : : : : : : : : : : : 2@
degree/StatefulPartitionedCalldegree/StatefulPartitionedCall2D
 dense_40/StatefulPartitionedCall dense_40/StatefulPartitionedCall2f
1dense_40/kernel/Regularizer/Square/ReadVariableOp1dense_40/kernel/Regularizer/Square/ReadVariableOp2D
 dense_41/StatefulPartitionedCall dense_41/StatefulPartitionedCall2f
1dense_41/kernel/Regularizer/Square/ReadVariableOp1dense_41/kernel/Regularizer/Square/ReadVariableOp2D
 dense_42/StatefulPartitionedCall dense_42/StatefulPartitionedCall2f
1dense_42/kernel/Regularizer/Square/ReadVariableOp1dense_42/kernel/Regularizer/Square/ReadVariableOp2D
 dense_43/StatefulPartitionedCall dense_43/StatefulPartitionedCall2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp2D
 dense_44/StatefulPartitionedCall dense_44/StatefulPartitionedCall2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp2D
 dense_45/StatefulPartitionedCall dense_45/StatefulPartitionedCall2f
1dense_45/kernel/Regularizer/Square/ReadVariableOp1dense_45/kernel/Regularizer/Square/ReadVariableOp2D
 distance/StatefulPartitionedCall distance/StatefulPartitionedCall2F
!dropout_9/StatefulPartitionedCall!dropout_9/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
(__inference_model_9_layer_call_fn_788435	
input
unknown:	�d
	unknown_0:d
	unknown_1:dd
	unknown_2:d
	unknown_3:	�2
	unknown_4:2
	unknown_5:	�2
	unknown_6:2
	unknown_7:2

	unknown_8:

	unknown_9:2


unknown_10:


unknown_11:


unknown_12:

unknown_13:


unknown_14:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*2
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *L
fGRE
C__inference_model_9_layer_call_and_return_conditional_losses_788359o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:���������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������: : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:����������

_user_specified_nameinput
�

d
E__inference_dropout_9_layer_call_and_return_conditional_losses_789194

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������dC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������d*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������ds
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������dm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������d]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�%
�
D__inference_dense_40_layer_call_and_return_conditional_losses_787865

inputs4
!tensordot_readvariableop_resource:	�d-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�1dense_40/kernel/Regularizer/Square/ReadVariableOp{
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�d*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:z
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*,
_output_shapes
:�����������
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:dY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������d�
1dense_40/kernel/Regularizer/Square/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes
:	�d*
dtype0�
"dense_40/kernel/Regularizer/SquareSquare9dense_40/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�dr
!dense_40/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_40/kernel/Regularizer/SumSum&dense_40/kernel/Regularizer/Square:y:0*dense_40/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_40/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_40/kernel/Regularizer/mulMul*dense_40/kernel/Regularizer/mul/x:output:0(dense_40/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp2^dense_40/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp2f
1dense_40/kernel/Regularizer/Square/ReadVariableOp1dense_40/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�%
�
D__inference_dense_41_layer_call_and_return_conditional_losses_787908

inputs3
!tensordot_readvariableop_resource:dd-
biasadd_readvariableop_resource:d
identity��BiasAdd/ReadVariableOp�Tensordot/ReadVariableOp�1dense_41/kernel/Regularizer/Square/ReadVariableOpz
Tensordot/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype0X
Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:_
Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       E
Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:Y
Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2GatherV2Tensordot/Shape:output:0Tensordot/free:output:0 Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:[
Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/GatherV2_1GatherV2Tensordot/Shape:output:0Tensordot/axes:output:0"Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:Y
Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: n
Tensordot/ProdProdTensordot/GatherV2:output:0Tensordot/Const:output:0*
T0*
_output_shapes
: [
Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: t
Tensordot/Prod_1ProdTensordot/GatherV2_1:output:0Tensordot/Const_1:output:0*
T0*
_output_shapes
: W
Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concatConcatV2Tensordot/free:output:0Tensordot/axes:output:0Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:y
Tensordot/stackPackTensordot/Prod:output:0Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:y
Tensordot/transpose	TransposeinputsTensordot/concat:output:0*
T0*+
_output_shapes
:���������d�
Tensordot/ReshapeReshapeTensordot/transpose:y:0Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
Tensordot/MatMulMatMulTensordot/Reshape:output:0 Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d[
Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:dY
Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
Tensordot/concat_1ConcatV2Tensordot/GatherV2:output:0Tensordot/Const_2:output:0 Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
	TensordotReshapeTensordot/MatMul:product:0Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������dr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:d*
dtype0|
BiasAddBiasAddTensordot:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������dT
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:���������d�
1dense_41/kernel/Regularizer/Square/ReadVariableOpReadVariableOp!tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype0�
"dense_41/kernel/Regularizer/SquareSquare9dense_41/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:ddr
!dense_41/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_41/kernel/Regularizer/SumSum&dense_41/kernel/Regularizer/Square:y:0*dense_41/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_41/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_41/kernel/Regularizer/mulMul*dense_41/kernel/Regularizer/mul/x:output:0(dense_41/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:���������d�
NoOpNoOp^BiasAdd/ReadVariableOp^Tensordot/ReadVariableOp2^dense_41/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:���������d: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp24
Tensordot/ReadVariableOpTensordot/ReadVariableOp2f
1dense_41/kernel/Regularizer/Square/ReadVariableOp1dense_41/kernel/Regularizer/Square/ReadVariableOp:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�

�
D__inference_distance_layer_call_and_return_conditional_losses_789325

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
�
__inference_loss_fn_3_789389M
:dense_44_kernel_regularizer_square_readvariableop_resource:	�2
identity��1dense_44/kernel/Regularizer/Square/ReadVariableOp�
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_44_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#dense_44/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^dense_44/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp
�

d
E__inference_dropout_9_layer_call_and_return_conditional_losses_788212

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?h
dropout/MulMulinputsdropout/Const:output:0*
T0*+
_output_shapes
:���������dC
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*+
_output_shapes
:���������d*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*+
_output_shapes
:���������ds
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*+
_output_shapes
:���������dm
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*+
_output_shapes
:���������d]
IdentityIdentitydropout/Mul_1:z:0*
T0*+
_output_shapes
:���������d"
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
�
�
)__inference_dense_42_layer_call_fn_789214

inputs
unknown:	�2
	unknown_0:2
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_42_layer_call_and_return_conditional_losses_787967o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
D__inference_dense_43_layer_call_and_return_conditional_losses_788011

inputs0
matmul_readvariableop_resource:2
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_43/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
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
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_43/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
c
*__inference_dropout_9_layer_call_fn_789177

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_dropout_9_layer_call_and_return_conditional_losses_788212s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������d22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������d
 
_user_specified_nameinputs
ң
�
C__inference_model_9_layer_call_and_return_conditional_losses_788932

inputs=
*dense_40_tensordot_readvariableop_resource:	�d6
(dense_40_biasadd_readvariableop_resource:d<
*dense_41_tensordot_readvariableop_resource:dd6
(dense_41_biasadd_readvariableop_resource:d:
'dense_44_matmul_readvariableop_resource:	�26
(dense_44_biasadd_readvariableop_resource:2:
'dense_42_matmul_readvariableop_resource:	�26
(dense_42_biasadd_readvariableop_resource:29
'dense_45_matmul_readvariableop_resource:2
6
(dense_45_biasadd_readvariableop_resource:
9
'dense_43_matmul_readvariableop_resource:2
6
(dense_43_biasadd_readvariableop_resource:
7
%degree_matmul_readvariableop_resource:
4
&degree_biasadd_readvariableop_resource:9
'distance_matmul_readvariableop_resource:
6
(distance_biasadd_readvariableop_resource:
identity

identity_1��degree/BiasAdd/ReadVariableOp�degree/MatMul/ReadVariableOp�dense_40/BiasAdd/ReadVariableOp�!dense_40/Tensordot/ReadVariableOp�1dense_40/kernel/Regularizer/Square/ReadVariableOp�dense_41/BiasAdd/ReadVariableOp�!dense_41/Tensordot/ReadVariableOp�1dense_41/kernel/Regularizer/Square/ReadVariableOp�dense_42/BiasAdd/ReadVariableOp�dense_42/MatMul/ReadVariableOp�1dense_42/kernel/Regularizer/Square/ReadVariableOp�dense_43/BiasAdd/ReadVariableOp�dense_43/MatMul/ReadVariableOp�1dense_43/kernel/Regularizer/Square/ReadVariableOp�dense_44/BiasAdd/ReadVariableOp�dense_44/MatMul/ReadVariableOp�1dense_44/kernel/Regularizer/Square/ReadVariableOp�dense_45/BiasAdd/ReadVariableOp�dense_45/MatMul/ReadVariableOp�1dense_45/kernel/Regularizer/Square/ReadVariableOp�distance/BiasAdd/ReadVariableOp�distance/MatMul/ReadVariableOp�
!dense_40/Tensordot/ReadVariableOpReadVariableOp*dense_40_tensordot_readvariableop_resource*
_output_shapes
:	�d*
dtype0a
dense_40/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_40/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       N
dense_40/Tensordot/ShapeShapeinputs*
T0*
_output_shapes
:b
 dense_40/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_40/Tensordot/GatherV2GatherV2!dense_40/Tensordot/Shape:output:0 dense_40/Tensordot/free:output:0)dense_40/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_40/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_40/Tensordot/GatherV2_1GatherV2!dense_40/Tensordot/Shape:output:0 dense_40/Tensordot/axes:output:0+dense_40/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_40/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_40/Tensordot/ProdProd$dense_40/Tensordot/GatherV2:output:0!dense_40/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_40/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_40/Tensordot/Prod_1Prod&dense_40/Tensordot/GatherV2_1:output:0#dense_40/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_40/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_40/Tensordot/concatConcatV2 dense_40/Tensordot/free:output:0 dense_40/Tensordot/axes:output:0'dense_40/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_40/Tensordot/stackPack dense_40/Tensordot/Prod:output:0"dense_40/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_40/Tensordot/transpose	Transposeinputs"dense_40/Tensordot/concat:output:0*
T0*,
_output_shapes
:�����������
dense_40/Tensordot/ReshapeReshape dense_40/Tensordot/transpose:y:0!dense_40/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_40/Tensordot/MatMulMatMul#dense_40/Tensordot/Reshape:output:0)dense_40/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dd
dense_40/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:db
 dense_40/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_40/Tensordot/concat_1ConcatV2$dense_40/Tensordot/GatherV2:output:0#dense_40/Tensordot/Const_2:output:0)dense_40/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_40/TensordotReshape#dense_40/Tensordot/MatMul:product:0$dense_40/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d�
dense_40/BiasAdd/ReadVariableOpReadVariableOp(dense_40_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
dense_40/BiasAddBiasAdddense_40/Tensordot:output:0'dense_40/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������df
dense_40/ReluReludense_40/BiasAdd:output:0*
T0*+
_output_shapes
:���������d�
!dense_41/Tensordot/ReadVariableOpReadVariableOp*dense_41_tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype0a
dense_41/Tensordot/axesConst*
_output_shapes
:*
dtype0*
valueB:h
dense_41/Tensordot/freeConst*
_output_shapes
:*
dtype0*
valueB"       c
dense_41/Tensordot/ShapeShapedense_40/Relu:activations:0*
T0*
_output_shapes
:b
 dense_41/Tensordot/GatherV2/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_41/Tensordot/GatherV2GatherV2!dense_41/Tensordot/Shape:output:0 dense_41/Tensordot/free:output:0)dense_41/Tensordot/GatherV2/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:d
"dense_41/Tensordot/GatherV2_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_41/Tensordot/GatherV2_1GatherV2!dense_41/Tensordot/Shape:output:0 dense_41/Tensordot/axes:output:0+dense_41/Tensordot/GatherV2_1/axis:output:0*
Taxis0*
Tindices0*
Tparams0*
_output_shapes
:b
dense_41/Tensordot/ConstConst*
_output_shapes
:*
dtype0*
valueB: �
dense_41/Tensordot/ProdProd$dense_41/Tensordot/GatherV2:output:0!dense_41/Tensordot/Const:output:0*
T0*
_output_shapes
: d
dense_41/Tensordot/Const_1Const*
_output_shapes
:*
dtype0*
valueB: �
dense_41/Tensordot/Prod_1Prod&dense_41/Tensordot/GatherV2_1:output:0#dense_41/Tensordot/Const_1:output:0*
T0*
_output_shapes
: `
dense_41/Tensordot/concat/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_41/Tensordot/concatConcatV2 dense_41/Tensordot/free:output:0 dense_41/Tensordot/axes:output:0'dense_41/Tensordot/concat/axis:output:0*
N*
T0*
_output_shapes
:�
dense_41/Tensordot/stackPack dense_41/Tensordot/Prod:output:0"dense_41/Tensordot/Prod_1:output:0*
N*
T0*
_output_shapes
:�
dense_41/Tensordot/transpose	Transposedense_40/Relu:activations:0"dense_41/Tensordot/concat:output:0*
T0*+
_output_shapes
:���������d�
dense_41/Tensordot/ReshapeReshape dense_41/Tensordot/transpose:y:0!dense_41/Tensordot/stack:output:0*
T0*0
_output_shapes
:�������������������
dense_41/Tensordot/MatMulMatMul#dense_41/Tensordot/Reshape:output:0)dense_41/Tensordot/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������dd
dense_41/Tensordot/Const_2Const*
_output_shapes
:*
dtype0*
valueB:db
 dense_41/Tensordot/concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : �
dense_41/Tensordot/concat_1ConcatV2$dense_41/Tensordot/GatherV2:output:0#dense_41/Tensordot/Const_2:output:0)dense_41/Tensordot/concat_1/axis:output:0*
N*
T0*
_output_shapes
:�
dense_41/TensordotReshape#dense_41/Tensordot/MatMul:product:0$dense_41/Tensordot/concat_1:output:0*
T0*+
_output_shapes
:���������d�
dense_41/BiasAdd/ReadVariableOpReadVariableOp(dense_41_biasadd_readvariableop_resource*
_output_shapes
:d*
dtype0�
dense_41/BiasAddBiasAdddense_41/Tensordot:output:0'dense_41/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:���������df
dense_41/ReluReludense_41/BiasAdd:output:0*
T0*+
_output_shapes
:���������dq
dropout_9/IdentityIdentitydense_41/Relu:activations:0*
T0*+
_output_shapes
:���������d`
flatten_9/ConstConst*
_output_shapes
:*
dtype0*
valueB"����   �
flatten_9/ReshapeReshapedropout_9/Identity:output:0flatten_9/Const:output:0*
T0*(
_output_shapes
:�����������
dense_44/MatMul/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_44/MatMulMatMulflatten_9/Reshape:output:0&dense_44/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_44/BiasAdd/ReadVariableOpReadVariableOp(dense_44_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
dense_44/BiasAddBiasAdddense_44/MatMul:product:0'dense_44/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_42/MatMul/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_42/MatMulMatMulflatten_9/Reshape:output:0&dense_42/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_42/BiasAdd/ReadVariableOpReadVariableOp(dense_42_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
dense_42/BiasAddBiasAdddense_42/MatMul:product:0'dense_42/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_45/MatMul/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
dense_45/MatMulMatMuldense_44/BiasAdd:output:0&dense_45/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_45/BiasAdd/ReadVariableOpReadVariableOp(dense_45_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_45/BiasAddBiasAdddense_45/MatMul:product:0'dense_45/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_43/MatMul/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
dense_43/MatMulMatMuldense_42/BiasAdd:output:0&dense_43/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_43/BiasAdd/ReadVariableOpReadVariableOp(dense_43_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_43/BiasAddBiasAdddense_43/MatMul:product:0'dense_43/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
degree/MatMul/ReadVariableOpReadVariableOp%degree_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
degree/MatMulMatMuldense_45/BiasAdd:output:0$degree/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
degree/BiasAdd/ReadVariableOpReadVariableOp&degree_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
degree/BiasAddBiasAdddegree/MatMul:product:0%degree/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������d
degree/SoftmaxSoftmaxdegree/BiasAdd:output:0*
T0*'
_output_shapes
:����������
distance/MatMul/ReadVariableOpReadVariableOp'distance_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
distance/MatMulMatMuldense_43/BiasAdd:output:0&distance/MatMul/ReadVariableOp:value:0*
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
1dense_40/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*dense_40_tensordot_readvariableop_resource*
_output_shapes
:	�d*
dtype0�
"dense_40/kernel/Regularizer/SquareSquare9dense_40/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�dr
!dense_40/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_40/kernel/Regularizer/SumSum&dense_40/kernel/Regularizer/Square:y:0*dense_40/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_40/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_40/kernel/Regularizer/mulMul*dense_40/kernel/Regularizer/mul/x:output:0(dense_40/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_41/kernel/Regularizer/Square/ReadVariableOpReadVariableOp*dense_41_tensordot_readvariableop_resource*
_output_shapes

:dd*
dtype0�
"dense_41/kernel/Regularizer/SquareSquare9dense_41/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:ddr
!dense_41/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_41/kernel/Regularizer/SumSum&dense_41/kernel/Regularizer/Square:y:0*dense_41/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_41/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_41/kernel/Regularizer/mulMul*dense_41/kernel/Regularizer/mul/x:output:0(dense_41/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_42/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_42_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
"dense_42/kernel/Regularizer/SquareSquare9dense_42/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_42/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_42/kernel/Regularizer/SumSum&dense_42/kernel/Regularizer/Square:y:0*dense_42/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_42/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_42/kernel/Regularizer/mulMul*dense_42/kernel/Regularizer/mul/x:output:0(dense_42/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_44/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_44_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
"dense_44/kernel/Regularizer/SquareSquare9dense_44/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_44/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_44/kernel/Regularizer/SumSum&dense_44/kernel/Regularizer/Square:y:0*dense_44/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_44/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_44/kernel/Regularizer/mulMul*dense_44/kernel/Regularizer/mul/x:output:0(dense_44/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_43/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_43_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
"dense_43/kernel/Regularizer/SquareSquare9dense_43/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_43/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_43/kernel/Regularizer/SumSum&dense_43/kernel/Regularizer/Square:y:0*dense_43/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_43/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_43/kernel/Regularizer/mulMul*dense_43/kernel/Regularizer/mul/x:output:0(dense_43/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_45/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_45_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
"dense_45/kernel/Regularizer/SquareSquare9dense_45/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_45/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_45/kernel/Regularizer/SumSum&dense_45/kernel/Regularizer/Square:y:0*dense_45/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_45/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_45/kernel/Regularizer/mulMul*dense_45/kernel/Regularizer/mul/x:output:0(dense_45/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: c
IdentityIdentitydistance/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:���������i

Identity_1Identitydegree/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp^degree/BiasAdd/ReadVariableOp^degree/MatMul/ReadVariableOp ^dense_40/BiasAdd/ReadVariableOp"^dense_40/Tensordot/ReadVariableOp2^dense_40/kernel/Regularizer/Square/ReadVariableOp ^dense_41/BiasAdd/ReadVariableOp"^dense_41/Tensordot/ReadVariableOp2^dense_41/kernel/Regularizer/Square/ReadVariableOp ^dense_42/BiasAdd/ReadVariableOp^dense_42/MatMul/ReadVariableOp2^dense_42/kernel/Regularizer/Square/ReadVariableOp ^dense_43/BiasAdd/ReadVariableOp^dense_43/MatMul/ReadVariableOp2^dense_43/kernel/Regularizer/Square/ReadVariableOp ^dense_44/BiasAdd/ReadVariableOp^dense_44/MatMul/ReadVariableOp2^dense_44/kernel/Regularizer/Square/ReadVariableOp ^dense_45/BiasAdd/ReadVariableOp^dense_45/MatMul/ReadVariableOp2^dense_45/kernel/Regularizer/Square/ReadVariableOp ^distance/BiasAdd/ReadVariableOp^distance/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*K
_input_shapes:
8:����������: : : : : : : : : : : : : : : : 2>
degree/BiasAdd/ReadVariableOpdegree/BiasAdd/ReadVariableOp2<
degree/MatMul/ReadVariableOpdegree/MatMul/ReadVariableOp2B
dense_40/BiasAdd/ReadVariableOpdense_40/BiasAdd/ReadVariableOp2F
!dense_40/Tensordot/ReadVariableOp!dense_40/Tensordot/ReadVariableOp2f
1dense_40/kernel/Regularizer/Square/ReadVariableOp1dense_40/kernel/Regularizer/Square/ReadVariableOp2B
dense_41/BiasAdd/ReadVariableOpdense_41/BiasAdd/ReadVariableOp2F
!dense_41/Tensordot/ReadVariableOp!dense_41/Tensordot/ReadVariableOp2f
1dense_41/kernel/Regularizer/Square/ReadVariableOp1dense_41/kernel/Regularizer/Square/ReadVariableOp2B
dense_42/BiasAdd/ReadVariableOpdense_42/BiasAdd/ReadVariableOp2@
dense_42/MatMul/ReadVariableOpdense_42/MatMul/ReadVariableOp2f
1dense_42/kernel/Regularizer/Square/ReadVariableOp1dense_42/kernel/Regularizer/Square/ReadVariableOp2B
dense_43/BiasAdd/ReadVariableOpdense_43/BiasAdd/ReadVariableOp2@
dense_43/MatMul/ReadVariableOpdense_43/MatMul/ReadVariableOp2f
1dense_43/kernel/Regularizer/Square/ReadVariableOp1dense_43/kernel/Regularizer/Square/ReadVariableOp2B
dense_44/BiasAdd/ReadVariableOpdense_44/BiasAdd/ReadVariableOp2@
dense_44/MatMul/ReadVariableOpdense_44/MatMul/ReadVariableOp2f
1dense_44/kernel/Regularizer/Square/ReadVariableOp1dense_44/kernel/Regularizer/Square/ReadVariableOp2B
dense_45/BiasAdd/ReadVariableOpdense_45/BiasAdd/ReadVariableOp2@
dense_45/MatMul/ReadVariableOpdense_45/MatMul/ReadVariableOp2f
1dense_45/kernel/Regularizer/Square/ReadVariableOp1dense_45/kernel/Regularizer/Square/ReadVariableOp2B
distance/BiasAdd/ReadVariableOpdistance/BiasAdd/ReadVariableOp2@
distance/MatMul/ReadVariableOpdistance/MatMul/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_dense_40_layer_call_fn_789084

inputs
unknown:	�d
	unknown_0:d
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������d*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *M
fHRF
D__inference_dense_40_layer_call_and_return_conditional_losses_787865s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:���������d`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
)__inference_dense_43_layer_call_fn_789264

inputs
unknown:2
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
GPU2*0J 8� *M
fHRF
D__inference_dense_43_layer_call_and_return_conditional_losses_788011o
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
:���������2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs"�L
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
serving_default_input:0����������:
degree0
StatefulPartitionedCall:0���������<
distance0
StatefulPartitionedCall:1���������tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
layer-3
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
layer_with_weights-7
layer-10
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures"
_tf_keras_network
"
_tf_keras_input_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias"
_tf_keras_layer
�
	variables
trainable_variables
 regularization_losses
!	keras_api
"__call__
*#&call_and_return_all_conditional_losses

$kernel
%bias"
_tf_keras_layer
�
&	variables
'trainable_variables
(regularization_losses
)	keras_api
*__call__
*+&call_and_return_all_conditional_losses
,_random_generator"
_tf_keras_layer
�
-	variables
.trainable_variables
/regularization_losses
0	keras_api
1__call__
*2&call_and_return_all_conditional_losses"
_tf_keras_layer
�
3	variables
4trainable_variables
5regularization_losses
6	keras_api
7__call__
*8&call_and_return_all_conditional_losses

9kernel
:bias"
_tf_keras_layer
�
;	variables
<trainable_variables
=regularization_losses
>	keras_api
?__call__
*@&call_and_return_all_conditional_losses

Akernel
Bbias"
_tf_keras_layer
�
C	variables
Dtrainable_variables
Eregularization_losses
F	keras_api
G__call__
*H&call_and_return_all_conditional_losses

Ikernel
Jbias"
_tf_keras_layer
�
K	variables
Ltrainable_variables
Mregularization_losses
N	keras_api
O__call__
*P&call_and_return_all_conditional_losses

Qkernel
Rbias"
_tf_keras_layer
�
S	variables
Ttrainable_variables
Uregularization_losses
V	keras_api
W__call__
*X&call_and_return_all_conditional_losses

Ykernel
Zbias"
_tf_keras_layer
�
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses

akernel
bbias"
_tf_keras_layer
�
0
1
$2
%3
94
:5
A6
B7
I8
J9
Q10
R11
Y12
Z13
a14
b15"
trackable_list_wrapper
�
0
1
$2
%3
94
:5
A6
B7
I8
J9
Q10
R11
Y12
Z13
a14
b15"
trackable_list_wrapper
J
c0
d1
e2
f3
g4
h5"
trackable_list_wrapper
�
inon_trainable_variables

jlayers
kmetrics
llayer_regularization_losses
mlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
ntrace_0
otrace_1
ptrace_2
qtrace_32�
(__inference_model_9_layer_call_fn_788126
(__inference_model_9_layer_call_fn_788757
(__inference_model_9_layer_call_fn_788796
(__inference_model_9_layer_call_fn_788435�
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
 zntrace_0zotrace_1zptrace_2zqtrace_3
�
rtrace_0
strace_1
ttrace_2
utrace_32�
C__inference_model_9_layer_call_and_return_conditional_losses_788932
C__inference_model_9_layer_call_and_return_conditional_losses_789075
C__inference_model_9_layer_call_and_return_conditional_losses_788518
C__inference_model_9_layer_call_and_return_conditional_losses_788601�
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
 zrtrace_0zstrace_1zttrace_2zutrace_3
�B�
!__inference__wrapped_model_787821input"�
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
�
viter

wbeta_1

xbeta_2
	ydecaym�m�$m�%m�9m�:m�Am�Bm�Im�Jm�Qm�Rm�Ym�Zm�am�bm�v�v�$v�%v�9v�:v�Av�Bv�Iv�Jv�Qv�Rv�Yv�Zv�av�bv�"
	optimizer
 "
trackable_dict_wrapper
,
zserving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
'
c0"
trackable_list_wrapper
�
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_40_layer_call_fn_789084�
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
D__inference_dense_40_layer_call_and_return_conditional_losses_789121�
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
": 	�d2dense_40/kernel
:d2dense_40/bias
.
$0
%1"
trackable_list_wrapper
.
$0
%1"
trackable_list_wrapper
'
d0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
 regularization_losses
"__call__
*#&call_and_return_all_conditional_losses
&#"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_41_layer_call_fn_789130�
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
D__inference_dense_41_layer_call_and_return_conditional_losses_789167�
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
!:dd2dense_41/kernel
:d2dense_41/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
&	variables
'trainable_variables
(regularization_losses
*__call__
*+&call_and_return_all_conditional_losses
&+"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
*__inference_dropout_9_layer_call_fn_789172
*__inference_dropout_9_layer_call_fn_789177�
���
FullArgSpec)
args!�
jself
jinputs

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
E__inference_dropout_9_layer_call_and_return_conditional_losses_789182
E__inference_dropout_9_layer_call_and_return_conditional_losses_789194�
���
FullArgSpec)
args!�
jself
jinputs

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
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
-	variables
.trainable_variables
/regularization_losses
1__call__
*2&call_and_return_all_conditional_losses
&2"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_flatten_9_layer_call_fn_789199�
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
E__inference_flatten_9_layer_call_and_return_conditional_losses_789205�
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
.
90
:1"
trackable_list_wrapper
.
90
:1"
trackable_list_wrapper
'
e0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
3	variables
4trainable_variables
5regularization_losses
7__call__
*8&call_and_return_all_conditional_losses
&8"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_42_layer_call_fn_789214�
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
D__inference_dense_42_layer_call_and_return_conditional_losses_789230�
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
": 	�22dense_42/kernel
:22dense_42/bias
.
A0
B1"
trackable_list_wrapper
.
A0
B1"
trackable_list_wrapper
'
f0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
;	variables
<trainable_variables
=regularization_losses
?__call__
*@&call_and_return_all_conditional_losses
&@"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_44_layer_call_fn_789239�
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
D__inference_dense_44_layer_call_and_return_conditional_losses_789255�
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
": 	�22dense_44/kernel
:22dense_44/bias
.
I0
J1"
trackable_list_wrapper
.
I0
J1"
trackable_list_wrapper
'
g0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
C	variables
Dtrainable_variables
Eregularization_losses
G__call__
*H&call_and_return_all_conditional_losses
&H"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_43_layer_call_fn_789264�
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
D__inference_dense_43_layer_call_and_return_conditional_losses_789280�
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
!:2
2dense_43/kernel
:
2dense_43/bias
.
Q0
R1"
trackable_list_wrapper
.
Q0
R1"
trackable_list_wrapper
'
h0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
K	variables
Ltrainable_variables
Mregularization_losses
O__call__
*P&call_and_return_all_conditional_losses
&P"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_dense_45_layer_call_fn_789289�
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
D__inference_dense_45_layer_call_and_return_conditional_losses_789305�
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
!:2
2dense_45/kernel
:
2dense_45/bias
.
Y0
Z1"
trackable_list_wrapper
.
Y0
Z1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
S	variables
Ttrainable_variables
Uregularization_losses
W__call__
*X&call_and_return_all_conditional_losses
&X"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
)__inference_distance_layer_call_fn_789314�
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
D__inference_distance_layer_call_and_return_conditional_losses_789325�
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
a0
b1"
trackable_list_wrapper
.
a0
b1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
'__inference_degree_layer_call_fn_789334�
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
B__inference_degree_layer_call_and_return_conditional_losses_789345�
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
2degree/kernel
:2degree/bias
�
�trace_02�
__inference_loss_fn_0_789356�
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
__inference_loss_fn_1_789367�
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
__inference_loss_fn_2_789378�
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
__inference_loss_fn_3_789389�
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
__inference_loss_fn_4_789400�
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
__inference_loss_fn_5_789411�
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
n
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
9
10"
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
(__inference_model_9_layer_call_fn_788126input"�
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
(__inference_model_9_layer_call_fn_788757inputs"�
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
(__inference_model_9_layer_call_fn_788796inputs"�
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
(__inference_model_9_layer_call_fn_788435input"�
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
C__inference_model_9_layer_call_and_return_conditional_losses_788932inputs"�
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
C__inference_model_9_layer_call_and_return_conditional_losses_789075inputs"�
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
C__inference_model_9_layer_call_and_return_conditional_losses_788518input"�
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
C__inference_model_9_layer_call_and_return_conditional_losses_788601input"�
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
$__inference_signature_wrapper_788682input"�
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
'
c0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_dense_40_layer_call_fn_789084inputs"�
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
D__inference_dense_40_layer_call_and_return_conditional_losses_789121inputs"�
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
d0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_dense_41_layer_call_fn_789130inputs"�
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
D__inference_dense_41_layer_call_and_return_conditional_losses_789167inputs"�
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
*__inference_dropout_9_layer_call_fn_789172inputs"�
���
FullArgSpec)
args!�
jself
jinputs

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
�B�
*__inference_dropout_9_layer_call_fn_789177inputs"�
���
FullArgSpec)
args!�
jself
jinputs

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
E__inference_dropout_9_layer_call_and_return_conditional_losses_789182inputs"�
���
FullArgSpec)
args!�
jself
jinputs

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
E__inference_dropout_9_layer_call_and_return_conditional_losses_789194inputs"�
���
FullArgSpec)
args!�
jself
jinputs

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
*__inference_flatten_9_layer_call_fn_789199inputs"�
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
E__inference_flatten_9_layer_call_and_return_conditional_losses_789205inputs"�
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
e0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_dense_42_layer_call_fn_789214inputs"�
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
D__inference_dense_42_layer_call_and_return_conditional_losses_789230inputs"�
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
f0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_dense_44_layer_call_fn_789239inputs"�
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
D__inference_dense_44_layer_call_and_return_conditional_losses_789255inputs"�
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
g0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_dense_43_layer_call_fn_789264inputs"�
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
D__inference_dense_43_layer_call_and_return_conditional_losses_789280inputs"�
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
h0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
)__inference_dense_45_layer_call_fn_789289inputs"�
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
D__inference_dense_45_layer_call_and_return_conditional_losses_789305inputs"�
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
)__inference_distance_layer_call_fn_789314inputs"�
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
D__inference_distance_layer_call_and_return_conditional_losses_789325inputs"�
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
'__inference_degree_layer_call_fn_789334inputs"�
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
B__inference_degree_layer_call_and_return_conditional_losses_789345inputs"�
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
__inference_loss_fn_0_789356"�
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
__inference_loss_fn_1_789367"�
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
__inference_loss_fn_2_789378"�
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
__inference_loss_fn_3_789389"�
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
__inference_loss_fn_4_789400"�
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
__inference_loss_fn_5_789411"�
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
':%	�d2Adam/dense_40/kernel/m
 :d2Adam/dense_40/bias/m
&:$dd2Adam/dense_41/kernel/m
 :d2Adam/dense_41/bias/m
':%	�22Adam/dense_42/kernel/m
 :22Adam/dense_42/bias/m
':%	�22Adam/dense_44/kernel/m
 :22Adam/dense_44/bias/m
&:$2
2Adam/dense_43/kernel/m
 :
2Adam/dense_43/bias/m
&:$2
2Adam/dense_45/kernel/m
 :
2Adam/dense_45/bias/m
&:$
2Adam/distance/kernel/m
 :2Adam/distance/bias/m
$:"
2Adam/degree/kernel/m
:2Adam/degree/bias/m
':%	�d2Adam/dense_40/kernel/v
 :d2Adam/dense_40/bias/v
&:$dd2Adam/dense_41/kernel/v
 :d2Adam/dense_41/bias/v
':%	�22Adam/dense_42/kernel/v
 :22Adam/dense_42/bias/v
':%	�22Adam/dense_44/kernel/v
 :22Adam/dense_44/bias/v
&:$2
2Adam/dense_43/kernel/v
 :
2Adam/dense_43/bias/v
&:$2
2Adam/dense_45/kernel/v
 :
2Adam/dense_45/bias/v
&:$
2Adam/distance/kernel/v
 :2Adam/distance/bias/v
$:"
2Adam/degree/kernel/v
:2Adam/degree/bias/v�
!__inference__wrapped_model_787821�$%AB9:QRIJabYZ3�0
)�&
$�!
input����������
� "_�\
*
degree �
degree���������
.
distance"�
distance����������
B__inference_degree_layer_call_and_return_conditional_losses_789345\ab/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� z
'__inference_degree_layer_call_fn_789334Oab/�,
%�"
 �
inputs���������

� "�����������
D__inference_dense_40_layer_call_and_return_conditional_losses_789121e4�1
*�'
%�"
inputs����������
� ")�&
�
0���������d
� �
)__inference_dense_40_layer_call_fn_789084X4�1
*�'
%�"
inputs����������
� "����������d�
D__inference_dense_41_layer_call_and_return_conditional_losses_789167d$%3�0
)�&
$�!
inputs���������d
� ")�&
�
0���������d
� �
)__inference_dense_41_layer_call_fn_789130W$%3�0
)�&
$�!
inputs���������d
� "����������d�
D__inference_dense_42_layer_call_and_return_conditional_losses_789230]9:0�-
&�#
!�
inputs����������
� "%�"
�
0���������2
� }
)__inference_dense_42_layer_call_fn_789214P9:0�-
&�#
!�
inputs����������
� "����������2�
D__inference_dense_43_layer_call_and_return_conditional_losses_789280\IJ/�,
%�"
 �
inputs���������2
� "%�"
�
0���������

� |
)__inference_dense_43_layer_call_fn_789264OIJ/�,
%�"
 �
inputs���������2
� "����������
�
D__inference_dense_44_layer_call_and_return_conditional_losses_789255]AB0�-
&�#
!�
inputs����������
� "%�"
�
0���������2
� }
)__inference_dense_44_layer_call_fn_789239PAB0�-
&�#
!�
inputs����������
� "����������2�
D__inference_dense_45_layer_call_and_return_conditional_losses_789305\QR/�,
%�"
 �
inputs���������2
� "%�"
�
0���������

� |
)__inference_dense_45_layer_call_fn_789289OQR/�,
%�"
 �
inputs���������2
� "����������
�
D__inference_distance_layer_call_and_return_conditional_losses_789325\YZ/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� |
)__inference_distance_layer_call_fn_789314OYZ/�,
%�"
 �
inputs���������

� "�����������
E__inference_dropout_9_layer_call_and_return_conditional_losses_789182d7�4
-�*
$�!
inputs���������d
p 
� ")�&
�
0���������d
� �
E__inference_dropout_9_layer_call_and_return_conditional_losses_789194d7�4
-�*
$�!
inputs���������d
p
� ")�&
�
0���������d
� �
*__inference_dropout_9_layer_call_fn_789172W7�4
-�*
$�!
inputs���������d
p 
� "����������d�
*__inference_dropout_9_layer_call_fn_789177W7�4
-�*
$�!
inputs���������d
p
� "����������d�
E__inference_flatten_9_layer_call_and_return_conditional_losses_789205]3�0
)�&
$�!
inputs���������d
� "&�#
�
0����������
� ~
*__inference_flatten_9_layer_call_fn_789199P3�0
)�&
$�!
inputs���������d
� "�����������;
__inference_loss_fn_0_789356�

� 
� "� ;
__inference_loss_fn_1_789367$�

� 
� "� ;
__inference_loss_fn_2_7893789�

� 
� "� ;
__inference_loss_fn_3_789389A�

� 
� "� ;
__inference_loss_fn_4_789400I�

� 
� "� ;
__inference_loss_fn_5_789411Q�

� 
� "� �
C__inference_model_9_layer_call_and_return_conditional_losses_788518�$%AB9:QRIJabYZ;�8
1�.
$�!
input����������
p 

 
� "K�H
A�>
�
0/0���������
�
0/1���������
� �
C__inference_model_9_layer_call_and_return_conditional_losses_788601�$%AB9:QRIJabYZ;�8
1�.
$�!
input����������
p

 
� "K�H
A�>
�
0/0���������
�
0/1���������
� �
C__inference_model_9_layer_call_and_return_conditional_losses_788932�$%AB9:QRIJabYZ<�9
2�/
%�"
inputs����������
p 

 
� "K�H
A�>
�
0/0���������
�
0/1���������
� �
C__inference_model_9_layer_call_and_return_conditional_losses_789075�$%AB9:QRIJabYZ<�9
2�/
%�"
inputs����������
p

 
� "K�H
A�>
�
0/0���������
�
0/1���������
� �
(__inference_model_9_layer_call_fn_788126�$%AB9:QRIJabYZ;�8
1�.
$�!
input����������
p 

 
� "=�:
�
0���������
�
1����������
(__inference_model_9_layer_call_fn_788435�$%AB9:QRIJabYZ;�8
1�.
$�!
input����������
p

 
� "=�:
�
0���������
�
1����������
(__inference_model_9_layer_call_fn_788757�$%AB9:QRIJabYZ<�9
2�/
%�"
inputs����������
p 

 
� "=�:
�
0���������
�
1����������
(__inference_model_9_layer_call_fn_788796�$%AB9:QRIJabYZ<�9
2�/
%�"
inputs����������
p

 
� "=�:
�
0���������
�
1����������
$__inference_signature_wrapper_788682�$%AB9:QRIJabYZ<�9
� 
2�/
-
input$�!
input����������"_�\
*
degree �
degree���������
.
distance"�
distance���������