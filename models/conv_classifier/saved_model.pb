��
��
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
�
Conv2D

input"T
filter"T
output"T"
Ttype:	
2"
strides	list(int)"
use_cudnn_on_gpubool(",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 "-
data_formatstringNHWC:
NHWCNCHW" 
	dilations	list(int)

;
Elu
features"T
activations"T"
Ttype:
2
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
�
Max

input"T
reduction_indices"Tidx
output"T"
	keep_dimsbool( " 
Ttype:
2	"
Tidxtype0:
2	
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
�
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 �"serve*2.9.12v2.9.0-18-gd8ce9f9c3018��
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
Adam/dense_83/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_83/bias/v
y
(Adam/dense_83/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_83/bias/v*
_output_shapes
:
*
dtype0
�
Adam/dense_83/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
*'
shared_nameAdam/dense_83/kernel/v
�
*Adam/dense_83/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_83/kernel/v*
_output_shapes

:2
*
dtype0
�
Adam/dense_81/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_81/bias/v
y
(Adam/dense_81/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_81/bias/v*
_output_shapes
:
*
dtype0
�
Adam/dense_81/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
*'
shared_nameAdam/dense_81/kernel/v
�
*Adam/dense_81/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_81/kernel/v*
_output_shapes

:2
*
dtype0
�
Adam/dense_82/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_82/bias/v
y
(Adam/dense_82/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_82/bias/v*
_output_shapes
:2*
dtype0
�
Adam/dense_82/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*'
shared_nameAdam/dense_82/kernel/v
�
*Adam/dense_82/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_82/kernel/v*
_output_shapes
:	�2*
dtype0
�
Adam/dense_80/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_80/bias/v
y
(Adam/dense_80/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_80/bias/v*
_output_shapes
:2*
dtype0
�
Adam/dense_80/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*'
shared_nameAdam/dense_80/kernel/v
�
*Adam/dense_80/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_80/kernel/v*
_output_shapes
:	�2*
dtype0
�
Adam/conv2d_3/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv2d_3/bias/v
z
(Adam/conv2d_3/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/v*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_3/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�*'
shared_nameAdam/conv2d_3/kernel/v
�
*Adam/conv2d_3/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/v*'
_output_shapes
:
�*
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
Adam/dense_83/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_83/bias/m
y
(Adam/dense_83/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_83/bias/m*
_output_shapes
:
*
dtype0
�
Adam/dense_83/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
*'
shared_nameAdam/dense_83/kernel/m
�
*Adam/dense_83/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_83/kernel/m*
_output_shapes

:2
*
dtype0
�
Adam/dense_81/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*%
shared_nameAdam/dense_81/bias/m
y
(Adam/dense_81/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_81/bias/m*
_output_shapes
:
*
dtype0
�
Adam/dense_81/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
*'
shared_nameAdam/dense_81/kernel/m
�
*Adam/dense_81/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_81/kernel/m*
_output_shapes

:2
*
dtype0
�
Adam/dense_82/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_82/bias/m
y
(Adam/dense_82/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_82/bias/m*
_output_shapes
:2*
dtype0
�
Adam/dense_82/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*'
shared_nameAdam/dense_82/kernel/m
�
*Adam/dense_82/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_82/kernel/m*
_output_shapes
:	�2*
dtype0
�
Adam/dense_80/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*%
shared_nameAdam/dense_80/bias/m
y
(Adam/dense_80/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_80/bias/m*
_output_shapes
:2*
dtype0
�
Adam/dense_80/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2*'
shared_nameAdam/dense_80/kernel/m
�
*Adam/dense_80/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_80/kernel/m*
_output_shapes
:	�2*
dtype0
�
Adam/conv2d_3/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*%
shared_nameAdam/conv2d_3/bias/m
z
(Adam/conv2d_3/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/bias/m*
_output_shapes	
:�*
dtype0
�
Adam/conv2d_3/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�*'
shared_nameAdam/conv2d_3/kernel/m
�
*Adam/conv2d_3/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_3/kernel/m*'
_output_shapes
:
�*
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
dense_83/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_83/bias
k
!dense_83/bias/Read/ReadVariableOpReadVariableOpdense_83/bias*
_output_shapes
:
*
dtype0
z
dense_83/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
* 
shared_namedense_83/kernel
s
#dense_83/kernel/Read/ReadVariableOpReadVariableOpdense_83/kernel*
_output_shapes

:2
*
dtype0
r
dense_81/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_81/bias
k
!dense_81/bias/Read/ReadVariableOpReadVariableOpdense_81/bias*
_output_shapes
:
*
dtype0
z
dense_81/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
* 
shared_namedense_81/kernel
s
#dense_81/kernel/Read/ReadVariableOpReadVariableOpdense_81/kernel*
_output_shapes

:2
*
dtype0
r
dense_82/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_82/bias
k
!dense_82/bias/Read/ReadVariableOpReadVariableOpdense_82/bias*
_output_shapes
:2*
dtype0
{
dense_82/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2* 
shared_namedense_82/kernel
t
#dense_82/kernel/Read/ReadVariableOpReadVariableOpdense_82/kernel*
_output_shapes
:	�2*
dtype0
r
dense_80/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_80/bias
k
!dense_80/bias/Read/ReadVariableOpReadVariableOpdense_80/bias*
_output_shapes
:2*
dtype0
{
dense_80/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	�2* 
shared_namedense_80/kernel
t
#dense_80/kernel/Read/ReadVariableOpReadVariableOpdense_80/kernel*
_output_shapes
:	�2*
dtype0
s
conv2d_3/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:�*
shared_nameconv2d_3/bias
l
!conv2d_3/bias/Read/ReadVariableOpReadVariableOpconv2d_3/bias*
_output_shapes	
:�*
dtype0
�
conv2d_3/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
�* 
shared_nameconv2d_3/kernel
|
#conv2d_3/kernel/Read/ReadVariableOpReadVariableOpconv2d_3/kernel*'
_output_shapes
:
�*
dtype0

NoOpNoOp
�o
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�o
value�nB�n B�n
�
layer-0
layer-1
layer_with_weights-0
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer_with_weights-6
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
*&call_and_return_all_conditional_losses* 
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias
 $_jit_compiled_convolution_op*
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses
+_random_generator* 
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses* 
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias*
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

@kernel
Abias*
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

Hkernel
Ibias*
�
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

Pkernel
Qbias*
�
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses

Xkernel
Ybias*
�
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses

`kernel
abias*
j
"0
#1
82
93
@4
A5
H6
I7
P8
Q9
X10
Y11
`12
a13*
j
"0
#1
82
93
@4
A5
H6
I7
P8
Q9
X10
Y11
`12
a13*
%
b0
c1
d2
e3
f4* 
�
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
ltrace_0
mtrace_1
ntrace_2
otrace_3* 
6
ptrace_0
qtrace_1
rtrace_2
strace_3* 
* 
�
titer

ubeta_1

vbeta_2
	wdecay"m�#m�8m�9m�@m�Am�Hm�Im�Pm�Qm�Xm�Ym�`m�am�"v�#v�8v�9v�@v�Av�Hv�Iv�Pv�Qv�Xv�Yv�`v�av�*
* 

xserving_default* 
* 
* 
* 
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

~trace_0* 

trace_0* 

"0
#1*

"0
#1*
	
b0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEconv2d_3/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv2d_3/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses* 

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
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses* 

�trace_0* 

�trace_0* 

80
91*

80
91*
	
c0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_80/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_80/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*

@0
A1*

@0
A1*
	
d0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_82/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_82/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

H0
I1*

H0
I1*
	
e0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_81/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_81/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

P0
Q1*

P0
Q1*
	
f0* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdense_83/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_83/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

X0
Y1*

X0
Y1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
_Y
VARIABLE_VALUEdistance/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdistance/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

`0
a1*

`0
a1*
* 
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses*

�trace_0* 

�trace_0* 
]W
VARIABLE_VALUEdegree/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEdegree/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*
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
* 
* 
* 
* 
* 
* 
* 
	
b0* 
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
VARIABLE_VALUEAdam/conv2d_3/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_3/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_80/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_80/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_82/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_82/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_81/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_81/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_83/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_83/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/distance/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/distance/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/degree/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/degree/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/conv2d_3/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/conv2d_3/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_80/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_80/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_82/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_82/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_81/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_81/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/dense_83/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_83/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�|
VARIABLE_VALUEAdam/distance/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/distance/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�z
VARIABLE_VALUEAdam/degree/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/degree/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
�
serving_default_inputPlaceholder*,
_output_shapes
:����������*
dtype0*!
shape:����������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv2d_3/kernelconv2d_3/biasdense_82/kerneldense_82/biasdense_80/kerneldense_80/biasdense_83/kerneldense_83/biasdense_81/kerneldense_81/biasdegree/kerneldegree/biasdistance/kerneldistance/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *.
f)R'
%__inference_signature_wrapper_1067257
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#conv2d_3/kernel/Read/ReadVariableOp!conv2d_3/bias/Read/ReadVariableOp#dense_80/kernel/Read/ReadVariableOp!dense_80/bias/Read/ReadVariableOp#dense_82/kernel/Read/ReadVariableOp!dense_82/bias/Read/ReadVariableOp#dense_81/kernel/Read/ReadVariableOp!dense_81/bias/Read/ReadVariableOp#dense_83/kernel/Read/ReadVariableOp!dense_83/bias/Read/ReadVariableOp#distance/kernel/Read/ReadVariableOp!distance/bias/Read/ReadVariableOp!degree/kernel/Read/ReadVariableOpdegree/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/conv2d_3/kernel/m/Read/ReadVariableOp(Adam/conv2d_3/bias/m/Read/ReadVariableOp*Adam/dense_80/kernel/m/Read/ReadVariableOp(Adam/dense_80/bias/m/Read/ReadVariableOp*Adam/dense_82/kernel/m/Read/ReadVariableOp(Adam/dense_82/bias/m/Read/ReadVariableOp*Adam/dense_81/kernel/m/Read/ReadVariableOp(Adam/dense_81/bias/m/Read/ReadVariableOp*Adam/dense_83/kernel/m/Read/ReadVariableOp(Adam/dense_83/bias/m/Read/ReadVariableOp*Adam/distance/kernel/m/Read/ReadVariableOp(Adam/distance/bias/m/Read/ReadVariableOp(Adam/degree/kernel/m/Read/ReadVariableOp&Adam/degree/bias/m/Read/ReadVariableOp*Adam/conv2d_3/kernel/v/Read/ReadVariableOp(Adam/conv2d_3/bias/v/Read/ReadVariableOp*Adam/dense_80/kernel/v/Read/ReadVariableOp(Adam/dense_80/bias/v/Read/ReadVariableOp*Adam/dense_82/kernel/v/Read/ReadVariableOp(Adam/dense_82/bias/v/Read/ReadVariableOp*Adam/dense_81/kernel/v/Read/ReadVariableOp(Adam/dense_81/bias/v/Read/ReadVariableOp*Adam/dense_83/kernel/v/Read/ReadVariableOp(Adam/dense_83/bias/v/Read/ReadVariableOp*Adam/distance/kernel/v/Read/ReadVariableOp(Adam/distance/bias/v/Read/ReadVariableOp(Adam/degree/kernel/v/Read/ReadVariableOp&Adam/degree/bias/v/Read/ReadVariableOpConst*E
Tin>
<2:	*
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
GPU2*0J 8� *)
f$R"
 __inference__traced_save_1068020
�

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_3/kernelconv2d_3/biasdense_80/kerneldense_80/biasdense_82/kerneldense_82/biasdense_81/kerneldense_81/biasdense_83/kerneldense_83/biasdistance/kerneldistance/biasdegree/kerneldegree/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decaytotal_4count_4total_3count_3total_2count_2total_1count_1totalcountAdam/conv2d_3/kernel/mAdam/conv2d_3/bias/mAdam/dense_80/kernel/mAdam/dense_80/bias/mAdam/dense_82/kernel/mAdam/dense_82/bias/mAdam/dense_81/kernel/mAdam/dense_81/bias/mAdam/dense_83/kernel/mAdam/dense_83/bias/mAdam/distance/kernel/mAdam/distance/bias/mAdam/degree/kernel/mAdam/degree/bias/mAdam/conv2d_3/kernel/vAdam/conv2d_3/bias/vAdam/dense_80/kernel/vAdam/dense_80/bias/vAdam/dense_82/kernel/vAdam/dense_82/bias/vAdam/dense_81/kernel/vAdam/dense_81/bias/vAdam/dense_83/kernel/vAdam/dense_83/bias/vAdam/distance/kernel/vAdam/distance/bias/vAdam/degree/kernel/vAdam/degree/bias/v*D
Tin=
;29*
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
GPU2*0J 8� *,
f'R%
#__inference__traced_restore_1068198��
�
�
(__inference_degree_layer_call_fn_1067762

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
GPU2*0J 8� *L
fGRE
C__inference_degree_layer_call_and_return_conditional_losses_1066675o
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
�Y
�
E__inference_model_16_layer_call_and_return_conditional_losses_1066972

inputs+
conv2d_3_1066903:
�
conv2d_3_1066905:	�#
dense_82_1066910:	�2
dense_82_1066912:2#
dense_80_1066915:	�2
dense_80_1066917:2"
dense_83_1066920:2

dense_83_1066922:
"
dense_81_1066925:2

dense_81_1066927:
 
degree_1066930:

degree_1066932:"
distance_1066935:

distance_1066937:
identity

identity_1�� conv2d_3/StatefulPartitionedCall�1conv2d_3/kernel/Regularizer/Square/ReadVariableOp�degree/StatefulPartitionedCall� dense_80/StatefulPartitionedCall�1dense_80/kernel/Regularizer/Square/ReadVariableOp� dense_81/StatefulPartitionedCall�1dense_81/kernel/Regularizer/Square/ReadVariableOp� dense_82/StatefulPartitionedCall�1dense_82/kernel/Regularizer/Square/ReadVariableOp� dense_83/StatefulPartitionedCall�1dense_83/kernel/Regularizer/Square/ReadVariableOp� distance/StatefulPartitionedCall�"dropout_17/StatefulPartitionedCall�
reshape_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_reshape_2_layer_call_and_return_conditional_losses_1066543�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0conv2d_3_1066903conv2d_3_1066905*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1066562�
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_1066843�
$global_max_pooling2d/PartitionedCallPartitionedCall+dropout_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_global_max_pooling2d_layer_call_and_return_conditional_losses_1066519�
 dense_82/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling2d/PartitionedCall:output:0dense_82_1066910dense_82_1066912*
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
GPU2*0J 8� *N
fIRG
E__inference_dense_82_layer_call_and_return_conditional_losses_1066592�
 dense_80/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling2d/PartitionedCall:output:0dense_80_1066915dense_80_1066917*
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
GPU2*0J 8� *N
fIRG
E__inference_dense_80_layer_call_and_return_conditional_losses_1066614�
 dense_83/StatefulPartitionedCallStatefulPartitionedCall)dense_82/StatefulPartitionedCall:output:0dense_83_1066920dense_83_1066922*
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
E__inference_dense_83_layer_call_and_return_conditional_losses_1066636�
 dense_81/StatefulPartitionedCallStatefulPartitionedCall)dense_80/StatefulPartitionedCall:output:0dense_81_1066925dense_81_1066927*
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
E__inference_dense_81_layer_call_and_return_conditional_losses_1066658�
degree/StatefulPartitionedCallStatefulPartitionedCall)dense_83/StatefulPartitionedCall:output:0degree_1066930degree_1066932*
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
GPU2*0J 8� *L
fGRE
C__inference_degree_layer_call_and_return_conditional_losses_1066675�
 distance/StatefulPartitionedCallStatefulPartitionedCall)dense_81/StatefulPartitionedCall:output:0distance_1066935distance_1066937*
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
GPU2*0J 8� *N
fIRG
E__inference_distance_layer_call_and_return_conditional_losses_1066692�
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_3_1066903*'
_output_shapes
:
�*
dtype0�
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:
�z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_80_1066915*
_output_shapes
:	�2*
dtype0�
"dense_80/kernel/Regularizer/SquareSquare9dense_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_80/kernel/Regularizer/SumSum&dense_80/kernel/Regularizer/Square:y:0*dense_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_80/kernel/Regularizer/mulMul*dense_80/kernel/Regularizer/mul/x:output:0(dense_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_82/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_82_1066910*
_output_shapes
:	�2*
dtype0�
"dense_82/kernel/Regularizer/SquareSquare9dense_82/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_82/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_82/kernel/Regularizer/SumSum&dense_82/kernel/Regularizer/Square:y:0*dense_82/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_82/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_82/kernel/Regularizer/mulMul*dense_82/kernel/Regularizer/mul/x:output:0(dense_82/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_81/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_81_1066925*
_output_shapes

:2
*
dtype0�
"dense_81/kernel/Regularizer/SquareSquare9dense_81/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_81/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_81/kernel/Regularizer/SumSum&dense_81/kernel/Regularizer/Square:y:0*dense_81/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_81/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_81/kernel/Regularizer/mulMul*dense_81/kernel/Regularizer/mul/x:output:0(dense_81/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_83/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_83_1066920*
_output_shapes

:2
*
dtype0�
"dense_83/kernel/Regularizer/SquareSquare9dense_83/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_83/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_83/kernel/Regularizer/SumSum&dense_83/kernel/Regularizer/Square:y:0*dense_83/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_83/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_83/kernel/Regularizer/mulMul*dense_83/kernel/Regularizer/mul/x:output:0(dense_83/kernel/Regularizer/Sum:output:0*
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
:����������
NoOpNoOp!^conv2d_3/StatefulPartitionedCall2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp^degree/StatefulPartitionedCall!^dense_80/StatefulPartitionedCall2^dense_80/kernel/Regularizer/Square/ReadVariableOp!^dense_81/StatefulPartitionedCall2^dense_81/kernel/Regularizer/Square/ReadVariableOp!^dense_82/StatefulPartitionedCall2^dense_82/kernel/Regularizer/Square/ReadVariableOp!^dense_83/StatefulPartitionedCall2^dense_83/kernel/Regularizer/Square/ReadVariableOp!^distance/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:����������: : : : : : : : : : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp2@
degree/StatefulPartitionedCalldegree/StatefulPartitionedCall2D
 dense_80/StatefulPartitionedCall dense_80/StatefulPartitionedCall2f
1dense_80/kernel/Regularizer/Square/ReadVariableOp1dense_80/kernel/Regularizer/Square/ReadVariableOp2D
 dense_81/StatefulPartitionedCall dense_81/StatefulPartitionedCall2f
1dense_81/kernel/Regularizer/Square/ReadVariableOp1dense_81/kernel/Regularizer/Square/ReadVariableOp2D
 dense_82/StatefulPartitionedCall dense_82/StatefulPartitionedCall2f
1dense_82/kernel/Regularizer/Square/ReadVariableOp1dense_82/kernel/Regularizer/Square/ReadVariableOp2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall2f
1dense_83/kernel/Regularizer/Square/ReadVariableOp1dense_83/kernel/Regularizer/Square/ReadVariableOp2D
 distance/StatefulPartitionedCall distance/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1067595

inputs9
conv2d_readvariableop_resource:
�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�1conv2d_3/kernel/Regularizer/Square/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:
�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:������������
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:
�*
dtype0�
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:
�z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_dense_80_layer_call_fn_1067642

inputs
unknown:	�2
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
GPU2*0J 8� *N
fIRG
E__inference_dense_80_layer_call_and_return_conditional_losses_1066614o
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
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_dense_81_layer_call_fn_1067692

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
GPU2*0J 8� *N
fIRG
E__inference_dense_81_layer_call_and_return_conditional_losses_1066658o
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
�!
#__inference__traced_restore_1068198
file_prefix;
 assignvariableop_conv2d_3_kernel:
�/
 assignvariableop_1_conv2d_3_bias:	�5
"assignvariableop_2_dense_80_kernel:	�2.
 assignvariableop_3_dense_80_bias:25
"assignvariableop_4_dense_82_kernel:	�2.
 assignvariableop_5_dense_82_bias:24
"assignvariableop_6_dense_81_kernel:2
.
 assignvariableop_7_dense_81_bias:
4
"assignvariableop_8_dense_83_kernel:2
.
 assignvariableop_9_dense_83_bias:
5
#assignvariableop_10_distance_kernel:
/
!assignvariableop_11_distance_bias:3
!assignvariableop_12_degree_kernel:
-
assignvariableop_13_degree_bias:'
assignvariableop_14_adam_iter:	 )
assignvariableop_15_adam_beta_1: )
assignvariableop_16_adam_beta_2: (
assignvariableop_17_adam_decay: %
assignvariableop_18_total_4: %
assignvariableop_19_count_4: %
assignvariableop_20_total_3: %
assignvariableop_21_count_3: %
assignvariableop_22_total_2: %
assignvariableop_23_count_2: %
assignvariableop_24_total_1: %
assignvariableop_25_count_1: #
assignvariableop_26_total: #
assignvariableop_27_count: E
*assignvariableop_28_adam_conv2d_3_kernel_m:
�7
(assignvariableop_29_adam_conv2d_3_bias_m:	�=
*assignvariableop_30_adam_dense_80_kernel_m:	�26
(assignvariableop_31_adam_dense_80_bias_m:2=
*assignvariableop_32_adam_dense_82_kernel_m:	�26
(assignvariableop_33_adam_dense_82_bias_m:2<
*assignvariableop_34_adam_dense_81_kernel_m:2
6
(assignvariableop_35_adam_dense_81_bias_m:
<
*assignvariableop_36_adam_dense_83_kernel_m:2
6
(assignvariableop_37_adam_dense_83_bias_m:
<
*assignvariableop_38_adam_distance_kernel_m:
6
(assignvariableop_39_adam_distance_bias_m::
(assignvariableop_40_adam_degree_kernel_m:
4
&assignvariableop_41_adam_degree_bias_m:E
*assignvariableop_42_adam_conv2d_3_kernel_v:
�7
(assignvariableop_43_adam_conv2d_3_bias_v:	�=
*assignvariableop_44_adam_dense_80_kernel_v:	�26
(assignvariableop_45_adam_dense_80_bias_v:2=
*assignvariableop_46_adam_dense_82_kernel_v:	�26
(assignvariableop_47_adam_dense_82_bias_v:2<
*assignvariableop_48_adam_dense_81_kernel_v:2
6
(assignvariableop_49_adam_dense_81_bias_v:
<
*assignvariableop_50_adam_dense_83_kernel_v:2
6
(assignvariableop_51_adam_dense_83_bias_v:
<
*assignvariableop_52_adam_distance_kernel_v:
6
(assignvariableop_53_adam_distance_bias_v::
(assignvariableop_54_adam_degree_kernel_v:
4
&assignvariableop_55_adam_degree_bias_v:
identity_57��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_28�AssignVariableOp_29�AssignVariableOp_3�AssignVariableOp_30�AssignVariableOp_31�AssignVariableOp_32�AssignVariableOp_33�AssignVariableOp_34�AssignVariableOp_35�AssignVariableOp_36�AssignVariableOp_37�AssignVariableOp_38�AssignVariableOp_39�AssignVariableOp_4�AssignVariableOp_40�AssignVariableOp_41�AssignVariableOp_42�AssignVariableOp_43�AssignVariableOp_44�AssignVariableOp_45�AssignVariableOp_46�AssignVariableOp_47�AssignVariableOp_48�AssignVariableOp_49�AssignVariableOp_5�AssignVariableOp_50�AssignVariableOp_51�AssignVariableOp_52�AssignVariableOp_53�AssignVariableOp_54�AssignVariableOp_55�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*�
value�B�9B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*�
value|Bz9B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapes�
�:::::::::::::::::::::::::::::::::::::::::::::::::::::::::*G
dtypes=
;29	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp assignvariableop_conv2d_3_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv2d_3_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOp"assignvariableop_2_dense_80_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOp assignvariableop_3_dense_80_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOp"assignvariableop_4_dense_82_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOp assignvariableop_5_dense_82_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOp"assignvariableop_6_dense_81_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOp assignvariableop_7_dense_81_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_8AssignVariableOp"assignvariableop_8_dense_83_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_dense_83_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOp#assignvariableop_10_distance_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOp!assignvariableop_11_distance_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOp!assignvariableop_12_degree_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpassignvariableop_13_degree_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpassignvariableop_14_adam_iterIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpassignvariableop_15_adam_beta_1Identity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpassignvariableop_16_adam_beta_2Identity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_decayIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpassignvariableop_18_total_4Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpassignvariableop_19_count_4Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpassignvariableop_20_total_3Identity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpassignvariableop_21_count_3Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOpassignvariableop_22_total_2Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOpassignvariableop_23_count_2Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOpassignvariableop_24_total_1Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOpassignvariableop_25_count_1Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_totalIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_countIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_28AssignVariableOp*assignvariableop_28_adam_conv2d_3_kernel_mIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_29AssignVariableOp(assignvariableop_29_adam_conv2d_3_bias_mIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_30AssignVariableOp*assignvariableop_30_adam_dense_80_kernel_mIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_31AssignVariableOp(assignvariableop_31_adam_dense_80_bias_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_32AssignVariableOp*assignvariableop_32_adam_dense_82_kernel_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_33AssignVariableOp(assignvariableop_33_adam_dense_82_bias_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_34AssignVariableOp*assignvariableop_34_adam_dense_81_kernel_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_35AssignVariableOp(assignvariableop_35_adam_dense_81_bias_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_36AssignVariableOp*assignvariableop_36_adam_dense_83_kernel_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_37AssignVariableOp(assignvariableop_37_adam_dense_83_bias_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_38AssignVariableOp*assignvariableop_38_adam_distance_kernel_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_39AssignVariableOp(assignvariableop_39_adam_distance_bias_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_40AssignVariableOp(assignvariableop_40_adam_degree_kernel_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_41AssignVariableOp&assignvariableop_41_adam_degree_bias_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_42AssignVariableOp*assignvariableop_42_adam_conv2d_3_kernel_vIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_conv2d_3_bias_vIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_44AssignVariableOp*assignvariableop_44_adam_dense_80_kernel_vIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_45AssignVariableOp(assignvariableop_45_adam_dense_80_bias_vIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_46AssignVariableOp*assignvariableop_46_adam_dense_82_kernel_vIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_47AssignVariableOp(assignvariableop_47_adam_dense_82_bias_vIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_48AssignVariableOp*assignvariableop_48_adam_dense_81_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_49AssignVariableOp(assignvariableop_49_adam_dense_81_bias_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_50AssignVariableOp*assignvariableop_50_adam_dense_83_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_51AssignVariableOp(assignvariableop_51_adam_dense_83_bias_vIdentity_51:output:0"/device:CPU:0*
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
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 �

Identity_56Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_57IdentityIdentity_56:output:0^NoOp_1*
T0*
_output_shapes
: �

NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_57Identity_57:output:0*�
_input_shapest
r: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_55AssignVariableOp_552(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
�X
�
E__inference_model_16_layer_call_and_return_conditional_losses_1066730

inputs+
conv2d_3_1066563:
�
conv2d_3_1066565:	�#
dense_82_1066593:	�2
dense_82_1066595:2#
dense_80_1066615:	�2
dense_80_1066617:2"
dense_83_1066637:2

dense_83_1066639:
"
dense_81_1066659:2

dense_81_1066661:
 
degree_1066676:

degree_1066678:"
distance_1066693:

distance_1066695:
identity

identity_1�� conv2d_3/StatefulPartitionedCall�1conv2d_3/kernel/Regularizer/Square/ReadVariableOp�degree/StatefulPartitionedCall� dense_80/StatefulPartitionedCall�1dense_80/kernel/Regularizer/Square/ReadVariableOp� dense_81/StatefulPartitionedCall�1dense_81/kernel/Regularizer/Square/ReadVariableOp� dense_82/StatefulPartitionedCall�1dense_82/kernel/Regularizer/Square/ReadVariableOp� dense_83/StatefulPartitionedCall�1dense_83/kernel/Regularizer/Square/ReadVariableOp� distance/StatefulPartitionedCall�
reshape_2/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_reshape_2_layer_call_and_return_conditional_losses_1066543�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0conv2d_3_1066563conv2d_3_1066565*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1066562�
dropout_17/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_1066573�
$global_max_pooling2d/PartitionedCallPartitionedCall#dropout_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_global_max_pooling2d_layer_call_and_return_conditional_losses_1066519�
 dense_82/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling2d/PartitionedCall:output:0dense_82_1066593dense_82_1066595*
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
GPU2*0J 8� *N
fIRG
E__inference_dense_82_layer_call_and_return_conditional_losses_1066592�
 dense_80/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling2d/PartitionedCall:output:0dense_80_1066615dense_80_1066617*
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
GPU2*0J 8� *N
fIRG
E__inference_dense_80_layer_call_and_return_conditional_losses_1066614�
 dense_83/StatefulPartitionedCallStatefulPartitionedCall)dense_82/StatefulPartitionedCall:output:0dense_83_1066637dense_83_1066639*
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
E__inference_dense_83_layer_call_and_return_conditional_losses_1066636�
 dense_81/StatefulPartitionedCallStatefulPartitionedCall)dense_80/StatefulPartitionedCall:output:0dense_81_1066659dense_81_1066661*
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
E__inference_dense_81_layer_call_and_return_conditional_losses_1066658�
degree/StatefulPartitionedCallStatefulPartitionedCall)dense_83/StatefulPartitionedCall:output:0degree_1066676degree_1066678*
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
GPU2*0J 8� *L
fGRE
C__inference_degree_layer_call_and_return_conditional_losses_1066675�
 distance/StatefulPartitionedCallStatefulPartitionedCall)dense_81/StatefulPartitionedCall:output:0distance_1066693distance_1066695*
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
GPU2*0J 8� *N
fIRG
E__inference_distance_layer_call_and_return_conditional_losses_1066692�
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_3_1066563*'
_output_shapes
:
�*
dtype0�
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:
�z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_80_1066615*
_output_shapes
:	�2*
dtype0�
"dense_80/kernel/Regularizer/SquareSquare9dense_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_80/kernel/Regularizer/SumSum&dense_80/kernel/Regularizer/Square:y:0*dense_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_80/kernel/Regularizer/mulMul*dense_80/kernel/Regularizer/mul/x:output:0(dense_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_82/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_82_1066593*
_output_shapes
:	�2*
dtype0�
"dense_82/kernel/Regularizer/SquareSquare9dense_82/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_82/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_82/kernel/Regularizer/SumSum&dense_82/kernel/Regularizer/Square:y:0*dense_82/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_82/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_82/kernel/Regularizer/mulMul*dense_82/kernel/Regularizer/mul/x:output:0(dense_82/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_81/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_81_1066659*
_output_shapes

:2
*
dtype0�
"dense_81/kernel/Regularizer/SquareSquare9dense_81/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_81/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_81/kernel/Regularizer/SumSum&dense_81/kernel/Regularizer/Square:y:0*dense_81/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_81/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_81/kernel/Regularizer/mulMul*dense_81/kernel/Regularizer/mul/x:output:0(dense_81/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_83/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_83_1066637*
_output_shapes

:2
*
dtype0�
"dense_83/kernel/Regularizer/SquareSquare9dense_83/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_83/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_83/kernel/Regularizer/SumSum&dense_83/kernel/Regularizer/Square:y:0*dense_83/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_83/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_83/kernel/Regularizer/mulMul*dense_83/kernel/Regularizer/mul/x:output:0(dense_83/kernel/Regularizer/Sum:output:0*
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
:����������
NoOpNoOp!^conv2d_3/StatefulPartitionedCall2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp^degree/StatefulPartitionedCall!^dense_80/StatefulPartitionedCall2^dense_80/kernel/Regularizer/Square/ReadVariableOp!^dense_81/StatefulPartitionedCall2^dense_81/kernel/Regularizer/Square/ReadVariableOp!^dense_82/StatefulPartitionedCall2^dense_82/kernel/Regularizer/Square/ReadVariableOp!^dense_83/StatefulPartitionedCall2^dense_83/kernel/Regularizer/Square/ReadVariableOp!^distance/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:����������: : : : : : : : : : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp2@
degree/StatefulPartitionedCalldegree/StatefulPartitionedCall2D
 dense_80/StatefulPartitionedCall dense_80/StatefulPartitionedCall2f
1dense_80/kernel/Regularizer/Square/ReadVariableOp1dense_80/kernel/Regularizer/Square/ReadVariableOp2D
 dense_81/StatefulPartitionedCall dense_81/StatefulPartitionedCall2f
1dense_81/kernel/Regularizer/Square/ReadVariableOp1dense_81/kernel/Regularizer/Square/ReadVariableOp2D
 dense_82/StatefulPartitionedCall dense_82/StatefulPartitionedCall2f
1dense_82/kernel/Regularizer/Square/ReadVariableOp1dense_82/kernel/Regularizer/Square/ReadVariableOp2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall2f
1dense_83/kernel/Regularizer/Square/ReadVariableOp1dense_83/kernel/Regularizer/Square/ReadVariableOp2D
 distance/StatefulPartitionedCall distance/StatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
H
,__inference_dropout_17_layer_call_fn_1067600

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_1066573j
IdentityIdentityPartitionedCall:output:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
m
Q__inference_global_max_pooling2d_layer_call_and_return_conditional_losses_1067633

inputs
identityf
Max/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:������������������]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
*__inference_conv2d_3_layer_call_fn_1067578

inputs"
unknown:
�
	unknown_0:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1066562y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�Y
�
E__inference_model_16_layer_call_and_return_conditional_losses_1067186	
input+
conv2d_3_1067117:
�
conv2d_3_1067119:	�#
dense_82_1067124:	�2
dense_82_1067126:2#
dense_80_1067129:	�2
dense_80_1067131:2"
dense_83_1067134:2

dense_83_1067136:
"
dense_81_1067139:2

dense_81_1067141:
 
degree_1067144:

degree_1067146:"
distance_1067149:

distance_1067151:
identity

identity_1�� conv2d_3/StatefulPartitionedCall�1conv2d_3/kernel/Regularizer/Square/ReadVariableOp�degree/StatefulPartitionedCall� dense_80/StatefulPartitionedCall�1dense_80/kernel/Regularizer/Square/ReadVariableOp� dense_81/StatefulPartitionedCall�1dense_81/kernel/Regularizer/Square/ReadVariableOp� dense_82/StatefulPartitionedCall�1dense_82/kernel/Regularizer/Square/ReadVariableOp� dense_83/StatefulPartitionedCall�1dense_83/kernel/Regularizer/Square/ReadVariableOp� distance/StatefulPartitionedCall�"dropout_17/StatefulPartitionedCall�
reshape_2/PartitionedCallPartitionedCallinput*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_reshape_2_layer_call_and_return_conditional_losses_1066543�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0conv2d_3_1067117conv2d_3_1067119*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1066562�
"dropout_17/StatefulPartitionedCallStatefulPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_1066843�
$global_max_pooling2d/PartitionedCallPartitionedCall+dropout_17/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_global_max_pooling2d_layer_call_and_return_conditional_losses_1066519�
 dense_82/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling2d/PartitionedCall:output:0dense_82_1067124dense_82_1067126*
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
GPU2*0J 8� *N
fIRG
E__inference_dense_82_layer_call_and_return_conditional_losses_1066592�
 dense_80/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling2d/PartitionedCall:output:0dense_80_1067129dense_80_1067131*
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
GPU2*0J 8� *N
fIRG
E__inference_dense_80_layer_call_and_return_conditional_losses_1066614�
 dense_83/StatefulPartitionedCallStatefulPartitionedCall)dense_82/StatefulPartitionedCall:output:0dense_83_1067134dense_83_1067136*
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
E__inference_dense_83_layer_call_and_return_conditional_losses_1066636�
 dense_81/StatefulPartitionedCallStatefulPartitionedCall)dense_80/StatefulPartitionedCall:output:0dense_81_1067139dense_81_1067141*
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
E__inference_dense_81_layer_call_and_return_conditional_losses_1066658�
degree/StatefulPartitionedCallStatefulPartitionedCall)dense_83/StatefulPartitionedCall:output:0degree_1067144degree_1067146*
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
GPU2*0J 8� *L
fGRE
C__inference_degree_layer_call_and_return_conditional_losses_1066675�
 distance/StatefulPartitionedCallStatefulPartitionedCall)dense_81/StatefulPartitionedCall:output:0distance_1067149distance_1067151*
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
GPU2*0J 8� *N
fIRG
E__inference_distance_layer_call_and_return_conditional_losses_1066692�
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_3_1067117*'
_output_shapes
:
�*
dtype0�
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:
�z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_80_1067129*
_output_shapes
:	�2*
dtype0�
"dense_80/kernel/Regularizer/SquareSquare9dense_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_80/kernel/Regularizer/SumSum&dense_80/kernel/Regularizer/Square:y:0*dense_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_80/kernel/Regularizer/mulMul*dense_80/kernel/Regularizer/mul/x:output:0(dense_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_82/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_82_1067124*
_output_shapes
:	�2*
dtype0�
"dense_82/kernel/Regularizer/SquareSquare9dense_82/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_82/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_82/kernel/Regularizer/SumSum&dense_82/kernel/Regularizer/Square:y:0*dense_82/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_82/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_82/kernel/Regularizer/mulMul*dense_82/kernel/Regularizer/mul/x:output:0(dense_82/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_81/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_81_1067139*
_output_shapes

:2
*
dtype0�
"dense_81/kernel/Regularizer/SquareSquare9dense_81/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_81/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_81/kernel/Regularizer/SumSum&dense_81/kernel/Regularizer/Square:y:0*dense_81/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_81/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_81/kernel/Regularizer/mulMul*dense_81/kernel/Regularizer/mul/x:output:0(dense_81/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_83/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_83_1067134*
_output_shapes

:2
*
dtype0�
"dense_83/kernel/Regularizer/SquareSquare9dense_83/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_83/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_83/kernel/Regularizer/SumSum&dense_83/kernel/Regularizer/Square:y:0*dense_83/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_83/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_83/kernel/Regularizer/mulMul*dense_83/kernel/Regularizer/mul/x:output:0(dense_83/kernel/Regularizer/Sum:output:0*
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
:����������
NoOpNoOp!^conv2d_3/StatefulPartitionedCall2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp^degree/StatefulPartitionedCall!^dense_80/StatefulPartitionedCall2^dense_80/kernel/Regularizer/Square/ReadVariableOp!^dense_81/StatefulPartitionedCall2^dense_81/kernel/Regularizer/Square/ReadVariableOp!^dense_82/StatefulPartitionedCall2^dense_82/kernel/Regularizer/Square/ReadVariableOp!^dense_83/StatefulPartitionedCall2^dense_83/kernel/Regularizer/Square/ReadVariableOp!^distance/StatefulPartitionedCall#^dropout_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:����������: : : : : : : : : : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp2@
degree/StatefulPartitionedCalldegree/StatefulPartitionedCall2D
 dense_80/StatefulPartitionedCall dense_80/StatefulPartitionedCall2f
1dense_80/kernel/Regularizer/Square/ReadVariableOp1dense_80/kernel/Regularizer/Square/ReadVariableOp2D
 dense_81/StatefulPartitionedCall dense_81/StatefulPartitionedCall2f
1dense_81/kernel/Regularizer/Square/ReadVariableOp1dense_81/kernel/Regularizer/Square/ReadVariableOp2D
 dense_82/StatefulPartitionedCall dense_82/StatefulPartitionedCall2f
1dense_82/kernel/Regularizer/Square/ReadVariableOp1dense_82/kernel/Regularizer/Square/ReadVariableOp2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall2f
1dense_83/kernel/Regularizer/Square/ReadVariableOp1dense_83/kernel/Regularizer/Square/ReadVariableOp2D
 distance/StatefulPartitionedCall distance/StatefulPartitionedCall2H
"dropout_17/StatefulPartitionedCall"dropout_17/StatefulPartitionedCall:S O
,
_output_shapes
:����������

_user_specified_nameinput
�
�
E__inference_dense_81_layer_call_and_return_conditional_losses_1066658

inputs0
matmul_readvariableop_resource:2
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_81/kernel/Regularizer/Square/ReadVariableOpt
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
1dense_81/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
"dense_81/kernel/Regularizer/SquareSquare9dense_81/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_81/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_81/kernel/Regularizer/SumSum&dense_81/kernel/Regularizer/Square:y:0*dense_81/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_81/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_81/kernel/Regularizer/mulMul*dense_81/kernel/Regularizer/mul/x:output:0(dense_81/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_81/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_81/kernel/Regularizer/Square/ReadVariableOp1dense_81/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
*__inference_model_16_layer_call_fn_1066763	
input"
unknown:
�
	unknown_0:	�
	unknown_1:	�2
	unknown_2:2
	unknown_3:	�2
	unknown_4:2
	unknown_5:2

	unknown_6:

	unknown_7:2

	unknown_8:

	unknown_9:


unknown_10:

unknown_11:


unknown_12:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_model_16_layer_call_and_return_conditional_losses_1066730o
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
_construction_contextkEagerRuntime*G
_input_shapes6
4:����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:����������

_user_specified_nameinput
�
�
__inference_loss_fn_0_1067784U
:conv2d_3_kernel_regularizer_square_readvariableop_resource:
�
identity��1conv2d_3/kernel/Regularizer/Square/ReadVariableOp�
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:conv2d_3_kernel_regularizer_square_readvariableop_resource*'
_output_shapes
:
�*
dtype0�
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:
�z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#conv2d_3/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp
�r
�
E__inference_model_16_layer_call_and_return_conditional_losses_1067450

inputsB
'conv2d_3_conv2d_readvariableop_resource:
�7
(conv2d_3_biasadd_readvariableop_resource:	�:
'dense_82_matmul_readvariableop_resource:	�26
(dense_82_biasadd_readvariableop_resource:2:
'dense_80_matmul_readvariableop_resource:	�26
(dense_80_biasadd_readvariableop_resource:29
'dense_83_matmul_readvariableop_resource:2
6
(dense_83_biasadd_readvariableop_resource:
9
'dense_81_matmul_readvariableop_resource:2
6
(dense_81_biasadd_readvariableop_resource:
7
%degree_matmul_readvariableop_resource:
4
&degree_biasadd_readvariableop_resource:9
'distance_matmul_readvariableop_resource:
6
(distance_biasadd_readvariableop_resource:
identity

identity_1��conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�1conv2d_3/kernel/Regularizer/Square/ReadVariableOp�degree/BiasAdd/ReadVariableOp�degree/MatMul/ReadVariableOp�dense_80/BiasAdd/ReadVariableOp�dense_80/MatMul/ReadVariableOp�1dense_80/kernel/Regularizer/Square/ReadVariableOp�dense_81/BiasAdd/ReadVariableOp�dense_81/MatMul/ReadVariableOp�1dense_81/kernel/Regularizer/Square/ReadVariableOp�dense_82/BiasAdd/ReadVariableOp�dense_82/MatMul/ReadVariableOp�1dense_82/kernel/Regularizer/Square/ReadVariableOp�dense_83/BiasAdd/ReadVariableOp�dense_83/MatMul/ReadVariableOp�1dense_83/kernel/Regularizer/Square/ReadVariableOp�distance/BiasAdd/ReadVariableOp�distance/MatMul/ReadVariableOpE
reshape_2/ShapeShapeinputs*
T0*
_output_shapes
:g
reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_2/strided_sliceStridedSlicereshape_2/Shape:output:0&reshape_2/strided_slice/stack:output:0(reshape_2/strided_slice/stack_1:output:0(reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :�[
reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
reshape_2/Reshape/shapePack reshape_2/strided_slice:output:0"reshape_2/Reshape/shape/1:output:0"reshape_2/Reshape/shape/2:output:0"reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
reshape_2/ReshapeReshapeinputs reshape_2/Reshape/shape:output:0*
T0*0
_output_shapes
:�����������
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:
�*
dtype0�
conv2d_3/Conv2DConv2Dreshape_2/Reshape:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������j
conv2d_3/EluEluconv2d_3/BiasAdd:output:0*
T0*1
_output_shapes
:�����������w
dropout_17/IdentityIdentityconv2d_3/Elu:activations:0*
T0*1
_output_shapes
:�����������{
*global_max_pooling2d/Max/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
global_max_pooling2d/MaxMaxdropout_17/Identity:output:03global_max_pooling2d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
dense_82/MatMul/ReadVariableOpReadVariableOp'dense_82_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_82/MatMulMatMul!global_max_pooling2d/Max:output:0&dense_82/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_82/BiasAdd/ReadVariableOpReadVariableOp(dense_82_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
dense_82/BiasAddBiasAdddense_82/MatMul:product:0'dense_82/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_80/MatMul/ReadVariableOpReadVariableOp'dense_80_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_80/MatMulMatMul!global_max_pooling2d/Max:output:0&dense_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_80/BiasAdd/ReadVariableOpReadVariableOp(dense_80_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
dense_80/BiasAddBiasAdddense_80/MatMul:product:0'dense_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_83/MatMul/ReadVariableOpReadVariableOp'dense_83_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
dense_83/MatMulMatMuldense_82/BiasAdd:output:0&dense_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_83/BiasAdd/ReadVariableOpReadVariableOp(dense_83_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_83/BiasAddBiasAdddense_83/MatMul:product:0'dense_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_81/MatMul/ReadVariableOpReadVariableOp'dense_81_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
dense_81/MatMulMatMuldense_80/BiasAdd:output:0&dense_81/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_81/BiasAdd/ReadVariableOpReadVariableOp(dense_81_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_81/BiasAddBiasAdddense_81/MatMul:product:0'dense_81/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
degree/MatMul/ReadVariableOpReadVariableOp%degree_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
degree/MatMulMatMuldense_83/BiasAdd:output:0$degree/MatMul/ReadVariableOp:value:0*
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
distance/MatMulMatMuldense_81/BiasAdd:output:0&distance/MatMul/ReadVariableOp:value:0*
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
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:
�*
dtype0�
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:
�z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_80_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
"dense_80/kernel/Regularizer/SquareSquare9dense_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_80/kernel/Regularizer/SumSum&dense_80/kernel/Regularizer/Square:y:0*dense_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_80/kernel/Regularizer/mulMul*dense_80/kernel/Regularizer/mul/x:output:0(dense_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_82/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_82_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
"dense_82/kernel/Regularizer/SquareSquare9dense_82/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_82/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_82/kernel/Regularizer/SumSum&dense_82/kernel/Regularizer/Square:y:0*dense_82/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_82/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_82/kernel/Regularizer/mulMul*dense_82/kernel/Regularizer/mul/x:output:0(dense_82/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_81/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_81_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
"dense_81/kernel/Regularizer/SquareSquare9dense_81/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_81/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_81/kernel/Regularizer/SumSum&dense_81/kernel/Regularizer/Square:y:0*dense_81/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_81/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_81/kernel/Regularizer/mulMul*dense_81/kernel/Regularizer/mul/x:output:0(dense_81/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_83/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_83_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
"dense_83/kernel/Regularizer/SquareSquare9dense_83/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_83/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_83/kernel/Regularizer/SumSum&dense_83/kernel/Regularizer/Square:y:0*dense_83/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_83/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_83/kernel/Regularizer/mulMul*dense_83/kernel/Regularizer/mul/x:output:0(dense_83/kernel/Regularizer/Sum:output:0*
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
:����������
NoOpNoOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp^degree/BiasAdd/ReadVariableOp^degree/MatMul/ReadVariableOp ^dense_80/BiasAdd/ReadVariableOp^dense_80/MatMul/ReadVariableOp2^dense_80/kernel/Regularizer/Square/ReadVariableOp ^dense_81/BiasAdd/ReadVariableOp^dense_81/MatMul/ReadVariableOp2^dense_81/kernel/Regularizer/Square/ReadVariableOp ^dense_82/BiasAdd/ReadVariableOp^dense_82/MatMul/ReadVariableOp2^dense_82/kernel/Regularizer/Square/ReadVariableOp ^dense_83/BiasAdd/ReadVariableOp^dense_83/MatMul/ReadVariableOp2^dense_83/kernel/Regularizer/Square/ReadVariableOp ^distance/BiasAdd/ReadVariableOp^distance/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:����������: : : : : : : : : : : : : : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp2>
degree/BiasAdd/ReadVariableOpdegree/BiasAdd/ReadVariableOp2<
degree/MatMul/ReadVariableOpdegree/MatMul/ReadVariableOp2B
dense_80/BiasAdd/ReadVariableOpdense_80/BiasAdd/ReadVariableOp2@
dense_80/MatMul/ReadVariableOpdense_80/MatMul/ReadVariableOp2f
1dense_80/kernel/Regularizer/Square/ReadVariableOp1dense_80/kernel/Regularizer/Square/ReadVariableOp2B
dense_81/BiasAdd/ReadVariableOpdense_81/BiasAdd/ReadVariableOp2@
dense_81/MatMul/ReadVariableOpdense_81/MatMul/ReadVariableOp2f
1dense_81/kernel/Regularizer/Square/ReadVariableOp1dense_81/kernel/Regularizer/Square/ReadVariableOp2B
dense_82/BiasAdd/ReadVariableOpdense_82/BiasAdd/ReadVariableOp2@
dense_82/MatMul/ReadVariableOpdense_82/MatMul/ReadVariableOp2f
1dense_82/kernel/Regularizer/Square/ReadVariableOp1dense_82/kernel/Regularizer/Square/ReadVariableOp2B
dense_83/BiasAdd/ReadVariableOpdense_83/BiasAdd/ReadVariableOp2@
dense_83/MatMul/ReadVariableOpdense_83/MatMul/ReadVariableOp2f
1dense_83/kernel/Regularizer/Square/ReadVariableOp1dense_83/kernel/Regularizer/Square/ReadVariableOp2B
distance/BiasAdd/ReadVariableOpdistance/BiasAdd/ReadVariableOp2@
distance/MatMul/ReadVariableOpdistance/MatMul/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1066562

inputs9
conv2d_readvariableop_resource:
�.
biasadd_readvariableop_resource:	�
identity��BiasAdd/ReadVariableOp�Conv2D/ReadVariableOp�1conv2d_3/kernel/Regularizer/Square/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:
�*
dtype0�
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:������������
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:
�*
dtype0�
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:
�z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:������������
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
E__inference_dense_82_layer_call_and_return_conditional_losses_1067683

inputs1
matmul_readvariableop_resource:	�2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_82/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
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
1dense_82/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
"dense_82/kernel/Regularizer/SquareSquare9dense_82/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_82/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_82/kernel/Regularizer/SumSum&dense_82/kernel/Regularizer/Square:y:0*dense_82/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_82/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_82/kernel/Regularizer/mulMul*dense_82/kernel/Regularizer/mul/x:output:0(dense_82/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_82/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_82/kernel/Regularizer/Square/ReadVariableOp1dense_82/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
G
+__inference_reshape_2_layer_call_fn_1067555

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_reshape_2_layer_call_and_return_conditional_losses_1066543i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
E__inference_dense_82_layer_call_and_return_conditional_losses_1066592

inputs1
matmul_readvariableop_resource:	�2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_82/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
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
1dense_82/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
"dense_82/kernel/Regularizer/SquareSquare9dense_82/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_82/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_82/kernel/Regularizer/SumSum&dense_82/kernel/Regularizer/Square:y:0*dense_82/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_82/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_82/kernel/Regularizer/mulMul*dense_82/kernel/Regularizer/mul/x:output:0(dense_82/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_82/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_82/kernel/Regularizer/Square/ReadVariableOp1dense_82/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
__inference_loss_fn_4_1067828L
:dense_83_kernel_regularizer_square_readvariableop_resource:2

identity��1dense_83/kernel/Regularizer/Square/ReadVariableOp�
1dense_83/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_83_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:2
*
dtype0�
"dense_83/kernel/Regularizer/SquareSquare9dense_83/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_83/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_83/kernel/Regularizer/SumSum&dense_83/kernel/Regularizer/Square:y:0*dense_83/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_83/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_83/kernel/Regularizer/mulMul*dense_83/kernel/Regularizer/mul/x:output:0(dense_83/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#dense_83/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^dense_83/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_83/kernel/Regularizer/Square/ReadVariableOp1dense_83/kernel/Regularizer/Square/ReadVariableOp
�
�
*__inference_distance_layer_call_fn_1067742

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
GPU2*0J 8� *N
fIRG
E__inference_distance_layer_call_and_return_conditional_losses_1066692o
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
__inference_loss_fn_1_1067795M
:dense_80_kernel_regularizer_square_readvariableop_resource:	�2
identity��1dense_80/kernel/Regularizer/Square/ReadVariableOp�
1dense_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_80_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
"dense_80/kernel/Regularizer/SquareSquare9dense_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_80/kernel/Regularizer/SumSum&dense_80/kernel/Regularizer/Square:y:0*dense_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_80/kernel/Regularizer/mulMul*dense_80/kernel/Regularizer/mul/x:output:0(dense_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#dense_80/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^dense_80/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_80/kernel/Regularizer/Square/ReadVariableOp1dense_80/kernel/Regularizer/Square/ReadVariableOp
�z
�
E__inference_model_16_layer_call_and_return_conditional_losses_1067550

inputsB
'conv2d_3_conv2d_readvariableop_resource:
�7
(conv2d_3_biasadd_readvariableop_resource:	�:
'dense_82_matmul_readvariableop_resource:	�26
(dense_82_biasadd_readvariableop_resource:2:
'dense_80_matmul_readvariableop_resource:	�26
(dense_80_biasadd_readvariableop_resource:29
'dense_83_matmul_readvariableop_resource:2
6
(dense_83_biasadd_readvariableop_resource:
9
'dense_81_matmul_readvariableop_resource:2
6
(dense_81_biasadd_readvariableop_resource:
7
%degree_matmul_readvariableop_resource:
4
&degree_biasadd_readvariableop_resource:9
'distance_matmul_readvariableop_resource:
6
(distance_biasadd_readvariableop_resource:
identity

identity_1��conv2d_3/BiasAdd/ReadVariableOp�conv2d_3/Conv2D/ReadVariableOp�1conv2d_3/kernel/Regularizer/Square/ReadVariableOp�degree/BiasAdd/ReadVariableOp�degree/MatMul/ReadVariableOp�dense_80/BiasAdd/ReadVariableOp�dense_80/MatMul/ReadVariableOp�1dense_80/kernel/Regularizer/Square/ReadVariableOp�dense_81/BiasAdd/ReadVariableOp�dense_81/MatMul/ReadVariableOp�1dense_81/kernel/Regularizer/Square/ReadVariableOp�dense_82/BiasAdd/ReadVariableOp�dense_82/MatMul/ReadVariableOp�1dense_82/kernel/Regularizer/Square/ReadVariableOp�dense_83/BiasAdd/ReadVariableOp�dense_83/MatMul/ReadVariableOp�1dense_83/kernel/Regularizer/Square/ReadVariableOp�distance/BiasAdd/ReadVariableOp�distance/MatMul/ReadVariableOpE
reshape_2/ShapeShapeinputs*
T0*
_output_shapes
:g
reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: i
reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:i
reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
reshape_2/strided_sliceStridedSlicereshape_2/Shape:output:0&reshape_2/strided_slice/stack:output:0(reshape_2/strided_slice/stack_1:output:0(reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask[
reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :�[
reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
reshape_2/Reshape/shapePack reshape_2/strided_slice:output:0"reshape_2/Reshape/shape/1:output:0"reshape_2/Reshape/shape/2:output:0"reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
reshape_2/ReshapeReshapeinputs reshape_2/Reshape/shape:output:0*
T0*0
_output_shapes
:�����������
conv2d_3/Conv2D/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:
�*
dtype0�
conv2d_3/Conv2DConv2Dreshape_2/Reshape:output:0&conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
conv2d_3/BiasAdd/ReadVariableOpReadVariableOp(conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
conv2d_3/BiasAddBiasAddconv2d_3/Conv2D:output:0'conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������j
conv2d_3/EluEluconv2d_3/BiasAdd:output:0*
T0*1
_output_shapes
:�����������]
dropout_17/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?�
dropout_17/dropout/MulMulconv2d_3/Elu:activations:0!dropout_17/dropout/Const:output:0*
T0*1
_output_shapes
:�����������b
dropout_17/dropout/ShapeShapeconv2d_3/Elu:activations:0*
T0*
_output_shapes
:�
/dropout_17/dropout/random_uniform/RandomUniformRandomUniform!dropout_17/dropout/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0*

seedf
!dropout_17/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout_17/dropout/GreaterEqualGreaterEqual8dropout_17/dropout/random_uniform/RandomUniform:output:0*dropout_17/dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:������������
dropout_17/dropout/CastCast#dropout_17/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*1
_output_shapes
:������������
dropout_17/dropout/Mul_1Muldropout_17/dropout/Mul:z:0dropout_17/dropout/Cast:y:0*
T0*1
_output_shapes
:�����������{
*global_max_pooling2d/Max/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
global_max_pooling2d/MaxMaxdropout_17/dropout/Mul_1:z:03global_max_pooling2d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
dense_82/MatMul/ReadVariableOpReadVariableOp'dense_82_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_82/MatMulMatMul!global_max_pooling2d/Max:output:0&dense_82/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_82/BiasAdd/ReadVariableOpReadVariableOp(dense_82_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
dense_82/BiasAddBiasAdddense_82/MatMul:product:0'dense_82/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_80/MatMul/ReadVariableOpReadVariableOp'dense_80_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
dense_80/MatMulMatMul!global_max_pooling2d/Max:output:0&dense_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_80/BiasAdd/ReadVariableOpReadVariableOp(dense_80_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
dense_80/BiasAddBiasAdddense_80/MatMul:product:0'dense_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
dense_83/MatMul/ReadVariableOpReadVariableOp'dense_83_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
dense_83/MatMulMatMuldense_82/BiasAdd:output:0&dense_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_83/BiasAdd/ReadVariableOpReadVariableOp(dense_83_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_83/BiasAddBiasAdddense_83/MatMul:product:0'dense_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_81/MatMul/ReadVariableOpReadVariableOp'dense_81_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
dense_81/MatMulMatMuldense_80/BiasAdd:output:0&dense_81/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
dense_81/BiasAdd/ReadVariableOpReadVariableOp(dense_81_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
dense_81/BiasAddBiasAdddense_81/MatMul:product:0'dense_81/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
degree/MatMul/ReadVariableOpReadVariableOp%degree_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
degree/MatMulMatMuldense_83/BiasAdd:output:0$degree/MatMul/ReadVariableOp:value:0*
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
distance/MatMulMatMuldense_81/BiasAdd:output:0&distance/MatMul/ReadVariableOp:value:0*
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
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:
�*
dtype0�
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:
�z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_80_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
"dense_80/kernel/Regularizer/SquareSquare9dense_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_80/kernel/Regularizer/SumSum&dense_80/kernel/Regularizer/Square:y:0*dense_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_80/kernel/Regularizer/mulMul*dense_80/kernel/Regularizer/mul/x:output:0(dense_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_82/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_82_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
"dense_82/kernel/Regularizer/SquareSquare9dense_82/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_82/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_82/kernel/Regularizer/SumSum&dense_82/kernel/Regularizer/Square:y:0*dense_82/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_82/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_82/kernel/Regularizer/mulMul*dense_82/kernel/Regularizer/mul/x:output:0(dense_82/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_81/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_81_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
"dense_81/kernel/Regularizer/SquareSquare9dense_81/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_81/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_81/kernel/Regularizer/SumSum&dense_81/kernel/Regularizer/Square:y:0*dense_81/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_81/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_81/kernel/Regularizer/mulMul*dense_81/kernel/Regularizer/mul/x:output:0(dense_81/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_83/kernel/Regularizer/Square/ReadVariableOpReadVariableOp'dense_83_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
"dense_83/kernel/Regularizer/SquareSquare9dense_83/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_83/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_83/kernel/Regularizer/SumSum&dense_83/kernel/Regularizer/Square:y:0*dense_83/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_83/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_83/kernel/Regularizer/mulMul*dense_83/kernel/Regularizer/mul/x:output:0(dense_83/kernel/Regularizer/Sum:output:0*
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
:����������
NoOpNoOp ^conv2d_3/BiasAdd/ReadVariableOp^conv2d_3/Conv2D/ReadVariableOp2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp^degree/BiasAdd/ReadVariableOp^degree/MatMul/ReadVariableOp ^dense_80/BiasAdd/ReadVariableOp^dense_80/MatMul/ReadVariableOp2^dense_80/kernel/Regularizer/Square/ReadVariableOp ^dense_81/BiasAdd/ReadVariableOp^dense_81/MatMul/ReadVariableOp2^dense_81/kernel/Regularizer/Square/ReadVariableOp ^dense_82/BiasAdd/ReadVariableOp^dense_82/MatMul/ReadVariableOp2^dense_82/kernel/Regularizer/Square/ReadVariableOp ^dense_83/BiasAdd/ReadVariableOp^dense_83/MatMul/ReadVariableOp2^dense_83/kernel/Regularizer/Square/ReadVariableOp ^distance/BiasAdd/ReadVariableOp^distance/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:����������: : : : : : : : : : : : : : 2B
conv2d_3/BiasAdd/ReadVariableOpconv2d_3/BiasAdd/ReadVariableOp2@
conv2d_3/Conv2D/ReadVariableOpconv2d_3/Conv2D/ReadVariableOp2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp2>
degree/BiasAdd/ReadVariableOpdegree/BiasAdd/ReadVariableOp2<
degree/MatMul/ReadVariableOpdegree/MatMul/ReadVariableOp2B
dense_80/BiasAdd/ReadVariableOpdense_80/BiasAdd/ReadVariableOp2@
dense_80/MatMul/ReadVariableOpdense_80/MatMul/ReadVariableOp2f
1dense_80/kernel/Regularizer/Square/ReadVariableOp1dense_80/kernel/Regularizer/Square/ReadVariableOp2B
dense_81/BiasAdd/ReadVariableOpdense_81/BiasAdd/ReadVariableOp2@
dense_81/MatMul/ReadVariableOpdense_81/MatMul/ReadVariableOp2f
1dense_81/kernel/Regularizer/Square/ReadVariableOp1dense_81/kernel/Regularizer/Square/ReadVariableOp2B
dense_82/BiasAdd/ReadVariableOpdense_82/BiasAdd/ReadVariableOp2@
dense_82/MatMul/ReadVariableOpdense_82/MatMul/ReadVariableOp2f
1dense_82/kernel/Regularizer/Square/ReadVariableOp1dense_82/kernel/Regularizer/Square/ReadVariableOp2B
dense_83/BiasAdd/ReadVariableOpdense_83/BiasAdd/ReadVariableOp2@
dense_83/MatMul/ReadVariableOpdense_83/MatMul/ReadVariableOp2f
1dense_83/kernel/Regularizer/Square/ReadVariableOp1dense_83/kernel/Regularizer/Square/ReadVariableOp2B
distance/BiasAdd/ReadVariableOpdistance/BiasAdd/ReadVariableOp2@
distance/MatMul/ReadVariableOpdistance/MatMul/ReadVariableOp:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
m
Q__inference_global_max_pooling2d_layer_call_and_return_conditional_losses_1066519

inputs
identityf
Max/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      m
MaxMaxinputsMax/reduction_indices:output:0*
T0*0
_output_shapes
:������������������]
IdentityIdentityMax:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
E__inference_dense_81_layer_call_and_return_conditional_losses_1067708

inputs0
matmul_readvariableop_resource:2
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_81/kernel/Regularizer/Square/ReadVariableOpt
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
1dense_81/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
"dense_81/kernel/Regularizer/SquareSquare9dense_81/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_81/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_81/kernel/Regularizer/SumSum&dense_81/kernel/Regularizer/Square:y:0*dense_81/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_81/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_81/kernel/Regularizer/mulMul*dense_81/kernel/Regularizer/mul/x:output:0(dense_81/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_81/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_81/kernel/Regularizer/Square/ReadVariableOp1dense_81/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
E__inference_dense_83_layer_call_and_return_conditional_losses_1067733

inputs0
matmul_readvariableop_resource:2
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_83/kernel/Regularizer/Square/ReadVariableOpt
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
1dense_83/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
"dense_83/kernel/Regularizer/SquareSquare9dense_83/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_83/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_83/kernel/Regularizer/SumSum&dense_83/kernel/Regularizer/Square:y:0*dense_83/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_83/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_83/kernel/Regularizer/mulMul*dense_83/kernel/Regularizer/mul/x:output:0(dense_83/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_83/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_83/kernel/Regularizer/Square/ReadVariableOp1dense_83/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
*__inference_model_16_layer_call_fn_1067322

inputs"
unknown:
�
	unknown_0:	�
	unknown_1:	�2
	unknown_2:2
	unknown_3:	�2
	unknown_4:2
	unknown_5:2

	unknown_6:

	unknown_7:2

	unknown_8:

	unknown_9:


unknown_10:

unknown_11:


unknown_12:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_model_16_layer_call_and_return_conditional_losses_1066730o
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
_construction_contextkEagerRuntime*G
_input_shapes6
4:����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
*__inference_model_16_layer_call_fn_1067357

inputs"
unknown:
�
	unknown_0:	�
	unknown_1:	�2
	unknown_2:2
	unknown_3:	�2
	unknown_4:2
	unknown_5:2

	unknown_6:

	unknown_7:2

	unknown_8:

	unknown_9:


unknown_10:

unknown_11:


unknown_12:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_model_16_layer_call_and_return_conditional_losses_1066972o
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
_construction_contextkEagerRuntime*G
_input_shapes6
4:����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�

�
C__inference_degree_layer_call_and_return_conditional_losses_1066675

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
__inference_loss_fn_3_1067817L
:dense_81_kernel_regularizer_square_readvariableop_resource:2

identity��1dense_81/kernel/Regularizer/Square/ReadVariableOp�
1dense_81/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_81_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:2
*
dtype0�
"dense_81/kernel/Regularizer/SquareSquare9dense_81/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_81/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_81/kernel/Regularizer/SumSum&dense_81/kernel/Regularizer/Square:y:0*dense_81/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_81/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_81/kernel/Regularizer/mulMul*dense_81/kernel/Regularizer/mul/x:output:0(dense_81/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#dense_81/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^dense_81/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_81/kernel/Regularizer/Square/ReadVariableOp1dense_81/kernel/Regularizer/Square/ReadVariableOp
�

f
G__inference_dropout_17_layer_call_and_return_conditional_losses_1067622

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?n
dropout/MulMulinputsdropout/Const:output:0*
T0*1
_output_shapes
:�����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:�����������y
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*1
_output_shapes
:�����������s
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*1
_output_shapes
:�����������c
IdentityIdentitydropout/Mul_1:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
*__inference_dense_82_layer_call_fn_1067667

inputs
unknown:	�2
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
GPU2*0J 8� *N
fIRG
E__inference_dense_82_layer_call_and_return_conditional_losses_1066592o
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
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
e
G__inference_dropout_17_layer_call_and_return_conditional_losses_1067610

inputs

identity_1X
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������e

Identity_1IdentityIdentity:output:0*
T0*1
_output_shapes
:�����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�U
�
"__inference__wrapped_model_1066509	
inputK
0model_16_conv2d_3_conv2d_readvariableop_resource:
�@
1model_16_conv2d_3_biasadd_readvariableop_resource:	�C
0model_16_dense_82_matmul_readvariableop_resource:	�2?
1model_16_dense_82_biasadd_readvariableop_resource:2C
0model_16_dense_80_matmul_readvariableop_resource:	�2?
1model_16_dense_80_biasadd_readvariableop_resource:2B
0model_16_dense_83_matmul_readvariableop_resource:2
?
1model_16_dense_83_biasadd_readvariableop_resource:
B
0model_16_dense_81_matmul_readvariableop_resource:2
?
1model_16_dense_81_biasadd_readvariableop_resource:
@
.model_16_degree_matmul_readvariableop_resource:
=
/model_16_degree_biasadd_readvariableop_resource:B
0model_16_distance_matmul_readvariableop_resource:
?
1model_16_distance_biasadd_readvariableop_resource:
identity

identity_1��(model_16/conv2d_3/BiasAdd/ReadVariableOp�'model_16/conv2d_3/Conv2D/ReadVariableOp�&model_16/degree/BiasAdd/ReadVariableOp�%model_16/degree/MatMul/ReadVariableOp�(model_16/dense_80/BiasAdd/ReadVariableOp�'model_16/dense_80/MatMul/ReadVariableOp�(model_16/dense_81/BiasAdd/ReadVariableOp�'model_16/dense_81/MatMul/ReadVariableOp�(model_16/dense_82/BiasAdd/ReadVariableOp�'model_16/dense_82/MatMul/ReadVariableOp�(model_16/dense_83/BiasAdd/ReadVariableOp�'model_16/dense_83/MatMul/ReadVariableOp�(model_16/distance/BiasAdd/ReadVariableOp�'model_16/distance/MatMul/ReadVariableOpM
model_16/reshape_2/ShapeShapeinput*
T0*
_output_shapes
:p
&model_16/reshape_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(model_16/reshape_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(model_16/reshape_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 model_16/reshape_2/strided_sliceStridedSlice!model_16/reshape_2/Shape:output:0/model_16/reshape_2/strided_slice/stack:output:01model_16/reshape_2/strided_slice/stack_1:output:01model_16/reshape_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskd
"model_16/reshape_2/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :e
"model_16/reshape_2/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :�d
"model_16/reshape_2/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
 model_16/reshape_2/Reshape/shapePack)model_16/reshape_2/strided_slice:output:0+model_16/reshape_2/Reshape/shape/1:output:0+model_16/reshape_2/Reshape/shape/2:output:0+model_16/reshape_2/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:�
model_16/reshape_2/ReshapeReshapeinput)model_16/reshape_2/Reshape/shape:output:0*
T0*0
_output_shapes
:�����������
'model_16/conv2d_3/Conv2D/ReadVariableOpReadVariableOp0model_16_conv2d_3_conv2d_readvariableop_resource*'
_output_shapes
:
�*
dtype0�
model_16/conv2d_3/Conv2DConv2D#model_16/reshape_2/Reshape:output:0/model_16/conv2d_3/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������*
paddingSAME*
strides
�
(model_16/conv2d_3/BiasAdd/ReadVariableOpReadVariableOp1model_16_conv2d_3_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
model_16/conv2d_3/BiasAddBiasAdd!model_16/conv2d_3/Conv2D:output:00model_16/conv2d_3/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:�����������|
model_16/conv2d_3/EluElu"model_16/conv2d_3/BiasAdd:output:0*
T0*1
_output_shapes
:������������
model_16/dropout_17/IdentityIdentity#model_16/conv2d_3/Elu:activations:0*
T0*1
_output_shapes
:������������
3model_16/global_max_pooling2d/Max/reduction_indicesConst*
_output_shapes
:*
dtype0*
valueB"      �
!model_16/global_max_pooling2d/MaxMax%model_16/dropout_17/Identity:output:0<model_16/global_max_pooling2d/Max/reduction_indices:output:0*
T0*(
_output_shapes
:�����������
'model_16/dense_82/MatMul/ReadVariableOpReadVariableOp0model_16_dense_82_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
model_16/dense_82/MatMulMatMul*model_16/global_max_pooling2d/Max:output:0/model_16/dense_82/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
(model_16/dense_82/BiasAdd/ReadVariableOpReadVariableOp1model_16_dense_82_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
model_16/dense_82/BiasAddBiasAdd"model_16/dense_82/MatMul:product:00model_16/dense_82/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
'model_16/dense_80/MatMul/ReadVariableOpReadVariableOp0model_16_dense_80_matmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
model_16/dense_80/MatMulMatMul*model_16/global_max_pooling2d/Max:output:0/model_16/dense_80/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
(model_16/dense_80/BiasAdd/ReadVariableOpReadVariableOp1model_16_dense_80_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0�
model_16/dense_80/BiasAddBiasAdd"model_16/dense_80/MatMul:product:00model_16/dense_80/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������2�
'model_16/dense_83/MatMul/ReadVariableOpReadVariableOp0model_16_dense_83_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
model_16/dense_83/MatMulMatMul"model_16/dense_82/BiasAdd:output:0/model_16/dense_83/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
(model_16/dense_83/BiasAdd/ReadVariableOpReadVariableOp1model_16_dense_83_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
model_16/dense_83/BiasAddBiasAdd"model_16/dense_83/MatMul:product:00model_16/dense_83/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
'model_16/dense_81/MatMul/ReadVariableOpReadVariableOp0model_16_dense_81_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
model_16/dense_81/MatMulMatMul"model_16/dense_80/BiasAdd:output:0/model_16/dense_81/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
(model_16/dense_81/BiasAdd/ReadVariableOpReadVariableOp1model_16_dense_81_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0�
model_16/dense_81/BiasAddBiasAdd"model_16/dense_81/MatMul:product:00model_16/dense_81/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������
�
%model_16/degree/MatMul/ReadVariableOpReadVariableOp.model_16_degree_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
model_16/degree/MatMulMatMul"model_16/dense_83/BiasAdd:output:0-model_16/degree/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
&model_16/degree/BiasAdd/ReadVariableOpReadVariableOp/model_16_degree_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_16/degree/BiasAddBiasAdd model_16/degree/MatMul:product:0.model_16/degree/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������v
model_16/degree/SoftmaxSoftmax model_16/degree/BiasAdd:output:0*
T0*'
_output_shapes
:����������
'model_16/distance/MatMul/ReadVariableOpReadVariableOp0model_16_distance_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0�
model_16/distance/MatMulMatMul"model_16/dense_81/BiasAdd:output:0/model_16/distance/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
(model_16/distance/BiasAdd/ReadVariableOpReadVariableOp1model_16_distance_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
model_16/distance/BiasAddBiasAdd"model_16/distance/MatMul:product:00model_16/distance/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:���������z
model_16/distance/SigmoidSigmoid"model_16/distance/BiasAdd:output:0*
T0*'
_output_shapes
:���������p
IdentityIdentity!model_16/degree/Softmax:softmax:0^NoOp*
T0*'
_output_shapes
:���������n

Identity_1Identitymodel_16/distance/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOp)^model_16/conv2d_3/BiasAdd/ReadVariableOp(^model_16/conv2d_3/Conv2D/ReadVariableOp'^model_16/degree/BiasAdd/ReadVariableOp&^model_16/degree/MatMul/ReadVariableOp)^model_16/dense_80/BiasAdd/ReadVariableOp(^model_16/dense_80/MatMul/ReadVariableOp)^model_16/dense_81/BiasAdd/ReadVariableOp(^model_16/dense_81/MatMul/ReadVariableOp)^model_16/dense_82/BiasAdd/ReadVariableOp(^model_16/dense_82/MatMul/ReadVariableOp)^model_16/dense_83/BiasAdd/ReadVariableOp(^model_16/dense_83/MatMul/ReadVariableOp)^model_16/distance/BiasAdd/ReadVariableOp(^model_16/distance/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:����������: : : : : : : : : : : : : : 2T
(model_16/conv2d_3/BiasAdd/ReadVariableOp(model_16/conv2d_3/BiasAdd/ReadVariableOp2R
'model_16/conv2d_3/Conv2D/ReadVariableOp'model_16/conv2d_3/Conv2D/ReadVariableOp2P
&model_16/degree/BiasAdd/ReadVariableOp&model_16/degree/BiasAdd/ReadVariableOp2N
%model_16/degree/MatMul/ReadVariableOp%model_16/degree/MatMul/ReadVariableOp2T
(model_16/dense_80/BiasAdd/ReadVariableOp(model_16/dense_80/BiasAdd/ReadVariableOp2R
'model_16/dense_80/MatMul/ReadVariableOp'model_16/dense_80/MatMul/ReadVariableOp2T
(model_16/dense_81/BiasAdd/ReadVariableOp(model_16/dense_81/BiasAdd/ReadVariableOp2R
'model_16/dense_81/MatMul/ReadVariableOp'model_16/dense_81/MatMul/ReadVariableOp2T
(model_16/dense_82/BiasAdd/ReadVariableOp(model_16/dense_82/BiasAdd/ReadVariableOp2R
'model_16/dense_82/MatMul/ReadVariableOp'model_16/dense_82/MatMul/ReadVariableOp2T
(model_16/dense_83/BiasAdd/ReadVariableOp(model_16/dense_83/BiasAdd/ReadVariableOp2R
'model_16/dense_83/MatMul/ReadVariableOp'model_16/dense_83/MatMul/ReadVariableOp2T
(model_16/distance/BiasAdd/ReadVariableOp(model_16/distance/BiasAdd/ReadVariableOp2R
'model_16/distance/MatMul/ReadVariableOp'model_16/distance/MatMul/ReadVariableOp:S O
,
_output_shapes
:����������

_user_specified_nameinput
�

�
E__inference_distance_layer_call_and_return_conditional_losses_1066692

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
�
R
6__inference_global_max_pooling2d_layer_call_fn_1067627

inputs
identity�
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:������������������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_global_max_pooling2d_layer_call_and_return_conditional_losses_1066519i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:������������������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4������������������������������������:r n
J
_output_shapes8
6:4������������������������������������
 
_user_specified_nameinputs
�
�
%__inference_signature_wrapper_1067257	
input"
unknown:
�
	unknown_0:	�
	unknown_1:	�2
	unknown_2:2
	unknown_3:	�2
	unknown_4:2
	unknown_5:2

	unknown_6:

	unknown_7:2

	unknown_8:

	unknown_9:


unknown_10:

unknown_11:


unknown_12:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *+
f&R$
"__inference__wrapped_model_1066509o
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
_construction_contextkEagerRuntime*G
_input_shapes6
4:����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:����������

_user_specified_nameinput
�
b
F__inference_reshape_2_layer_call_and_return_conditional_losses_1067569

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
value	B :R
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :�Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:����������a
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�X
�
E__inference_model_16_layer_call_and_return_conditional_losses_1067113	
input+
conv2d_3_1067044:
�
conv2d_3_1067046:	�#
dense_82_1067051:	�2
dense_82_1067053:2#
dense_80_1067056:	�2
dense_80_1067058:2"
dense_83_1067061:2

dense_83_1067063:
"
dense_81_1067066:2

dense_81_1067068:
 
degree_1067071:

degree_1067073:"
distance_1067076:

distance_1067078:
identity

identity_1�� conv2d_3/StatefulPartitionedCall�1conv2d_3/kernel/Regularizer/Square/ReadVariableOp�degree/StatefulPartitionedCall� dense_80/StatefulPartitionedCall�1dense_80/kernel/Regularizer/Square/ReadVariableOp� dense_81/StatefulPartitionedCall�1dense_81/kernel/Regularizer/Square/ReadVariableOp� dense_82/StatefulPartitionedCall�1dense_82/kernel/Regularizer/Square/ReadVariableOp� dense_83/StatefulPartitionedCall�1dense_83/kernel/Regularizer/Square/ReadVariableOp� distance/StatefulPartitionedCall�
reshape_2/PartitionedCallPartitionedCallinput*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *O
fJRH
F__inference_reshape_2_layer_call_and_return_conditional_losses_1066543�
 conv2d_3/StatefulPartitionedCallStatefulPartitionedCall"reshape_2/PartitionedCall:output:0conv2d_3_1067044conv2d_3_1067046*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1066562�
dropout_17/PartitionedCallPartitionedCall)conv2d_3/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_1066573�
$global_max_pooling2d/PartitionedCallPartitionedCall#dropout_17/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *Z
fURS
Q__inference_global_max_pooling2d_layer_call_and_return_conditional_losses_1066519�
 dense_82/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling2d/PartitionedCall:output:0dense_82_1067051dense_82_1067053*
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
GPU2*0J 8� *N
fIRG
E__inference_dense_82_layer_call_and_return_conditional_losses_1066592�
 dense_80/StatefulPartitionedCallStatefulPartitionedCall-global_max_pooling2d/PartitionedCall:output:0dense_80_1067056dense_80_1067058*
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
GPU2*0J 8� *N
fIRG
E__inference_dense_80_layer_call_and_return_conditional_losses_1066614�
 dense_83/StatefulPartitionedCallStatefulPartitionedCall)dense_82/StatefulPartitionedCall:output:0dense_83_1067061dense_83_1067063*
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
E__inference_dense_83_layer_call_and_return_conditional_losses_1066636�
 dense_81/StatefulPartitionedCallStatefulPartitionedCall)dense_80/StatefulPartitionedCall:output:0dense_81_1067066dense_81_1067068*
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
E__inference_dense_81_layer_call_and_return_conditional_losses_1066658�
degree/StatefulPartitionedCallStatefulPartitionedCall)dense_83/StatefulPartitionedCall:output:0degree_1067071degree_1067073*
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
GPU2*0J 8� *L
fGRE
C__inference_degree_layer_call_and_return_conditional_losses_1066675�
 distance/StatefulPartitionedCallStatefulPartitionedCall)dense_81/StatefulPartitionedCall:output:0distance_1067076distance_1067078*
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
GPU2*0J 8� *N
fIRG
E__inference_distance_layer_call_and_return_conditional_losses_1066692�
1conv2d_3/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_3_1067044*'
_output_shapes
:
�*
dtype0�
"conv2d_3/kernel/Regularizer/SquareSquare9conv2d_3/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:
�z
!conv2d_3/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             �
conv2d_3/kernel/Regularizer/SumSum&conv2d_3/kernel/Regularizer/Square:y:0*conv2d_3/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!conv2d_3/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
conv2d_3/kernel/Regularizer/mulMul*conv2d_3/kernel/Regularizer/mul/x:output:0(conv2d_3/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_80_1067056*
_output_shapes
:	�2*
dtype0�
"dense_80/kernel/Regularizer/SquareSquare9dense_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_80/kernel/Regularizer/SumSum&dense_80/kernel/Regularizer/Square:y:0*dense_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_80/kernel/Regularizer/mulMul*dense_80/kernel/Regularizer/mul/x:output:0(dense_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_82/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_82_1067051*
_output_shapes
:	�2*
dtype0�
"dense_82/kernel/Regularizer/SquareSquare9dense_82/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_82/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_82/kernel/Regularizer/SumSum&dense_82/kernel/Regularizer/Square:y:0*dense_82/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_82/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_82/kernel/Regularizer/mulMul*dense_82/kernel/Regularizer/mul/x:output:0(dense_82/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_81/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_81_1067066*
_output_shapes

:2
*
dtype0�
"dense_81/kernel/Regularizer/SquareSquare9dense_81/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_81/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_81/kernel/Regularizer/SumSum&dense_81/kernel/Regularizer/Square:y:0*dense_81/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_81/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_81/kernel/Regularizer/mulMul*dense_81/kernel/Regularizer/mul/x:output:0(dense_81/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: �
1dense_83/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_83_1067061*
_output_shapes

:2
*
dtype0�
"dense_83/kernel/Regularizer/SquareSquare9dense_83/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_83/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_83/kernel/Regularizer/SumSum&dense_83/kernel/Regularizer/Square:y:0*dense_83/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_83/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_83/kernel/Regularizer/mulMul*dense_83/kernel/Regularizer/mul/x:output:0(dense_83/kernel/Regularizer/Sum:output:0*
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
:����������
NoOpNoOp!^conv2d_3/StatefulPartitionedCall2^conv2d_3/kernel/Regularizer/Square/ReadVariableOp^degree/StatefulPartitionedCall!^dense_80/StatefulPartitionedCall2^dense_80/kernel/Regularizer/Square/ReadVariableOp!^dense_81/StatefulPartitionedCall2^dense_81/kernel/Regularizer/Square/ReadVariableOp!^dense_82/StatefulPartitionedCall2^dense_82/kernel/Regularizer/Square/ReadVariableOp!^dense_83/StatefulPartitionedCall2^dense_83/kernel/Regularizer/Square/ReadVariableOp!^distance/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4:����������: : : : : : : : : : : : : : 2D
 conv2d_3/StatefulPartitionedCall conv2d_3/StatefulPartitionedCall2f
1conv2d_3/kernel/Regularizer/Square/ReadVariableOp1conv2d_3/kernel/Regularizer/Square/ReadVariableOp2@
degree/StatefulPartitionedCalldegree/StatefulPartitionedCall2D
 dense_80/StatefulPartitionedCall dense_80/StatefulPartitionedCall2f
1dense_80/kernel/Regularizer/Square/ReadVariableOp1dense_80/kernel/Regularizer/Square/ReadVariableOp2D
 dense_81/StatefulPartitionedCall dense_81/StatefulPartitionedCall2f
1dense_81/kernel/Regularizer/Square/ReadVariableOp1dense_81/kernel/Regularizer/Square/ReadVariableOp2D
 dense_82/StatefulPartitionedCall dense_82/StatefulPartitionedCall2f
1dense_82/kernel/Regularizer/Square/ReadVariableOp1dense_82/kernel/Regularizer/Square/ReadVariableOp2D
 dense_83/StatefulPartitionedCall dense_83/StatefulPartitionedCall2f
1dense_83/kernel/Regularizer/Square/ReadVariableOp1dense_83/kernel/Regularizer/Square/ReadVariableOp2D
 distance/StatefulPartitionedCall distance/StatefulPartitionedCall:S O
,
_output_shapes
:����������

_user_specified_nameinput
�

�
E__inference_distance_layer_call_and_return_conditional_losses_1067753

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
e
,__inference_dropout_17_layer_call_fn_1067605

inputs
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:�����������* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8� *P
fKRI
G__inference_dropout_17_layer_call_and_return_conditional_losses_1066843y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:�����������`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������22
StatefulPartitionedCallStatefulPartitionedCall:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�
�
E__inference_dense_80_layer_call_and_return_conditional_losses_1067658

inputs1
matmul_readvariableop_resource:	�2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_80/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
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
1dense_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
"dense_80/kernel/Regularizer/SquareSquare9dense_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_80/kernel/Regularizer/SumSum&dense_80/kernel/Regularizer/Square:y:0*dense_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_80/kernel/Regularizer/mulMul*dense_80/kernel/Regularizer/mul/x:output:0(dense_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_80/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_80/kernel/Regularizer/Square/ReadVariableOp1dense_80/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
E__inference_dense_83_layer_call_and_return_conditional_losses_1066636

inputs0
matmul_readvariableop_resource:2
-
biasadd_readvariableop_resource:

identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_83/kernel/Regularizer/Square/ReadVariableOpt
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
1dense_83/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
*
dtype0�
"dense_83/kernel/Regularizer/SquareSquare9dense_83/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
r
!dense_83/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_83/kernel/Regularizer/SumSum&dense_83/kernel/Regularizer/Square:y:0*dense_83/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_83/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_83/kernel/Regularizer/mulMul*dense_83/kernel/Regularizer/mul/x:output:0(dense_83/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������
�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_83/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:���������2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_83/kernel/Regularizer/Square/ReadVariableOp1dense_83/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:���������2
 
_user_specified_nameinputs
�
�
*__inference_model_16_layer_call_fn_1067040	
input"
unknown:
�
	unknown_0:	�
	unknown_1:	�2
	unknown_2:2
	unknown_3:	�2
	unknown_4:2
	unknown_5:2

	unknown_6:

	unknown_7:2

	unknown_8:

	unknown_9:


unknown_10:

unknown_11:


unknown_12:
identity

identity_1��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:���������:���������*0
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8� *N
fIRG
E__inference_model_16_layer_call_and_return_conditional_losses_1066972o
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
_construction_contextkEagerRuntime*G
_input_shapes6
4:����������: : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:����������

_user_specified_nameinput
�
�
*__inference_dense_83_layer_call_fn_1067717

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
GPU2*0J 8� *N
fIRG
E__inference_dense_83_layer_call_and_return_conditional_losses_1066636o
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
�

f
G__inference_dropout_17_layer_call_and_return_conditional_losses_1066843

inputs
identity�R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  �?n
dropout/MulMulinputsdropout/Const:output:0*
T0*1
_output_shapes
:�����������C
dropout/ShapeShapeinputs*
T0*
_output_shapes
:�
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*1
_output_shapes
:�����������*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *��L>�
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*1
_output_shapes
:�����������y
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*1
_output_shapes
:�����������s
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*1
_output_shapes
:�����������c
IdentityIdentitydropout/Mul_1:z:0*
T0*1
_output_shapes
:�����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
_user_specified_nameinputs
�

�
C__inference_degree_layer_call_and_return_conditional_losses_1067773

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
b
F__inference_reshape_2_layer_call_and_return_conditional_losses_1066543

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
value	B :R
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :�Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :�
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:����������a
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:����������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������:T P
,
_output_shapes
:����������
 
_user_specified_nameinputs
�
�
E__inference_dense_80_layer_call_and_return_conditional_losses_1066614

inputs1
matmul_readvariableop_resource:	�2-
biasadd_readvariableop_resource:2
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�1dense_80/kernel/Regularizer/Square/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
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
1dense_80/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
"dense_80/kernel/Regularizer/SquareSquare9dense_80/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_80/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_80/kernel/Regularizer/SumSum&dense_80/kernel/Regularizer/Square:y:0*dense_80/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_80/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_80/kernel/Regularizer/mulMul*dense_80/kernel/Regularizer/mul/x:output:0(dense_80/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������2�
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp2^dense_80/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2f
1dense_80/kernel/Regularizer/Square/ReadVariableOp1dense_80/kernel/Regularizer/Square/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs
�k
�
 __inference__traced_save_1068020
file_prefix.
*savev2_conv2d_3_kernel_read_readvariableop,
(savev2_conv2d_3_bias_read_readvariableop.
*savev2_dense_80_kernel_read_readvariableop,
(savev2_dense_80_bias_read_readvariableop.
*savev2_dense_82_kernel_read_readvariableop,
(savev2_dense_82_bias_read_readvariableop.
*savev2_dense_81_kernel_read_readvariableop,
(savev2_dense_81_bias_read_readvariableop.
*savev2_dense_83_kernel_read_readvariableop,
(savev2_dense_83_bias_read_readvariableop.
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
1savev2_adam_conv2d_3_kernel_m_read_readvariableop3
/savev2_adam_conv2d_3_bias_m_read_readvariableop5
1savev2_adam_dense_80_kernel_m_read_readvariableop3
/savev2_adam_dense_80_bias_m_read_readvariableop5
1savev2_adam_dense_82_kernel_m_read_readvariableop3
/savev2_adam_dense_82_bias_m_read_readvariableop5
1savev2_adam_dense_81_kernel_m_read_readvariableop3
/savev2_adam_dense_81_bias_m_read_readvariableop5
1savev2_adam_dense_83_kernel_m_read_readvariableop3
/savev2_adam_dense_83_bias_m_read_readvariableop5
1savev2_adam_distance_kernel_m_read_readvariableop3
/savev2_adam_distance_bias_m_read_readvariableop3
/savev2_adam_degree_kernel_m_read_readvariableop1
-savev2_adam_degree_bias_m_read_readvariableop5
1savev2_adam_conv2d_3_kernel_v_read_readvariableop3
/savev2_adam_conv2d_3_bias_v_read_readvariableop5
1savev2_adam_dense_80_kernel_v_read_readvariableop3
/savev2_adam_dense_80_bias_v_read_readvariableop5
1savev2_adam_dense_82_kernel_v_read_readvariableop3
/savev2_adam_dense_82_bias_v_read_readvariableop5
1savev2_adam_dense_81_kernel_v_read_readvariableop3
/savev2_adam_dense_81_bias_v_read_readvariableop5
1savev2_adam_dense_83_kernel_v_read_readvariableop3
/savev2_adam_dense_83_bias_v_read_readvariableop5
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
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*�
value�B�9B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:9*
dtype0*�
value|Bz9B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_conv2d_3_kernel_read_readvariableop(savev2_conv2d_3_bias_read_readvariableop*savev2_dense_80_kernel_read_readvariableop(savev2_dense_80_bias_read_readvariableop*savev2_dense_82_kernel_read_readvariableop(savev2_dense_82_bias_read_readvariableop*savev2_dense_81_kernel_read_readvariableop(savev2_dense_81_bias_read_readvariableop*savev2_dense_83_kernel_read_readvariableop(savev2_dense_83_bias_read_readvariableop*savev2_distance_kernel_read_readvariableop(savev2_distance_bias_read_readvariableop(savev2_degree_kernel_read_readvariableop&savev2_degree_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_conv2d_3_kernel_m_read_readvariableop/savev2_adam_conv2d_3_bias_m_read_readvariableop1savev2_adam_dense_80_kernel_m_read_readvariableop/savev2_adam_dense_80_bias_m_read_readvariableop1savev2_adam_dense_82_kernel_m_read_readvariableop/savev2_adam_dense_82_bias_m_read_readvariableop1savev2_adam_dense_81_kernel_m_read_readvariableop/savev2_adam_dense_81_bias_m_read_readvariableop1savev2_adam_dense_83_kernel_m_read_readvariableop/savev2_adam_dense_83_bias_m_read_readvariableop1savev2_adam_distance_kernel_m_read_readvariableop/savev2_adam_distance_bias_m_read_readvariableop/savev2_adam_degree_kernel_m_read_readvariableop-savev2_adam_degree_bias_m_read_readvariableop1savev2_adam_conv2d_3_kernel_v_read_readvariableop/savev2_adam_conv2d_3_bias_v_read_readvariableop1savev2_adam_dense_80_kernel_v_read_readvariableop/savev2_adam_dense_80_bias_v_read_readvariableop1savev2_adam_dense_82_kernel_v_read_readvariableop/savev2_adam_dense_82_bias_v_read_readvariableop1savev2_adam_dense_81_kernel_v_read_readvariableop/savev2_adam_dense_81_bias_v_read_readvariableop1savev2_adam_dense_83_kernel_v_read_readvariableop/savev2_adam_dense_83_bias_v_read_readvariableop1savev2_adam_distance_kernel_v_read_readvariableop/savev2_adam_distance_bias_v_read_readvariableop/savev2_adam_degree_kernel_v_read_readvariableop-savev2_adam_degree_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *G
dtypes=
;29	�
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
�: :
�:�:	�2:2:	�2:2:2
:
:2
:
:
::
:: : : : : : : : : : : : : : :
�:�:	�2:2:	�2:2:2
:
:2
:
:
::
::
�:�:	�2:2:	�2:2:2
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
_user_specified_namefile_prefix:-)
'
_output_shapes
:
�:!

_output_shapes	
:�:%!

_output_shapes
:	�2: 

_output_shapes
:2:%!

_output_shapes
:	�2: 

_output_shapes
:2:$ 

_output_shapes

:2
: 

_output_shapes
:
:$	 

_output_shapes

:2
: 


_output_shapes
:
:$ 

_output_shapes

:
: 

_output_shapes
::$ 

_output_shapes

:
: 

_output_shapes
::

_output_shapes
: :
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
: :-)
'
_output_shapes
:
�:!

_output_shapes	
:�:%!

_output_shapes
:	�2:  

_output_shapes
:2:%!!

_output_shapes
:	�2: "

_output_shapes
:2:$# 

_output_shapes

:2
: $

_output_shapes
:
:$% 

_output_shapes

:2
: &

_output_shapes
:
:$' 

_output_shapes

:
: (

_output_shapes
::$) 

_output_shapes

:
: *

_output_shapes
::-+)
'
_output_shapes
:
�:!,

_output_shapes	
:�:%-!

_output_shapes
:	�2: .

_output_shapes
:2:%/!

_output_shapes
:	�2: 0

_output_shapes
:2:$1 

_output_shapes

:2
: 2

_output_shapes
:
:$3 

_output_shapes

:2
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
: 8

_output_shapes
::9

_output_shapes
: 
�
�
__inference_loss_fn_2_1067806M
:dense_82_kernel_regularizer_square_readvariableop_resource:	�2
identity��1dense_82/kernel/Regularizer/Square/ReadVariableOp�
1dense_82/kernel/Regularizer/Square/ReadVariableOpReadVariableOp:dense_82_kernel_regularizer_square_readvariableop_resource*
_output_shapes
:	�2*
dtype0�
"dense_82/kernel/Regularizer/SquareSquare9dense_82/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes
:	�2r
!dense_82/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       �
dense_82/kernel/Regularizer/SumSum&dense_82/kernel/Regularizer/Square:y:0*dense_82/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: f
!dense_82/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *��8�
dense_82/kernel/Regularizer/mulMul*dense_82/kernel/Regularizer/mul/x:output:0(dense_82/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: a
IdentityIdentity#dense_82/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: z
NoOpNoOp2^dense_82/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2f
1dense_82/kernel/Regularizer/Square/ReadVariableOp1dense_82/kernel/Regularizer/Square/ReadVariableOp
�
e
G__inference_dropout_17_layer_call_and_return_conditional_losses_1066573

inputs

identity_1X
IdentityIdentityinputs*
T0*1
_output_shapes
:�����������e

Identity_1IdentityIdentity:output:0*
T0*1
_output_shapes
:�����������"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:�����������:Y U
1
_output_shapes
:�����������
 
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
layer-1
layer_with_weights-0
layer-2
layer-3
layer-4
layer_with_weights-1
layer-5
layer_with_weights-2
layer-6
layer_with_weights-3
layer-7
	layer_with_weights-4
	layer-8

layer_with_weights-5

layer-9
layer_with_weights-6
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
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
 __call__
*!&call_and_return_all_conditional_losses

"kernel
#bias
 $_jit_compiled_convolution_op"
_tf_keras_layer
�
%	variables
&trainable_variables
'regularization_losses
(	keras_api
)__call__
**&call_and_return_all_conditional_losses
+_random_generator"
_tf_keras_layer
�
,	variables
-trainable_variables
.regularization_losses
/	keras_api
0__call__
*1&call_and_return_all_conditional_losses"
_tf_keras_layer
�
2	variables
3trainable_variables
4regularization_losses
5	keras_api
6__call__
*7&call_and_return_all_conditional_losses

8kernel
9bias"
_tf_keras_layer
�
:	variables
;trainable_variables
<regularization_losses
=	keras_api
>__call__
*?&call_and_return_all_conditional_losses

@kernel
Abias"
_tf_keras_layer
�
B	variables
Ctrainable_variables
Dregularization_losses
E	keras_api
F__call__
*G&call_and_return_all_conditional_losses

Hkernel
Ibias"
_tf_keras_layer
�
J	variables
Ktrainable_variables
Lregularization_losses
M	keras_api
N__call__
*O&call_and_return_all_conditional_losses

Pkernel
Qbias"
_tf_keras_layer
�
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses

Xkernel
Ybias"
_tf_keras_layer
�
Z	variables
[trainable_variables
\regularization_losses
]	keras_api
^__call__
*_&call_and_return_all_conditional_losses

`kernel
abias"
_tf_keras_layer
�
"0
#1
82
93
@4
A5
H6
I7
P8
Q9
X10
Y11
`12
a13"
trackable_list_wrapper
�
"0
#1
82
93
@4
A5
H6
I7
P8
Q9
X10
Y11
`12
a13"
trackable_list_wrapper
C
b0
c1
d2
e3
f4"
trackable_list_wrapper
�
gnon_trainable_variables

hlayers
imetrics
jlayer_regularization_losses
klayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
ltrace_0
mtrace_1
ntrace_2
otrace_32�
*__inference_model_16_layer_call_fn_1066763
*__inference_model_16_layer_call_fn_1067322
*__inference_model_16_layer_call_fn_1067357
*__inference_model_16_layer_call_fn_1067040�
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
 zltrace_0zmtrace_1zntrace_2zotrace_3
�
ptrace_0
qtrace_1
rtrace_2
strace_32�
E__inference_model_16_layer_call_and_return_conditional_losses_1067450
E__inference_model_16_layer_call_and_return_conditional_losses_1067550
E__inference_model_16_layer_call_and_return_conditional_losses_1067113
E__inference_model_16_layer_call_and_return_conditional_losses_1067186�
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
 zptrace_0zqtrace_1zrtrace_2zstrace_3
�B�
"__inference__wrapped_model_1066509input"�
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
titer

ubeta_1

vbeta_2
	wdecay"m�#m�8m�9m�@m�Am�Hm�Im�Pm�Qm�Xm�Ym�`m�am�"v�#v�8v�9v�@v�Av�Hv�Iv�Pv�Qv�Xv�Yv�`v�av�"
	optimizer
 "
trackable_dict_wrapper
,
xserving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
ynon_trainable_variables

zlayers
{metrics
|layer_regularization_losses
}layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
~trace_02�
+__inference_reshape_2_layer_call_fn_1067555�
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
 z~trace_0
�
trace_02�
F__inference_reshape_2_layer_call_and_return_conditional_losses_1067569�
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
 ztrace_0
.
"0
#1"
trackable_list_wrapper
.
"0
#1"
trackable_list_wrapper
'
b0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
	variables
trainable_variables
regularization_losses
 __call__
*!&call_and_return_all_conditional_losses
&!"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_conv2d_3_layer_call_fn_1067578�
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
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1067595�
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
*:(
�2conv2d_3/kernel
:�2conv2d_3/bias
�2��
���
FullArgSpec'
args�
jself
jinputs
jkernel
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
 0
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
%	variables
&trainable_variables
'regularization_losses
)__call__
**&call_and_return_all_conditional_losses
&*"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_12�
,__inference_dropout_17_layer_call_fn_1067600
,__inference_dropout_17_layer_call_fn_1067605�
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
G__inference_dropout_17_layer_call_and_return_conditional_losses_1067610
G__inference_dropout_17_layer_call_and_return_conditional_losses_1067622�
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
,	variables
-trainable_variables
.regularization_losses
0__call__
*1&call_and_return_all_conditional_losses
&1"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
6__inference_global_max_pooling2d_layer_call_fn_1067627�
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
Q__inference_global_max_pooling2d_layer_call_and_return_conditional_losses_1067633�
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
80
91"
trackable_list_wrapper
.
80
91"
trackable_list_wrapper
'
c0"
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
2	variables
3trainable_variables
4regularization_losses
6__call__
*7&call_and_return_all_conditional_losses
&7"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_80_layer_call_fn_1067642�
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
E__inference_dense_80_layer_call_and_return_conditional_losses_1067658�
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
": 	�22dense_80/kernel
:22dense_80/bias
.
@0
A1"
trackable_list_wrapper
.
@0
A1"
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
:	variables
;trainable_variables
<regularization_losses
>__call__
*?&call_and_return_all_conditional_losses
&?"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_82_layer_call_fn_1067667�
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
E__inference_dense_82_layer_call_and_return_conditional_losses_1067683�
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
": 	�22dense_82/kernel
:22dense_82/bias
.
H0
I1"
trackable_list_wrapper
.
H0
I1"
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
B	variables
Ctrainable_variables
Dregularization_losses
F__call__
*G&call_and_return_all_conditional_losses
&G"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_81_layer_call_fn_1067692�
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
E__inference_dense_81_layer_call_and_return_conditional_losses_1067708�
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
2dense_81/kernel
:
2dense_81/bias
.
P0
Q1"
trackable_list_wrapper
.
P0
Q1"
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
J	variables
Ktrainable_variables
Lregularization_losses
N__call__
*O&call_and_return_all_conditional_losses
&O"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_dense_83_layer_call_fn_1067717�
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
E__inference_dense_83_layer_call_and_return_conditional_losses_1067733�
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
2dense_83/kernel
:
2dense_83/bias
.
X0
Y1"
trackable_list_wrapper
.
X0
Y1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
*__inference_distance_layer_call_fn_1067742�
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
E__inference_distance_layer_call_and_return_conditional_losses_1067753�
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
`0
a1"
trackable_list_wrapper
.
`0
a1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Z	variables
[trainable_variables
\regularization_losses
^__call__
*_&call_and_return_all_conditional_losses
&_"call_and_return_conditional_losses"
_generic_user_object
�
�trace_02�
(__inference_degree_layer_call_fn_1067762�
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
C__inference_degree_layer_call_and_return_conditional_losses_1067773�
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
__inference_loss_fn_0_1067784�
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
__inference_loss_fn_1_1067795�
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
__inference_loss_fn_2_1067806�
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
__inference_loss_fn_3_1067817�
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
__inference_loss_fn_4_1067828�
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
*__inference_model_16_layer_call_fn_1066763input"�
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
*__inference_model_16_layer_call_fn_1067322inputs"�
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
*__inference_model_16_layer_call_fn_1067357inputs"�
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
*__inference_model_16_layer_call_fn_1067040input"�
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
E__inference_model_16_layer_call_and_return_conditional_losses_1067450inputs"�
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
E__inference_model_16_layer_call_and_return_conditional_losses_1067550inputs"�
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
E__inference_model_16_layer_call_and_return_conditional_losses_1067113input"�
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
E__inference_model_16_layer_call_and_return_conditional_losses_1067186input"�
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
%__inference_signature_wrapper_1067257input"�
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
+__inference_reshape_2_layer_call_fn_1067555inputs"�
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
F__inference_reshape_2_layer_call_and_return_conditional_losses_1067569inputs"�
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
b0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_conv2d_3_layer_call_fn_1067578inputs"�
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
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1067595inputs"�
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
,__inference_dropout_17_layer_call_fn_1067600inputs"�
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
,__inference_dropout_17_layer_call_fn_1067605inputs"�
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
G__inference_dropout_17_layer_call_and_return_conditional_losses_1067610inputs"�
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
G__inference_dropout_17_layer_call_and_return_conditional_losses_1067622inputs"�
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
6__inference_global_max_pooling2d_layer_call_fn_1067627inputs"�
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
�B�
Q__inference_global_max_pooling2d_layer_call_and_return_conditional_losses_1067633inputs"�
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
c0"
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
*__inference_dense_80_layer_call_fn_1067642inputs"�
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
E__inference_dense_80_layer_call_and_return_conditional_losses_1067658inputs"�
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
*__inference_dense_82_layer_call_fn_1067667inputs"�
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
E__inference_dense_82_layer_call_and_return_conditional_losses_1067683inputs"�
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
*__inference_dense_81_layer_call_fn_1067692inputs"�
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
E__inference_dense_81_layer_call_and_return_conditional_losses_1067708inputs"�
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
*__inference_dense_83_layer_call_fn_1067717inputs"�
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
E__inference_dense_83_layer_call_and_return_conditional_losses_1067733inputs"�
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
*__inference_distance_layer_call_fn_1067742inputs"�
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
E__inference_distance_layer_call_and_return_conditional_losses_1067753inputs"�
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
(__inference_degree_layer_call_fn_1067762inputs"�
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
C__inference_degree_layer_call_and_return_conditional_losses_1067773inputs"�
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
__inference_loss_fn_0_1067784"�
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
__inference_loss_fn_1_1067795"�
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
__inference_loss_fn_2_1067806"�
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
__inference_loss_fn_3_1067817"�
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
__inference_loss_fn_4_1067828"�
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
/:-
�2Adam/conv2d_3/kernel/m
!:�2Adam/conv2d_3/bias/m
':%	�22Adam/dense_80/kernel/m
 :22Adam/dense_80/bias/m
':%	�22Adam/dense_82/kernel/m
 :22Adam/dense_82/bias/m
&:$2
2Adam/dense_81/kernel/m
 :
2Adam/dense_81/bias/m
&:$2
2Adam/dense_83/kernel/m
 :
2Adam/dense_83/bias/m
&:$
2Adam/distance/kernel/m
 :2Adam/distance/bias/m
$:"
2Adam/degree/kernel/m
:2Adam/degree/bias/m
/:-
�2Adam/conv2d_3/kernel/v
!:�2Adam/conv2d_3/bias/v
':%	�22Adam/dense_80/kernel/v
 :22Adam/dense_80/bias/v
':%	�22Adam/dense_82/kernel/v
 :22Adam/dense_82/bias/v
&:$2
2Adam/dense_81/kernel/v
 :
2Adam/dense_81/bias/v
&:$2
2Adam/dense_83/kernel/v
 :
2Adam/dense_83/bias/v
&:$
2Adam/distance/kernel/v
 :2Adam/distance/bias/v
$:"
2Adam/degree/kernel/v
:2Adam/degree/bias/v�
"__inference__wrapped_model_1066509�"#@A89PQHI`aXY3�0
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
E__inference_conv2d_3_layer_call_and_return_conditional_losses_1067595o"#8�5
.�+
)�&
inputs����������
� "/�,
%�"
0�����������
� �
*__inference_conv2d_3_layer_call_fn_1067578b"#8�5
.�+
)�&
inputs����������
� ""�������������
C__inference_degree_layer_call_and_return_conditional_losses_1067773\`a/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� {
(__inference_degree_layer_call_fn_1067762O`a/�,
%�"
 �
inputs���������

� "�����������
E__inference_dense_80_layer_call_and_return_conditional_losses_1067658]890�-
&�#
!�
inputs����������
� "%�"
�
0���������2
� ~
*__inference_dense_80_layer_call_fn_1067642P890�-
&�#
!�
inputs����������
� "����������2�
E__inference_dense_81_layer_call_and_return_conditional_losses_1067708\HI/�,
%�"
 �
inputs���������2
� "%�"
�
0���������

� }
*__inference_dense_81_layer_call_fn_1067692OHI/�,
%�"
 �
inputs���������2
� "����������
�
E__inference_dense_82_layer_call_and_return_conditional_losses_1067683]@A0�-
&�#
!�
inputs����������
� "%�"
�
0���������2
� ~
*__inference_dense_82_layer_call_fn_1067667P@A0�-
&�#
!�
inputs����������
� "����������2�
E__inference_dense_83_layer_call_and_return_conditional_losses_1067733\PQ/�,
%�"
 �
inputs���������2
� "%�"
�
0���������

� }
*__inference_dense_83_layer_call_fn_1067717OPQ/�,
%�"
 �
inputs���������2
� "����������
�
E__inference_distance_layer_call_and_return_conditional_losses_1067753\XY/�,
%�"
 �
inputs���������

� "%�"
�
0���������
� }
*__inference_distance_layer_call_fn_1067742OXY/�,
%�"
 �
inputs���������

� "�����������
G__inference_dropout_17_layer_call_and_return_conditional_losses_1067610p=�:
3�0
*�'
inputs�����������
p 
� "/�,
%�"
0�����������
� �
G__inference_dropout_17_layer_call_and_return_conditional_losses_1067622p=�:
3�0
*�'
inputs�����������
p
� "/�,
%�"
0�����������
� �
,__inference_dropout_17_layer_call_fn_1067600c=�:
3�0
*�'
inputs�����������
p 
� ""�������������
,__inference_dropout_17_layer_call_fn_1067605c=�:
3�0
*�'
inputs�����������
p
� ""�������������
Q__inference_global_max_pooling2d_layer_call_and_return_conditional_losses_1067633�R�O
H�E
C�@
inputs4������������������������������������
� ".�+
$�!
0������������������
� �
6__inference_global_max_pooling2d_layer_call_fn_1067627wR�O
H�E
C�@
inputs4������������������������������������
� "!�������������������<
__inference_loss_fn_0_1067784"�

� 
� "� <
__inference_loss_fn_1_10677958�

� 
� "� <
__inference_loss_fn_2_1067806@�

� 
� "� <
__inference_loss_fn_3_1067817H�

� 
� "� <
__inference_loss_fn_4_1067828P�

� 
� "� �
E__inference_model_16_layer_call_and_return_conditional_losses_1067113�"#@A89PQHI`aXY;�8
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
E__inference_model_16_layer_call_and_return_conditional_losses_1067186�"#@A89PQHI`aXY;�8
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
E__inference_model_16_layer_call_and_return_conditional_losses_1067450�"#@A89PQHI`aXY<�9
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
E__inference_model_16_layer_call_and_return_conditional_losses_1067550�"#@A89PQHI`aXY<�9
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
*__inference_model_16_layer_call_fn_1066763�"#@A89PQHI`aXY;�8
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
*__inference_model_16_layer_call_fn_1067040�"#@A89PQHI`aXY;�8
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
*__inference_model_16_layer_call_fn_1067322�"#@A89PQHI`aXY<�9
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
*__inference_model_16_layer_call_fn_1067357�"#@A89PQHI`aXY<�9
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
F__inference_reshape_2_layer_call_and_return_conditional_losses_1067569f4�1
*�'
%�"
inputs����������
� ".�+
$�!
0����������
� �
+__inference_reshape_2_layer_call_fn_1067555Y4�1
*�'
%�"
inputs����������
� "!������������
%__inference_signature_wrapper_1067257�"#@A89PQHI`aXY<�9
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