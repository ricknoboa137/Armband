╜ю6
╔ Ю 
D
AddV2
x"T
y"T
z"T"
Ttype:
2	АР
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( И
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
Ы
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
В
MaxPool

input"T
output"T"
Ttype0:
2	"
ksize	list(int)(0"
strides	list(int)(0",
paddingstring:
SAMEVALIDEXPLICIT""
explicit_paddings	list(int)
 ":
data_formatstringNHWC:
NHWCNCHWNCHW_VECT_C
e
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool(И
?
Mul
x"T
y"T
z"T"
Ttype:
2	Р

NoOp
M
Pack
values"T*N
output"T"
Nint(0"	
Ttype"
axisint 
│
PartitionedCall
args2Tin
output2Tout"
Tin
list(type)("
Tout
list(type)("	
ffunc"
configstring "
config_protostring "
executor_typestring 
C
Placeholder
output"dtype"
dtypetype"
shapeshape:
@
ReadVariableOp
resource
value"dtype"
dtypetypeИ
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
list(type)(0И
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0И
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
[
Split
	split_dim

value"T
output"T*	num_split"
	num_splitint(0"	
Ttype
┴
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
executor_typestring Ии
Ъ
StatelessWhile

input2T
output2T"
T
list(type)("
condfunc"
bodyfunc" 
output_shapeslist(shape)
 "
parallel_iterationsint

@
StaticRegexFullMatch	
input

output
"
patternstring
ў
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
<
Sub
x"T
y"T
z"T"
Ttype:
2	
-
Tanh
x"T
y"T"
Ttype:

2
░
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКщшelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint         
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
P
Unpack

value"T
output"T*num"
numint("	
Ttype"
axisint 
Ц
VarHandleOp
resource"
	containerstring "
shared_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.9.12v2.9.0-18-gd8ce9f9c3018═А4
Х
Adam/gru_5/gru_cell_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ё*-
shared_nameAdam/gru_5/gru_cell_5/bias/v
О
0Adam/gru_5/gru_cell_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/gru_5/gru_cell_5/bias/v*
_output_shapes
:	Ё*
dtype0
н
(Adam/gru_5/gru_cell_5/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	PЁ*9
shared_name*(Adam/gru_5/gru_cell_5/recurrent_kernel/v
ж
<Adam/gru_5/gru_cell_5/recurrent_kernel/v/Read/ReadVariableOpReadVariableOp(Adam/gru_5/gru_cell_5/recurrent_kernel/v*
_output_shapes
:	PЁ*
dtype0
Ъ
Adam/gru_5/gru_cell_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
└Ё*/
shared_name Adam/gru_5/gru_cell_5/kernel/v
У
2Adam/gru_5/gru_cell_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/gru_5/gru_cell_5/kernel/v* 
_output_shapes
:
└Ё*
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
Д
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
А
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
И
Adam/distance/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/distance/kernel/v
Б
*Adam/distance/kernel/v/Read/ReadVariableOpReadVariableOpAdam/distance/kernel/v*
_output_shapes

:
*
dtype0
В
Adam/dense_117/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_117/bias/v
{
)Adam/dense_117/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_117/bias/v*
_output_shapes
:
*
dtype0
К
Adam/dense_117/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
*(
shared_nameAdam/dense_117/kernel/v
Г
+Adam/dense_117/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_117/kernel/v*
_output_shapes

:2
*
dtype0
В
Adam/dense_115/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_115/bias/v
{
)Adam/dense_115/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_115/bias/v*
_output_shapes
:
*
dtype0
К
Adam/dense_115/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
*(
shared_nameAdam/dense_115/kernel/v
Г
+Adam/dense_115/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_115/kernel/v*
_output_shapes

:2
*
dtype0
В
Adam/dense_116/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*&
shared_nameAdam/dense_116/bias/v
{
)Adam/dense_116/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_116/bias/v*
_output_shapes
:2*
dtype0
К
Adam/dense_116/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P2*(
shared_nameAdam/dense_116/kernel/v
Г
+Adam/dense_116/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_116/kernel/v*
_output_shapes

:P2*
dtype0
В
Adam/dense_114/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*&
shared_nameAdam/dense_114/bias/v
{
)Adam/dense_114/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_114/bias/v*
_output_shapes
:2*
dtype0
К
Adam/dense_114/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P2*(
shared_nameAdam/dense_114/kernel/v
Г
+Adam/dense_114/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_114/kernel/v*
_output_shapes

:P2*
dtype0
Г
Adam/conv2d_20/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*&
shared_nameAdam/conv2d_20/bias/v
|
)Adam/conv2d_20/bias/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/bias/v*
_output_shapes	
:╚*
dtype0
У
Adam/conv2d_20/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
╚*(
shared_nameAdam/conv2d_20/kernel/v
М
+Adam/conv2d_20/kernel/v/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/v*'
_output_shapes
:
╚*
dtype0
Х
Adam/gru_5/gru_cell_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ё*-
shared_nameAdam/gru_5/gru_cell_5/bias/m
О
0Adam/gru_5/gru_cell_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/gru_5/gru_cell_5/bias/m*
_output_shapes
:	Ё*
dtype0
н
(Adam/gru_5/gru_cell_5/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	PЁ*9
shared_name*(Adam/gru_5/gru_cell_5/recurrent_kernel/m
ж
<Adam/gru_5/gru_cell_5/recurrent_kernel/m/Read/ReadVariableOpReadVariableOp(Adam/gru_5/gru_cell_5/recurrent_kernel/m*
_output_shapes
:	PЁ*
dtype0
Ъ
Adam/gru_5/gru_cell_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
└Ё*/
shared_name Adam/gru_5/gru_cell_5/kernel/m
У
2Adam/gru_5/gru_cell_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/gru_5/gru_cell_5/kernel/m* 
_output_shapes
:
└Ё*
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
Д
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
А
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
И
Adam/distance/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:
*'
shared_nameAdam/distance/kernel/m
Б
*Adam/distance/kernel/m/Read/ReadVariableOpReadVariableOpAdam/distance/kernel/m*
_output_shapes

:
*
dtype0
В
Adam/dense_117/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_117/bias/m
{
)Adam/dense_117/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_117/bias/m*
_output_shapes
:
*
dtype0
К
Adam/dense_117/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
*(
shared_nameAdam/dense_117/kernel/m
Г
+Adam/dense_117/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_117/kernel/m*
_output_shapes

:2
*
dtype0
В
Adam/dense_115/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*&
shared_nameAdam/dense_115/bias/m
{
)Adam/dense_115/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_115/bias/m*
_output_shapes
:
*
dtype0
К
Adam/dense_115/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
*(
shared_nameAdam/dense_115/kernel/m
Г
+Adam/dense_115/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_115/kernel/m*
_output_shapes

:2
*
dtype0
В
Adam/dense_116/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*&
shared_nameAdam/dense_116/bias/m
{
)Adam/dense_116/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_116/bias/m*
_output_shapes
:2*
dtype0
К
Adam/dense_116/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P2*(
shared_nameAdam/dense_116/kernel/m
Г
+Adam/dense_116/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_116/kernel/m*
_output_shapes

:P2*
dtype0
В
Adam/dense_114/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*&
shared_nameAdam/dense_114/bias/m
{
)Adam/dense_114/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_114/bias/m*
_output_shapes
:2*
dtype0
К
Adam/dense_114/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P2*(
shared_nameAdam/dense_114/kernel/m
Г
+Adam/dense_114/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_114/kernel/m*
_output_shapes

:P2*
dtype0
Г
Adam/conv2d_20/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*&
shared_nameAdam/conv2d_20/bias/m
|
)Adam/conv2d_20/bias/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/bias/m*
_output_shapes	
:╚*
dtype0
У
Adam/conv2d_20/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
╚*(
shared_nameAdam/conv2d_20/kernel/m
М
+Adam/conv2d_20/kernel/m/Read/ReadVariableOpReadVariableOpAdam/conv2d_20/kernel/m*'
_output_shapes
:
╚*
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
З
gru_5/gru_cell_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:	Ё*&
shared_namegru_5/gru_cell_5/bias
А
)gru_5/gru_cell_5/bias/Read/ReadVariableOpReadVariableOpgru_5/gru_cell_5/bias*
_output_shapes
:	Ё*
dtype0
Я
!gru_5/gru_cell_5/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	PЁ*2
shared_name#!gru_5/gru_cell_5/recurrent_kernel
Ш
5gru_5/gru_cell_5/recurrent_kernel/Read/ReadVariableOpReadVariableOp!gru_5/gru_cell_5/recurrent_kernel*
_output_shapes
:	PЁ*
dtype0
М
gru_5/gru_cell_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
└Ё*(
shared_namegru_5/gru_cell_5/kernel
Е
+gru_5/gru_cell_5/kernel/Read/ReadVariableOpReadVariableOpgru_5/gru_cell_5/kernel* 
_output_shapes
:
└Ё*
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
dense_117/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_117/bias
m
"dense_117/bias/Read/ReadVariableOpReadVariableOpdense_117/bias*
_output_shapes
:
*
dtype0
|
dense_117/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
*!
shared_namedense_117/kernel
u
$dense_117/kernel/Read/ReadVariableOpReadVariableOpdense_117/kernel*
_output_shapes

:2
*
dtype0
t
dense_115/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*
shared_namedense_115/bias
m
"dense_115/bias/Read/ReadVariableOpReadVariableOpdense_115/bias*
_output_shapes
:
*
dtype0
|
dense_115/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:2
*!
shared_namedense_115/kernel
u
$dense_115/kernel/Read/ReadVariableOpReadVariableOpdense_115/kernel*
_output_shapes

:2
*
dtype0
t
dense_116/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_116/bias
m
"dense_116/bias/Read/ReadVariableOpReadVariableOpdense_116/bias*
_output_shapes
:2*
dtype0
|
dense_116/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P2*!
shared_namedense_116/kernel
u
$dense_116/kernel/Read/ReadVariableOpReadVariableOpdense_116/kernel*
_output_shapes

:P2*
dtype0
t
dense_114/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:2*
shared_namedense_114/bias
m
"dense_114/bias/Read/ReadVariableOpReadVariableOpdense_114/bias*
_output_shapes
:2*
dtype0
|
dense_114/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape
:P2*!
shared_namedense_114/kernel
u
$dense_114/kernel/Read/ReadVariableOpReadVariableOpdense_114/kernel*
_output_shapes

:P2*
dtype0
u
conv2d_20/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:╚*
shared_nameconv2d_20/bias
n
"conv2d_20/bias/Read/ReadVariableOpReadVariableOpconv2d_20/bias*
_output_shapes	
:╚*
dtype0
Е
conv2d_20/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
╚*!
shared_nameconv2d_20/kernel
~
$conv2d_20/kernel/Read/ReadVariableOpReadVariableOpconv2d_20/kernel*'
_output_shapes
:
╚*
dtype0

NoOpNoOp
ГД
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*╜Г
value▓ГBоГ BжГ
╥
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer-4
layer-5
layer_with_weights-1
layer-6
layer_with_weights-2
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures*
* 

	keras_api* 
О
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
╚
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias
 '_jit_compiled_convolution_op*
О
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses* 
О
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses* 
┴
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:_random_generator
;cell
<
state_spec*
ж
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses

Ckernel
Dbias*
ж
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

Kkernel
Lbias*
ж
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses

Skernel
Tbias*
ж
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

[kernel
\bias*
ж
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses

ckernel
dbias*
ж
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses

kkernel
lbias*
В
%0
&1
m2
n3
o4
C5
D6
K7
L8
S9
T10
[11
\12
c13
d14
k15
l16*
В
%0
&1
m2
n3
o4
C5
D6
K7
L8
S9
T10
[11
\12
c13
d14
k15
l16*
%
p0
q1
r2
s3
t4* 
░
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
ztrace_0
{trace_1
|trace_2
}trace_3* 
8
~trace_0
trace_1
Аtrace_2
Бtrace_3* 
* 
Й
	Вiter
Гbeta_1
Дbeta_2

Еdecay%mЙ&mКCmЛDmМKmНLmОSmПTmР[mС\mТcmУdmФkmХlmЦmmЧnmШomЩ%vЪ&vЫCvЬDvЭKvЮLvЯSvаTvб[vв\vгcvдdvеkvжlvзmvиnvйovк*
* 

Жserving_default* 
* 
* 
* 
* 
Ц
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

Мtrace_0* 

Нtrace_0* 

%0
&1*

%0
&1*
	
p0* 
Ш
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

Уtrace_0* 

Фtrace_0* 
`Z
VARIABLE_VALUEconv2d_20/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEconv2d_20/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
Ц
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses* 

Ъtrace_0* 

Ыtrace_0* 
* 
* 
* 
Ц
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses* 

бtrace_0* 

вtrace_0* 

m0
n1
o2*

m0
n1
o2*


г0* 
е
дstates
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses*
:
кtrace_0
лtrace_1
мtrace_2
нtrace_3* 
:
оtrace_0
пtrace_1
░trace_2
▒trace_3* 
* 
┌
▓	variables
│trainable_variables
┤regularization_losses
╡	keras_api
╢__call__
+╖&call_and_return_all_conditional_losses
╕_random_generator

mkernel
nrecurrent_kernel
obias*
* 

C0
D1*

C0
D1*
	
q0* 
Ш
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
╜layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses*

╛trace_0* 

┐trace_0* 
`Z
VARIABLE_VALUEdense_114/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_114/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*

K0
L1*

K0
L1*
	
r0* 
Ш
└non_trainable_variables
┴layers
┬metrics
 ├layer_regularization_losses
─layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses*

┼trace_0* 

╞trace_0* 
`Z
VARIABLE_VALUEdense_116/kernel6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_116/bias4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUE*

S0
T1*

S0
T1*
	
s0* 
Ш
╟non_trainable_variables
╚layers
╔metrics
 ╩layer_regularization_losses
╦layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses*

╠trace_0* 

═trace_0* 
`Z
VARIABLE_VALUEdense_115/kernel6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_115/bias4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUE*

[0
\1*

[0
\1*
	
t0* 
Ш
╬non_trainable_variables
╧layers
╨metrics
 ╤layer_regularization_losses
╥layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses*

╙trace_0* 

╘trace_0* 
`Z
VARIABLE_VALUEdense_117/kernel6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUE*
\V
VARIABLE_VALUEdense_117/bias4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUE*

c0
d1*

c0
d1*
* 
Ш
╒non_trainable_variables
╓layers
╫metrics
 ╪layer_regularization_losses
┘layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses*

┌trace_0* 

█trace_0* 
_Y
VARIABLE_VALUEdistance/kernel6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdistance/bias4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUE*

k0
l1*

k0
l1*
* 
Ш
▄non_trainable_variables
▌layers
▐metrics
 ▀layer_regularization_losses
рlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses*

сtrace_0* 

тtrace_0* 
]W
VARIABLE_VALUEdegree/kernel6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUE*
YS
VARIABLE_VALUEdegree/bias4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUEgru_5/gru_cell_5/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!gru_5/gru_cell_5/recurrent_kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEgru_5/gru_cell_5/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE*

уtrace_0* 

фtrace_0* 

хtrace_0* 

цtrace_0* 

чtrace_0* 
* 
b
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
10
11
12*
,
ш0
щ1
ъ2
ы3
ь4*
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
	
p0* 
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

эtrace_0* 
* 
* 

;0*
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
m0
n1
o2*

m0
n1
o2*


г0* 
Ю
юnon_trainable_variables
яlayers
Ёmetrics
 ёlayer_regularization_losses
Єlayer_metrics
▓	variables
│trainable_variables
┤regularization_losses
╢__call__
+╖&call_and_return_all_conditional_losses
'╖"call_and_return_conditional_losses*
* 
* 
* 
* 
* 
* 
	
q0* 
* 
* 
* 
* 
* 
* 
	
r0* 
* 
* 
* 
* 
* 
* 
	
s0* 
* 
* 
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
є	variables
Ї	keras_api

їtotal

Ўcount*
<
ў	variables
°	keras_api

∙total

·count*
<
√	variables
№	keras_api

¤total

■count*
M
 	variables
А	keras_api

Бtotal

Вcount
Г
_fn_kwargs*
M
Д	variables
Е	keras_api

Жtotal

Зcount
И
_fn_kwargs*
* 
* 
* 
* 


г0* 
* 

ї0
Ў1*

є	variables*
UO
VARIABLE_VALUEtotal_44keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_44keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*

∙0
·1*

ў	variables*
UO
VARIABLE_VALUEtotal_34keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_34keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUE*

¤0
■1*

√	variables*
UO
VARIABLE_VALUEtotal_24keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_24keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUE*

Б0
В1*

 	variables*
UO
VARIABLE_VALUEtotal_14keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUEcount_14keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUE*
* 

Ж0
З1*

Д	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUE*
* 
Г}
VARIABLE_VALUEAdam/conv2d_20/kernel/mRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_20/bias/mPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/dense_114/kernel/mRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_114/bias/mPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/dense_116/kernel/mRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_116/bias/mPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/dense_115/kernel/mRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_115/bias/mPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/dense_117/kernel/mRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_117/bias/mPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/distance/kernel/mRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/distance/bias/mPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/degree/kernel/mRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/degree/bias/mPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/gru_5/gru_cell_5/kernel/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUE(Adam/gru_5/gru_cell_5/recurrent_kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/gru_5/gru_cell_5/bias/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/conv2d_20/kernel/vRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/conv2d_20/bias/vPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/dense_114/kernel/vRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_114/bias/vPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/dense_116/kernel/vRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_116/bias/vPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/dense_115/kernel/vRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_115/bias/vPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Г}
VARIABLE_VALUEAdam/dense_117/kernel/vRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUEAdam/dense_117/bias/vPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В|
VARIABLE_VALUEAdam/distance/kernel/vRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/distance/bias/vPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Аz
VARIABLE_VALUEAdam/degree/kernel/vRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUEAdam/degree/bias/vPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
zt
VARIABLE_VALUEAdam/gru_5/gru_cell_5/kernel/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
Д~
VARIABLE_VALUE(Adam/gru_5/gru_cell_5/recurrent_kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
xr
VARIABLE_VALUEAdam/gru_5/gru_cell_5/bias/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
В
serving_default_inputPlaceholder*,
_output_shapes
:         ш*
dtype0*!
shape:         ш
в
StatefulPartitionedCallStatefulPartitionedCallserving_default_inputconv2d_20/kernelconv2d_20/biasgru_5/gru_cell_5/kernel!gru_5/gru_cell_5/recurrent_kernelgru_5/gru_cell_5/biasdense_116/kerneldense_116/biasdense_114/kerneldense_114/biasdense_117/kerneldense_117/biasdense_115/kerneldense_115/biasdegree/kerneldegree/biasdistance/kerneldistance/bias*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         :         *3
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *-
f(R&
$__inference_signature_wrapper_386251
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
У
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename$conv2d_20/kernel/Read/ReadVariableOp"conv2d_20/bias/Read/ReadVariableOp$dense_114/kernel/Read/ReadVariableOp"dense_114/bias/Read/ReadVariableOp$dense_116/kernel/Read/ReadVariableOp"dense_116/bias/Read/ReadVariableOp$dense_115/kernel/Read/ReadVariableOp"dense_115/bias/Read/ReadVariableOp$dense_117/kernel/Read/ReadVariableOp"dense_117/bias/Read/ReadVariableOp#distance/kernel/Read/ReadVariableOp!distance/bias/Read/ReadVariableOp!degree/kernel/Read/ReadVariableOpdegree/bias/Read/ReadVariableOp+gru_5/gru_cell_5/kernel/Read/ReadVariableOp5gru_5/gru_cell_5/recurrent_kernel/Read/ReadVariableOp)gru_5/gru_cell_5/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOptotal_4/Read/ReadVariableOpcount_4/Read/ReadVariableOptotal_3/Read/ReadVariableOpcount_3/Read/ReadVariableOptotal_2/Read/ReadVariableOpcount_2/Read/ReadVariableOptotal_1/Read/ReadVariableOpcount_1/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp+Adam/conv2d_20/kernel/m/Read/ReadVariableOp)Adam/conv2d_20/bias/m/Read/ReadVariableOp+Adam/dense_114/kernel/m/Read/ReadVariableOp)Adam/dense_114/bias/m/Read/ReadVariableOp+Adam/dense_116/kernel/m/Read/ReadVariableOp)Adam/dense_116/bias/m/Read/ReadVariableOp+Adam/dense_115/kernel/m/Read/ReadVariableOp)Adam/dense_115/bias/m/Read/ReadVariableOp+Adam/dense_117/kernel/m/Read/ReadVariableOp)Adam/dense_117/bias/m/Read/ReadVariableOp*Adam/distance/kernel/m/Read/ReadVariableOp(Adam/distance/bias/m/Read/ReadVariableOp(Adam/degree/kernel/m/Read/ReadVariableOp&Adam/degree/bias/m/Read/ReadVariableOp2Adam/gru_5/gru_cell_5/kernel/m/Read/ReadVariableOp<Adam/gru_5/gru_cell_5/recurrent_kernel/m/Read/ReadVariableOp0Adam/gru_5/gru_cell_5/bias/m/Read/ReadVariableOp+Adam/conv2d_20/kernel/v/Read/ReadVariableOp)Adam/conv2d_20/bias/v/Read/ReadVariableOp+Adam/dense_114/kernel/v/Read/ReadVariableOp)Adam/dense_114/bias/v/Read/ReadVariableOp+Adam/dense_116/kernel/v/Read/ReadVariableOp)Adam/dense_116/bias/v/Read/ReadVariableOp+Adam/dense_115/kernel/v/Read/ReadVariableOp)Adam/dense_115/bias/v/Read/ReadVariableOp+Adam/dense_117/kernel/v/Read/ReadVariableOp)Adam/dense_117/bias/v/Read/ReadVariableOp*Adam/distance/kernel/v/Read/ReadVariableOp(Adam/distance/bias/v/Read/ReadVariableOp(Adam/degree/kernel/v/Read/ReadVariableOp&Adam/degree/bias/v/Read/ReadVariableOp2Adam/gru_5/gru_cell_5/kernel/v/Read/ReadVariableOp<Adam/gru_5/gru_cell_5/recurrent_kernel/v/Read/ReadVariableOp0Adam/gru_5/gru_cell_5/bias/v/Read/ReadVariableOpConst*N
TinG
E2C	*
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
GPU2*0J 8В *(
f#R!
__inference__traced_save_389513
·
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv2d_20/kernelconv2d_20/biasdense_114/kerneldense_114/biasdense_116/kerneldense_116/biasdense_115/kerneldense_115/biasdense_117/kerneldense_117/biasdistance/kerneldistance/biasdegree/kerneldegree/biasgru_5/gru_cell_5/kernel!gru_5/gru_cell_5/recurrent_kernelgru_5/gru_cell_5/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decaytotal_4count_4total_3count_3total_2count_2total_1count_1totalcountAdam/conv2d_20/kernel/mAdam/conv2d_20/bias/mAdam/dense_114/kernel/mAdam/dense_114/bias/mAdam/dense_116/kernel/mAdam/dense_116/bias/mAdam/dense_115/kernel/mAdam/dense_115/bias/mAdam/dense_117/kernel/mAdam/dense_117/bias/mAdam/distance/kernel/mAdam/distance/bias/mAdam/degree/kernel/mAdam/degree/bias/mAdam/gru_5/gru_cell_5/kernel/m(Adam/gru_5/gru_cell_5/recurrent_kernel/mAdam/gru_5/gru_cell_5/bias/mAdam/conv2d_20/kernel/vAdam/conv2d_20/bias/vAdam/dense_114/kernel/vAdam/dense_114/bias/vAdam/dense_116/kernel/vAdam/dense_116/bias/vAdam/dense_115/kernel/vAdam/dense_115/bias/vAdam/dense_117/kernel/vAdam/dense_117/bias/vAdam/distance/kernel/vAdam/distance/bias/vAdam/degree/kernel/vAdam/degree/bias/vAdam/gru_5/gru_cell_5/kernel/v(Adam/gru_5/gru_cell_5/recurrent_kernel/vAdam/gru_5/gru_cell_5/bias/v*M
TinF
D2B*
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
GPU2*0J 8В *+
f&R$
"__inference__traced_restore_389718н╥1
ы-
т
while_body_386475
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstackИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @  з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         └*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Ё|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         ЁW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╡
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_splitГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ЁВ
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         ЁY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╗
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         PY
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         Pt
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         P]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         Po
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         Pk
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         PU

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         Pl
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         PP
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         Pc
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         Ph
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         Pr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         P"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё: 
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
: :-)
'
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
└Ё:!

_output_shapes	
:Ё:%	!

_output_shapes
:	PЁ:!


_output_shapes	
:Ё
Р	
▐
while_cond_387970
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_387970___redundant_placeholder04
0while_while_cond_387970___redundant_placeholder14
0while_while_cond_387970___redundant_placeholder24
0while_while_cond_387970___redundant_placeholder34
0while_while_cond_387970___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :         P: :::::: 
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
: :-)
'
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
▐4
п
(__inference_gpu_gru_with_fallback_388937

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d         └P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         PQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	└P:	└P:	└P*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:рS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Т
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:P[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:P[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:P\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:P\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:P\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:PM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╦
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:р╤U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:d         P:         P: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         Pc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:         PZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:         d└:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_2a22995d-d6b2-4c40-9ddf-56bd2b6b1c65*
api_preferred_deviceGPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
Я
╒
)__inference_model_27_layer_call_fn_386328

inputs"
unknown:
╚
	unknown_0:	╚
	unknown_1:
└Ё
	unknown_2:	PЁ
	unknown_3:	Ё
	unknown_4:P2
	unknown_5:2
	unknown_6:P2
	unknown_7:2
	unknown_8:2

	unknown_9:


unknown_10:2


unknown_11:


unknown_12:


unknown_13:

unknown_14:


unknown_15:
identity

identity_1ИвStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         :         *3
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_model_27_layer_call_and_return_conditional_losses_385226o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::         ш: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ш
 
_user_specified_nameinputs
В5
п
(__inference_gpu_gru_with_fallback_388137

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  └P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         PQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	└P:	└P:	└P*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:рS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Т
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:P[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:P[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:P\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:P\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:P\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:PM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╦
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:р╤U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ╙
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:                  P:         P: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         Pc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:         PZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:                  └:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_46fba877-7daf-4fec-82cd-2aa8cca36b11*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  └
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
╤А
є'
"__inference__traced_restore_389718
file_prefix<
!assignvariableop_conv2d_20_kernel:
╚0
!assignvariableop_1_conv2d_20_bias:	╚5
#assignvariableop_2_dense_114_kernel:P2/
!assignvariableop_3_dense_114_bias:25
#assignvariableop_4_dense_116_kernel:P2/
!assignvariableop_5_dense_116_bias:25
#assignvariableop_6_dense_115_kernel:2
/
!assignvariableop_7_dense_115_bias:
5
#assignvariableop_8_dense_117_kernel:2
/
!assignvariableop_9_dense_117_bias:
5
#assignvariableop_10_distance_kernel:
/
!assignvariableop_11_distance_bias:3
!assignvariableop_12_degree_kernel:
-
assignvariableop_13_degree_bias:?
+assignvariableop_14_gru_5_gru_cell_5_kernel:
└ЁH
5assignvariableop_15_gru_5_gru_cell_5_recurrent_kernel:	PЁ<
)assignvariableop_16_gru_5_gru_cell_5_bias:	Ё'
assignvariableop_17_adam_iter:	 )
assignvariableop_18_adam_beta_1: )
assignvariableop_19_adam_beta_2: (
assignvariableop_20_adam_decay: %
assignvariableop_21_total_4: %
assignvariableop_22_count_4: %
assignvariableop_23_total_3: %
assignvariableop_24_count_3: %
assignvariableop_25_total_2: %
assignvariableop_26_count_2: %
assignvariableop_27_total_1: %
assignvariableop_28_count_1: #
assignvariableop_29_total: #
assignvariableop_30_count: F
+assignvariableop_31_adam_conv2d_20_kernel_m:
╚8
)assignvariableop_32_adam_conv2d_20_bias_m:	╚=
+assignvariableop_33_adam_dense_114_kernel_m:P27
)assignvariableop_34_adam_dense_114_bias_m:2=
+assignvariableop_35_adam_dense_116_kernel_m:P27
)assignvariableop_36_adam_dense_116_bias_m:2=
+assignvariableop_37_adam_dense_115_kernel_m:2
7
)assignvariableop_38_adam_dense_115_bias_m:
=
+assignvariableop_39_adam_dense_117_kernel_m:2
7
)assignvariableop_40_adam_dense_117_bias_m:
<
*assignvariableop_41_adam_distance_kernel_m:
6
(assignvariableop_42_adam_distance_bias_m::
(assignvariableop_43_adam_degree_kernel_m:
4
&assignvariableop_44_adam_degree_bias_m:F
2assignvariableop_45_adam_gru_5_gru_cell_5_kernel_m:
└ЁO
<assignvariableop_46_adam_gru_5_gru_cell_5_recurrent_kernel_m:	PЁC
0assignvariableop_47_adam_gru_5_gru_cell_5_bias_m:	ЁF
+assignvariableop_48_adam_conv2d_20_kernel_v:
╚8
)assignvariableop_49_adam_conv2d_20_bias_v:	╚=
+assignvariableop_50_adam_dense_114_kernel_v:P27
)assignvariableop_51_adam_dense_114_bias_v:2=
+assignvariableop_52_adam_dense_116_kernel_v:P27
)assignvariableop_53_adam_dense_116_bias_v:2=
+assignvariableop_54_adam_dense_115_kernel_v:2
7
)assignvariableop_55_adam_dense_115_bias_v:
=
+assignvariableop_56_adam_dense_117_kernel_v:2
7
)assignvariableop_57_adam_dense_117_bias_v:
<
*assignvariableop_58_adam_distance_kernel_v:
6
(assignvariableop_59_adam_distance_bias_v::
(assignvariableop_60_adam_degree_kernel_v:
4
&assignvariableop_61_adam_degree_bias_v:F
2assignvariableop_62_adam_gru_5_gru_cell_5_kernel_v:
└ЁO
<assignvariableop_63_adam_gru_5_gru_cell_5_recurrent_kernel_v:	PЁC
0assignvariableop_64_adam_gru_5_gru_cell_5_bias_v:	Ё
identity_66ИвAssignVariableOpвAssignVariableOp_1вAssignVariableOp_10вAssignVariableOp_11вAssignVariableOp_12вAssignVariableOp_13вAssignVariableOp_14вAssignVariableOp_15вAssignVariableOp_16вAssignVariableOp_17вAssignVariableOp_18вAssignVariableOp_19вAssignVariableOp_2вAssignVariableOp_20вAssignVariableOp_21вAssignVariableOp_22вAssignVariableOp_23вAssignVariableOp_24вAssignVariableOp_25вAssignVariableOp_26вAssignVariableOp_27вAssignVariableOp_28вAssignVariableOp_29вAssignVariableOp_3вAssignVariableOp_30вAssignVariableOp_31вAssignVariableOp_32вAssignVariableOp_33вAssignVariableOp_34вAssignVariableOp_35вAssignVariableOp_36вAssignVariableOp_37вAssignVariableOp_38вAssignVariableOp_39вAssignVariableOp_4вAssignVariableOp_40вAssignVariableOp_41вAssignVariableOp_42вAssignVariableOp_43вAssignVariableOp_44вAssignVariableOp_45вAssignVariableOp_46вAssignVariableOp_47вAssignVariableOp_48вAssignVariableOp_49вAssignVariableOp_5вAssignVariableOp_50вAssignVariableOp_51вAssignVariableOp_52вAssignVariableOp_53вAssignVariableOp_54вAssignVariableOp_55вAssignVariableOp_56вAssignVariableOp_57вAssignVariableOp_58вAssignVariableOp_59вAssignVariableOp_6вAssignVariableOp_60вAssignVariableOp_61вAssignVariableOp_62вAssignVariableOp_63вAssignVariableOp_64вAssignVariableOp_7вAssignVariableOp_8вAssignVariableOp_9А#
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*ж"
valueЬ"BЩ"BB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHў
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*Щ
valueПBМBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ы
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*Ю
_output_shapesЛ
И::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::*P
dtypesF
D2B	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOpAssignVariableOp!assignvariableop_conv2d_20_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_1AssignVariableOp!assignvariableop_1_conv2d_20_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_2AssignVariableOp#assignvariableop_2_dense_114_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_3AssignVariableOp!assignvariableop_3_dense_114_biasIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_4AssignVariableOp#assignvariableop_4_dense_116_kernelIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_5AssignVariableOp!assignvariableop_5_dense_116_biasIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_6AssignVariableOp#assignvariableop_6_dense_115_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_7AssignVariableOp!assignvariableop_7_dense_115_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_8AssignVariableOp#assignvariableop_8_dense_117_kernelIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_9AssignVariableOp!assignvariableop_9_dense_117_biasIdentity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ф
AssignVariableOp_10AssignVariableOp#assignvariableop_10_distance_kernelIdentity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_11AssignVariableOp!assignvariableop_11_distance_biasIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_12AssignVariableOp!assignvariableop_12_degree_kernelIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_13AssignVariableOpassignvariableop_13_degree_biasIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_14AssignVariableOp+assignvariableop_14_gru_5_gru_cell_5_kernelIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:ж
AssignVariableOp_15AssignVariableOp5assignvariableop_15_gru_5_gru_cell_5_recurrent_kernelIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_16AssignVariableOp)assignvariableop_16_gru_5_gru_cell_5_biasIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0	*
_output_shapes
:О
AssignVariableOp_17AssignVariableOpassignvariableop_17_adam_iterIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_18AssignVariableOpassignvariableop_18_adam_beta_1Identity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_19AssignVariableOpassignvariableop_19_adam_beta_2Identity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_20AssignVariableOpassignvariableop_20_adam_decayIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_21AssignVariableOpassignvariableop_21_total_4Identity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_22AssignVariableOpassignvariableop_22_count_4Identity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_23AssignVariableOpassignvariableop_23_total_3Identity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_24AssignVariableOpassignvariableop_24_count_3Identity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_25AssignVariableOpassignvariableop_25_total_2Identity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_26AssignVariableOpassignvariableop_26_count_2Identity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_27AssignVariableOpassignvariableop_27_total_1Identity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:М
AssignVariableOp_28AssignVariableOpassignvariableop_28_count_1Identity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_29AssignVariableOpassignvariableop_29_totalIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:К
AssignVariableOp_30AssignVariableOpassignvariableop_30_countIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_31IdentityRestoreV2:tensors:31"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_31AssignVariableOp+assignvariableop_31_adam_conv2d_20_kernel_mIdentity_31:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_32IdentityRestoreV2:tensors:32"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_32AssignVariableOp)assignvariableop_32_adam_conv2d_20_bias_mIdentity_32:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_33IdentityRestoreV2:tensors:33"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_33AssignVariableOp+assignvariableop_33_adam_dense_114_kernel_mIdentity_33:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_34IdentityRestoreV2:tensors:34"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_34AssignVariableOp)assignvariableop_34_adam_dense_114_bias_mIdentity_34:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_35IdentityRestoreV2:tensors:35"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_35AssignVariableOp+assignvariableop_35_adam_dense_116_kernel_mIdentity_35:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_36IdentityRestoreV2:tensors:36"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_36AssignVariableOp)assignvariableop_36_adam_dense_116_bias_mIdentity_36:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_37IdentityRestoreV2:tensors:37"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_37AssignVariableOp+assignvariableop_37_adam_dense_115_kernel_mIdentity_37:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_38IdentityRestoreV2:tensors:38"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_38AssignVariableOp)assignvariableop_38_adam_dense_115_bias_mIdentity_38:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_39IdentityRestoreV2:tensors:39"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_39AssignVariableOp+assignvariableop_39_adam_dense_117_kernel_mIdentity_39:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_40IdentityRestoreV2:tensors:40"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_40AssignVariableOp)assignvariableop_40_adam_dense_117_bias_mIdentity_40:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_41IdentityRestoreV2:tensors:41"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_41AssignVariableOp*assignvariableop_41_adam_distance_kernel_mIdentity_41:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_42IdentityRestoreV2:tensors:42"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_42AssignVariableOp(assignvariableop_42_adam_distance_bias_mIdentity_42:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_43IdentityRestoreV2:tensors:43"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_43AssignVariableOp(assignvariableop_43_adam_degree_kernel_mIdentity_43:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_44IdentityRestoreV2:tensors:44"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_44AssignVariableOp&assignvariableop_44_adam_degree_bias_mIdentity_44:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_45IdentityRestoreV2:tensors:45"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_45AssignVariableOp2assignvariableop_45_adam_gru_5_gru_cell_5_kernel_mIdentity_45:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_46IdentityRestoreV2:tensors:46"/device:CPU:0*
T0*
_output_shapes
:н
AssignVariableOp_46AssignVariableOp<assignvariableop_46_adam_gru_5_gru_cell_5_recurrent_kernel_mIdentity_46:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_47IdentityRestoreV2:tensors:47"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_47AssignVariableOp0assignvariableop_47_adam_gru_5_gru_cell_5_bias_mIdentity_47:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_48IdentityRestoreV2:tensors:48"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_48AssignVariableOp+assignvariableop_48_adam_conv2d_20_kernel_vIdentity_48:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_49IdentityRestoreV2:tensors:49"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_49AssignVariableOp)assignvariableop_49_adam_conv2d_20_bias_vIdentity_49:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_50IdentityRestoreV2:tensors:50"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_50AssignVariableOp+assignvariableop_50_adam_dense_114_kernel_vIdentity_50:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_51IdentityRestoreV2:tensors:51"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_51AssignVariableOp)assignvariableop_51_adam_dense_114_bias_vIdentity_51:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_52IdentityRestoreV2:tensors:52"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_52AssignVariableOp+assignvariableop_52_adam_dense_116_kernel_vIdentity_52:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_53IdentityRestoreV2:tensors:53"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_53AssignVariableOp)assignvariableop_53_adam_dense_116_bias_vIdentity_53:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_54IdentityRestoreV2:tensors:54"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_54AssignVariableOp+assignvariableop_54_adam_dense_115_kernel_vIdentity_54:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_55IdentityRestoreV2:tensors:55"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_55AssignVariableOp)assignvariableop_55_adam_dense_115_bias_vIdentity_55:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_56IdentityRestoreV2:tensors:56"/device:CPU:0*
T0*
_output_shapes
:Ь
AssignVariableOp_56AssignVariableOp+assignvariableop_56_adam_dense_117_kernel_vIdentity_56:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_57IdentityRestoreV2:tensors:57"/device:CPU:0*
T0*
_output_shapes
:Ъ
AssignVariableOp_57AssignVariableOp)assignvariableop_57_adam_dense_117_bias_vIdentity_57:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_58IdentityRestoreV2:tensors:58"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_58AssignVariableOp*assignvariableop_58_adam_distance_kernel_vIdentity_58:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_59IdentityRestoreV2:tensors:59"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_59AssignVariableOp(assignvariableop_59_adam_distance_bias_vIdentity_59:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_60IdentityRestoreV2:tensors:60"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_60AssignVariableOp(assignvariableop_60_adam_degree_kernel_vIdentity_60:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_61IdentityRestoreV2:tensors:61"/device:CPU:0*
T0*
_output_shapes
:Ч
AssignVariableOp_61AssignVariableOp&assignvariableop_61_adam_degree_bias_vIdentity_61:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_62IdentityRestoreV2:tensors:62"/device:CPU:0*
T0*
_output_shapes
:г
AssignVariableOp_62AssignVariableOp2assignvariableop_62_adam_gru_5_gru_cell_5_kernel_vIdentity_62:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_63IdentityRestoreV2:tensors:63"/device:CPU:0*
T0*
_output_shapes
:н
AssignVariableOp_63AssignVariableOp<assignvariableop_63_adam_gru_5_gru_cell_5_recurrent_kernel_vIdentity_63:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_64IdentityRestoreV2:tensors:64"/device:CPU:0*
T0*
_output_shapes
:б
AssignVariableOp_64AssignVariableOp0assignvariableop_64_adam_gru_5_gru_cell_5_bias_vIdentity_64:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 х
Identity_65Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_66IdentityIdentity_65:output:0^NoOp_1*
T0*
_output_shapes
: ╥
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_31^AssignVariableOp_32^AssignVariableOp_33^AssignVariableOp_34^AssignVariableOp_35^AssignVariableOp_36^AssignVariableOp_37^AssignVariableOp_38^AssignVariableOp_39^AssignVariableOp_4^AssignVariableOp_40^AssignVariableOp_41^AssignVariableOp_42^AssignVariableOp_43^AssignVariableOp_44^AssignVariableOp_45^AssignVariableOp_46^AssignVariableOp_47^AssignVariableOp_48^AssignVariableOp_49^AssignVariableOp_5^AssignVariableOp_50^AssignVariableOp_51^AssignVariableOp_52^AssignVariableOp_53^AssignVariableOp_54^AssignVariableOp_55^AssignVariableOp_56^AssignVariableOp_57^AssignVariableOp_58^AssignVariableOp_59^AssignVariableOp_6^AssignVariableOp_60^AssignVariableOp_61^AssignVariableOp_62^AssignVariableOp_63^AssignVariableOp_64^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_66Identity_66:output:0*Щ
_input_shapesЗ
Д: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_61AssignVariableOp_612*
AssignVariableOp_62AssignVariableOp_622*
AssignVariableOp_63AssignVariableOp_632*
AssignVariableOp_64AssignVariableOp_642(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix
└
G
+__inference_reshape_32_layer_call_fn_387370

inputs
identity╜
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ш* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_reshape_32_layer_call_and_return_conditional_losses_384630i
IdentityIdentityPartitionedCall:output:0*
T0*0
_output_shapes
:         ш"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ш:T P
,
_output_shapes
:         ш
 
_user_specified_nameinputs
┌
b
F__inference_reshape_32_layer_call_and_return_conditional_losses_387384

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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :шQ
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :й
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:         шa
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:         ш"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ш:T P
,
_output_shapes
:         ш
 
_user_specified_nameinputs
Я
╒
)__inference_model_27_layer_call_fn_386369

inputs"
unknown:
╚
	unknown_0:	╚
	unknown_1:
└Ё
	unknown_2:	PЁ
	unknown_3:	Ё
	unknown_4:P2
	unknown_5:2
	unknown_6:P2
	unknown_7:2
	unknown_8:2

	unknown_9:


unknown_10:2


unknown_11:


unknown_12:


unknown_13:

unknown_14:


unknown_15:
identity

identity_1ИвStatefulPartitionedCall╣
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         :         *3
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_model_27_layer_call_and_return_conditional_losses_385912o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::         ш: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         ш
 
_user_specified_nameinputs
Ю#
■
A__inference_gru_5_layer_call_and_return_conditional_losses_387870
inputs_00
read_readvariableop_resource:
└Ё1
read_1_readvariableop_resource:	PЁ1
read_2_readvariableop_resource:	Ё

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpв9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp=
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ps
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         PG
ones_like/ShapeShapeinputs_0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Е
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*5
_output_shapes#
!:                  └h
mulMulinputs_0ones_like:output:0*
T0*5
_output_shapes#
!:                  └r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
└Ё*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└Ёu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	PЁ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	PЁu
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Ё*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	ЁО
PartitionedCallPartitionedCallmul:z:0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:         P:         P:         P: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_gru_387649Ш
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
└Ё*
dtype0в
*gru_5/gru_cell_5/kernel/Regularizer/SquareSquareAgru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└Ёz
)gru_5/gru_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       │
'gru_5/gru_cell_5/kernel/Regularizer/SumSum.gru_5/gru_cell_5/kernel/Regularizer/Square:y:02gru_5/gru_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)gru_5/gru_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8╡
'gru_5/gru_cell_5/kernel/Regularizer/mulMul2gru_5/gru_cell_5/kernel/Regularizer/mul/x:output:00gru_5/gru_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         P╚
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp:^gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  └: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2v
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:_ [
5
_output_shapes#
!:                  └
"
_user_specified_name
inputs/0
ы-
т
while_body_388359
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstackИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @  з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         └*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Ё|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         ЁW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╡
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_splitГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ЁВ
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         ЁY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╗
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         PY
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         Pt
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         P]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         Po
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         Pk
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         PU

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         Pl
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         PP
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         Pc
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         Ph
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         Pr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         P"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё: 
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
: :-)
'
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
└Ё:!

_output_shapes	
:Ё:%	!

_output_shapes
:	PЁ:!


_output_shapes	
:Ё
▐4
п
(__inference_gpu_gru_with_fallback_383593

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d         └P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         PQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	└P:	└P:	└P*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:рS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Т
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:P[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:P[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:P\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:P\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:P\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:PM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╦
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:р╤U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:d         P:         P: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         Pc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:         PZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:         d└:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_1ccaf889-86d4-4158-9f30-3e7d865ce12d*
api_preferred_deviceGPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
╟
Ч
*__inference_dense_115_layer_call_fn_389147

inputs
unknown:2

	unknown_0:

identityИвStatefulPartitionedCall▌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_115_layer_call_and_return_conditional_losses_385148o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
╟
Ч
*__inference_dense_114_layer_call_fn_389097

inputs
unknown:P2
	unknown_0:2
identityИвStatefulPartitionedCall▌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_114_layer_call_and_return_conditional_losses_385104o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         P: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         P
 
_user_specified_nameinputs
ЧУ
╪

:__inference___backward_gpu_gru_with_fallback_385606_385742
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         Pd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         P`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         PO
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: А
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         Pq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         P┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         P}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Щ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:d         P*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:Л
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*M
_output_shapes;
9:d         └:         P: :р╤*
rnn_modegruЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╤
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:         d└u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         P\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ашi
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ашi
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:Ашh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А2h
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А2h
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А2g
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Ph
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Ph
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:PШ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ч
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:Ашы
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:Ашы
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:Ашъ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А2ъ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А2ъ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А2щ
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:Pь
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:Pь
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:Po
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  д
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  ж
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  ж
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:PPo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:PPo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:PPh
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:Ph
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:Ph
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pг
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pд
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pд
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:PЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╕
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╕
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╕
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPО
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:рЖ
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
└ЁЛ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	PЁm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Ё   в
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Ёs
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*,
_output_shapes
:         d└t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         Pg

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
└Ёh

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	PЁi

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	Ё"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:         P:         P:         P: :         P:         P:d         P: ::d         └:         P: :р╤::         P: ::::::: : : *<
api_implements*(gru_ea7e6912-9ba5-4524-b9cf-2796d62a364c*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_385741*
go_backwards( *

time_major( :- )
'
_output_shapes
:         P:1-
+
_output_shapes
:         P:-)
'
_output_shapes
:         P:

_output_shapes
: :-)
'
_output_shapes
:         P:1-
+
_output_shapes
:         P:1-
+
_output_shapes
:d         P:

_output_shapes
: :

_output_shapes
::2	.
,
_output_shapes
:d         └:1
-
+
_output_shapes
:         P:

_output_shapes
: :"

_output_shapes

:р╤: 

_output_shapes
::-)
'
_output_shapes
:         P:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
в>
г
__inference_standard_gru_385529

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:Ё:Ё*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d         └B
ShapeShapetranspose:y:0*
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
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
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:ъ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         └*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Ёi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         ЁQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :г
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Ёm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         ЁS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :й
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         PM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         Pb
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         PQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         P]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         PY
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         PI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         PS
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         PJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         PQ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         PV
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         Pn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╢
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*X
_output_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_385439*
condR
while_cond_385438*W
output_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         P*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         P]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         PX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:         d└:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_ea7e6912-9ba5-4524-b9cf-2796d62a364c*
api_preferred_deviceCPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
ы-
т
while_body_384747
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstackИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @  з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         └*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Ё|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         ЁW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╡
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_splitГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ЁВ
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         ЁY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╗
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         PY
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         Pt
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         P]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         Po
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         Pk
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         PU

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         Pl
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         PP
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         Pc
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         Ph
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         Pr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         P"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё: 
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
: :-)
'
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
└Ё:!

_output_shapes	
:Ё:%	!

_output_shapes
:	PЁ:!


_output_shapes	
:Ё
╔
│
__inference_loss_fn_1_389250M
;dense_114_kernel_regularizer_square_readvariableop_resource:P2
identityИв2dense_114/kernel/Regularizer/Square/ReadVariableOpо
2dense_114/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_114_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:P2*
dtype0Т
#dense_114/kernel/Regularizer/SquareSquare:dense_114/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2s
"dense_114/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_114/kernel/Regularizer/SumSum'dense_114/kernel/Regularizer/Square:y:0+dense_114/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_114/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_114/kernel/Regularizer/mulMul+dense_114/kernel/Regularizer/mul/x:output:0)dense_114/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentity$dense_114/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^dense_114/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2dense_114/kernel/Regularizer/Square/ReadVariableOp2dense_114/kernel/Regularizer/Square/ReadVariableOp
╗
L
0__inference_max_pooling2d_8_layer_call_fn_387415

inputs
identity▄
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *J
_output_shapes8
6:4                                    * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_383780Г
IdentityIdentityPartitionedCall:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Р	
▐
while_cond_384286
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_384286___redundant_placeholder04
0while_while_cond_384286___redundant_placeholder14
0while_while_cond_384286___redundant_placeholder24
0while_while_cond_384286___redundant_placeholder34
0while_while_cond_384286___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :         P: :::::: 
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
: :-)
'
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Ь
╘
)__inference_model_27_layer_call_fn_385992	
input"
unknown:
╚
	unknown_0:	╚
	unknown_1:
└Ё
	unknown_2:	PЁ
	unknown_3:	Ё
	unknown_4:P2
	unknown_5:2
	unknown_6:P2
	unknown_7:2
	unknown_8:2

	unknown_9:


unknown_10:2


unknown_11:


unknown_12:


unknown_13:

unknown_14:


unknown_15:
identity

identity_1ИвStatefulPartitionedCall╕
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         :         *3
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_model_27_layer_call_and_return_conditional_losses_385912o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::         ш: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:         ш

_user_specified_nameinput
√:
№
A__inference_gru_5_layer_call_and_return_conditional_losses_384598

inputs0
read_readvariableop_resource:
└Ё1
read_1_readvariableop_resource:	PЁ1
read_2_readvariableop_resource:	Ё

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpв9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp;
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ps
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         PE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Е
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*5
_output_shapes#
!:                  └R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?~
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*5
_output_shapes#
!:                  └O
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:ж
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*5
_output_shapes#
!:                  └*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=┤
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:                  └}
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*5
_output_shapes#
!:                  └w
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*5
_output_shapes#
!:                  └T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?В
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*5
_output_shapes#
!:                  └Q
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:╖
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*5
_output_shapes#
!:                  └*
dtype0*

seed*
seed2]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=║
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:                  └Б
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*5
_output_shapes#
!:                  └}
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*5
_output_shapes#
!:                  └T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?В
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*5
_output_shapes#
!:                  └Q
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:╖
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*5
_output_shapes#
!:                  └*
dtype0*

seed*
seed2]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=║
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:                  └Б
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*5
_output_shapes#
!:                  └}
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*5
_output_shapes#
!:                  └e
mulMulinputsdropout/Mul_1:z:0*
T0*5
_output_shapes#
!:                  └r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
└Ё*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└Ёu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	PЁ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	PЁu
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Ё*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	ЁО
PartitionedCallPartitionedCallmul:z:0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:         P:         P:         P: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_gru_384377Ш
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
└Ё*
dtype0в
*gru_5/gru_cell_5/kernel/Regularizer/SquareSquareAgru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└Ёz
)gru_5/gru_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       │
'gru_5/gru_cell_5/kernel/Regularizer/SumSum.gru_5/gru_cell_5/kernel/Regularizer/Square:y:02gru_5/gru_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)gru_5/gru_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8╡
'gru_5/gru_cell_5/kernel/Regularizer/mulMul2gru_5/gru_cell_5/kernel/Regularizer/mul/x:output:00gru_5/gru_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         P╚
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp:^gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  └: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2v
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:] Y
5
_output_shapes#
!:                  └
 
_user_specified_nameinputs
¤
╕
&__inference_gru_5_layer_call_fn_387482

inputs
unknown:
└Ё
	unknown_0:	PЁ
	unknown_1:	Ё
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_gru_5_layer_call_and_return_conditional_losses_385750o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         d└: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs
ха
╩
D__inference_model_27_layer_call_and_return_conditional_losses_386855

inputsC
(conv2d_20_conv2d_readvariableop_resource:
╚8
)conv2d_20_biasadd_readvariableop_resource:	╚6
"gru_5_read_readvariableop_resource:
└Ё7
$gru_5_read_1_readvariableop_resource:	PЁ7
$gru_5_read_2_readvariableop_resource:	Ё:
(dense_116_matmul_readvariableop_resource:P27
)dense_116_biasadd_readvariableop_resource:2:
(dense_114_matmul_readvariableop_resource:P27
)dense_114_biasadd_readvariableop_resource:2:
(dense_117_matmul_readvariableop_resource:2
7
)dense_117_biasadd_readvariableop_resource:
:
(dense_115_matmul_readvariableop_resource:2
7
)dense_115_biasadd_readvariableop_resource:
7
%degree_matmul_readvariableop_resource:
4
&degree_biasadd_readvariableop_resource:9
'distance_matmul_readvariableop_resource:
6
(distance_biasadd_readvariableop_resource:
identity

identity_1Ив conv2d_20/BiasAdd/ReadVariableOpвconv2d_20/Conv2D/ReadVariableOpв2conv2d_20/kernel/Regularizer/Square/ReadVariableOpвdegree/BiasAdd/ReadVariableOpвdegree/MatMul/ReadVariableOpв dense_114/BiasAdd/ReadVariableOpвdense_114/MatMul/ReadVariableOpв2dense_114/kernel/Regularizer/Square/ReadVariableOpв dense_115/BiasAdd/ReadVariableOpвdense_115/MatMul/ReadVariableOpв2dense_115/kernel/Regularizer/Square/ReadVariableOpв dense_116/BiasAdd/ReadVariableOpвdense_116/MatMul/ReadVariableOpв2dense_116/kernel/Regularizer/Square/ReadVariableOpв dense_117/BiasAdd/ReadVariableOpвdense_117/MatMul/ReadVariableOpв2dense_117/kernel/Regularizer/Square/ReadVariableOpвdistance/BiasAdd/ReadVariableOpвdistance/MatMul/ReadVariableOpвgru_5/Read/ReadVariableOpвgru_5/Read_1/ReadVariableOpвgru_5/Read_2/ReadVariableOpв9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp}
(tf.compat.v1.transpose_24/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          в
#tf.compat.v1.transpose_24/transpose	Transposeinputs1tf.compat.v1.transpose_24/transpose/perm:output:0*
T0*,
_output_shapes
:         шg
reshape_32/ShapeShape'tf.compat.v1.transpose_24/transpose:y:0*
T0*
_output_shapes
:h
reshape_32/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_32/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_32/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
reshape_32/strided_sliceStridedSlicereshape_32/Shape:output:0'reshape_32/strided_slice/stack:output:0)reshape_32/strided_slice/stack_1:output:0)reshape_32/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
reshape_32/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :ш\
reshape_32/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_32/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :р
reshape_32/Reshape/shapePack!reshape_32/strided_slice:output:0#reshape_32/Reshape/shape/1:output:0#reshape_32/Reshape/shape/2:output:0#reshape_32/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:д
reshape_32/ReshapeReshape'tf.compat.v1.transpose_24/transpose:y:0!reshape_32/Reshape/shape:output:0*
T0*0
_output_shapes
:         шС
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*'
_output_shapes
:
╚*
dtype0─
conv2d_20/Conv2DConv2Dreshape_32/Reshape:output:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ш╚*
paddingSAME*
strides
З
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0Э
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ш╚l
conv2d_20/EluEluconv2d_20/BiasAdd:output:0*
T0*1
_output_shapes
:         ш╚─
max_pooling2d_8/MaxPoolMaxPoolconv2d_20/Elu:activations:0*0
_output_shapes
:         ш*
data_formatNCHW*
ksize

*
paddingVALID*
strides

`
reshape_33/ShapeShape max_pooling2d_8/MaxPool:output:0*
T0*
_output_shapes
:h
reshape_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
reshape_33/strided_sliceStridedSlicereshape_33/Shape:output:0'reshape_33/strided_slice/stack:output:0)reshape_33/strided_slice/stack_1:output:0)reshape_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_33/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :d]
reshape_33/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :└╗
reshape_33/Reshape/shapePack!reshape_33/strided_slice:output:0#reshape_33/Reshape/shape/1:output:0#reshape_33/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:Щ
reshape_33/ReshapeReshape max_pooling2d_8/MaxPool:output:0!reshape_33/Reshape/shape:output:0*
T0*,
_output_shapes
:         d└V
gru_5/ShapeShapereshape_33/Reshape:output:0*
T0*
_output_shapes
:c
gru_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:я
gru_5/strided_sliceStridedSlicegru_5/Shape:output:0"gru_5/strided_slice/stack:output:0$gru_5/strided_slice/stack_1:output:0$gru_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
gru_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :PЕ
gru_5/zeros/packedPackgru_5/strided_slice:output:0gru_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
gru_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
gru_5/zerosFillgru_5/zeros/packed:output:0gru_5/zeros/Const:output:0*
T0*'
_output_shapes
:         P`
gru_5/ones_like/ShapeShapereshape_33/Reshape:output:0*
T0*
_output_shapes
:Z
gru_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
gru_5/ones_likeFillgru_5/ones_like/Shape:output:0gru_5/ones_like/Const:output:0*
T0*,
_output_shapes
:         d└~
	gru_5/mulMulreshape_33/Reshape:output:0gru_5/ones_like:output:0*
T0*,
_output_shapes
:         d└~
gru_5/Read/ReadVariableOpReadVariableOp"gru_5_read_readvariableop_resource* 
_output_shapes
:
└Ё*
dtype0h
gru_5/IdentityIdentity!gru_5/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└ЁБ
gru_5/Read_1/ReadVariableOpReadVariableOp$gru_5_read_1_readvariableop_resource*
_output_shapes
:	PЁ*
dtype0k
gru_5/Identity_1Identity#gru_5/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	PЁБ
gru_5/Read_2/ReadVariableOpReadVariableOp$gru_5_read_2_readvariableop_resource*
_output_shapes
:	Ё*
dtype0k
gru_5/Identity_2Identity#gru_5/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё▓
gru_5/PartitionedCallPartitionedCallgru_5/mul:z:0gru_5/zeros:output:0gru_5/Identity:output:0gru_5/Identity_1:output:0gru_5/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:         P:         P:         P: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_gru_386565И
dense_116/MatMul/ReadVariableOpReadVariableOp(dense_116_matmul_readvariableop_resource*
_output_shapes

:P2*
dtype0Х
dense_116/MatMulMatMulgru_5/PartitionedCall:output:0'dense_116/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2Ж
 dense_116/BiasAdd/ReadVariableOpReadVariableOp)dense_116_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Ф
dense_116/BiasAddBiasAdddense_116/MatMul:product:0(dense_116/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2И
dense_114/MatMul/ReadVariableOpReadVariableOp(dense_114_matmul_readvariableop_resource*
_output_shapes

:P2*
dtype0Х
dense_114/MatMulMatMulgru_5/PartitionedCall:output:0'dense_114/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2Ж
 dense_114/BiasAdd/ReadVariableOpReadVariableOp)dense_114_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Ф
dense_114/BiasAddBiasAdddense_114/MatMul:product:0(dense_114/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2И
dense_117/MatMul/ReadVariableOpReadVariableOp(dense_117_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0С
dense_117/MatMulMatMuldense_116/BiasAdd:output:0'dense_117/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
Ж
 dense_117/BiasAdd/ReadVariableOpReadVariableOp)dense_117_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0Ф
dense_117/BiasAddBiasAdddense_117/MatMul:product:0(dense_117/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
И
dense_115/MatMul/ReadVariableOpReadVariableOp(dense_115_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0С
dense_115/MatMulMatMuldense_114/BiasAdd:output:0'dense_115/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
Ж
 dense_115/BiasAdd/ReadVariableOpReadVariableOp)dense_115_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0Ф
dense_115/BiasAddBiasAdddense_115/MatMul:product:0(dense_115/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
В
degree/MatMul/ReadVariableOpReadVariableOp%degree_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Л
degree/MatMulMatMuldense_117/BiasAdd:output:0$degree/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         А
degree/BiasAdd/ReadVariableOpReadVariableOp&degree_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
degree/BiasAddBiasAdddegree/MatMul:product:0%degree/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ^
degree/TanhTanhdegree/BiasAdd:output:0*
T0*'
_output_shapes
:         Ж
distance/MatMul/ReadVariableOpReadVariableOp'distance_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0П
distance/MatMulMatMuldense_115/BiasAdd:output:0&distance/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
distance/BiasAdd/ReadVariableOpReadVariableOp(distance_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
distance/BiasAddBiasAdddistance/MatMul:product:0'distance/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
distance/SigmoidSigmoiddistance/BiasAdd:output:0*
T0*'
_output_shapes
:         д
2conv2d_20/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*'
_output_shapes
:
╚*
dtype0Ы
#conv2d_20/kernel/Regularizer/SquareSquare:conv2d_20/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:
╚{
"conv2d_20/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ю
 conv2d_20/kernel/Regularizer/SumSum'conv2d_20/kernel/Regularizer/Square:y:0+conv2d_20/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_20/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 conv2d_20/kernel/Regularizer/mulMul+conv2d_20/kernel/Regularizer/mul/x:output:0)conv2d_20/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ю
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp"gru_5_read_readvariableop_resource* 
_output_shapes
:
└Ё*
dtype0в
*gru_5/gru_cell_5/kernel/Regularizer/SquareSquareAgru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└Ёz
)gru_5/gru_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       │
'gru_5/gru_cell_5/kernel/Regularizer/SumSum.gru_5/gru_cell_5/kernel/Regularizer/Square:y:02gru_5/gru_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)gru_5/gru_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8╡
'gru_5/gru_cell_5/kernel/Regularizer/mulMul2gru_5/gru_cell_5/kernel/Regularizer/mul/x:output:00gru_5/gru_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ы
2dense_114/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_114_matmul_readvariableop_resource*
_output_shapes

:P2*
dtype0Т
#dense_114/kernel/Regularizer/SquareSquare:dense_114/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2s
"dense_114/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_114/kernel/Regularizer/SumSum'dense_114/kernel/Regularizer/Square:y:0+dense_114/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_114/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_114/kernel/Regularizer/mulMul+dense_114/kernel/Regularizer/mul/x:output:0)dense_114/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ы
2dense_116/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_116_matmul_readvariableop_resource*
_output_shapes

:P2*
dtype0Т
#dense_116/kernel/Regularizer/SquareSquare:dense_116/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2s
"dense_116/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_116/kernel/Regularizer/SumSum'dense_116/kernel/Regularizer/Square:y:0+dense_116/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_116/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_116/kernel/Regularizer/mulMul+dense_116/kernel/Regularizer/mul/x:output:0)dense_116/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ы
2dense_115/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_115_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0Т
#dense_115/kernel/Regularizer/SquareSquare:dense_115/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
s
"dense_115/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_115/kernel/Regularizer/SumSum'dense_115/kernel/Regularizer/Square:y:0+dense_115/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_115/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_115/kernel/Regularizer/mulMul+dense_115/kernel/Regularizer/mul/x:output:0)dense_115/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ы
2dense_117/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_117_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0Т
#dense_117/kernel/Regularizer/SquareSquare:dense_117/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
s
"dense_117/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_117/kernel/Regularizer/SumSum'dense_117/kernel/Regularizer/Square:y:0+dense_117/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_117/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_117/kernel/Regularizer/mulMul+dense_117/kernel/Regularizer/mul/x:output:0)dense_117/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: c
IdentityIdentitydistance/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         `

Identity_1Identitydegree/Tanh:y:0^NoOp*
T0*'
_output_shapes
:         ╛
NoOpNoOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp3^conv2d_20/kernel/Regularizer/Square/ReadVariableOp^degree/BiasAdd/ReadVariableOp^degree/MatMul/ReadVariableOp!^dense_114/BiasAdd/ReadVariableOp ^dense_114/MatMul/ReadVariableOp3^dense_114/kernel/Regularizer/Square/ReadVariableOp!^dense_115/BiasAdd/ReadVariableOp ^dense_115/MatMul/ReadVariableOp3^dense_115/kernel/Regularizer/Square/ReadVariableOp!^dense_116/BiasAdd/ReadVariableOp ^dense_116/MatMul/ReadVariableOp3^dense_116/kernel/Regularizer/Square/ReadVariableOp!^dense_117/BiasAdd/ReadVariableOp ^dense_117/MatMul/ReadVariableOp3^dense_117/kernel/Regularizer/Square/ReadVariableOp ^distance/BiasAdd/ReadVariableOp^distance/MatMul/ReadVariableOp^gru_5/Read/ReadVariableOp^gru_5/Read_1/ReadVariableOp^gru_5/Read_2/ReadVariableOp:^gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::         ш: : : : : : : : : : : : : : : : : 2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2h
2conv2d_20/kernel/Regularizer/Square/ReadVariableOp2conv2d_20/kernel/Regularizer/Square/ReadVariableOp2>
degree/BiasAdd/ReadVariableOpdegree/BiasAdd/ReadVariableOp2<
degree/MatMul/ReadVariableOpdegree/MatMul/ReadVariableOp2D
 dense_114/BiasAdd/ReadVariableOp dense_114/BiasAdd/ReadVariableOp2B
dense_114/MatMul/ReadVariableOpdense_114/MatMul/ReadVariableOp2h
2dense_114/kernel/Regularizer/Square/ReadVariableOp2dense_114/kernel/Regularizer/Square/ReadVariableOp2D
 dense_115/BiasAdd/ReadVariableOp dense_115/BiasAdd/ReadVariableOp2B
dense_115/MatMul/ReadVariableOpdense_115/MatMul/ReadVariableOp2h
2dense_115/kernel/Regularizer/Square/ReadVariableOp2dense_115/kernel/Regularizer/Square/ReadVariableOp2D
 dense_116/BiasAdd/ReadVariableOp dense_116/BiasAdd/ReadVariableOp2B
dense_116/MatMul/ReadVariableOpdense_116/MatMul/ReadVariableOp2h
2dense_116/kernel/Regularizer/Square/ReadVariableOp2dense_116/kernel/Regularizer/Square/ReadVariableOp2D
 dense_117/BiasAdd/ReadVariableOp dense_117/BiasAdd/ReadVariableOp2B
dense_117/MatMul/ReadVariableOpdense_117/MatMul/ReadVariableOp2h
2dense_117/kernel/Regularizer/Square/ReadVariableOp2dense_117/kernel/Regularizer/Square/ReadVariableOp2B
distance/BiasAdd/ReadVariableOpdistance/BiasAdd/ReadVariableOp2@
distance/MatMul/ReadVariableOpdistance/MatMul/ReadVariableOp26
gru_5/Read/ReadVariableOpgru_5/Read/ReadVariableOp2:
gru_5/Read_1/ReadVariableOpgru_5/Read_1/ReadVariableOp2:
gru_5/Read_2/ReadVariableOpgru_5/Read_2/ReadVariableOp2v
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:         ш
 
_user_specified_nameinputs
Хi
Т

D__inference_model_27_layer_call_and_return_conditional_losses_385912

inputs+
conv2d_20_385830:
╚
conv2d_20_385832:	╚ 
gru_5_385837:
└Ё
gru_5_385839:	PЁ
gru_5_385841:	Ё"
dense_116_385844:P2
dense_116_385846:2"
dense_114_385849:P2
dense_114_385851:2"
dense_117_385854:2

dense_117_385856:
"
dense_115_385859:2

dense_115_385861:

degree_385864:

degree_385866:!
distance_385869:

distance_385871:
identity

identity_1Ив!conv2d_20/StatefulPartitionedCallв2conv2d_20/kernel/Regularizer/Square/ReadVariableOpвdegree/StatefulPartitionedCallв!dense_114/StatefulPartitionedCallв2dense_114/kernel/Regularizer/Square/ReadVariableOpв!dense_115/StatefulPartitionedCallв2dense_115/kernel/Regularizer/Square/ReadVariableOpв!dense_116/StatefulPartitionedCallв2dense_116/kernel/Regularizer/Square/ReadVariableOpв!dense_117/StatefulPartitionedCallв2dense_117/kernel/Regularizer/Square/ReadVariableOpв distance/StatefulPartitionedCallвgru_5/StatefulPartitionedCallв9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp}
(tf.compat.v1.transpose_24/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          в
#tf.compat.v1.transpose_24/transpose	Transposeinputs1tf.compat.v1.transpose_24/transpose/perm:output:0*
T0*,
_output_shapes
:         шщ
reshape_32/PartitionedCallPartitionedCall'tf.compat.v1.transpose_24/transpose:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ш* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_reshape_32_layer_call_and_return_conditional_losses_384630Ю
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall#reshape_32/PartitionedCall:output:0conv2d_20_385830conv2d_20_385832*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ш╚*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_384649Ў
max_pooling2d_8/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ш* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_383780ц
reshape_33/PartitionedCallPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         d└* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_reshape_33_layer_call_and_return_conditional_losses_384669Ф
gru_5/StatefulPartitionedCallStatefulPartitionedCall#reshape_33/PartitionedCall:output:0gru_5_385837gru_5_385839gru_5_385841*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_gru_5_layer_call_and_return_conditional_losses_385750Ч
!dense_116/StatefulPartitionedCallStatefulPartitionedCall&gru_5/StatefulPartitionedCall:output:0dense_116_385844dense_116_385846*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_116_layer_call_and_return_conditional_losses_385082Ч
!dense_114/StatefulPartitionedCallStatefulPartitionedCall&gru_5/StatefulPartitionedCall:output:0dense_114_385849dense_114_385851*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_114_layer_call_and_return_conditional_losses_385104Ы
!dense_117/StatefulPartitionedCallStatefulPartitionedCall*dense_116/StatefulPartitionedCall:output:0dense_117_385854dense_117_385856*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_117_layer_call_and_return_conditional_losses_385126Ы
!dense_115/StatefulPartitionedCallStatefulPartitionedCall*dense_114/StatefulPartitionedCall:output:0dense_115_385859dense_115_385861*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_115_layer_call_and_return_conditional_losses_385148П
degree/StatefulPartitionedCallStatefulPartitionedCall*dense_117/StatefulPartitionedCall:output:0degree_385864degree_385866*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_degree_layer_call_and_return_conditional_losses_385165Ч
 distance/StatefulPartitionedCallStatefulPartitionedCall*dense_115/StatefulPartitionedCall:output:0distance_385869distance_385871*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_distance_layer_call_and_return_conditional_losses_385182М
2conv2d_20/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_20_385830*'
_output_shapes
:
╚*
dtype0Ы
#conv2d_20/kernel/Regularizer/SquareSquare:conv2d_20/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:
╚{
"conv2d_20/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ю
 conv2d_20/kernel/Regularizer/SumSum'conv2d_20/kernel/Regularizer/Square:y:0+conv2d_20/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_20/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 conv2d_20/kernel/Regularizer/mulMul+conv2d_20/kernel/Regularizer/mul/x:output:0)conv2d_20/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: И
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpgru_5_385837* 
_output_shapes
:
└Ё*
dtype0в
*gru_5/gru_cell_5/kernel/Regularizer/SquareSquareAgru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└Ёz
)gru_5/gru_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       │
'gru_5/gru_cell_5/kernel/Regularizer/SumSum.gru_5/gru_cell_5/kernel/Regularizer/Square:y:02gru_5/gru_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)gru_5/gru_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8╡
'gru_5/gru_cell_5/kernel/Regularizer/mulMul2gru_5/gru_cell_5/kernel/Regularizer/mul/x:output:00gru_5/gru_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Г
2dense_114/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_114_385849*
_output_shapes

:P2*
dtype0Т
#dense_114/kernel/Regularizer/SquareSquare:dense_114/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2s
"dense_114/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_114/kernel/Regularizer/SumSum'dense_114/kernel/Regularizer/Square:y:0+dense_114/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_114/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_114/kernel/Regularizer/mulMul+dense_114/kernel/Regularizer/mul/x:output:0)dense_114/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Г
2dense_116/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_116_385844*
_output_shapes

:P2*
dtype0Т
#dense_116/kernel/Regularizer/SquareSquare:dense_116/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2s
"dense_116/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_116/kernel/Regularizer/SumSum'dense_116/kernel/Regularizer/Square:y:0+dense_116/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_116/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_116/kernel/Regularizer/mulMul+dense_116/kernel/Regularizer/mul/x:output:0)dense_116/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Г
2dense_115/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_115_385859*
_output_shapes

:2
*
dtype0Т
#dense_115/kernel/Regularizer/SquareSquare:dense_115/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
s
"dense_115/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_115/kernel/Regularizer/SumSum'dense_115/kernel/Regularizer/Square:y:0+dense_115/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_115/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_115/kernel/Regularizer/mulMul+dense_115/kernel/Regularizer/mul/x:output:0)dense_115/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Г
2dense_117/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_117_385854*
_output_shapes

:2
*
dtype0Т
#dense_117/kernel/Regularizer/SquareSquare:dense_117/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
s
"dense_117/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_117/kernel/Regularizer/SumSum'dense_117/kernel/Regularizer/Square:y:0+dense_117/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_117/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_117/kernel/Regularizer/mulMul+dense_117/kernel/Regularizer/mul/x:output:0)dense_117/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)distance/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         x

Identity_1Identity'degree/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         г
NoOpNoOp"^conv2d_20/StatefulPartitionedCall3^conv2d_20/kernel/Regularizer/Square/ReadVariableOp^degree/StatefulPartitionedCall"^dense_114/StatefulPartitionedCall3^dense_114/kernel/Regularizer/Square/ReadVariableOp"^dense_115/StatefulPartitionedCall3^dense_115/kernel/Regularizer/Square/ReadVariableOp"^dense_116/StatefulPartitionedCall3^dense_116/kernel/Regularizer/Square/ReadVariableOp"^dense_117/StatefulPartitionedCall3^dense_117/kernel/Regularizer/Square/ReadVariableOp!^distance/StatefulPartitionedCall^gru_5/StatefulPartitionedCall:^gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::         ш: : : : : : : : : : : : : : : : : 2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2h
2conv2d_20/kernel/Regularizer/Square/ReadVariableOp2conv2d_20/kernel/Regularizer/Square/ReadVariableOp2@
degree/StatefulPartitionedCalldegree/StatefulPartitionedCall2F
!dense_114/StatefulPartitionedCall!dense_114/StatefulPartitionedCall2h
2dense_114/kernel/Regularizer/Square/ReadVariableOp2dense_114/kernel/Regularizer/Square/ReadVariableOp2F
!dense_115/StatefulPartitionedCall!dense_115/StatefulPartitionedCall2h
2dense_115/kernel/Regularizer/Square/ReadVariableOp2dense_115/kernel/Regularizer/Square/ReadVariableOp2F
!dense_116/StatefulPartitionedCall!dense_116/StatefulPartitionedCall2h
2dense_116/kernel/Regularizer/Square/ReadVariableOp2dense_116/kernel/Regularizer/Square/ReadVariableOp2F
!dense_117/StatefulPartitionedCall!dense_117/StatefulPartitionedCall2h
2dense_117/kernel/Regularizer/Square/ReadVariableOp2dense_117/kernel/Regularizer/Square/ReadVariableOp2D
 distance/StatefulPartitionedCall distance/StatefulPartitionedCall2>
gru_5/StatefulPartitionedCallgru_5/StatefulPartitionedCall2v
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:         ш
 
_user_specified_nameinputs
▐4
п
(__inference_gpu_gru_with_fallback_385605

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d         └P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         PQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	└P:	└P:	└P*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:рS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Т
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:P[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:P[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:P\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:P\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:P\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:PM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╦
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:р╤U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:d         P:         P: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         Pc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:         PZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:         d└:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_ea7e6912-9ba5-4524-b9cf-2796d62a364c*
api_preferred_deviceGPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
╔
╡
E__inference_conv2d_20_layer_call_and_return_conditional_losses_387410

inputs9
conv2d_readvariableop_resource:
╚.
biasadd_readvariableop_resource:	╚
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв2conv2d_20/kernel/Regularizer/Square/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:
╚*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ш╚*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ш╚X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:         ш╚Ъ
2conv2d_20/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:
╚*
dtype0Ы
#conv2d_20/kernel/Regularizer/SquareSquare:conv2d_20/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:
╚{
"conv2d_20/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ю
 conv2d_20/kernel/Regularizer/SumSum'conv2d_20/kernel/Regularizer/Square:y:0+conv2d_20/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_20/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 conv2d_20/kernel/Regularizer/mulMul+conv2d_20/kernel/Regularizer/mul/x:output:0)conv2d_20/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:         ш╚м
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_20/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ш: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_20/kernel/Regularizer/Square/ReadVariableOp2conv2d_20/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:         ш
 
_user_specified_nameinputs
Х
║
&__inference_gru_5_layer_call_fn_387460
inputs_0
unknown:
└Ё
	unknown_0:	PЁ
	unknown_1:	Ё
identityИвStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_gru_5_layer_call_and_return_conditional_losses_384598o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  └: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:                  └
"
_user_specified_name
inputs/0
Р	
▐
while_cond_388770
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_388770___redundant_placeholder04
0while_while_cond_388770___redundant_placeholder14
0while_while_cond_388770___redundant_placeholder24
0while_while_cond_388770___redundant_placeholder34
0while_while_cond_388770___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :         P: :::::: 
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
: :-)
'
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
▀У
╪

:__inference___backward_gpu_gru_with_fallback_387726_387862
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         Pd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         P`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         PO
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: А
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         Pq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         P┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         P}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:в
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                  P*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:Ф
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*V
_output_shapesD
B:                  └:         P: :р╤*
rnn_modegruЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┌
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  └u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         P\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ашi
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ашi
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:Ашh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А2h
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А2h
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А2g
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Ph
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Ph
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:PШ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ч
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:Ашы
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:Ашы
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:Ашъ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А2ъ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А2ъ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А2щ
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:Pь
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:Pь
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:Po
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  д
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  ж
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  ж
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:PPo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:PPo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:PPh
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:Ph
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:Ph
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pг
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pд
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pд
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:PЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╕
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╕
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╕
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPО
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:рЖ
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
└ЁЛ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	PЁm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Ё   в
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Ё|
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:                  └t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         Pg

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
└Ёh

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	PЁi

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	Ё"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*л
_input_shapesЩ
Ц:         P:         P:         P: :         P:         P:                  P: ::                  └:         P: :р╤::         P: ::::::: : : *<
api_implements*(gru_cd92f801-1809-43fe-9083-5bd9c408b021*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_387861*
go_backwards( *

time_major( :- )
'
_output_shapes
:         P:1-
+
_output_shapes
:         P:-)
'
_output_shapes
:         P:

_output_shapes
: :-)
'
_output_shapes
:         P:1-
+
_output_shapes
:         P::6
4
_output_shapes"
 :                  P:

_output_shapes
: :

_output_shapes
::;	7
5
_output_shapes#
!:                  └:1
-
+
_output_shapes
:         P:

_output_shapes
: :"

_output_shapes

:р╤: 

_output_shapes
::-)
'
_output_shapes
:         P:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
э

b
F__inference_reshape_33_layer_call_and_return_conditional_losses_387438

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
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
value	B :dR
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :└П
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:         d└]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:         d└"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ш:X T
0
_output_shapes
:         ш
 
_user_specified_nameinputs
э

b
F__inference_reshape_33_layer_call_and_return_conditional_losses_384669

inputs
identity;
ShapeShapeinputs*
T0*
_output_shapes
:]
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
valueB:╤
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
value	B :dR
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :└П
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:i
ReshapeReshapeinputsReshape/shape:output:0*
T0*,
_output_shapes
:         d└]
IdentityIdentityReshape:output:0*
T0*,
_output_shapes
:         d└"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ш:X T
0
_output_shapes
:         ш
 
_user_specified_nameinputs
П

є
B__inference_degree_layer_call_and_return_conditional_losses_385165

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:         W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
я"
№
A__inference_gru_5_layer_call_and_return_conditional_losses_388670

inputs0
read_readvariableop_resource:
└Ё1
read_1_readvariableop_resource:	PЁ1
read_2_readvariableop_resource:	Ё

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpв9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp;
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ps
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         PE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*,
_output_shapes
:         d└]
mulMulinputsones_like:output:0*
T0*,
_output_shapes
:         d└r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
└Ё*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└Ёu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	PЁ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	PЁu
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Ё*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	ЁО
PartitionedCallPartitionedCallmul:z:0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:         P:         P:         P: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_gru_388449Ш
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
└Ё*
dtype0в
*gru_5/gru_cell_5/kernel/Regularizer/SquareSquareAgru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└Ёz
)gru_5/gru_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       │
'gru_5/gru_cell_5/kernel/Regularizer/SumSum.gru_5/gru_cell_5/kernel/Regularizer/Square:y:02gru_5/gru_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)gru_5/gru_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8╡
'gru_5/gru_cell_5/kernel/Regularizer/mulMul2gru_5/gru_cell_5/kernel/Regularizer/mul/x:output:00gru_5/gru_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         P╚
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp:^gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         d└: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2v
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs
в>
г
__inference_standard_gru_388449

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:Ё:Ё*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d         └B
ShapeShapetranspose:y:0*
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
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
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:ъ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         └*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Ёi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         ЁQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :г
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Ёm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         ЁS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :й
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         PM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         Pb
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         PQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         P]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         PY
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         PI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         PS
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         PJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         PQ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         PV
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         Pn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╢
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*X
_output_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_388359*
condR
while_cond_388358*W
output_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         P*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         P]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         PX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:         d└:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_92f1cccd-1048-4a98-9c03-9659428f4778*
api_preferred_deviceCPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
ы-
т
while_body_384287
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstackИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @  з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         └*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Ё|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         ЁW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╡
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_splitГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ЁВ
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         ЁY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╗
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         PY
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         Pt
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         P]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         Po
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         Pk
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         PU

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         Pl
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         PP
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         Pc
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         Ph
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         Pr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         P"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё: 
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
: :-)
'
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
└Ё:!

_output_shapes	
:Ё:%	!

_output_shapes
:	PЁ:!


_output_shapes	
:Ё
н>
╣
&__forward_gpu_gru_with_fallback_386777

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         PQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	└P:	└P:	└P*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:рS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Т
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:P[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:P[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:P\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:P\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:P\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:PM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : п
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:d         P:         P: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         Pc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:         PZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:         d└:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_2ba03b4a-a74b-4a0a-8b84-d75adc898f08*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_386642_386778*
go_backwards( *

time_major( :T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
╔
│
__inference_loss_fn_3_389272M
;dense_115_kernel_regularizer_square_readvariableop_resource:2

identityИв2dense_115/kernel/Regularizer/Square/ReadVariableOpо
2dense_115/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_115_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:2
*
dtype0Т
#dense_115/kernel/Regularizer/SquareSquare:dense_115/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
s
"dense_115/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_115/kernel/Regularizer/SumSum'dense_115/kernel/Regularizer/Square:y:0+dense_115/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_115/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_115/kernel/Regularizer/mulMul+dense_115/kernel/Regularizer/mul/x:output:0)dense_115/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentity$dense_115/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^dense_115/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2dense_115/kernel/Regularizer/Square/ReadVariableOp2dense_115/kernel/Regularizer/Square/ReadVariableOp
╦9
№
A__inference_gru_5_layer_call_and_return_conditional_losses_389082

inputs0
read_readvariableop_resource:
└Ё1
read_1_readvariableop_resource:	PЁ1
read_2_readvariableop_resource:	Ё

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpв9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp;
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ps
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         PE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*,
_output_shapes
:         d└R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?u
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*,
_output_shapes
:         d└O
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Э
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:         d└*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=л
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         d└t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:         d└n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:         d└T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?y
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*,
_output_shapes
:         d└Q
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:о
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*,
_output_shapes
:         d└*
dtype0*

seed*
seed2]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=▒
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         d└x
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:         d└t
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*,
_output_shapes
:         d└T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?y
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*,
_output_shapes
:         d└Q
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:о
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*,
_output_shapes
:         d└*
dtype0*

seed*
seed2]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=▒
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         d└x
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:         d└t
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*,
_output_shapes
:         d└\
mulMulinputsdropout/Mul_1:z:0*
T0*,
_output_shapes
:         d└r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
└Ё*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└Ёu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	PЁ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	PЁu
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Ё*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	ЁО
PartitionedCallPartitionedCallmul:z:0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:         P:         P:         P: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_gru_388861Ш
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
└Ё*
dtype0в
*gru_5/gru_cell_5/kernel/Regularizer/SquareSquareAgru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└Ёz
)gru_5/gru_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       │
'gru_5/gru_cell_5/kernel/Regularizer/SumSum.gru_5/gru_cell_5/kernel/Regularizer/Square:y:02gru_5/gru_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)gru_5/gru_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8╡
'gru_5/gru_cell_5/kernel/Regularizer/mulMul2gru_5/gru_cell_5/kernel/Regularizer/mul/x:output:00gru_5/gru_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         P╚
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp:^gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         d└: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2v
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs
в>
г
__inference_standard_gru_383517

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:Ё:Ё*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d         └B
ShapeShapetranspose:y:0*
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
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
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:ъ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         └*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Ёi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         ЁQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :г
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Ёm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         ЁS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :й
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         PM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         Pb
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         PQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         P]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         PY
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         PI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         PS
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         PJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         PQ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         PV
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         Pn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╢
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*X
_output_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_383427*
condR
while_cond_383426*W
output_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         P*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         P]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         PX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:         d└:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_1ccaf889-86d4-4158-9f30-3e7d865ce12d*
api_preferred_deviceCPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
ы-
т
while_body_387559
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstackИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @  з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         └*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Ё|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         ЁW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╡
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_splitГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ЁВ
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         ЁY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╗
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         PY
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         Pt
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         P]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         Po
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         Pk
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         PU

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         Pl
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         PP
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         Pc
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         Ph
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         Pr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         P"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё: 
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
: :-)
'
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
└Ё:!

_output_shapes	
:Ё:%	!

_output_shapes
:	PЁ:!


_output_shapes	
:Ё
Хi
Т

D__inference_model_27_layer_call_and_return_conditional_losses_385226

inputs+
conv2d_20_384650:
╚
conv2d_20_384652:	╚ 
gru_5_385059:
└Ё
gru_5_385061:	PЁ
gru_5_385063:	Ё"
dense_116_385083:P2
dense_116_385085:2"
dense_114_385105:P2
dense_114_385107:2"
dense_117_385127:2

dense_117_385129:
"
dense_115_385149:2

dense_115_385151:

degree_385166:

degree_385168:!
distance_385183:

distance_385185:
identity

identity_1Ив!conv2d_20/StatefulPartitionedCallв2conv2d_20/kernel/Regularizer/Square/ReadVariableOpвdegree/StatefulPartitionedCallв!dense_114/StatefulPartitionedCallв2dense_114/kernel/Regularizer/Square/ReadVariableOpв!dense_115/StatefulPartitionedCallв2dense_115/kernel/Regularizer/Square/ReadVariableOpв!dense_116/StatefulPartitionedCallв2dense_116/kernel/Regularizer/Square/ReadVariableOpв!dense_117/StatefulPartitionedCallв2dense_117/kernel/Regularizer/Square/ReadVariableOpв distance/StatefulPartitionedCallвgru_5/StatefulPartitionedCallв9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp}
(tf.compat.v1.transpose_24/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          в
#tf.compat.v1.transpose_24/transpose	Transposeinputs1tf.compat.v1.transpose_24/transpose/perm:output:0*
T0*,
_output_shapes
:         шщ
reshape_32/PartitionedCallPartitionedCall'tf.compat.v1.transpose_24/transpose:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ш* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_reshape_32_layer_call_and_return_conditional_losses_384630Ю
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall#reshape_32/PartitionedCall:output:0conv2d_20_384650conv2d_20_384652*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ш╚*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_384649Ў
max_pooling2d_8/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ш* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_383780ц
reshape_33/PartitionedCallPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         d└* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_reshape_33_layer_call_and_return_conditional_losses_384669Ф
gru_5/StatefulPartitionedCallStatefulPartitionedCall#reshape_33/PartitionedCall:output:0gru_5_385059gru_5_385061gru_5_385063*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_gru_5_layer_call_and_return_conditional_losses_385058Ч
!dense_116/StatefulPartitionedCallStatefulPartitionedCall&gru_5/StatefulPartitionedCall:output:0dense_116_385083dense_116_385085*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_116_layer_call_and_return_conditional_losses_385082Ч
!dense_114/StatefulPartitionedCallStatefulPartitionedCall&gru_5/StatefulPartitionedCall:output:0dense_114_385105dense_114_385107*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_114_layer_call_and_return_conditional_losses_385104Ы
!dense_117/StatefulPartitionedCallStatefulPartitionedCall*dense_116/StatefulPartitionedCall:output:0dense_117_385127dense_117_385129*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_117_layer_call_and_return_conditional_losses_385126Ы
!dense_115/StatefulPartitionedCallStatefulPartitionedCall*dense_114/StatefulPartitionedCall:output:0dense_115_385149dense_115_385151*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_115_layer_call_and_return_conditional_losses_385148П
degree/StatefulPartitionedCallStatefulPartitionedCall*dense_117/StatefulPartitionedCall:output:0degree_385166degree_385168*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_degree_layer_call_and_return_conditional_losses_385165Ч
 distance/StatefulPartitionedCallStatefulPartitionedCall*dense_115/StatefulPartitionedCall:output:0distance_385183distance_385185*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_distance_layer_call_and_return_conditional_losses_385182М
2conv2d_20/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_20_384650*'
_output_shapes
:
╚*
dtype0Ы
#conv2d_20/kernel/Regularizer/SquareSquare:conv2d_20/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:
╚{
"conv2d_20/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ю
 conv2d_20/kernel/Regularizer/SumSum'conv2d_20/kernel/Regularizer/Square:y:0+conv2d_20/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_20/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 conv2d_20/kernel/Regularizer/mulMul+conv2d_20/kernel/Regularizer/mul/x:output:0)conv2d_20/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: И
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpgru_5_385059* 
_output_shapes
:
└Ё*
dtype0в
*gru_5/gru_cell_5/kernel/Regularizer/SquareSquareAgru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└Ёz
)gru_5/gru_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       │
'gru_5/gru_cell_5/kernel/Regularizer/SumSum.gru_5/gru_cell_5/kernel/Regularizer/Square:y:02gru_5/gru_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)gru_5/gru_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8╡
'gru_5/gru_cell_5/kernel/Regularizer/mulMul2gru_5/gru_cell_5/kernel/Regularizer/mul/x:output:00gru_5/gru_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Г
2dense_114/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_114_385105*
_output_shapes

:P2*
dtype0Т
#dense_114/kernel/Regularizer/SquareSquare:dense_114/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2s
"dense_114/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_114/kernel/Regularizer/SumSum'dense_114/kernel/Regularizer/Square:y:0+dense_114/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_114/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_114/kernel/Regularizer/mulMul+dense_114/kernel/Regularizer/mul/x:output:0)dense_114/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Г
2dense_116/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_116_385083*
_output_shapes

:P2*
dtype0Т
#dense_116/kernel/Regularizer/SquareSquare:dense_116/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2s
"dense_116/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_116/kernel/Regularizer/SumSum'dense_116/kernel/Regularizer/Square:y:0+dense_116/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_116/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_116/kernel/Regularizer/mulMul+dense_116/kernel/Regularizer/mul/x:output:0)dense_116/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Г
2dense_115/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_115_385149*
_output_shapes

:2
*
dtype0Т
#dense_115/kernel/Regularizer/SquareSquare:dense_115/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
s
"dense_115/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_115/kernel/Regularizer/SumSum'dense_115/kernel/Regularizer/Square:y:0+dense_115/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_115/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_115/kernel/Regularizer/mulMul+dense_115/kernel/Regularizer/mul/x:output:0)dense_115/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Г
2dense_117/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_117_385127*
_output_shapes

:2
*
dtype0Т
#dense_117/kernel/Regularizer/SquareSquare:dense_117/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
s
"dense_117/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_117/kernel/Regularizer/SumSum'dense_117/kernel/Regularizer/Square:y:0+dense_117/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_117/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_117/kernel/Regularizer/mulMul+dense_117/kernel/Regularizer/mul/x:output:0)dense_117/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)distance/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         x

Identity_1Identity'degree/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         г
NoOpNoOp"^conv2d_20/StatefulPartitionedCall3^conv2d_20/kernel/Regularizer/Square/ReadVariableOp^degree/StatefulPartitionedCall"^dense_114/StatefulPartitionedCall3^dense_114/kernel/Regularizer/Square/ReadVariableOp"^dense_115/StatefulPartitionedCall3^dense_115/kernel/Regularizer/Square/ReadVariableOp"^dense_116/StatefulPartitionedCall3^dense_116/kernel/Regularizer/Square/ReadVariableOp"^dense_117/StatefulPartitionedCall3^dense_117/kernel/Regularizer/Square/ReadVariableOp!^distance/StatefulPartitionedCall^gru_5/StatefulPartitionedCall:^gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::         ш: : : : : : : : : : : : : : : : : 2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2h
2conv2d_20/kernel/Regularizer/Square/ReadVariableOp2conv2d_20/kernel/Regularizer/Square/ReadVariableOp2@
degree/StatefulPartitionedCalldegree/StatefulPartitionedCall2F
!dense_114/StatefulPartitionedCall!dense_114/StatefulPartitionedCall2h
2dense_114/kernel/Regularizer/Square/ReadVariableOp2dense_114/kernel/Regularizer/Square/ReadVariableOp2F
!dense_115/StatefulPartitionedCall!dense_115/StatefulPartitionedCall2h
2dense_115/kernel/Regularizer/Square/ReadVariableOp2dense_115/kernel/Regularizer/Square/ReadVariableOp2F
!dense_116/StatefulPartitionedCall!dense_116/StatefulPartitionedCall2h
2dense_116/kernel/Regularizer/Square/ReadVariableOp2dense_116/kernel/Regularizer/Square/ReadVariableOp2F
!dense_117/StatefulPartitionedCall!dense_117/StatefulPartitionedCall2h
2dense_117/kernel/Regularizer/Square/ReadVariableOp2dense_117/kernel/Regularizer/Square/ReadVariableOp2D
 distance/StatefulPartitionedCall distance/StatefulPartitionedCall2>
gru_5/StatefulPartitionedCallgru_5/StatefulPartitionedCall2v
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:         ш
 
_user_specified_nameinputs
ш
л
E__inference_dense_116_layer_call_and_return_conditional_losses_389138

inputs0
matmul_readvariableop_resource:P2-
biasadd_readvariableop_resource:2
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpв2dense_116/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2С
2dense_116/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P2*
dtype0Т
#dense_116/kernel/Regularizer/SquareSquare:dense_116/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2s
"dense_116/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_116/kernel/Regularizer/SumSum'dense_116/kernel/Regularizer/Square:y:0+dense_116/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_116/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_116/kernel/Regularizer/mulMul+dense_116/kernel/Regularizer/mul/x:output:0)dense_116/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         2м
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_116/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_116/kernel/Regularizer/Square/ReadVariableOp2dense_116/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:         P
 
_user_specified_nameinputs
Ь
╘
)__inference_model_27_layer_call_fn_385265	
input"
unknown:
╚
	unknown_0:	╚
	unknown_1:
└Ё
	unknown_2:	PЁ
	unknown_3:	Ё
	unknown_4:P2
	unknown_5:2
	unknown_6:P2
	unknown_7:2
	unknown_8:2

	unknown_9:


unknown_10:2


unknown_11:


unknown_12:


unknown_13:

unknown_14:


unknown_15:
identity

identity_1ИвStatefulPartitionedCall╕
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         :         *3
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_model_27_layer_call_and_return_conditional_losses_385226o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::         ш: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:         ш

_user_specified_nameinput
┌
b
F__inference_reshape_32_layer_call_and_return_conditional_losses_384630

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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskR
Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :шQ
Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :Q
Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :й
Reshape/shapePackstrided_slice:output:0Reshape/shape/1:output:0Reshape/shape/2:output:0Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:m
ReshapeReshapeinputsReshape/shape:output:0*
T0*0
_output_shapes
:         шa
IdentityIdentityReshape:output:0*
T0*0
_output_shapes
:         ш"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:         ш:T P
,
_output_shapes
:         ш
 
_user_specified_nameinputs
ы-
т
while_body_383864
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstackИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @  з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         └*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Ё|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         ЁW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╡
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_splitГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ЁВ
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         ЁY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╗
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         PY
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         Pt
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         P]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         Po
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         Pk
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         PU

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         Pl
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         PP
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         Pc
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         Ph
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         Pr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         P"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё: 
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
: :-)
'
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
└Ё:!

_output_shapes	
:Ё:%	!

_output_shapes
:	PЁ:!


_output_shapes	
:Ё
▀У
╪

:__inference___backward_gpu_gru_with_fallback_388138_388274
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         Pd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         P`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         PO
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: А
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         Pq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         P┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         P}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:в
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                  P*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:Ф
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*V
_output_shapesD
B:                  └:         P: :р╤*
rnn_modegruЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┌
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  └u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         P\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ашi
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ашi
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:Ашh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А2h
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А2h
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А2g
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Ph
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Ph
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:PШ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ч
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:Ашы
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:Ашы
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:Ашъ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А2ъ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А2ъ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А2щ
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:Pь
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:Pь
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:Po
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  д
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  ж
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  ж
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:PPo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:PPo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:PPh
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:Ph
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:Ph
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pг
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pд
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pд
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:PЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╕
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╕
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╕
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPО
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:рЖ
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
└ЁЛ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	PЁm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Ё   в
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Ё|
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:                  └t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         Pg

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
└Ёh

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	PЁi

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	Ё"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*л
_input_shapesЩ
Ц:         P:         P:         P: :         P:         P:                  P: ::                  └:         P: :р╤::         P: ::::::: : : *<
api_implements*(gru_46fba877-7daf-4fec-82cd-2aa8cca36b11*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_388273*
go_backwards( *

time_major( :- )
'
_output_shapes
:         P:1-
+
_output_shapes
:         P:-)
'
_output_shapes
:         P:

_output_shapes
: :-)
'
_output_shapes
:         P:1-
+
_output_shapes
:         P::6
4
_output_shapes"
 :                  P:

_output_shapes
: :

_output_shapes
::;	7
5
_output_shapes#
!:                  └:1
-
+
_output_shapes
:         P:

_output_shapes
: :"

_output_shapes

:р╤: 

_output_shapes
::-)
'
_output_shapes
:         P:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ў
б
*__inference_conv2d_20_layer_call_fn_387393

inputs"
unknown:
╚
	unknown_0:	╚
identityИвStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ш╚*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_384649y
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*1
_output_shapes
:         ш╚`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ш: : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
0
_output_shapes
:         ш
 
_user_specified_nameinputs
н>
╣
&__forward_gpu_gru_with_fallback_387287

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         PQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	└P:	└P:	└P*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:рS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Т
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:P[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:P[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:P\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:P\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:P\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:PM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : п
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:d         P:         P: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         Pc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:         PZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:         d└:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_789081ee-88db-495d-b4e3-b947ed1fe92c*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_387152_387288*
go_backwards( *

time_major( :T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
▐4
п
(__inference_gpu_gru_with_fallback_386641

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d         └P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         PQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	└P:	└P:	└P*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:рS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Т
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:P[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:P[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:P\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:P\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:P\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:PM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╦
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:р╤U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:d         P:         P: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         Pc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:         PZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:         d└:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_2ba03b4a-a74b-4a0a-8b84-d75adc898f08*
api_preferred_deviceGPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
ЧУ
╪

:__inference___backward_gpu_gru_with_fallback_386642_386778
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         Pd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         P`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         PO
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: А
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         Pq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         P┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         P}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Щ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:d         P*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:Л
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*M
_output_shapes;
9:d         └:         P: :р╤*
rnn_modegruЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╤
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:         d└u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         P\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ашi
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ашi
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:Ашh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А2h
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А2h
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А2g
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Ph
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Ph
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:PШ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ч
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:Ашы
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:Ашы
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:Ашъ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А2ъ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А2ъ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А2щ
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:Pь
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:Pь
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:Po
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  д
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  ж
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  ж
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:PPo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:PPo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:PPh
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:Ph
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:Ph
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pг
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pд
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pд
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:PЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╕
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╕
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╕
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPО
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:рЖ
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
└ЁЛ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	PЁm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Ё   в
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Ёs
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*,
_output_shapes
:         d└t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         Pg

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
└Ёh

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	PЁi

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	Ё"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:         P:         P:         P: :         P:         P:d         P: ::d         └:         P: :р╤::         P: ::::::: : : *<
api_implements*(gru_2ba03b4a-a74b-4a0a-8b84-d75adc898f08*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_386777*
go_backwards( *

time_major( :- )
'
_output_shapes
:         P:1-
+
_output_shapes
:         P:-)
'
_output_shapes
:         P:

_output_shapes
: :-)
'
_output_shapes
:         P:1-
+
_output_shapes
:         P:1-
+
_output_shapes
:d         P:

_output_shapes
: :

_output_shapes
::2	.
,
_output_shapes
:d         └:1
-
+
_output_shapes
:         P:

_output_shapes
: :"

_output_shapes

:р╤: 

_output_shapes
::-)
'
_output_shapes
:         P:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
┼
Ц
)__inference_distance_layer_call_fn_389197

inputs
unknown:

	unknown_0:
identityИвStatefulPartitionedCall▄
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_distance_layer_call_and_return_conditional_losses_385182o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
ш
л
E__inference_dense_114_layer_call_and_return_conditional_losses_385104

inputs0
matmul_readvariableop_resource:P2-
biasadd_readvariableop_resource:2
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpв2dense_114/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2С
2dense_114/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P2*
dtype0Т
#dense_114/kernel/Regularizer/SquareSquare:dense_114/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2s
"dense_114/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_114/kernel/Regularizer/SumSum'dense_114/kernel/Regularizer/Square:y:0+dense_114/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_114/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_114/kernel/Regularizer/mulMul+dense_114/kernel/Regularizer/mul/x:output:0)dense_114/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         2м
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_114/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_114/kernel/Regularizer/Square/ReadVariableOp2dense_114/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:         P
 
_user_specified_nameinputs
Р	
▐
while_cond_388358
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_388358___redundant_placeholder04
0while_while_cond_388358___redundant_placeholder14
0while_while_cond_388358___redundant_placeholder24
0while_while_cond_388358___redundant_placeholder34
0while_while_cond_388358___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :         P: :::::: 
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
: :-)
'
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
к
g
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_383780

inputs
identity╣
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
data_formatNCHW*
ksize

*
paddingVALID*
strides

{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
ы-
т
while_body_387971
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstackИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @  з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         └*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Ё|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         ЁW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╡
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_splitГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ЁВ
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         ЁY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╗
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         PY
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         Pt
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         P]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         Po
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         Pk
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         PU

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         Pl
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         PP
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         Pc
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         Ph
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         Pr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         P"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё: 
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
: :-)
'
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
└Ё:!

_output_shapes	
:Ё:%	!

_output_shapes
:	PЁ:!


_output_shapes	
:Ё
▐4
п
(__inference_gpu_gru_with_fallback_384913

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d         └P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         PQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	└P:	└P:	└P*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:рS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Т
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:P[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:P[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:P\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:P\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:P\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:PM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╦
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:р╤U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:d         P:         P: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         Pc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:         PZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:         d└:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_2285ca90-b083-416b-9c62-50ce1f92a903*
api_preferred_deviceGPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
ЧУ
╪

:__inference___backward_gpu_gru_with_fallback_387152_387288
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         Pd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         P`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         PO
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: А
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         Pq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         P┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         P}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Щ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:d         P*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:Л
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*M
_output_shapes;
9:d         └:         P: :р╤*
rnn_modegruЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╤
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:         d└u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         P\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ашi
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ашi
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:Ашh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А2h
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А2h
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А2g
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Ph
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Ph
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:PШ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ч
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:Ашы
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:Ашы
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:Ашъ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А2ъ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А2ъ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А2щ
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:Pь
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:Pь
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:Po
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  д
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  ж
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  ж
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:PPo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:PPo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:PPh
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:Ph
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:Ph
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pг
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pд
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pд
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:PЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╕
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╕
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╕
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPО
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:рЖ
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
└ЁЛ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	PЁm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Ё   в
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Ёs
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*,
_output_shapes
:         d└t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         Pg

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
└Ёh

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	PЁi

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	Ё"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:         P:         P:         P: :         P:         P:d         P: ::d         └:         P: :р╤::         P: ::::::: : : *<
api_implements*(gru_789081ee-88db-495d-b4e3-b947ed1fe92c*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_387287*
go_backwards( *

time_major( :- )
'
_output_shapes
:         P:1-
+
_output_shapes
:         P:-)
'
_output_shapes
:         P:

_output_shapes
: :-)
'
_output_shapes
:         P:1-
+
_output_shapes
:         P:1-
+
_output_shapes
:d         P:

_output_shapes
: :

_output_shapes
::2	.
,
_output_shapes
:d         └:1
-
+
_output_shapes
:         P:

_output_shapes
: :"

_output_shapes

:р╤: 

_output_shapes
::-)
'
_output_shapes
:         P:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
к
g
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_387420

inputs
identity╣
MaxPoolMaxPoolinputs*J
_output_shapes8
6:4                                    *
data_formatNCHW*
ksize

*
paddingVALID*
strides

{
IdentityIdentityMaxPool:output:0*
T0*J
_output_shapes8
6:4                                    "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6:4                                    :r n
J
_output_shapes8
6:4                                    
 
_user_specified_nameinputs
Ї
╧
$__inference_signature_wrapper_386251	
input"
unknown:
╚
	unknown_0:	╚
	unknown_1:
└Ё
	unknown_2:	PЁ
	unknown_3:	Ё
	unknown_4:P2
	unknown_5:2
	unknown_6:P2
	unknown_7:2
	unknown_8:2

	unknown_9:


unknown_10:2


unknown_11:


unknown_12:


unknown_13:

unknown_14:


unknown_15:
identity

identity_1ИвStatefulPartitionedCallХ
StatefulPartitionedCallStatefulPartitionedCallinputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6	unknown_7	unknown_8	unknown_9
unknown_10
unknown_11
unknown_12
unknown_13
unknown_14
unknown_15*
Tin
2*
Tout
2*
_collective_manager_ids
 *:
_output_shapes(
&:         :         *3
_read_only_resource_inputs
	
*0
config_proto 

CPU

GPU2*0J 8В **
f%R#
!__inference__wrapped_model_383771o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         q

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::         ш: : : : : : : : : : : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
,
_output_shapes
:         ш

_user_specified_nameinput
в>
г
__inference_standard_gru_384837

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:Ё:Ё*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d         └B
ShapeShapetranspose:y:0*
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
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
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:ъ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         └*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Ёi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         ЁQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :г
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Ёm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         ЁS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :й
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         PM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         Pb
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         PQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         P]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         PY
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         PI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         PS
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         PJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         PQ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         PV
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         Pn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╢
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*X
_output_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_384747*
condR
while_cond_384746*W
output_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         P*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         P]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         PX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:         d└:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_2285ca90-b083-416b-9c62-50ce1f92a903*
api_preferred_deviceCPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
ш
л
E__inference_dense_116_layer_call_and_return_conditional_losses_385082

inputs0
matmul_readvariableop_resource:P2-
biasadd_readvariableop_resource:2
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpв2dense_116/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2С
2dense_116/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P2*
dtype0Т
#dense_116/kernel/Regularizer/SquareSquare:dense_116/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2s
"dense_116/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_116/kernel/Regularizer/SumSum'dense_116/kernel/Regularizer/Square:y:0+dense_116/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_116/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_116/kernel/Regularizer/mulMul+dense_116/kernel/Regularizer/mul/x:output:0)dense_116/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         2м
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_116/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_116/kernel/Regularizer/Square/ReadVariableOp2dense_116/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:         P
 
_user_specified_nameinputs
╚>
╣
&__forward_gpu_gru_with_fallback_384166

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         PQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	└P:	└P:	└P*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:рS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Т
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:P[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:P[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:P\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:P\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:P\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:PM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : п
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ╫
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:                  P:         P: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         Pc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:         PZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:                  └:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_db61c2bf-a5c1-4186-aba1-3da85e9d811a*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_384031_384167*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  └
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
Р	
▐
while_cond_386984
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_386984___redundant_placeholder04
0while_while_cond_386984___redundant_placeholder14
0while_while_cond_386984___redundant_placeholder24
0while_while_cond_386984___redundant_placeholder34
0while_while_cond_386984___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :         P: :::::: 
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
: :-)
'
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
н>
╣
&__forward_gpu_gru_with_fallback_385741

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         PQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	└P:	└P:	└P*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:рS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Т
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:P[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:P[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:P\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:P\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:P\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:PM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : п
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:d         P:         P: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         Pc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:         PZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:         d└:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_ea7e6912-9ba5-4524-b9cf-2796d62a364c*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_385606_385742*
go_backwards( *

time_major( :T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
Е;
■
A__inference_gru_5_layer_call_and_return_conditional_losses_388282
inputs_00
read_readvariableop_resource:
└Ё1
read_1_readvariableop_resource:	PЁ1
read_2_readvariableop_resource:	Ё

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpв9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp=
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ps
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         PG
ones_like/ShapeShapeinputs_0*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Е
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*5
_output_shapes#
!:                  └R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?~
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*5
_output_shapes#
!:                  └O
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:ж
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*5
_output_shapes#
!:                  └*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=┤
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:                  └}
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*5
_output_shapes#
!:                  └w
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*5
_output_shapes#
!:                  └T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?В
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*5
_output_shapes#
!:                  └Q
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:╖
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*5
_output_shapes#
!:                  └*
dtype0*

seed*
seed2]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=║
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:                  └Б
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*5
_output_shapes#
!:                  └}
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*5
_output_shapes#
!:                  └T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?В
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*5
_output_shapes#
!:                  └Q
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:╖
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*5
_output_shapes#
!:                  └*
dtype0*

seed*
seed2]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=║
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*5
_output_shapes#
!:                  └Б
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*5
_output_shapes#
!:                  └}
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*5
_output_shapes#
!:                  └g
mulMulinputs_0dropout/Mul_1:z:0*
T0*5
_output_shapes#
!:                  └r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
└Ё*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└Ёu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	PЁ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	PЁu
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Ё*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	ЁО
PartitionedCallPartitionedCallmul:z:0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:         P:         P:         P: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_gru_388061Ш
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
└Ё*
dtype0в
*gru_5/gru_cell_5/kernel/Regularizer/SquareSquareAgru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└Ёz
)gru_5/gru_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       │
'gru_5/gru_cell_5/kernel/Regularizer/SumSum.gru_5/gru_cell_5/kernel/Regularizer/Square:y:02gru_5/gru_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)gru_5/gru_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8╡
'gru_5/gru_cell_5/kernel/Regularizer/mulMul2gru_5/gru_cell_5/kernel/Regularizer/mul/x:output:00gru_5/gru_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         P╚
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp:^gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  └: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2v
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:_ [
5
_output_shapes#
!:                  └
"
_user_specified_name
inputs/0
н>
╣
&__forward_gpu_gru_with_fallback_383729

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         PQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	└P:	└P:	└P*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:рS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Т
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:P[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:P[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:P\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:P\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:P\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:PM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : п
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:d         P:         P: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         Pc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:         PZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:         d└:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_1ccaf889-86d4-4158-9f30-3e7d865ce12d*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_383594_383730*
go_backwards( *

time_major( :T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
┴
Ф
'__inference_degree_layer_call_fn_389217

inputs
unknown:

	unknown_0:
identityИвStatefulPartitionedCall┌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_degree_layer_call_and_return_conditional_losses_385165o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         `
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
┼|
ы
__inference__traced_save_389513
file_prefix/
+savev2_conv2d_20_kernel_read_readvariableop-
)savev2_conv2d_20_bias_read_readvariableop/
+savev2_dense_114_kernel_read_readvariableop-
)savev2_dense_114_bias_read_readvariableop/
+savev2_dense_116_kernel_read_readvariableop-
)savev2_dense_116_bias_read_readvariableop/
+savev2_dense_115_kernel_read_readvariableop-
)savev2_dense_115_bias_read_readvariableop/
+savev2_dense_117_kernel_read_readvariableop-
)savev2_dense_117_bias_read_readvariableop.
*savev2_distance_kernel_read_readvariableop,
(savev2_distance_bias_read_readvariableop,
(savev2_degree_kernel_read_readvariableop*
&savev2_degree_bias_read_readvariableop6
2savev2_gru_5_gru_cell_5_kernel_read_readvariableop@
<savev2_gru_5_gru_cell_5_recurrent_kernel_read_readvariableop4
0savev2_gru_5_gru_cell_5_bias_read_readvariableop(
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
2savev2_adam_conv2d_20_kernel_m_read_readvariableop4
0savev2_adam_conv2d_20_bias_m_read_readvariableop6
2savev2_adam_dense_114_kernel_m_read_readvariableop4
0savev2_adam_dense_114_bias_m_read_readvariableop6
2savev2_adam_dense_116_kernel_m_read_readvariableop4
0savev2_adam_dense_116_bias_m_read_readvariableop6
2savev2_adam_dense_115_kernel_m_read_readvariableop4
0savev2_adam_dense_115_bias_m_read_readvariableop6
2savev2_adam_dense_117_kernel_m_read_readvariableop4
0savev2_adam_dense_117_bias_m_read_readvariableop5
1savev2_adam_distance_kernel_m_read_readvariableop3
/savev2_adam_distance_bias_m_read_readvariableop3
/savev2_adam_degree_kernel_m_read_readvariableop1
-savev2_adam_degree_bias_m_read_readvariableop=
9savev2_adam_gru_5_gru_cell_5_kernel_m_read_readvariableopG
Csavev2_adam_gru_5_gru_cell_5_recurrent_kernel_m_read_readvariableop;
7savev2_adam_gru_5_gru_cell_5_bias_m_read_readvariableop6
2savev2_adam_conv2d_20_kernel_v_read_readvariableop4
0savev2_adam_conv2d_20_bias_v_read_readvariableop6
2savev2_adam_dense_114_kernel_v_read_readvariableop4
0savev2_adam_dense_114_bias_v_read_readvariableop6
2savev2_adam_dense_116_kernel_v_read_readvariableop4
0savev2_adam_dense_116_bias_v_read_readvariableop6
2savev2_adam_dense_115_kernel_v_read_readvariableop4
0savev2_adam_dense_115_bias_v_read_readvariableop6
2savev2_adam_dense_117_kernel_v_read_readvariableop4
0savev2_adam_dense_117_bias_v_read_readvariableop5
1savev2_adam_distance_kernel_v_read_readvariableop3
/savev2_adam_distance_bias_v_read_readvariableop3
/savev2_adam_degree_kernel_v_read_readvariableop1
-savev2_adam_degree_bias_v_read_readvariableop=
9savev2_adam_gru_5_gru_cell_5_kernel_v_read_readvariableopG
Csavev2_adam_gru_5_gru_cell_5_recurrent_kernel_v_read_readvariableop;
7savev2_adam_gru_5_gru_cell_5_bias_v_read_readvariableop
savev2_const

identity_1ИвMergeV2Checkpointsw
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
_temp/partБ
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
value	B : У
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: ¤"
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*ж"
valueЬ"BЩ"BB6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-3/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-3/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-4/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-4/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-5/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-5/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-6/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-6/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-7/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-7/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/1/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/2/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/3/count/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/4/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-0/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-0/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-2/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-2/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-3/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-3/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-4/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-4/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-5/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-5/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-6/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-6/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-7/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-7/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЇ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:B*
dtype0*Щ
valueПBМBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ь
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0+savev2_conv2d_20_kernel_read_readvariableop)savev2_conv2d_20_bias_read_readvariableop+savev2_dense_114_kernel_read_readvariableop)savev2_dense_114_bias_read_readvariableop+savev2_dense_116_kernel_read_readvariableop)savev2_dense_116_bias_read_readvariableop+savev2_dense_115_kernel_read_readvariableop)savev2_dense_115_bias_read_readvariableop+savev2_dense_117_kernel_read_readvariableop)savev2_dense_117_bias_read_readvariableop*savev2_distance_kernel_read_readvariableop(savev2_distance_bias_read_readvariableop(savev2_degree_kernel_read_readvariableop&savev2_degree_bias_read_readvariableop2savev2_gru_5_gru_cell_5_kernel_read_readvariableop<savev2_gru_5_gru_cell_5_recurrent_kernel_read_readvariableop0savev2_gru_5_gru_cell_5_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop"savev2_total_4_read_readvariableop"savev2_count_4_read_readvariableop"savev2_total_3_read_readvariableop"savev2_count_3_read_readvariableop"savev2_total_2_read_readvariableop"savev2_count_2_read_readvariableop"savev2_total_1_read_readvariableop"savev2_count_1_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop2savev2_adam_conv2d_20_kernel_m_read_readvariableop0savev2_adam_conv2d_20_bias_m_read_readvariableop2savev2_adam_dense_114_kernel_m_read_readvariableop0savev2_adam_dense_114_bias_m_read_readvariableop2savev2_adam_dense_116_kernel_m_read_readvariableop0savev2_adam_dense_116_bias_m_read_readvariableop2savev2_adam_dense_115_kernel_m_read_readvariableop0savev2_adam_dense_115_bias_m_read_readvariableop2savev2_adam_dense_117_kernel_m_read_readvariableop0savev2_adam_dense_117_bias_m_read_readvariableop1savev2_adam_distance_kernel_m_read_readvariableop/savev2_adam_distance_bias_m_read_readvariableop/savev2_adam_degree_kernel_m_read_readvariableop-savev2_adam_degree_bias_m_read_readvariableop9savev2_adam_gru_5_gru_cell_5_kernel_m_read_readvariableopCsavev2_adam_gru_5_gru_cell_5_recurrent_kernel_m_read_readvariableop7savev2_adam_gru_5_gru_cell_5_bias_m_read_readvariableop2savev2_adam_conv2d_20_kernel_v_read_readvariableop0savev2_adam_conv2d_20_bias_v_read_readvariableop2savev2_adam_dense_114_kernel_v_read_readvariableop0savev2_adam_dense_114_bias_v_read_readvariableop2savev2_adam_dense_116_kernel_v_read_readvariableop0savev2_adam_dense_116_bias_v_read_readvariableop2savev2_adam_dense_115_kernel_v_read_readvariableop0savev2_adam_dense_115_bias_v_read_readvariableop2savev2_adam_dense_117_kernel_v_read_readvariableop0savev2_adam_dense_117_bias_v_read_readvariableop1savev2_adam_distance_kernel_v_read_readvariableop/savev2_adam_distance_bias_v_read_readvariableop/savev2_adam_degree_kernel_v_read_readvariableop-savev2_adam_degree_bias_v_read_readvariableop9savev2_adam_gru_5_gru_cell_5_kernel_v_read_readvariableopCsavev2_adam_gru_5_gru_cell_5_recurrent_kernel_v_read_readvariableop7savev2_adam_gru_5_gru_cell_5_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *P
dtypesF
D2B	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Л
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

identity_1Identity_1:output:0*Й
_input_shapesў
Ї: :
╚:╚:P2:2:P2:2:2
:
:2
:
:
::
::
└Ё:	PЁ:	Ё: : : : : : : : : : : : : : :
╚:╚:P2:2:P2:2:2
:
:2
:
:
::
::
└Ё:	PЁ:	Ё:
╚:╚:P2:2:P2:2:2
:
:2
:
:
::
::
└Ё:	PЁ:	Ё: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:-)
'
_output_shapes
:
╚:!

_output_shapes	
:╚:$ 

_output_shapes

:P2: 

_output_shapes
:2:$ 

_output_shapes

:P2: 
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
: 

_output_shapes
::&"
 
_output_shapes
:
└Ё:%!

_output_shapes
:	PЁ:%!

_output_shapes
:	Ё:
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
: :

_output_shapes
: :- )
'
_output_shapes
:
╚:!!

_output_shapes	
:╚:$" 

_output_shapes

:P2: #

_output_shapes
:2:$$ 

_output_shapes

:P2: %

_output_shapes
:2:$& 

_output_shapes

:2
: '

_output_shapes
:
:$( 

_output_shapes

:2
: )

_output_shapes
:
:$* 

_output_shapes

:
: +

_output_shapes
::$, 

_output_shapes

:
: -

_output_shapes
::&."
 
_output_shapes
:
└Ё:%/!

_output_shapes
:	PЁ:%0!

_output_shapes
:	Ё:-1)
'
_output_shapes
:
╚:!2

_output_shapes	
:╚:$3 

_output_shapes

:P2: 4

_output_shapes
:2:$5 

_output_shapes

:P2: 6
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
: >

_output_shapes
::&?"
 
_output_shapes
:
└Ё:%@!

_output_shapes
:	PЁ:%A!

_output_shapes
:	Ё:B

_output_shapes
: 
н>
╣
&__forward_gpu_gru_with_fallback_389073

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         PQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	└P:	└P:	└P*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:рS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Т
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:P[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:P[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:P\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:P\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:P\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:PM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : п
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:d         P:         P: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         Pc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:         PZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:         d└:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_2a22995d-d6b2-4c40-9ddf-56bd2b6b1c65*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_388938_389074*
go_backwards( *

time_major( :T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
В5
п
(__inference_gpu_gru_with_fallback_384030

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  └P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         PQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	└P:	└P:	└P*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:рS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Т
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:P[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:P[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:P\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:P\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:P\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:PM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╦
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:р╤U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ╙
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:                  P:         P: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         Pc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:         PZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:                  └:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_db61c2bf-a5c1-4186-aba1-3da85e9d811a*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  └
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
╬
├
__inference_loss_fn_5_389294V
Bgru_5_gru_cell_5_kernel_regularizer_square_readvariableop_resource:
└Ё
identityИв9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp╛
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpBgru_5_gru_cell_5_kernel_regularizer_square_readvariableop_resource* 
_output_shapes
:
└Ё*
dtype0в
*gru_5/gru_cell_5/kernel/Regularizer/SquareSquareAgru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└Ёz
)gru_5/gru_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       │
'gru_5/gru_cell_5/kernel/Regularizer/SumSum.gru_5/gru_cell_5/kernel/Regularizer/Square:y:02gru_5/gru_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)gru_5/gru_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8╡
'gru_5/gru_cell_5/kernel/Regularizer/mulMul2gru_5/gru_cell_5/kernel/Regularizer/mul/x:output:00gru_5/gru_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i
IdentityIdentity+gru_5/gru_cell_5/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: В
NoOpNoOp:^gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2v
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp
Р	
▐
while_cond_386474
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_386474___redundant_placeholder04
0while_while_cond_386474___redundant_placeholder14
0while_while_cond_386474___redundant_placeholder24
0while_while_cond_386474___redundant_placeholder34
0while_while_cond_386474___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :         P: :::::: 
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
: :-)
'
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Ъ

ї
D__inference_distance_layer_call_and_return_conditional_losses_385182

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
▀У
╪

:__inference___backward_gpu_gru_with_fallback_384454_384590
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         Pd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         P`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         PO
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: А
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         Pq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         P┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         P}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:в
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                  P*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:Ф
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*V
_output_shapesD
B:                  └:         P: :р╤*
rnn_modegruЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┌
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  └u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         P\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ашi
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ашi
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:Ашh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А2h
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А2h
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А2g
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Ph
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Ph
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:PШ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ч
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:Ашы
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:Ашы
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:Ашъ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А2ъ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А2ъ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А2щ
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:Pь
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:Pь
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:Po
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  д
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  ж
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  ж
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:PPo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:PPo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:PPh
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:Ph
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:Ph
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pг
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pд
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pд
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:PЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╕
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╕
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╕
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPО
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:рЖ
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
└ЁЛ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	PЁm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Ё   в
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Ё|
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:                  └t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         Pg

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
└Ёh

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	PЁi

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	Ё"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*л
_input_shapesЩ
Ц:         P:         P:         P: :         P:         P:                  P: ::                  └:         P: :р╤::         P: ::::::: : : *<
api_implements*(gru_e181d9fc-fc6a-43aa-822e-4cfab4a9a7e1*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_384589*
go_backwards( *

time_major( :- )
'
_output_shapes
:         P:1-
+
_output_shapes
:         P:-)
'
_output_shapes
:         P:

_output_shapes
: :-)
'
_output_shapes
:         P:1-
+
_output_shapes
:         P::6
4
_output_shapes"
 :                  P:

_output_shapes
: :

_output_shapes
::;	7
5
_output_shapes#
!:                  └:1
-
+
_output_shapes
:         P:

_output_shapes
: :"

_output_shapes

:р╤: 

_output_shapes
::-)
'
_output_shapes
:         P:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
¤
╕
&__inference_gru_5_layer_call_fn_387471

inputs
unknown:
└Ё
	unknown_0:	PЁ
	unknown_1:	Ё
identityИвStatefulPartitionedCallц
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_gru_5_layer_call_and_return_conditional_losses_385058o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         d└: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs
╔
│
__inference_loss_fn_2_389261M
;dense_116_kernel_regularizer_square_readvariableop_resource:P2
identityИв2dense_116/kernel/Regularizer/Square/ReadVariableOpо
2dense_116/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_116_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:P2*
dtype0Т
#dense_116/kernel/Regularizer/SquareSquare:dense_116/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2s
"dense_116/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_116/kernel/Regularizer/SumSum'dense_116/kernel/Regularizer/Square:y:0+dense_116/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_116/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_116/kernel/Regularizer/mulMul+dense_116/kernel/Regularizer/mul/x:output:0)dense_116/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentity$dense_116/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^dense_116/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2dense_116/kernel/Regularizer/Square/ReadVariableOp2dense_116/kernel/Regularizer/Square/ReadVariableOp
ш
л
E__inference_dense_117_layer_call_and_return_conditional_losses_389188

inputs0
matmul_readvariableop_resource:2
-
biasadd_readvariableop_resource:

identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpв2dense_117/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
С
2dense_117/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
*
dtype0Т
#dense_117/kernel/Regularizer/SquareSquare:dense_117/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
s
"dense_117/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_117/kernel/Regularizer/SumSum'dense_117/kernel/Regularizer/Square:y:0+dense_117/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_117/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_117/kernel/Regularizer/mulMul+dense_117/kernel/Regularizer/mul/x:output:0)dense_117/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         
м
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_117/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_117/kernel/Regularizer/Square/ReadVariableOp2dense_117/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
▒
У
!__inference__wrapped_model_383771	
inputL
1model_27_conv2d_20_conv2d_readvariableop_resource:
╚A
2model_27_conv2d_20_biasadd_readvariableop_resource:	╚?
+model_27_gru_5_read_readvariableop_resource:
└Ё@
-model_27_gru_5_read_1_readvariableop_resource:	PЁ@
-model_27_gru_5_read_2_readvariableop_resource:	ЁC
1model_27_dense_116_matmul_readvariableop_resource:P2@
2model_27_dense_116_biasadd_readvariableop_resource:2C
1model_27_dense_114_matmul_readvariableop_resource:P2@
2model_27_dense_114_biasadd_readvariableop_resource:2C
1model_27_dense_117_matmul_readvariableop_resource:2
@
2model_27_dense_117_biasadd_readvariableop_resource:
C
1model_27_dense_115_matmul_readvariableop_resource:2
@
2model_27_dense_115_biasadd_readvariableop_resource:
@
.model_27_degree_matmul_readvariableop_resource:
=
/model_27_degree_biasadd_readvariableop_resource:B
0model_27_distance_matmul_readvariableop_resource:
?
1model_27_distance_biasadd_readvariableop_resource:
identity

identity_1Ив)model_27/conv2d_20/BiasAdd/ReadVariableOpв(model_27/conv2d_20/Conv2D/ReadVariableOpв&model_27/degree/BiasAdd/ReadVariableOpв%model_27/degree/MatMul/ReadVariableOpв)model_27/dense_114/BiasAdd/ReadVariableOpв(model_27/dense_114/MatMul/ReadVariableOpв)model_27/dense_115/BiasAdd/ReadVariableOpв(model_27/dense_115/MatMul/ReadVariableOpв)model_27/dense_116/BiasAdd/ReadVariableOpв(model_27/dense_116/MatMul/ReadVariableOpв)model_27/dense_117/BiasAdd/ReadVariableOpв(model_27/dense_117/MatMul/ReadVariableOpв(model_27/distance/BiasAdd/ReadVariableOpв'model_27/distance/MatMul/ReadVariableOpв"model_27/gru_5/Read/ReadVariableOpв$model_27/gru_5/Read_1/ReadVariableOpв$model_27/gru_5/Read_2/ReadVariableOpЖ
1model_27/tf.compat.v1.transpose_24/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          │
,model_27/tf.compat.v1.transpose_24/transpose	Transposeinput:model_27/tf.compat.v1.transpose_24/transpose/perm:output:0*
T0*,
_output_shapes
:         шy
model_27/reshape_32/ShapeShape0model_27/tf.compat.v1.transpose_24/transpose:y:0*
T0*
_output_shapes
:q
'model_27/reshape_32/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)model_27/reshape_32/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)model_27/reshape_32/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╡
!model_27/reshape_32/strided_sliceStridedSlice"model_27/reshape_32/Shape:output:00model_27/reshape_32/strided_slice/stack:output:02model_27/reshape_32/strided_slice/stack_1:output:02model_27/reshape_32/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskf
#model_27/reshape_32/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :шe
#model_27/reshape_32/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :e
#model_27/reshape_32/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :Н
!model_27/reshape_32/Reshape/shapePack*model_27/reshape_32/strided_slice:output:0,model_27/reshape_32/Reshape/shape/1:output:0,model_27/reshape_32/Reshape/shape/2:output:0,model_27/reshape_32/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:┐
model_27/reshape_32/ReshapeReshape0model_27/tf.compat.v1.transpose_24/transpose:y:0*model_27/reshape_32/Reshape/shape:output:0*
T0*0
_output_shapes
:         шг
(model_27/conv2d_20/Conv2D/ReadVariableOpReadVariableOp1model_27_conv2d_20_conv2d_readvariableop_resource*'
_output_shapes
:
╚*
dtype0▀
model_27/conv2d_20/Conv2DConv2D$model_27/reshape_32/Reshape:output:00model_27/conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ш╚*
paddingSAME*
strides
Щ
)model_27/conv2d_20/BiasAdd/ReadVariableOpReadVariableOp2model_27_conv2d_20_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0╕
model_27/conv2d_20/BiasAddBiasAdd"model_27/conv2d_20/Conv2D:output:01model_27/conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ш╚~
model_27/conv2d_20/EluElu#model_27/conv2d_20/BiasAdd:output:0*
T0*1
_output_shapes
:         ш╚╓
 model_27/max_pooling2d_8/MaxPoolMaxPool$model_27/conv2d_20/Elu:activations:0*0
_output_shapes
:         ш*
data_formatNCHW*
ksize

*
paddingVALID*
strides

r
model_27/reshape_33/ShapeShape)model_27/max_pooling2d_8/MaxPool:output:0*
T0*
_output_shapes
:q
'model_27/reshape_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: s
)model_27/reshape_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:s
)model_27/reshape_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╡
!model_27/reshape_33/strided_sliceStridedSlice"model_27/reshape_33/Shape:output:00model_27/reshape_33/strided_slice/stack:output:02model_27/reshape_33/strided_slice/stack_1:output:02model_27/reshape_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maske
#model_27/reshape_33/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :df
#model_27/reshape_33/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :└▀
!model_27/reshape_33/Reshape/shapePack*model_27/reshape_33/strided_slice:output:0,model_27/reshape_33/Reshape/shape/1:output:0,model_27/reshape_33/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:┤
model_27/reshape_33/ReshapeReshape)model_27/max_pooling2d_8/MaxPool:output:0*model_27/reshape_33/Reshape/shape:output:0*
T0*,
_output_shapes
:         d└h
model_27/gru_5/ShapeShape$model_27/reshape_33/Reshape:output:0*
T0*
_output_shapes
:l
"model_27/gru_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$model_27/gru_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$model_27/gru_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ь
model_27/gru_5/strided_sliceStridedSlicemodel_27/gru_5/Shape:output:0+model_27/gru_5/strided_slice/stack:output:0-model_27/gru_5/strided_slice/stack_1:output:0-model_27/gru_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask_
model_27/gru_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Pа
model_27/gru_5/zeros/packedPack%model_27/gru_5/strided_slice:output:0&model_27/gru_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
model_27/gru_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Щ
model_27/gru_5/zerosFill$model_27/gru_5/zeros/packed:output:0#model_27/gru_5/zeros/Const:output:0*
T0*'
_output_shapes
:         Pr
model_27/gru_5/ones_like/ShapeShape$model_27/reshape_33/Reshape:output:0*
T0*
_output_shapes
:c
model_27/gru_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?й
model_27/gru_5/ones_likeFill'model_27/gru_5/ones_like/Shape:output:0'model_27/gru_5/ones_like/Const:output:0*
T0*,
_output_shapes
:         d└Щ
model_27/gru_5/mulMul$model_27/reshape_33/Reshape:output:0!model_27/gru_5/ones_like:output:0*
T0*,
_output_shapes
:         d└Р
"model_27/gru_5/Read/ReadVariableOpReadVariableOp+model_27_gru_5_read_readvariableop_resource* 
_output_shapes
:
└Ё*
dtype0z
model_27/gru_5/IdentityIdentity*model_27/gru_5/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└ЁУ
$model_27/gru_5/Read_1/ReadVariableOpReadVariableOp-model_27_gru_5_read_1_readvariableop_resource*
_output_shapes
:	PЁ*
dtype0}
model_27/gru_5/Identity_1Identity,model_27/gru_5/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	PЁУ
$model_27/gru_5/Read_2/ReadVariableOpReadVariableOp-model_27_gru_5_read_2_readvariableop_resource*
_output_shapes
:	Ё*
dtype0}
model_27/gru_5/Identity_2Identity,model_27/gru_5/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ёш
model_27/gru_5/PartitionedCallPartitionedCallmodel_27/gru_5/mul:z:0model_27/gru_5/zeros:output:0 model_27/gru_5/Identity:output:0"model_27/gru_5/Identity_1:output:0"model_27/gru_5/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:         P:         P:         P: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_gru_383517Ъ
(model_27/dense_116/MatMul/ReadVariableOpReadVariableOp1model_27_dense_116_matmul_readvariableop_resource*
_output_shapes

:P2*
dtype0░
model_27/dense_116/MatMulMatMul'model_27/gru_5/PartitionedCall:output:00model_27/dense_116/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2Ш
)model_27/dense_116/BiasAdd/ReadVariableOpReadVariableOp2model_27_dense_116_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0п
model_27/dense_116/BiasAddBiasAdd#model_27/dense_116/MatMul:product:01model_27/dense_116/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2Ъ
(model_27/dense_114/MatMul/ReadVariableOpReadVariableOp1model_27_dense_114_matmul_readvariableop_resource*
_output_shapes

:P2*
dtype0░
model_27/dense_114/MatMulMatMul'model_27/gru_5/PartitionedCall:output:00model_27/dense_114/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2Ш
)model_27/dense_114/BiasAdd/ReadVariableOpReadVariableOp2model_27_dense_114_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0п
model_27/dense_114/BiasAddBiasAdd#model_27/dense_114/MatMul:product:01model_27/dense_114/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2Ъ
(model_27/dense_117/MatMul/ReadVariableOpReadVariableOp1model_27_dense_117_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0м
model_27/dense_117/MatMulMatMul#model_27/dense_116/BiasAdd:output:00model_27/dense_117/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
Ш
)model_27/dense_117/BiasAdd/ReadVariableOpReadVariableOp2model_27_dense_117_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0п
model_27/dense_117/BiasAddBiasAdd#model_27/dense_117/MatMul:product:01model_27/dense_117/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
Ъ
(model_27/dense_115/MatMul/ReadVariableOpReadVariableOp1model_27_dense_115_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0м
model_27/dense_115/MatMulMatMul#model_27/dense_114/BiasAdd:output:00model_27/dense_115/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
Ш
)model_27/dense_115/BiasAdd/ReadVariableOpReadVariableOp2model_27_dense_115_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0п
model_27/dense_115/BiasAddBiasAdd#model_27/dense_115/MatMul:product:01model_27/dense_115/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
Ф
%model_27/degree/MatMul/ReadVariableOpReadVariableOp.model_27_degree_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0ж
model_27/degree/MatMulMatMul#model_27/dense_117/BiasAdd:output:0-model_27/degree/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Т
&model_27/degree/BiasAdd/ReadVariableOpReadVariableOp/model_27_degree_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ж
model_27/degree/BiasAddBiasAdd model_27/degree/MatMul:product:0.model_27/degree/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         p
model_27/degree/TanhTanh model_27/degree/BiasAdd:output:0*
T0*'
_output_shapes
:         Ш
'model_27/distance/MatMul/ReadVariableOpReadVariableOp0model_27_distance_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0к
model_27/distance/MatMulMatMul#model_27/dense_115/BiasAdd:output:0/model_27/distance/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Ц
(model_27/distance/BiasAdd/ReadVariableOpReadVariableOp1model_27_distance_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0м
model_27/distance/BiasAddBiasAdd"model_27/distance/MatMul:product:00model_27/distance/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         z
model_27/distance/SigmoidSigmoid"model_27/distance/BiasAdd:output:0*
T0*'
_output_shapes
:         g
IdentityIdentitymodel_27/degree/Tanh:y:0^NoOp*
T0*'
_output_shapes
:         n

Identity_1Identitymodel_27/distance/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         Т
NoOpNoOp*^model_27/conv2d_20/BiasAdd/ReadVariableOp)^model_27/conv2d_20/Conv2D/ReadVariableOp'^model_27/degree/BiasAdd/ReadVariableOp&^model_27/degree/MatMul/ReadVariableOp*^model_27/dense_114/BiasAdd/ReadVariableOp)^model_27/dense_114/MatMul/ReadVariableOp*^model_27/dense_115/BiasAdd/ReadVariableOp)^model_27/dense_115/MatMul/ReadVariableOp*^model_27/dense_116/BiasAdd/ReadVariableOp)^model_27/dense_116/MatMul/ReadVariableOp*^model_27/dense_117/BiasAdd/ReadVariableOp)^model_27/dense_117/MatMul/ReadVariableOp)^model_27/distance/BiasAdd/ReadVariableOp(^model_27/distance/MatMul/ReadVariableOp#^model_27/gru_5/Read/ReadVariableOp%^model_27/gru_5/Read_1/ReadVariableOp%^model_27/gru_5/Read_2/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::         ш: : : : : : : : : : : : : : : : : 2V
)model_27/conv2d_20/BiasAdd/ReadVariableOp)model_27/conv2d_20/BiasAdd/ReadVariableOp2T
(model_27/conv2d_20/Conv2D/ReadVariableOp(model_27/conv2d_20/Conv2D/ReadVariableOp2P
&model_27/degree/BiasAdd/ReadVariableOp&model_27/degree/BiasAdd/ReadVariableOp2N
%model_27/degree/MatMul/ReadVariableOp%model_27/degree/MatMul/ReadVariableOp2V
)model_27/dense_114/BiasAdd/ReadVariableOp)model_27/dense_114/BiasAdd/ReadVariableOp2T
(model_27/dense_114/MatMul/ReadVariableOp(model_27/dense_114/MatMul/ReadVariableOp2V
)model_27/dense_115/BiasAdd/ReadVariableOp)model_27/dense_115/BiasAdd/ReadVariableOp2T
(model_27/dense_115/MatMul/ReadVariableOp(model_27/dense_115/MatMul/ReadVariableOp2V
)model_27/dense_116/BiasAdd/ReadVariableOp)model_27/dense_116/BiasAdd/ReadVariableOp2T
(model_27/dense_116/MatMul/ReadVariableOp(model_27/dense_116/MatMul/ReadVariableOp2V
)model_27/dense_117/BiasAdd/ReadVariableOp)model_27/dense_117/BiasAdd/ReadVariableOp2T
(model_27/dense_117/MatMul/ReadVariableOp(model_27/dense_117/MatMul/ReadVariableOp2T
(model_27/distance/BiasAdd/ReadVariableOp(model_27/distance/BiasAdd/ReadVariableOp2R
'model_27/distance/MatMul/ReadVariableOp'model_27/distance/MatMul/ReadVariableOp2H
"model_27/gru_5/Read/ReadVariableOp"model_27/gru_5/Read/ReadVariableOp2L
$model_27/gru_5/Read_1/ReadVariableOp$model_27/gru_5/Read_1/ReadVariableOp2L
$model_27/gru_5/Read_2/ReadVariableOp$model_27/gru_5/Read_2/ReadVariableOp:S O
,
_output_shapes
:         ш

_user_specified_nameinput
╜>
г
__inference_standard_gru_388061

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:Ё:Ё*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  └B
ShapeShapetranspose:y:0*
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
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
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:ъ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         └*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Ёi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         ЁQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :г
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Ёm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         ЁS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :й
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         PM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         Pb
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         PQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         P]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         PY
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         PI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         PS
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         PJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         PQ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         PV
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         Pn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╢
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*X
_output_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_387971*
condR
while_cond_387970*W
output_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         P*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         P]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         PX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:                  └:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_46fba877-7daf-4fec-82cd-2aa8cca36b11*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  └
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
я"
№
A__inference_gru_5_layer_call_and_return_conditional_losses_385058

inputs0
read_readvariableop_resource:
└Ё1
read_1_readvariableop_resource:	PЁ1
read_2_readvariableop_resource:	Ё

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpв9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp;
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ps
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         PE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*,
_output_shapes
:         d└]
mulMulinputsones_like:output:0*
T0*,
_output_shapes
:         d└r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
└Ё*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└Ёu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	PЁ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	PЁu
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Ё*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	ЁО
PartitionedCallPartitionedCallmul:z:0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:         P:         P:         P: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_gru_384837Ш
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
└Ё*
dtype0в
*gru_5/gru_cell_5/kernel/Regularizer/SquareSquareAgru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└Ёz
)gru_5/gru_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       │
'gru_5/gru_cell_5/kernel/Regularizer/SumSum.gru_5/gru_cell_5/kernel/Regularizer/Square:y:02gru_5/gru_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)gru_5/gru_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8╡
'gru_5/gru_cell_5/kernel/Regularizer/mulMul2gru_5/gru_cell_5/kernel/Regularizer/mul/x:output:00gru_5/gru_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         P╚
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp:^gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         d└: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2v
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs
╔
│
__inference_loss_fn_4_389283M
;dense_117_kernel_regularizer_square_readvariableop_resource:2

identityИв2dense_117/kernel/Regularizer/Square/ReadVariableOpо
2dense_117/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;dense_117_kernel_regularizer_square_readvariableop_resource*
_output_shapes

:2
*
dtype0Т
#dense_117/kernel/Regularizer/SquareSquare:dense_117/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
s
"dense_117/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_117/kernel/Regularizer/SumSum'dense_117/kernel/Regularizer/Square:y:0+dense_117/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_117/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_117/kernel/Regularizer/mulMul+dense_117/kernel/Regularizer/mul/x:output:0)dense_117/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentity$dense_117/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^dense_117/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2dense_117/kernel/Regularizer/Square/ReadVariableOp2dense_117/kernel/Regularizer/Square/ReadVariableOp
Х
║
&__inference_gru_5_layer_call_fn_387449
inputs_0
unknown:
└Ё
	unknown_0:	PЁ
	unknown_1:	Ё
identityИвStatefulPartitionedCallш
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_gru_5_layer_call_and_return_conditional_losses_384175o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         P`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  └: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:                  └
"
_user_specified_name
inputs/0
╚>
╣
&__forward_gpu_gru_with_fallback_387861

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         PQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	└P:	└P:	└P*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:рS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Т
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:P[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:P[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:P\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:P\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:P\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:PM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : п
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ╫
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:                  P:         P: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         Pc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:         PZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:                  └:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_cd92f801-1809-43fe-9083-5bd9c408b021*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_387726_387862*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  └
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
ш
л
E__inference_dense_117_layer_call_and_return_conditional_losses_385126

inputs0
matmul_readvariableop_resource:2
-
biasadd_readvariableop_resource:

identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpв2dense_117/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
С
2dense_117/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
*
dtype0Т
#dense_117/kernel/Regularizer/SquareSquare:dense_117/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
s
"dense_117/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_117/kernel/Regularizer/SumSum'dense_117/kernel/Regularizer/Square:y:0+dense_117/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_117/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_117/kernel/Regularizer/mulMul+dense_117/kernel/Regularizer/mul/x:output:0)dense_117/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         
м
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_117/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_117/kernel/Regularizer/Square/ReadVariableOp2dense_117/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
ы-
т
while_body_385439
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstackИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @  з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         └*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Ё|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         ЁW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╡
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_splitГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ЁВ
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         ЁY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╗
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         PY
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         Pt
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         P]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         Po
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         Pk
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         PU

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         Pl
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         PP
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         Pc
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         Ph
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         Pr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         P"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё: 
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
: :-)
'
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
└Ё:!

_output_shapes	
:Ё:%	!

_output_shapes
:	PЁ:!


_output_shapes	
:Ё
ь
╝
__inference_loss_fn_0_389239V
;conv2d_20_kernel_regularizer_square_readvariableop_resource:
╚
identityИв2conv2d_20/kernel/Regularizer/Square/ReadVariableOp╖
2conv2d_20/kernel/Regularizer/Square/ReadVariableOpReadVariableOp;conv2d_20_kernel_regularizer_square_readvariableop_resource*'
_output_shapes
:
╚*
dtype0Ы
#conv2d_20/kernel/Regularizer/SquareSquare:conv2d_20/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:
╚{
"conv2d_20/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ю
 conv2d_20/kernel/Regularizer/SumSum'conv2d_20/kernel/Regularizer/Square:y:0+conv2d_20/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_20/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 conv2d_20/kernel/Regularizer/mulMul+conv2d_20/kernel/Regularizer/mul/x:output:0)conv2d_20/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: b
IdentityIdentity$conv2d_20/kernel/Regularizer/mul:z:0^NoOp*
T0*
_output_shapes
: {
NoOpNoOp3^conv2d_20/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*
_input_shapes
: 2h
2conv2d_20/kernel/Regularizer/Square/ReadVariableOp2conv2d_20/kernel/Regularizer/Square/ReadVariableOp
▀У
╪

:__inference___backward_gpu_gru_with_fallback_384031_384167
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         Pd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         P`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         PO
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: А
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         Pq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         P┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         P}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:в
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*4
_output_shapes"
 :                  P*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:Ф
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*V
_output_shapesD
B:                  └:         P: :р╤*
rnn_modegruЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:┌
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*5
_output_shapes#
!:                  └u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         P\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ашi
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ашi
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:Ашh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А2h
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А2h
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А2g
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Ph
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Ph
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:PШ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ч
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:Ашы
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:Ашы
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:Ашъ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А2ъ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А2ъ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А2щ
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:Pь
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:Pь
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:Po
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  д
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  ж
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  ж
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:PPo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:PPo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:PPh
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:Ph
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:Ph
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pг
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pд
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pд
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:PЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╕
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╕
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╕
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPО
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:рЖ
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
└ЁЛ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	PЁm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Ё   в
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Ё|
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*5
_output_shapes#
!:                  └t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         Pg

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
└Ёh

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	PЁi

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	Ё"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*л
_input_shapesЩ
Ц:         P:         P:         P: :         P:         P:                  P: ::                  └:         P: :р╤::         P: ::::::: : : *<
api_implements*(gru_db61c2bf-a5c1-4186-aba1-3da85e9d811a*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_384166*
go_backwards( *

time_major( :- )
'
_output_shapes
:         P:1-
+
_output_shapes
:         P:-)
'
_output_shapes
:         P:

_output_shapes
: :-)
'
_output_shapes
:         P:1-
+
_output_shapes
:         P::6
4
_output_shapes"
 :                  P:

_output_shapes
: :

_output_shapes
::;	7
5
_output_shapes#
!:                  └:1
-
+
_output_shapes
:         P:

_output_shapes
: :"

_output_shapes

:р╤: 

_output_shapes
::-)
'
_output_shapes
:         P:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
В5
п
(__inference_gpu_gru_with_fallback_384453

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  └P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         PQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	└P:	└P:	└P*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:рS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Т
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:P[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:P[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:P\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:P\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:P\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:PM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╦
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:р╤U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ╙
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:                  P:         P: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         Pc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:         PZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:                  └:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_e181d9fc-fc6a-43aa-822e-4cfab4a9a7e1*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  └
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
Р	
▐
while_cond_385438
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_385438___redundant_placeholder04
0while_while_cond_385438___redundant_placeholder14
0while_while_cond_385438___redundant_placeholder24
0while_while_cond_385438___redundant_placeholder34
0while_while_cond_385438___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :         P: :::::: 
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
: :-)
'
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ы-
т
while_body_383427
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstackИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @  з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         └*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Ё|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         ЁW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╡
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_splitГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ЁВ
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         ЁY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╗
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         PY
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         Pt
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         P]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         Po
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         Pk
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         PU

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         Pl
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         PP
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         Pc
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         Ph
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         Pr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         P"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё: 
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
: :-)
'
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
└Ё:!

_output_shapes	
:Ё:%	!

_output_shapes
:	PЁ:!


_output_shapes	
:Ё
╜>
г
__inference_standard_gru_384377

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:Ё:Ё*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  └B
ShapeShapetranspose:y:0*
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
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
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:ъ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         └*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Ёi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         ЁQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :г
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Ёm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         ЁS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :й
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         PM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         Pb
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         PQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         P]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         PY
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         PI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         PS
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         PJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         PQ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         PV
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         Pn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╢
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*X
_output_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_384287*
condR
while_cond_384286*W
output_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         P*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         P]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         PX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:                  └:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_e181d9fc-fc6a-43aa-822e-4cfab4a9a7e1*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  └
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
в>
г
__inference_standard_gru_388861

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:Ё:Ё*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d         └B
ShapeShapetranspose:y:0*
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
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
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:ъ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         └*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Ёi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         ЁQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :г
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Ёm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         ЁS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :й
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         PM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         Pb
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         PQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         P]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         PY
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         PI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         PS
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         PJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         PQ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         PV
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         Pn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╢
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*X
_output_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_388771*
condR
while_cond_388770*W
output_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         P*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         P]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         PX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:         d└:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_2a22995d-d6b2-4c40-9ddf-56bd2b6b1c65*
api_preferred_deviceCPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
Р	
▐
while_cond_384746
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_384746___redundant_placeholder04
0while_while_cond_384746___redundant_placeholder14
0while_while_cond_384746___redundant_placeholder24
0while_while_cond_384746___redundant_placeholder34
0while_while_cond_384746___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :         P: :::::: 
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
: :-)
'
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Р	
▐
while_cond_387558
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_387558___redundant_placeholder04
0while_while_cond_387558___redundant_placeholder14
0while_while_cond_387558___redundant_placeholder24
0while_while_cond_387558___redundant_placeholder34
0while_while_cond_387558___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :         P: :::::: 
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
: :-)
'
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
Р	
▐
while_cond_383863
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_383863___redundant_placeholder04
0while_while_cond_383863___redundant_placeholder14
0while_while_cond_383863___redundant_placeholder24
0while_while_cond_383863___redundant_placeholder34
0while_while_cond_383863___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :         P: :::::: 
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
: :-)
'
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
в>
г
__inference_standard_gru_387075

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:Ё:Ё*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d         └B
ShapeShapetranspose:y:0*
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
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
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:ъ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         └*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Ёi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         ЁQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :г
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Ёm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         ЁS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :й
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         PM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         Pb
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         PQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         P]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         PY
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         PI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         PS
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         PJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         PQ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         PV
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         Pn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╢
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*X
_output_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_386985*
condR
while_cond_386984*W
output_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         P*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         P]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         PX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:         d└:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_789081ee-88db-495d-b4e3-b947ed1fe92c*
api_preferred_deviceCPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
└
G
+__inference_reshape_33_layer_call_fn_387425

inputs
identity╣
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         d└* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_reshape_33_layer_call_and_return_conditional_losses_384669e
IdentityIdentityPartitionedCall:output:0*
T0*,
_output_shapes
:         d└"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*/
_input_shapes
:         ш:X T
0
_output_shapes
:         ш
 
_user_specified_nameinputs
ш
л
E__inference_dense_115_layer_call_and_return_conditional_losses_389163

inputs0
matmul_readvariableop_resource:2
-
biasadd_readvariableop_resource:

identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpв2dense_115/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
С
2dense_115/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
*
dtype0Т
#dense_115/kernel/Regularizer/SquareSquare:dense_115/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
s
"dense_115/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_115/kernel/Regularizer/SumSum'dense_115/kernel/Regularizer/Square:y:0+dense_115/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_115/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_115/kernel/Regularizer/mulMul+dense_115/kernel/Regularizer/mul/x:output:0)dense_115/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         
м
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_115/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_115/kernel/Regularizer/Square/ReadVariableOp2dense_115/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
╜>
г
__inference_standard_gru_387649

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:Ё:Ё*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  └B
ShapeShapetranspose:y:0*
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
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
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:ъ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         └*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Ёi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         ЁQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :г
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Ёm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         ЁS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :й
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         PM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         Pb
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         PQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         P]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         PY
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         PI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         PS
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         PJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         PQ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         PV
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         Pn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╢
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*X
_output_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_387559*
condR
while_cond_387558*W
output_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         P*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         P]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         PX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:                  └:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_cd92f801-1809-43fe-9083-5bd9c408b021*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  └
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
Ъ

ї
D__inference_distance_layer_call_and_return_conditional_losses_389208

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         V
SigmoidSigmoidBiasAdd:output:0*
T0*'
_output_shapes
:         Z
IdentityIdentitySigmoid:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
╟
Ч
*__inference_dense_117_layer_call_fn_389172

inputs
unknown:2

	unknown_0:

identityИвStatefulPartitionedCall▌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_117_layer_call_and_return_conditional_losses_385126o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         
`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
╚>
╣
&__forward_gpu_gru_with_fallback_384589

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         PQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	└P:	└P:	└P*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:рS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Т
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:P[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:P[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:P\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:P\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:P\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:PM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : п
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ╫
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:                  P:         P: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         Pc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:         PZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:                  └:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_e181d9fc-fc6a-43aa-822e-4cfab4a9a7e1*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_384454_384590*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  └
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
н>
╣
&__forward_gpu_gru_with_fallback_388661

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         PQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	└P:	└P:	└P*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:рS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Т
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:P[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:P[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:P\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:P\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:P\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:PM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : п
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:d         P:         P: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         Pc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:         PZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:         d└:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_92f1cccd-1048-4a98-9c03-9659428f4778*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_388526_388662*
go_backwards( *

time_major( :T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
╟
Ч
*__inference_dense_116_layer_call_fn_389122

inputs
unknown:P2
	unknown_0:2
identityИвStatefulPartitionedCall▌
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_116_layer_call_and_return_conditional_losses_385082o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         2`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         P: : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:         P
 
_user_specified_nameinputs
ы-
т
while_body_388771
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstackИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @  з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         └*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Ё|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         ЁW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╡
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_splitГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ЁВ
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         ЁY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╗
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         PY
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         Pt
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         P]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         Po
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         Pk
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         PU

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         Pl
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         PP
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         Pc
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         Ph
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         Pr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         P"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё: 
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
: :-)
'
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
└Ё:!

_output_shapes	
:Ё:%	!

_output_shapes
:	PЁ:!


_output_shapes	
:Ё
Ф#
№
A__inference_gru_5_layer_call_and_return_conditional_losses_384175

inputs0
read_readvariableop_resource:
└Ё1
read_1_readvariableop_resource:	PЁ1
read_2_readvariableop_resource:	Ё

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpв9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp;
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ps
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         PE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Е
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*5
_output_shapes#
!:                  └f
mulMulinputsones_like:output:0*
T0*5
_output_shapes#
!:                  └r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
└Ё*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└Ёu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	PЁ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	PЁu
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Ё*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	ЁО
PartitionedCallPartitionedCallmul:z:0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:         P:         P:         P: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_gru_383954Ш
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
└Ё*
dtype0в
*gru_5/gru_cell_5/kernel/Regularizer/SquareSquareAgru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└Ёz
)gru_5/gru_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       │
'gru_5/gru_cell_5/kernel/Regularizer/SumSum.gru_5/gru_cell_5/kernel/Regularizer/Square:y:02gru_5/gru_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)gru_5/gru_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8╡
'gru_5/gru_cell_5/kernel/Regularizer/mulMul2gru_5/gru_cell_5/kernel/Regularizer/mul/x:output:00gru_5/gru_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         P╚
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp:^gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':                  └: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2v
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:] Y
5
_output_shapes#
!:                  └
 
_user_specified_nameinputs
н>
╣
&__forward_gpu_gru_with_fallback_385049

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         PQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	└P:	└P:	└P*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:рS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Т
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:P[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:P[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:P\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:P\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:P\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:PM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : п
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ╬
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*H
_output_shapes6
4:d         P:         P: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         Pc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:         PZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:         d└:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_2285ca90-b083-416b-9c62-50ce1f92a903*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_384914_385050*
go_backwards( *

time_major( :T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
Тi
С

D__inference_model_27_layer_call_and_return_conditional_losses_386080	
input+
conv2d_20_385998:
╚
conv2d_20_386000:	╚ 
gru_5_386005:
└Ё
gru_5_386007:	PЁ
gru_5_386009:	Ё"
dense_116_386012:P2
dense_116_386014:2"
dense_114_386017:P2
dense_114_386019:2"
dense_117_386022:2

dense_117_386024:
"
dense_115_386027:2

dense_115_386029:

degree_386032:

degree_386034:!
distance_386037:

distance_386039:
identity

identity_1Ив!conv2d_20/StatefulPartitionedCallв2conv2d_20/kernel/Regularizer/Square/ReadVariableOpвdegree/StatefulPartitionedCallв!dense_114/StatefulPartitionedCallв2dense_114/kernel/Regularizer/Square/ReadVariableOpв!dense_115/StatefulPartitionedCallв2dense_115/kernel/Regularizer/Square/ReadVariableOpв!dense_116/StatefulPartitionedCallв2dense_116/kernel/Regularizer/Square/ReadVariableOpв!dense_117/StatefulPartitionedCallв2dense_117/kernel/Regularizer/Square/ReadVariableOpв distance/StatefulPartitionedCallвgru_5/StatefulPartitionedCallв9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp}
(tf.compat.v1.transpose_24/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          б
#tf.compat.v1.transpose_24/transpose	Transposeinput1tf.compat.v1.transpose_24/transpose/perm:output:0*
T0*,
_output_shapes
:         шщ
reshape_32/PartitionedCallPartitionedCall'tf.compat.v1.transpose_24/transpose:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ш* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_reshape_32_layer_call_and_return_conditional_losses_384630Ю
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall#reshape_32/PartitionedCall:output:0conv2d_20_385998conv2d_20_386000*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ш╚*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_384649Ў
max_pooling2d_8/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ш* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_383780ц
reshape_33/PartitionedCallPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         d└* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_reshape_33_layer_call_and_return_conditional_losses_384669Ф
gru_5/StatefulPartitionedCallStatefulPartitionedCall#reshape_33/PartitionedCall:output:0gru_5_386005gru_5_386007gru_5_386009*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_gru_5_layer_call_and_return_conditional_losses_385058Ч
!dense_116/StatefulPartitionedCallStatefulPartitionedCall&gru_5/StatefulPartitionedCall:output:0dense_116_386012dense_116_386014*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_116_layer_call_and_return_conditional_losses_385082Ч
!dense_114/StatefulPartitionedCallStatefulPartitionedCall&gru_5/StatefulPartitionedCall:output:0dense_114_386017dense_114_386019*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_114_layer_call_and_return_conditional_losses_385104Ы
!dense_117/StatefulPartitionedCallStatefulPartitionedCall*dense_116/StatefulPartitionedCall:output:0dense_117_386022dense_117_386024*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_117_layer_call_and_return_conditional_losses_385126Ы
!dense_115/StatefulPartitionedCallStatefulPartitionedCall*dense_114/StatefulPartitionedCall:output:0dense_115_386027dense_115_386029*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_115_layer_call_and_return_conditional_losses_385148П
degree/StatefulPartitionedCallStatefulPartitionedCall*dense_117/StatefulPartitionedCall:output:0degree_386032degree_386034*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_degree_layer_call_and_return_conditional_losses_385165Ч
 distance/StatefulPartitionedCallStatefulPartitionedCall*dense_115/StatefulPartitionedCall:output:0distance_386037distance_386039*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_distance_layer_call_and_return_conditional_losses_385182М
2conv2d_20/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_20_385998*'
_output_shapes
:
╚*
dtype0Ы
#conv2d_20/kernel/Regularizer/SquareSquare:conv2d_20/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:
╚{
"conv2d_20/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ю
 conv2d_20/kernel/Regularizer/SumSum'conv2d_20/kernel/Regularizer/Square:y:0+conv2d_20/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_20/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 conv2d_20/kernel/Regularizer/mulMul+conv2d_20/kernel/Regularizer/mul/x:output:0)conv2d_20/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: И
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpgru_5_386005* 
_output_shapes
:
└Ё*
dtype0в
*gru_5/gru_cell_5/kernel/Regularizer/SquareSquareAgru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└Ёz
)gru_5/gru_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       │
'gru_5/gru_cell_5/kernel/Regularizer/SumSum.gru_5/gru_cell_5/kernel/Regularizer/Square:y:02gru_5/gru_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)gru_5/gru_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8╡
'gru_5/gru_cell_5/kernel/Regularizer/mulMul2gru_5/gru_cell_5/kernel/Regularizer/mul/x:output:00gru_5/gru_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Г
2dense_114/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_114_386017*
_output_shapes

:P2*
dtype0Т
#dense_114/kernel/Regularizer/SquareSquare:dense_114/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2s
"dense_114/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_114/kernel/Regularizer/SumSum'dense_114/kernel/Regularizer/Square:y:0+dense_114/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_114/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_114/kernel/Regularizer/mulMul+dense_114/kernel/Regularizer/mul/x:output:0)dense_114/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Г
2dense_116/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_116_386012*
_output_shapes

:P2*
dtype0Т
#dense_116/kernel/Regularizer/SquareSquare:dense_116/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2s
"dense_116/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_116/kernel/Regularizer/SumSum'dense_116/kernel/Regularizer/Square:y:0+dense_116/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_116/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_116/kernel/Regularizer/mulMul+dense_116/kernel/Regularizer/mul/x:output:0)dense_116/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Г
2dense_115/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_115_386027*
_output_shapes

:2
*
dtype0Т
#dense_115/kernel/Regularizer/SquareSquare:dense_115/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
s
"dense_115/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_115/kernel/Regularizer/SumSum'dense_115/kernel/Regularizer/Square:y:0+dense_115/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_115/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_115/kernel/Regularizer/mulMul+dense_115/kernel/Regularizer/mul/x:output:0)dense_115/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Г
2dense_117/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_117_386022*
_output_shapes

:2
*
dtype0Т
#dense_117/kernel/Regularizer/SquareSquare:dense_117/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
s
"dense_117/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_117/kernel/Regularizer/SumSum'dense_117/kernel/Regularizer/Square:y:0+dense_117/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_117/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_117/kernel/Regularizer/mulMul+dense_117/kernel/Regularizer/mul/x:output:0)dense_117/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)distance/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         x

Identity_1Identity'degree/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         г
NoOpNoOp"^conv2d_20/StatefulPartitionedCall3^conv2d_20/kernel/Regularizer/Square/ReadVariableOp^degree/StatefulPartitionedCall"^dense_114/StatefulPartitionedCall3^dense_114/kernel/Regularizer/Square/ReadVariableOp"^dense_115/StatefulPartitionedCall3^dense_115/kernel/Regularizer/Square/ReadVariableOp"^dense_116/StatefulPartitionedCall3^dense_116/kernel/Regularizer/Square/ReadVariableOp"^dense_117/StatefulPartitionedCall3^dense_117/kernel/Regularizer/Square/ReadVariableOp!^distance/StatefulPartitionedCall^gru_5/StatefulPartitionedCall:^gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::         ш: : : : : : : : : : : : : : : : : 2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2h
2conv2d_20/kernel/Regularizer/Square/ReadVariableOp2conv2d_20/kernel/Regularizer/Square/ReadVariableOp2@
degree/StatefulPartitionedCalldegree/StatefulPartitionedCall2F
!dense_114/StatefulPartitionedCall!dense_114/StatefulPartitionedCall2h
2dense_114/kernel/Regularizer/Square/ReadVariableOp2dense_114/kernel/Regularizer/Square/ReadVariableOp2F
!dense_115/StatefulPartitionedCall!dense_115/StatefulPartitionedCall2h
2dense_115/kernel/Regularizer/Square/ReadVariableOp2dense_115/kernel/Regularizer/Square/ReadVariableOp2F
!dense_116/StatefulPartitionedCall!dense_116/StatefulPartitionedCall2h
2dense_116/kernel/Regularizer/Square/ReadVariableOp2dense_116/kernel/Regularizer/Square/ReadVariableOp2F
!dense_117/StatefulPartitionedCall!dense_117/StatefulPartitionedCall2h
2dense_117/kernel/Regularizer/Square/ReadVariableOp2dense_117/kernel/Regularizer/Square/ReadVariableOp2D
 distance/StatefulPartitionedCall distance/StatefulPartitionedCall2>
gru_5/StatefulPartitionedCallgru_5/StatefulPartitionedCall2v
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:S O
,
_output_shapes
:         ш

_user_specified_nameinput
в>
г
__inference_standard_gru_386565

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:Ё:Ё*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d         └B
ShapeShapetranspose:y:0*
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
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
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:ъ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         └*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Ёi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         ЁQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :г
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Ёm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         ЁS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :й
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         PM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         Pb
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         PQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         P]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         PY
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         PI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         PS
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         PJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         PQ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         PV
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         Pn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╢
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*X
_output_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_386475*
condR
while_cond_386474*W
output_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         P*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         P]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         PX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:         d└:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_2ba03b4a-a74b-4a0a-8b84-d75adc898f08*
api_preferred_deviceCPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
▐4
п
(__inference_gpu_gru_with_fallback_387151

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d         └P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         PQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	└P:	└P:	└P*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:рS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Т
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:P[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:P[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:P\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:P\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:P\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:PM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╦
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:р╤U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:d         P:         P: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         Pc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:         PZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:         d└:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_789081ee-88db-495d-b4e3-b947ed1fe92c*
api_preferred_deviceGPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
╦9
№
A__inference_gru_5_layer_call_and_return_conditional_losses_385750

inputs0
read_readvariableop_resource:
└Ё1
read_1_readvariableop_resource:	PЁ1
read_2_readvariableop_resource:	Ё

identity_3ИвRead/ReadVariableOpвRead_1/ReadVariableOpвRead_2/ReadVariableOpв9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp;
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskP
zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :Ps
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
 *    l
zerosFillzeros/packed:output:0zeros/Const:output:0*
T0*'
_output_shapes
:         PE
ones_like/ShapeShapeinputs*
T0*
_output_shapes
:T
ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?|
	ones_likeFillones_like/Shape:output:0ones_like/Const:output:0*
T0*,
_output_shapes
:         d└R
dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?u
dropout/MulMulones_like:output:0dropout/Const:output:0*
T0*,
_output_shapes
:         d└O
dropout/ShapeShapeones_like:output:0*
T0*
_output_shapes
:Э
$dropout/random_uniform/RandomUniformRandomUniformdropout/Shape:output:0*
T0*,
_output_shapes
:         d└*
dtype0*

seed[
dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=л
dropout/GreaterEqualGreaterEqual-dropout/random_uniform/RandomUniform:output:0dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         d└t
dropout/CastCastdropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:         d└n
dropout/Mul_1Muldropout/Mul:z:0dropout/Cast:y:0*
T0*,
_output_shapes
:         d└T
dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?y
dropout_1/MulMulones_like:output:0dropout_1/Const:output:0*
T0*,
_output_shapes
:         d└Q
dropout_1/ShapeShapeones_like:output:0*
T0*
_output_shapes
:о
&dropout_1/random_uniform/RandomUniformRandomUniformdropout_1/Shape:output:0*
T0*,
_output_shapes
:         d└*
dtype0*

seed*
seed2]
dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=▒
dropout_1/GreaterEqualGreaterEqual/dropout_1/random_uniform/RandomUniform:output:0!dropout_1/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         d└x
dropout_1/CastCastdropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:         d└t
dropout_1/Mul_1Muldropout_1/Mul:z:0dropout_1/Cast:y:0*
T0*,
_output_shapes
:         d└T
dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?y
dropout_2/MulMulones_like:output:0dropout_2/Const:output:0*
T0*,
_output_shapes
:         d└Q
dropout_2/ShapeShapeones_like:output:0*
T0*
_output_shapes
:о
&dropout_2/random_uniform/RandomUniformRandomUniformdropout_2/Shape:output:0*
T0*,
_output_shapes
:         d└*
dtype0*

seed*
seed2]
dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=▒
dropout_2/GreaterEqualGreaterEqual/dropout_2/random_uniform/RandomUniform:output:0!dropout_2/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         d└x
dropout_2/CastCastdropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:         d└t
dropout_2/Mul_1Muldropout_2/Mul:z:0dropout_2/Cast:y:0*
T0*,
_output_shapes
:         d└\
mulMulinputsdropout/Mul_1:z:0*
T0*,
_output_shapes
:         d└r
Read/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
└Ё*
dtype0\
IdentityIdentityRead/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└Ёu
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource*
_output_shapes
:	PЁ*
dtype0_

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	PЁu
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes
:	Ё*
dtype0_

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	ЁО
PartitionedCallPartitionedCallmul:z:0zeros:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:         P:         P:         P: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_gru_385529Ш
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpread_readvariableop_resource* 
_output_shapes
:
└Ё*
dtype0в
*gru_5/gru_cell_5/kernel/Regularizer/SquareSquareAgru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└Ёz
)gru_5/gru_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       │
'gru_5/gru_cell_5/kernel/Regularizer/SumSum.gru_5/gru_cell_5/kernel/Regularizer/Square:y:02gru_5/gru_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)gru_5/gru_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8╡
'gru_5/gru_cell_5/kernel/Regularizer/mulMul2gru_5/gru_cell_5/kernel/Regularizer/mul/x:output:00gru_5/gru_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: i

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         P╚
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp:^gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:         d└: : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp2v
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs
№╣
╩
D__inference_model_27_layer_call_and_return_conditional_losses_387365

inputsC
(conv2d_20_conv2d_readvariableop_resource:
╚8
)conv2d_20_biasadd_readvariableop_resource:	╚6
"gru_5_read_readvariableop_resource:
└Ё7
$gru_5_read_1_readvariableop_resource:	PЁ7
$gru_5_read_2_readvariableop_resource:	Ё:
(dense_116_matmul_readvariableop_resource:P27
)dense_116_biasadd_readvariableop_resource:2:
(dense_114_matmul_readvariableop_resource:P27
)dense_114_biasadd_readvariableop_resource:2:
(dense_117_matmul_readvariableop_resource:2
7
)dense_117_biasadd_readvariableop_resource:
:
(dense_115_matmul_readvariableop_resource:2
7
)dense_115_biasadd_readvariableop_resource:
7
%degree_matmul_readvariableop_resource:
4
&degree_biasadd_readvariableop_resource:9
'distance_matmul_readvariableop_resource:
6
(distance_biasadd_readvariableop_resource:
identity

identity_1Ив conv2d_20/BiasAdd/ReadVariableOpвconv2d_20/Conv2D/ReadVariableOpв2conv2d_20/kernel/Regularizer/Square/ReadVariableOpвdegree/BiasAdd/ReadVariableOpвdegree/MatMul/ReadVariableOpв dense_114/BiasAdd/ReadVariableOpвdense_114/MatMul/ReadVariableOpв2dense_114/kernel/Regularizer/Square/ReadVariableOpв dense_115/BiasAdd/ReadVariableOpвdense_115/MatMul/ReadVariableOpв2dense_115/kernel/Regularizer/Square/ReadVariableOpв dense_116/BiasAdd/ReadVariableOpвdense_116/MatMul/ReadVariableOpв2dense_116/kernel/Regularizer/Square/ReadVariableOpв dense_117/BiasAdd/ReadVariableOpвdense_117/MatMul/ReadVariableOpв2dense_117/kernel/Regularizer/Square/ReadVariableOpвdistance/BiasAdd/ReadVariableOpвdistance/MatMul/ReadVariableOpвgru_5/Read/ReadVariableOpвgru_5/Read_1/ReadVariableOpвgru_5/Read_2/ReadVariableOpв9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp}
(tf.compat.v1.transpose_24/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          в
#tf.compat.v1.transpose_24/transpose	Transposeinputs1tf.compat.v1.transpose_24/transpose/perm:output:0*
T0*,
_output_shapes
:         шg
reshape_32/ShapeShape'tf.compat.v1.transpose_24/transpose:y:0*
T0*
_output_shapes
:h
reshape_32/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_32/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_32/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
reshape_32/strided_sliceStridedSlicereshape_32/Shape:output:0'reshape_32/strided_slice/stack:output:0)reshape_32/strided_slice/stack_1:output:0)reshape_32/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask]
reshape_32/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value
B :ш\
reshape_32/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value	B :\
reshape_32/Reshape/shape/3Const*
_output_shapes
: *
dtype0*
value	B :р
reshape_32/Reshape/shapePack!reshape_32/strided_slice:output:0#reshape_32/Reshape/shape/1:output:0#reshape_32/Reshape/shape/2:output:0#reshape_32/Reshape/shape/3:output:0*
N*
T0*
_output_shapes
:д
reshape_32/ReshapeReshape'tf.compat.v1.transpose_24/transpose:y:0!reshape_32/Reshape/shape:output:0*
T0*0
_output_shapes
:         шС
conv2d_20/Conv2D/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*'
_output_shapes
:
╚*
dtype0─
conv2d_20/Conv2DConv2Dreshape_32/Reshape:output:0'conv2d_20/Conv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ш╚*
paddingSAME*
strides
З
 conv2d_20/BiasAdd/ReadVariableOpReadVariableOp)conv2d_20_biasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0Э
conv2d_20/BiasAddBiasAddconv2d_20/Conv2D:output:0(conv2d_20/BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ш╚l
conv2d_20/EluEluconv2d_20/BiasAdd:output:0*
T0*1
_output_shapes
:         ш╚─
max_pooling2d_8/MaxPoolMaxPoolconv2d_20/Elu:activations:0*0
_output_shapes
:         ш*
data_formatNCHW*
ksize

*
paddingVALID*
strides

`
reshape_33/ShapeShape max_pooling2d_8/MaxPool:output:0*
T0*
_output_shapes
:h
reshape_33/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: j
 reshape_33/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:j
 reshape_33/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
reshape_33/strided_sliceStridedSlicereshape_33/Shape:output:0'reshape_33/strided_slice/stack:output:0)reshape_33/strided_slice/stack_1:output:0)reshape_33/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask\
reshape_33/Reshape/shape/1Const*
_output_shapes
: *
dtype0*
value	B :d]
reshape_33/Reshape/shape/2Const*
_output_shapes
: *
dtype0*
value
B :└╗
reshape_33/Reshape/shapePack!reshape_33/strided_slice:output:0#reshape_33/Reshape/shape/1:output:0#reshape_33/Reshape/shape/2:output:0*
N*
T0*
_output_shapes
:Щ
reshape_33/ReshapeReshape max_pooling2d_8/MaxPool:output:0!reshape_33/Reshape/shape:output:0*
T0*,
_output_shapes
:         d└V
gru_5/ShapeShapereshape_33/Reshape:output:0*
T0*
_output_shapes
:c
gru_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: e
gru_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:e
gru_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:я
gru_5/strided_sliceStridedSlicegru_5/Shape:output:0"gru_5/strided_slice/stack:output:0$gru_5/strided_slice/stack_1:output:0$gru_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskV
gru_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value	B :PЕ
gru_5/zeros/packedPackgru_5/strided_slice:output:0gru_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:V
gru_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ~
gru_5/zerosFillgru_5/zeros/packed:output:0gru_5/zeros/Const:output:0*
T0*'
_output_shapes
:         P`
gru_5/ones_like/ShapeShapereshape_33/Reshape:output:0*
T0*
_output_shapes
:Z
gru_5/ones_like/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *  А?О
gru_5/ones_likeFillgru_5/ones_like/Shape:output:0gru_5/ones_like/Const:output:0*
T0*,
_output_shapes
:         d└X
gru_5/dropout/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?З
gru_5/dropout/MulMulgru_5/ones_like:output:0gru_5/dropout/Const:output:0*
T0*,
_output_shapes
:         d└[
gru_5/dropout/ShapeShapegru_5/ones_like:output:0*
T0*
_output_shapes
:й
*gru_5/dropout/random_uniform/RandomUniformRandomUniformgru_5/dropout/Shape:output:0*
T0*,
_output_shapes
:         d└*
dtype0*

seeda
gru_5/dropout/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=╜
gru_5/dropout/GreaterEqualGreaterEqual3gru_5/dropout/random_uniform/RandomUniform:output:0%gru_5/dropout/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         d└А
gru_5/dropout/CastCastgru_5/dropout/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:         d└А
gru_5/dropout/Mul_1Mulgru_5/dropout/Mul:z:0gru_5/dropout/Cast:y:0*
T0*,
_output_shapes
:         d└Z
gru_5/dropout_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?Л
gru_5/dropout_1/MulMulgru_5/ones_like:output:0gru_5/dropout_1/Const:output:0*
T0*,
_output_shapes
:         d└]
gru_5/dropout_1/ShapeShapegru_5/ones_like:output:0*
T0*
_output_shapes
:║
,gru_5/dropout_1/random_uniform/RandomUniformRandomUniformgru_5/dropout_1/Shape:output:0*
T0*,
_output_shapes
:         d└*
dtype0*

seed*
seed2c
gru_5/dropout_1/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=├
gru_5/dropout_1/GreaterEqualGreaterEqual5gru_5/dropout_1/random_uniform/RandomUniform:output:0'gru_5/dropout_1/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         d└Д
gru_5/dropout_1/CastCast gru_5/dropout_1/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:         d└Ж
gru_5/dropout_1/Mul_1Mulgru_5/dropout_1/Mul:z:0gru_5/dropout_1/Cast:y:0*
T0*,
_output_shapes
:         d└Z
gru_5/dropout_2/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *ф8О?Л
gru_5/dropout_2/MulMulgru_5/ones_like:output:0gru_5/dropout_2/Const:output:0*
T0*,
_output_shapes
:         d└]
gru_5/dropout_2/ShapeShapegru_5/ones_like:output:0*
T0*
_output_shapes
:║
,gru_5/dropout_2/random_uniform/RandomUniformRandomUniformgru_5/dropout_2/Shape:output:0*
T0*,
_output_shapes
:         d└*
dtype0*

seed*
seed2c
gru_5/dropout_2/GreaterEqual/yConst*
_output_shapes
: *
dtype0*
valueB
 *═╠╠=├
gru_5/dropout_2/GreaterEqualGreaterEqual5gru_5/dropout_2/random_uniform/RandomUniform:output:0'gru_5/dropout_2/GreaterEqual/y:output:0*
T0*,
_output_shapes
:         d└Д
gru_5/dropout_2/CastCast gru_5/dropout_2/GreaterEqual:z:0*

DstT0*

SrcT0
*,
_output_shapes
:         d└Ж
gru_5/dropout_2/Mul_1Mulgru_5/dropout_2/Mul:z:0gru_5/dropout_2/Cast:y:0*
T0*,
_output_shapes
:         d└}
	gru_5/mulMulreshape_33/Reshape:output:0gru_5/dropout/Mul_1:z:0*
T0*,
_output_shapes
:         d└~
gru_5/Read/ReadVariableOpReadVariableOp"gru_5_read_readvariableop_resource* 
_output_shapes
:
└Ё*
dtype0h
gru_5/IdentityIdentity!gru_5/Read/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└ЁБ
gru_5/Read_1/ReadVariableOpReadVariableOp$gru_5_read_1_readvariableop_resource*
_output_shapes
:	PЁ*
dtype0k
gru_5/Identity_1Identity#gru_5/Read_1/ReadVariableOp:value:0*
T0*
_output_shapes
:	PЁБ
gru_5/Read_2/ReadVariableOpReadVariableOp$gru_5_read_2_readvariableop_resource*
_output_shapes
:	Ё*
dtype0k
gru_5/Identity_2Identity#gru_5/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes
:	Ё▓
gru_5/PartitionedCallPartitionedCallgru_5/mul:z:0gru_5/zeros:output:0gru_5/Identity:output:0gru_5/Identity_1:output:0gru_5/Identity_2:output:0*
Tin	
2*
Tout
2*
_collective_manager_ids
 *S
_output_shapesA
?:         P:         P:         P: * 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *(
f#R!
__inference_standard_gru_387075И
dense_116/MatMul/ReadVariableOpReadVariableOp(dense_116_matmul_readvariableop_resource*
_output_shapes

:P2*
dtype0Х
dense_116/MatMulMatMulgru_5/PartitionedCall:output:0'dense_116/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2Ж
 dense_116/BiasAdd/ReadVariableOpReadVariableOp)dense_116_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Ф
dense_116/BiasAddBiasAdddense_116/MatMul:product:0(dense_116/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2И
dense_114/MatMul/ReadVariableOpReadVariableOp(dense_114_matmul_readvariableop_resource*
_output_shapes

:P2*
dtype0Х
dense_114/MatMulMatMulgru_5/PartitionedCall:output:0'dense_114/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2Ж
 dense_114/BiasAdd/ReadVariableOpReadVariableOp)dense_114_biasadd_readvariableop_resource*
_output_shapes
:2*
dtype0Ф
dense_114/BiasAddBiasAdddense_114/MatMul:product:0(dense_114/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2И
dense_117/MatMul/ReadVariableOpReadVariableOp(dense_117_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0С
dense_117/MatMulMatMuldense_116/BiasAdd:output:0'dense_117/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
Ж
 dense_117/BiasAdd/ReadVariableOpReadVariableOp)dense_117_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0Ф
dense_117/BiasAddBiasAdddense_117/MatMul:product:0(dense_117/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
И
dense_115/MatMul/ReadVariableOpReadVariableOp(dense_115_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0С
dense_115/MatMulMatMuldense_114/BiasAdd:output:0'dense_115/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
Ж
 dense_115/BiasAdd/ReadVariableOpReadVariableOp)dense_115_biasadd_readvariableop_resource*
_output_shapes
:
*
dtype0Ф
dense_115/BiasAddBiasAdddense_115/MatMul:product:0(dense_115/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
В
degree/MatMul/ReadVariableOpReadVariableOp%degree_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0Л
degree/MatMulMatMuldense_117/BiasAdd:output:0$degree/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         А
degree/BiasAdd/ReadVariableOpReadVariableOp&degree_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0Л
degree/BiasAddBiasAdddegree/MatMul:product:0%degree/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         ^
degree/TanhTanhdegree/BiasAdd:output:0*
T0*'
_output_shapes
:         Ж
distance/MatMul/ReadVariableOpReadVariableOp'distance_matmul_readvariableop_resource*
_output_shapes

:
*
dtype0П
distance/MatMulMatMuldense_115/BiasAdd:output:0&distance/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         Д
distance/BiasAdd/ReadVariableOpReadVariableOp(distance_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0С
distance/BiasAddBiasAdddistance/MatMul:product:0'distance/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         h
distance/SigmoidSigmoiddistance/BiasAdd:output:0*
T0*'
_output_shapes
:         д
2conv2d_20/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(conv2d_20_conv2d_readvariableop_resource*'
_output_shapes
:
╚*
dtype0Ы
#conv2d_20/kernel/Regularizer/SquareSquare:conv2d_20/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:
╚{
"conv2d_20/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ю
 conv2d_20/kernel/Regularizer/SumSum'conv2d_20/kernel/Regularizer/Square:y:0+conv2d_20/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_20/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 conv2d_20/kernel/Regularizer/mulMul+conv2d_20/kernel/Regularizer/mul/x:output:0)conv2d_20/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ю
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOp"gru_5_read_readvariableop_resource* 
_output_shapes
:
└Ё*
dtype0в
*gru_5/gru_cell_5/kernel/Regularizer/SquareSquareAgru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└Ёz
)gru_5/gru_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       │
'gru_5/gru_cell_5/kernel/Regularizer/SumSum.gru_5/gru_cell_5/kernel/Regularizer/Square:y:02gru_5/gru_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)gru_5/gru_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8╡
'gru_5/gru_cell_5/kernel/Regularizer/mulMul2gru_5/gru_cell_5/kernel/Regularizer/mul/x:output:00gru_5/gru_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ы
2dense_114/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_114_matmul_readvariableop_resource*
_output_shapes

:P2*
dtype0Т
#dense_114/kernel/Regularizer/SquareSquare:dense_114/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2s
"dense_114/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_114/kernel/Regularizer/SumSum'dense_114/kernel/Regularizer/Square:y:0+dense_114/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_114/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_114/kernel/Regularizer/mulMul+dense_114/kernel/Regularizer/mul/x:output:0)dense_114/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ы
2dense_116/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_116_matmul_readvariableop_resource*
_output_shapes

:P2*
dtype0Т
#dense_116/kernel/Regularizer/SquareSquare:dense_116/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2s
"dense_116/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_116/kernel/Regularizer/SumSum'dense_116/kernel/Regularizer/Square:y:0+dense_116/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_116/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_116/kernel/Regularizer/mulMul+dense_116/kernel/Regularizer/mul/x:output:0)dense_116/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ы
2dense_115/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_115_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0Т
#dense_115/kernel/Regularizer/SquareSquare:dense_115/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
s
"dense_115/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_115/kernel/Regularizer/SumSum'dense_115/kernel/Regularizer/Square:y:0+dense_115/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_115/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_115/kernel/Regularizer/mulMul+dense_115/kernel/Regularizer/mul/x:output:0)dense_115/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Ы
2dense_117/kernel/Regularizer/Square/ReadVariableOpReadVariableOp(dense_117_matmul_readvariableop_resource*
_output_shapes

:2
*
dtype0Т
#dense_117/kernel/Regularizer/SquareSquare:dense_117/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
s
"dense_117/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_117/kernel/Regularizer/SumSum'dense_117/kernel/Regularizer/Square:y:0+dense_117/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_117/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_117/kernel/Regularizer/mulMul+dense_117/kernel/Regularizer/mul/x:output:0)dense_117/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: c
IdentityIdentitydistance/Sigmoid:y:0^NoOp*
T0*'
_output_shapes
:         `

Identity_1Identitydegree/Tanh:y:0^NoOp*
T0*'
_output_shapes
:         ╛
NoOpNoOp!^conv2d_20/BiasAdd/ReadVariableOp ^conv2d_20/Conv2D/ReadVariableOp3^conv2d_20/kernel/Regularizer/Square/ReadVariableOp^degree/BiasAdd/ReadVariableOp^degree/MatMul/ReadVariableOp!^dense_114/BiasAdd/ReadVariableOp ^dense_114/MatMul/ReadVariableOp3^dense_114/kernel/Regularizer/Square/ReadVariableOp!^dense_115/BiasAdd/ReadVariableOp ^dense_115/MatMul/ReadVariableOp3^dense_115/kernel/Regularizer/Square/ReadVariableOp!^dense_116/BiasAdd/ReadVariableOp ^dense_116/MatMul/ReadVariableOp3^dense_116/kernel/Regularizer/Square/ReadVariableOp!^dense_117/BiasAdd/ReadVariableOp ^dense_117/MatMul/ReadVariableOp3^dense_117/kernel/Regularizer/Square/ReadVariableOp ^distance/BiasAdd/ReadVariableOp^distance/MatMul/ReadVariableOp^gru_5/Read/ReadVariableOp^gru_5/Read_1/ReadVariableOp^gru_5/Read_2/ReadVariableOp:^gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::         ш: : : : : : : : : : : : : : : : : 2D
 conv2d_20/BiasAdd/ReadVariableOp conv2d_20/BiasAdd/ReadVariableOp2B
conv2d_20/Conv2D/ReadVariableOpconv2d_20/Conv2D/ReadVariableOp2h
2conv2d_20/kernel/Regularizer/Square/ReadVariableOp2conv2d_20/kernel/Regularizer/Square/ReadVariableOp2>
degree/BiasAdd/ReadVariableOpdegree/BiasAdd/ReadVariableOp2<
degree/MatMul/ReadVariableOpdegree/MatMul/ReadVariableOp2D
 dense_114/BiasAdd/ReadVariableOp dense_114/BiasAdd/ReadVariableOp2B
dense_114/MatMul/ReadVariableOpdense_114/MatMul/ReadVariableOp2h
2dense_114/kernel/Regularizer/Square/ReadVariableOp2dense_114/kernel/Regularizer/Square/ReadVariableOp2D
 dense_115/BiasAdd/ReadVariableOp dense_115/BiasAdd/ReadVariableOp2B
dense_115/MatMul/ReadVariableOpdense_115/MatMul/ReadVariableOp2h
2dense_115/kernel/Regularizer/Square/ReadVariableOp2dense_115/kernel/Regularizer/Square/ReadVariableOp2D
 dense_116/BiasAdd/ReadVariableOp dense_116/BiasAdd/ReadVariableOp2B
dense_116/MatMul/ReadVariableOpdense_116/MatMul/ReadVariableOp2h
2dense_116/kernel/Regularizer/Square/ReadVariableOp2dense_116/kernel/Regularizer/Square/ReadVariableOp2D
 dense_117/BiasAdd/ReadVariableOp dense_117/BiasAdd/ReadVariableOp2B
dense_117/MatMul/ReadVariableOpdense_117/MatMul/ReadVariableOp2h
2dense_117/kernel/Regularizer/Square/ReadVariableOp2dense_117/kernel/Regularizer/Square/ReadVariableOp2B
distance/BiasAdd/ReadVariableOpdistance/BiasAdd/ReadVariableOp2@
distance/MatMul/ReadVariableOpdistance/MatMul/ReadVariableOp26
gru_5/Read/ReadVariableOpgru_5/Read/ReadVariableOp2:
gru_5/Read_1/ReadVariableOpgru_5/Read_1/ReadVariableOp2:
gru_5/Read_2/ReadVariableOpgru_5/Read_2/ReadVariableOp2v
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:T P
,
_output_shapes
:         ш
 
_user_specified_nameinputs
▐4
п
(__inference_gpu_gru_with_fallback_388525

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:d         └P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         PQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	└P:	└P:	└P*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:рS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Т
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:P[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:P[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:P\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:P\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:P\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:PM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╦
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:р╤U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ╩
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*H
_output_shapes6
4:d         P:         P: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         Pc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:         PZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*`
_input_shapesO
M:         d└:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_92f1cccd-1048-4a98-9c03-9659428f4778*
api_preferred_deviceGPU*
go_backwards( *

time_major( :T P
,
_output_shapes
:         d└
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
╔
╡
E__inference_conv2d_20_layer_call_and_return_conditional_losses_384649

inputs9
conv2d_readvariableop_resource:
╚.
biasadd_readvariableop_resource:	╚
identityИвBiasAdd/ReadVariableOpвConv2D/ReadVariableOpв2conv2d_20/kernel/Regularizer/Square/ReadVariableOp}
Conv2D/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:
╚*
dtype0Ы
Conv2DConv2DinputsConv2D/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ш╚*
paddingSAME*
strides
s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:╚*
dtype0
BiasAddBiasAddConv2D:output:0BiasAdd/ReadVariableOp:value:0*
T0*1
_output_shapes
:         ш╚X
EluEluBiasAdd:output:0*
T0*1
_output_shapes
:         ш╚Ъ
2conv2d_20/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_readvariableop_resource*'
_output_shapes
:
╚*
dtype0Ы
#conv2d_20/kernel/Regularizer/SquareSquare:conv2d_20/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:
╚{
"conv2d_20/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ю
 conv2d_20/kernel/Regularizer/SumSum'conv2d_20/kernel/Regularizer/Square:y:0+conv2d_20/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_20/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 conv2d_20/kernel/Regularizer/mulMul+conv2d_20/kernel/Regularizer/mul/x:output:0)conv2d_20/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: j
IdentityIdentityElu:activations:0^NoOp*
T0*1
_output_shapes
:         ш╚м
NoOpNoOp^BiasAdd/ReadVariableOp^Conv2D/ReadVariableOp3^conv2d_20/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*3
_input_shapes"
 :         ш: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
Conv2D/ReadVariableOpConv2D/ReadVariableOp2h
2conv2d_20/kernel/Regularizer/Square/ReadVariableOp2conv2d_20/kernel/Regularizer/Square/ReadVariableOp:X T
0
_output_shapes
:         ш
 
_user_specified_nameinputs
В5
п
(__inference_gpu_gru_with_fallback_387725

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  └P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : o

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*+
_output_shapes
:         PQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	└P:	└P:	└P*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:рS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Т
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:P[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:P[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:P\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:P\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:P\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:PM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : ╦
concatConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0*
_output_shapes

:р╤U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ╙
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat:output:0*
T0*Q
_output_shapes?
=:                  P:         P: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:х
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Г
ExpandDims_1
ExpandDimsstrided_slice:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @^
IdentityIdentitystrided_slice:output:0*
T0*'
_output_shapes
:         Pc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:         PZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:                  └:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_cd92f801-1809-43fe-9083-5bd9c408b021*
api_preferred_deviceGPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  └
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
╜>
г
__inference_standard_gru_383954

inputs

init_h

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3O
unstackUnpackbias*
T0*"
_output_shapes
:Ё:Ё*	
numc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:                  └B
ShapeShapetranspose:y:0*
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
valueB:╤
strided_sliceStridedSliceShape:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
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
         ▓
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @  р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥_
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
valueB:ъ
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*(
_output_shapes
:         └*
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:         Ёi
BiasAddBiasAddMatMul:product:0unstack:output:0*
T0*(
_output_shapes
:         ЁQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :г
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:         Ёm
	BiasAdd_1BiasAddMatMul_1:product:0unstack:output:1*
T0*(
_output_shapes
:         ЁS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :й
split_1Splitsplit_1/split_dim:output:0BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_split`
addAddV2split:output:0split_1:output:0*
T0*'
_output_shapes
:         PM
SigmoidSigmoidadd:z:0*
T0*'
_output_shapes
:         Pb
add_1AddV2split:output:1split_1:output:1*
T0*'
_output_shapes
:         PQ
	Sigmoid_1Sigmoid	add_1:z:0*
T0*'
_output_shapes
:         P]
mulMulSigmoid_1:y:0split_1:output:2*
T0*'
_output_shapes
:         PY
add_2AddV2split:output:2mul:z:0*
T0*'
_output_shapes
:         PI
TanhTanh	add_2:z:0*
T0*'
_output_shapes
:         PS
mul_1MulSigmoid:y:0init_h*
T0*'
_output_shapes
:         PJ
sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?Y
subSubsub/x:output:0Sigmoid:y:0*
T0*'
_output_shapes
:         PQ
mul_2Mulsub:z:0Tanh:y:0*
T0*'
_output_shapes
:         PV
add_3AddV2	mul_1:z:0	mul_2:z:0*
T0*'
_output_shapes
:         Pn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :┼
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щш╥F
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
         T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ╢
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelunstack:output:0recurrent_kernelunstack:output:1*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*X
_output_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё* 
_read_only_resource_inputs
 *
_stateful_parallelism( *
bodyR
while_body_383864*
condR
while_cond_383863*W
output_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    P   ╓
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*+
_output_shapes
:         P*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
         a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:З
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:         P*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ц
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?`
IdentityIdentitystrided_slice_2:output:0*
T0*'
_output_shapes
:         P]

Identity_1Identitytranspose_1:y:0*
T0*+
_output_shapes
:         PX

Identity_2Identitywhile:output:4*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:                  └:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_db61c2bf-a5c1-4186-aba1-3da85e9d811a*
api_preferred_deviceCPU*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  └
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
Р	
▐
while_cond_383426
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_less_strided_slice4
0while_while_cond_383426___redundant_placeholder04
0while_while_cond_383426___redundant_placeholder14
0while_while_cond_383426___redundant_placeholder24
0while_while_cond_383426___redundant_placeholder34
0while_while_cond_383426___redundant_placeholder4
while_identity
`

while/LessLesswhile_placeholderwhile_less_strided_slice*
T0*
_output_shapes
: K
while/IdentityIdentitywhile/Less:z:0*
T0
*
_output_shapes
: ")
while_identitywhile/Identity:output:0*(
_construction_contextkEagerRuntime*D
_input_shapes3
1: : : : :         P: :::::: 
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
: :-)
'
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
::

_output_shapes
::

_output_shapes
::	

_output_shapes
::


_output_shapes
:
ЧУ
╪

:__inference___backward_gpu_gru_with_fallback_388526_388662
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         Pd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         P`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         PO
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: А
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         Pq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         P┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         P}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Щ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:d         P*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:Л
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*M
_output_shapes;
9:d         └:         P: :р╤*
rnn_modegruЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╤
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:         d└u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         P\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ашi
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ашi
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:Ашh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А2h
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А2h
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А2g
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Ph
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Ph
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:PШ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ч
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:Ашы
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:Ашы
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:Ашъ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А2ъ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А2ъ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А2щ
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:Pь
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:Pь
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:Po
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  д
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  ж
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  ж
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:PPo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:PPo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:PPh
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:Ph
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:Ph
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pг
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pд
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pд
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:PЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╕
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╕
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╕
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPО
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:рЖ
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
└ЁЛ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	PЁm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Ё   в
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Ёs
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*,
_output_shapes
:         d└t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         Pg

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
└Ёh

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	PЁi

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	Ё"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:         P:         P:         P: :         P:         P:d         P: ::d         └:         P: :р╤::         P: ::::::: : : *<
api_implements*(gru_92f1cccd-1048-4a98-9c03-9659428f4778*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_388661*
go_backwards( *

time_major( :- )
'
_output_shapes
:         P:1-
+
_output_shapes
:         P:-)
'
_output_shapes
:         P:

_output_shapes
: :-)
'
_output_shapes
:         P:1-
+
_output_shapes
:         P:1-
+
_output_shapes
:d         P:

_output_shapes
: :

_output_shapes
::2	.
,
_output_shapes
:d         └:1
-
+
_output_shapes
:         P:

_output_shapes
: :"

_output_shapes

:р╤: 

_output_shapes
::-)
'
_output_shapes
:         P:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ш
л
E__inference_dense_114_layer_call_and_return_conditional_losses_389113

inputs0
matmul_readvariableop_resource:P2-
biasadd_readvariableop_resource:2
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpв2dense_114/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P2*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:2*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         2С
2dense_114/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:P2*
dtype0Т
#dense_114/kernel/Regularizer/SquareSquare:dense_114/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2s
"dense_114/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_114/kernel/Regularizer/SumSum'dense_114/kernel/Regularizer/Square:y:0+dense_114/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_114/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_114/kernel/Regularizer/mulMul+dense_114/kernel/Regularizer/mul/x:output:0)dense_114/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         2м
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_114/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         P: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_114/kernel/Regularizer/Square/ReadVariableOp2dense_114/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:         P
 
_user_specified_nameinputs
╚>
╣
&__forward_gpu_gru_with_fallback_388273

inputs
init_h_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
cudnnrnn_input_c

concat
transpose_perm

init_h
concat_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
split_2_split_dim
split_split_dim
split_1_split_dimИc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          B
transpose_0	Transposeinputstranspose/perm:output:0*
T0P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : q

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*+
_output_shapes
:         PQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Б
splitSplitsplit/split_dim:output:0kernel*
T0*5
_output_shapes#
!:	└P:	└P:	└P*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*2
_output_shapes 
:PP:PP:PP*
	num_split`
Reshape/shapeConst*
_output_shapes
:*
dtype0*
valueB:
         V
ReshapeReshapebiasReshape/shape:output:0*
T0*
_output_shapes	
:рS
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : Т
split_2Splitsplit_2/split_dim:output:0Reshape:output:0*
T0*8
_output_shapes&
$:P:P:P:P:P:P*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
         a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:1transpose_1/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_1Reshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:0transpose_2/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_2Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	P└\
	Reshape_3Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes

:Ашa
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_4	Transposesplit_1:output:1transpose_4/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_4Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_5Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes	
:А2a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       n
transpose_6	Transposesplit_1:output:2transpose_6/perm:output:0*
T0*
_output_shapes

:PP[
	Reshape_6Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes	
:А2[
	Reshape_7Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes
:P[
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes
:P[
	Reshape_9Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes
:P\

Reshape_10Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes
:P\

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes
:P\

Reshape_12Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes
:PM
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : п
concat_0ConcatV2Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0concat/axis:output:0*
N*
T0U
CudnnRNN/input_cConst*
_output_shapes
: *
dtype0*
valueB
 *    ╫
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0CudnnRNN/input_c:output:0concat_0:output:0*
T0*Q
_output_shapes?
=:                  P:         P: :*
rnn_modegruf
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
         _
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:╛
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskp
SqueezeSqueezeCudnnRNN:output_h:0*
T0*'
_output_shapes
:         P*
squeeze_dims
 R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B :Е
ExpandDims_1
ExpandDimsstrided_slice_0:output:0ExpandDims_1/dim:output:0*
T0*+
_output_shapes
:         P[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @`
IdentityIdentitystrided_slice_0:output:0*
T0*'
_output_shapes
:         Pc

Identity_1IdentityExpandDims_1:output:0*
T0*+
_output_shapes
:         PZ

Identity_2IdentitySqueeze:output:0*
T0*'
_output_shapes
:         PI

Identity_3Identityruntime:output:0*
T0*
_output_shapes
: "
concatconcat_0:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"

cudnnrnn_0CudnnRNN:output:0"!

cudnnrnn_1CudnnRNN:output_c:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"-
cudnnrnn_input_cCudnnRNN/input_c:output:0"!

expanddimsExpandDims:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"
init_hinit_h_0"/
split_1_split_dimsplit_1/split_dim:output:0"/
split_2_split_dimsplit_2/split_dim:output:0"+
split_split_dimsplit/split_dim:output:0")
strided_slicestrided_slice_0:output:0"
	transposetranspose_0:y:0"-
transpose_1_permtranspose_1/perm:output:0"-
transpose_2_permtranspose_2/perm:output:0"-
transpose_3_permtranspose_3/perm:output:0"-
transpose_4_permtranspose_4/perm:output:0"-
transpose_5_permtranspose_5/perm:output:0"-
transpose_6_permtranspose_6/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*i
_input_shapesX
V:                  └:         P:
└Ё:	PЁ:	Ё*<
api_implements*(gru_46fba877-7daf-4fec-82cd-2aa8cca36b11*
api_preferred_deviceGPU*V
backward_function_name<:__inference___backward_gpu_gru_with_fallback_388138_388274*
go_backwards( *

time_major( :] Y
5
_output_shapes#
!:                  └
 
_user_specified_nameinputs:OK
'
_output_shapes
:         P
 
_user_specified_nameinit_h:HD
 
_output_shapes
:
└Ё
 
_user_specified_namekernel:QM

_output_shapes
:	PЁ
*
_user_specified_namerecurrent_kernel:EA

_output_shapes
:	Ё

_user_specified_namebias
П

є
B__inference_degree_layer_call_and_return_conditional_losses_389228

inputs0
matmul_readvariableop_resource:
-
biasadd_readvariableop_resource:
identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         P
TanhTanhBiasAdd:output:0*
T0*'
_output_shapes
:         W
IdentityIdentityTanh:y:0^NoOp*
T0*'
_output_shapes
:         w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         
: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:O K
'
_output_shapes
:         

 
_user_specified_nameinputs
ы-
т
while_body_386985
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0
while_biasadd_unstack_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_1_unstack_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel
while_biasadd_unstack#
while_matmul_1_recurrent_kernel
while_biasadd_1_unstackИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"    @  з
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:         └*
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:         Ё|
while/BiasAddBiasAddwhile/MatMul:product:0while_biasadd_unstack_0*
T0*(
_output_shapes
:         ЁW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╡
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_splitГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:         ЁВ
while/BiasAdd_1BiasAddwhile/MatMul_1:product:0while_biasadd_1_unstack_0*
T0*(
_output_shapes
:         ЁY
while/split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :╗
while/split_1Split while/split_1/split_dim:output:0while/BiasAdd_1:output:0*
T0*M
_output_shapes;
9:         P:         P:         P*
	num_splitr
	while/addAddV2while/split:output:0while/split_1:output:0*
T0*'
_output_shapes
:         PY
while/SigmoidSigmoidwhile/add:z:0*
T0*'
_output_shapes
:         Pt
while/add_1AddV2while/split:output:1while/split_1:output:1*
T0*'
_output_shapes
:         P]
while/Sigmoid_1Sigmoidwhile/add_1:z:0*
T0*'
_output_shapes
:         Po
	while/mulMulwhile/Sigmoid_1:y:0while/split_1:output:2*
T0*'
_output_shapes
:         Pk
while/add_2AddV2while/split:output:2while/mul:z:0*
T0*'
_output_shapes
:         PU

while/TanhTanhwhile/add_2:z:0*
T0*'
_output_shapes
:         Pl
while/mul_1Mulwhile/Sigmoid:y:0while_placeholder_2*
T0*'
_output_shapes
:         PP
while/sub/xConst*
_output_shapes
: *
dtype0*
valueB
 *  А?k
	while/subSubwhile/sub/x:output:0while/Sigmoid:y:0*
T0*'
_output_shapes
:         Pc
while/mul_2Mulwhile/sub:z:0while/Tanh:y:0*
T0*'
_output_shapes
:         Ph
while/add_3AddV2while/mul_1:z:0while/mul_2:z:0*
T0*'
_output_shapes
:         Pr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : р
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/add_3:z:0*
_output_shapes
: *
element_dtype0:щш╥O
while/add_4/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_4AddV2while_placeholderwhile/add_4/y:output:0*
T0*
_output_shapes
: O
while/add_5/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_5AddV2while_while_loop_counterwhile/add_5/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_5:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_4:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: _
while/Identity_4Identitywhile/add_3:z:0*
T0*'
_output_shapes
:         P"4
while_biasadd_1_unstackwhile_biasadd_1_unstack_0"0
while_biasadd_unstackwhile_biasadd_unstack_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"и
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*W
_input_shapesF
D: : : : :         P: : :
└Ё:Ё:	PЁ:Ё: 
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
: :-)
'
_output_shapes
:         P:

_output_shapes
: :

_output_shapes
: :&"
 
_output_shapes
:
└Ё:!

_output_shapes	
:Ё:%	!

_output_shapes
:	PЁ:!


_output_shapes	
:Ё
Тi
С

D__inference_model_27_layer_call_and_return_conditional_losses_386168	
input+
conv2d_20_386086:
╚
conv2d_20_386088:	╚ 
gru_5_386093:
└Ё
gru_5_386095:	PЁ
gru_5_386097:	Ё"
dense_116_386100:P2
dense_116_386102:2"
dense_114_386105:P2
dense_114_386107:2"
dense_117_386110:2

dense_117_386112:
"
dense_115_386115:2

dense_115_386117:

degree_386120:

degree_386122:!
distance_386125:

distance_386127:
identity

identity_1Ив!conv2d_20/StatefulPartitionedCallв2conv2d_20/kernel/Regularizer/Square/ReadVariableOpвdegree/StatefulPartitionedCallв!dense_114/StatefulPartitionedCallв2dense_114/kernel/Regularizer/Square/ReadVariableOpв!dense_115/StatefulPartitionedCallв2dense_115/kernel/Regularizer/Square/ReadVariableOpв!dense_116/StatefulPartitionedCallв2dense_116/kernel/Regularizer/Square/ReadVariableOpв!dense_117/StatefulPartitionedCallв2dense_117/kernel/Regularizer/Square/ReadVariableOpв distance/StatefulPartitionedCallвgru_5/StatefulPartitionedCallв9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp}
(tf.compat.v1.transpose_24/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          б
#tf.compat.v1.transpose_24/transpose	Transposeinput1tf.compat.v1.transpose_24/transpose/perm:output:0*
T0*,
_output_shapes
:         шщ
reshape_32/PartitionedCallPartitionedCall'tf.compat.v1.transpose_24/transpose:y:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ш* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_reshape_32_layer_call_and_return_conditional_losses_384630Ю
!conv2d_20/StatefulPartitionedCallStatefulPartitionedCall#reshape_32/PartitionedCall:output:0conv2d_20_386086conv2d_20_386088*
Tin
2*
Tout
2*
_collective_manager_ids
 *1
_output_shapes
:         ш╚*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_conv2d_20_layer_call_and_return_conditional_losses_384649Ў
max_pooling2d_8/PartitionedCallPartitionedCall*conv2d_20/StatefulPartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *0
_output_shapes
:         ш* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *T
fORM
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_383780ц
reshape_33/PartitionedCallPartitionedCall(max_pooling2d_8/PartitionedCall:output:0*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:         d└* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8В *O
fJRH
F__inference_reshape_33_layer_call_and_return_conditional_losses_384669Ф
gru_5/StatefulPartitionedCallStatefulPartitionedCall#reshape_33/PartitionedCall:output:0gru_5_386093gru_5_386095gru_5_386097*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         P*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *J
fERC
A__inference_gru_5_layer_call_and_return_conditional_losses_385750Ч
!dense_116/StatefulPartitionedCallStatefulPartitionedCall&gru_5/StatefulPartitionedCall:output:0dense_116_386100dense_116_386102*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_116_layer_call_and_return_conditional_losses_385082Ч
!dense_114/StatefulPartitionedCallStatefulPartitionedCall&gru_5/StatefulPartitionedCall:output:0dense_114_386105dense_114_386107*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         2*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_114_layer_call_and_return_conditional_losses_385104Ы
!dense_117/StatefulPartitionedCallStatefulPartitionedCall*dense_116/StatefulPartitionedCall:output:0dense_117_386110dense_117_386112*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_117_layer_call_and_return_conditional_losses_385126Ы
!dense_115/StatefulPartitionedCallStatefulPartitionedCall*dense_114/StatefulPartitionedCall:output:0dense_115_386115dense_115_386117*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         
*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *N
fIRG
E__inference_dense_115_layer_call_and_return_conditional_losses_385148П
degree/StatefulPartitionedCallStatefulPartitionedCall*dense_117/StatefulPartitionedCall:output:0degree_386120degree_386122*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *K
fFRD
B__inference_degree_layer_call_and_return_conditional_losses_385165Ч
 distance/StatefulPartitionedCallStatefulPartitionedCall*dense_115/StatefulPartitionedCall:output:0distance_386125distance_386127*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:         *$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8В *M
fHRF
D__inference_distance_layer_call_and_return_conditional_losses_385182М
2conv2d_20/kernel/Regularizer/Square/ReadVariableOpReadVariableOpconv2d_20_386086*'
_output_shapes
:
╚*
dtype0Ы
#conv2d_20/kernel/Regularizer/SquareSquare:conv2d_20/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*'
_output_shapes
:
╚{
"conv2d_20/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*%
valueB"             Ю
 conv2d_20/kernel/Regularizer/SumSum'conv2d_20/kernel/Regularizer/Square:y:0+conv2d_20/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"conv2d_20/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 conv2d_20/kernel/Regularizer/mulMul+conv2d_20/kernel/Regularizer/mul/x:output:0)conv2d_20/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: И
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOpReadVariableOpgru_5_386093* 
_output_shapes
:
└Ё*
dtype0в
*gru_5/gru_cell_5/kernel/Regularizer/SquareSquareAgru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0* 
_output_shapes
:
└Ёz
)gru_5/gru_cell_5/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       │
'gru_5/gru_cell_5/kernel/Regularizer/SumSum.gru_5/gru_cell_5/kernel/Regularizer/Square:y:02gru_5/gru_cell_5/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: n
)gru_5/gru_cell_5/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8╡
'gru_5/gru_cell_5/kernel/Regularizer/mulMul2gru_5/gru_cell_5/kernel/Regularizer/mul/x:output:00gru_5/gru_cell_5/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Г
2dense_114/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_114_386105*
_output_shapes

:P2*
dtype0Т
#dense_114/kernel/Regularizer/SquareSquare:dense_114/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2s
"dense_114/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_114/kernel/Regularizer/SumSum'dense_114/kernel/Regularizer/Square:y:0+dense_114/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_114/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_114/kernel/Regularizer/mulMul+dense_114/kernel/Regularizer/mul/x:output:0)dense_114/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Г
2dense_116/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_116_386100*
_output_shapes

:P2*
dtype0Т
#dense_116/kernel/Regularizer/SquareSquare:dense_116/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:P2s
"dense_116/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_116/kernel/Regularizer/SumSum'dense_116/kernel/Regularizer/Square:y:0+dense_116/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_116/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_116/kernel/Regularizer/mulMul+dense_116/kernel/Regularizer/mul/x:output:0)dense_116/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Г
2dense_115/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_115_386115*
_output_shapes

:2
*
dtype0Т
#dense_115/kernel/Regularizer/SquareSquare:dense_115/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
s
"dense_115/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_115/kernel/Regularizer/SumSum'dense_115/kernel/Regularizer/Square:y:0+dense_115/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_115/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_115/kernel/Regularizer/mulMul+dense_115/kernel/Regularizer/mul/x:output:0)dense_115/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: Г
2dense_117/kernel/Regularizer/Square/ReadVariableOpReadVariableOpdense_117_386110*
_output_shapes

:2
*
dtype0Т
#dense_117/kernel/Regularizer/SquareSquare:dense_117/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
s
"dense_117/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_117/kernel/Regularizer/SumSum'dense_117/kernel/Regularizer/Square:y:0+dense_117/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_117/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_117/kernel/Regularizer/mulMul+dense_117/kernel/Regularizer/mul/x:output:0)dense_117/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: x
IdentityIdentity)distance/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         x

Identity_1Identity'degree/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:         г
NoOpNoOp"^conv2d_20/StatefulPartitionedCall3^conv2d_20/kernel/Regularizer/Square/ReadVariableOp^degree/StatefulPartitionedCall"^dense_114/StatefulPartitionedCall3^dense_114/kernel/Regularizer/Square/ReadVariableOp"^dense_115/StatefulPartitionedCall3^dense_115/kernel/Regularizer/Square/ReadVariableOp"^dense_116/StatefulPartitionedCall3^dense_116/kernel/Regularizer/Square/ReadVariableOp"^dense_117/StatefulPartitionedCall3^dense_117/kernel/Regularizer/Square/ReadVariableOp!^distance/StatefulPartitionedCall^gru_5/StatefulPartitionedCall:^gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
::         ш: : : : : : : : : : : : : : : : : 2F
!conv2d_20/StatefulPartitionedCall!conv2d_20/StatefulPartitionedCall2h
2conv2d_20/kernel/Regularizer/Square/ReadVariableOp2conv2d_20/kernel/Regularizer/Square/ReadVariableOp2@
degree/StatefulPartitionedCalldegree/StatefulPartitionedCall2F
!dense_114/StatefulPartitionedCall!dense_114/StatefulPartitionedCall2h
2dense_114/kernel/Regularizer/Square/ReadVariableOp2dense_114/kernel/Regularizer/Square/ReadVariableOp2F
!dense_115/StatefulPartitionedCall!dense_115/StatefulPartitionedCall2h
2dense_115/kernel/Regularizer/Square/ReadVariableOp2dense_115/kernel/Regularizer/Square/ReadVariableOp2F
!dense_116/StatefulPartitionedCall!dense_116/StatefulPartitionedCall2h
2dense_116/kernel/Regularizer/Square/ReadVariableOp2dense_116/kernel/Regularizer/Square/ReadVariableOp2F
!dense_117/StatefulPartitionedCall!dense_117/StatefulPartitionedCall2h
2dense_117/kernel/Regularizer/Square/ReadVariableOp2dense_117/kernel/Regularizer/Square/ReadVariableOp2D
 distance/StatefulPartitionedCall distance/StatefulPartitionedCall2>
gru_5/StatefulPartitionedCallgru_5/StatefulPartitionedCall2v
9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp9gru_5/gru_cell_5/kernel/Regularizer/Square/ReadVariableOp:S O
,
_output_shapes
:         ш

_user_specified_nameinput
ЧУ
╪

:__inference___backward_gpu_gru_with_fallback_388938_389074
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         Pd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         P`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         PO
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: А
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         Pq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         P┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         P}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Щ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:d         P*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:Л
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*M
_output_shapes;
9:d         └:         P: :р╤*
rnn_modegruЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╤
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:         d└u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         P\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ашi
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ашi
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:Ашh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А2h
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А2h
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А2g
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Ph
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Ph
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:PШ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ч
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:Ашы
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:Ашы
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:Ашъ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А2ъ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А2ъ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А2щ
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:Pь
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:Pь
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:Po
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  д
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  ж
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  ж
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:PPo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:PPo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:PPh
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:Ph
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:Ph
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pг
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pд
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pд
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:PЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╕
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╕
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╕
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPО
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:рЖ
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
└ЁЛ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	PЁm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Ё   в
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Ёs
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*,
_output_shapes
:         d└t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         Pg

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
└Ёh

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	PЁi

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	Ё"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:         P:         P:         P: :         P:         P:d         P: ::d         └:         P: :р╤::         P: ::::::: : : *<
api_implements*(gru_2a22995d-d6b2-4c40-9ddf-56bd2b6b1c65*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_389073*
go_backwards( *

time_major( :- )
'
_output_shapes
:         P:1-
+
_output_shapes
:         P:-)
'
_output_shapes
:         P:

_output_shapes
: :-)
'
_output_shapes
:         P:1-
+
_output_shapes
:         P:1-
+
_output_shapes
:d         P:

_output_shapes
: :

_output_shapes
::2	.
,
_output_shapes
:d         └:1
-
+
_output_shapes
:         P:

_output_shapes
: :"

_output_shapes

:р╤: 

_output_shapes
::-)
'
_output_shapes
:         P:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ЧУ
╪

:__inference___backward_gpu_gru_with_fallback_384914_385050
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         Pd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         P`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         PO
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: А
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         Pq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         P┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         P}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Щ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:d         P*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:Л
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*M
_output_shapes;
9:d         └:         P: :р╤*
rnn_modegruЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╤
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:         d└u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         P\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ашi
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ашi
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:Ашh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А2h
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А2h
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А2g
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Ph
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Ph
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:PШ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ч
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:Ашы
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:Ашы
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:Ашъ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А2ъ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А2ъ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А2щ
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:Pь
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:Pь
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:Po
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  д
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  ж
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  ж
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:PPo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:PPo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:PPh
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:Ph
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:Ph
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pг
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pд
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pд
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:PЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╕
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╕
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╕
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPО
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:рЖ
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
└ЁЛ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	PЁm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Ё   в
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Ёs
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*,
_output_shapes
:         d└t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         Pg

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
└Ёh

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	PЁi

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	Ё"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:         P:         P:         P: :         P:         P:d         P: ::d         └:         P: :р╤::         P: ::::::: : : *<
api_implements*(gru_2285ca90-b083-416b-9c62-50ce1f92a903*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_385049*
go_backwards( *

time_major( :- )
'
_output_shapes
:         P:1-
+
_output_shapes
:         P:-)
'
_output_shapes
:         P:

_output_shapes
: :-)
'
_output_shapes
:         P:1-
+
_output_shapes
:         P:1-
+
_output_shapes
:d         P:

_output_shapes
: :

_output_shapes
::2	.
,
_output_shapes
:d         └:1
-
+
_output_shapes
:         P:

_output_shapes
: :"

_output_shapes

:р╤: 

_output_shapes
::-)
'
_output_shapes
:         P:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: 
ш
л
E__inference_dense_115_layer_call_and_return_conditional_losses_385148

inputs0
matmul_readvariableop_resource:2
-
biasadd_readvariableop_resource:

identityИвBiasAdd/ReadVariableOpвMatMul/ReadVariableOpв2dense_115/kernel/Regularizer/Square/ReadVariableOpt
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:
*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:         
С
2dense_115/kernel/Regularizer/Square/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes

:2
*
dtype0Т
#dense_115/kernel/Regularizer/SquareSquare:dense_115/kernel/Regularizer/Square/ReadVariableOp:value:0*
T0*
_output_shapes

:2
s
"dense_115/kernel/Regularizer/ConstConst*
_output_shapes
:*
dtype0*
valueB"       Ю
 dense_115/kernel/Regularizer/SumSum'dense_115/kernel/Regularizer/Square:y:0+dense_115/kernel/Regularizer/Const:output:0*
T0*
_output_shapes
: g
"dense_115/kernel/Regularizer/mul/xConst*
_output_shapes
: *
dtype0*
valueB
 *╖╤8а
 dense_115/kernel/Regularizer/mulMul+dense_115/kernel/Regularizer/mul/x:output:0)dense_115/kernel/Regularizer/Sum:output:0*
T0*
_output_shapes
: _
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:         
м
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp3^dense_115/kernel/Regularizer/Square/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime**
_input_shapes
:         2: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp2h
2dense_115/kernel/Regularizer/Square/ReadVariableOp2dense_115/kernel/Regularizer/Square/ReadVariableOp:O K
'
_output_shapes
:         2
 
_user_specified_nameinputs
ЧУ
╪

:__inference___backward_gpu_gru_with_fallback_383594_383730
placeholder
placeholder_1
placeholder_2
placeholder_33
/gradients_expanddims_1_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn#
gradients_zeros_like_1_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims=
9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c3
/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h)
%gradients_concat_grad_mod_concat_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim
identity

identity_1

identity_2

identity_3

identity_4И^
gradients/grad_ys_0Identityplaceholder*
T0*'
_output_shapes
:         Pd
gradients/grad_ys_1Identityplaceholder_1*
T0*+
_output_shapes
:         P`
gradients/grad_ys_2Identityplaceholder_2*
T0*'
_output_shapes
:         PO
gradients/grad_ys_3Identityplaceholder_3*
T0*
_output_shapes
: А
!gradients/ExpandDims_1_grad/ShapeShape/gradients_expanddims_1_grad_shape_strided_slice*
T0*
_output_shapes
:к
#gradients/ExpandDims_1_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*'
_output_shapes
:         Pq
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
:д
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*+
_output_shapes
:         P┼
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_1_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*'
_output_shapes
:         P}
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
:Ж
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
         {
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Щ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*+
_output_shapes
:d         P*
shrink_axis_maska
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
: g
gradients/zeros_like_1	ZerosLikegradients_zeros_like_1_cudnnrnn*
T0*
_output_shapes
:Л
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9gradients_cudnnrnn_grad_cudnnrnnbackprop_cudnnrnn_input_c/gradients_cudnnrnn_grad_cudnnrnnbackprop_concat+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnngradients_zeros_like_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0gradients/zeros_like:y:0gradients_zeros_like_1_cudnnrnn*
T0*M
_output_shapes;
9:d         └:         P: :р╤*
rnn_modegruЦ
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:╤
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*,
_output_shapes
:         d└u
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
:┼
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*'
_output_shapes
:         P\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: g
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Ашi
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:Ашi
gradients/concat_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:Ашh
gradients/concat_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А2h
gradients/concat_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А2h
gradients/concat_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А2g
gradients/concat_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:Pg
gradients/concat_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:Ph
gradients/concat_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:Ph
gradients/concat_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:PШ
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0&gradients/concat_grad/Shape_2:output:0&gradients/concat_grad/Shape_3:output:0&gradients/concat_grad/Shape_4:output:0&gradients/concat_grad/Shape_5:output:0&gradients/concat_grad/Shape_6:output:0&gradients/concat_grad/Shape_7:output:0&gradients/concat_grad/Shape_8:output:0&gradients/concat_grad/Shape_9:output:0'gradients/concat_grad/Shape_10:output:0'gradients/concat_grad/Shape_11:output:0*
N*\
_output_shapesJ
H::::::::::::ч
gradients/concat_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes

:Ашы
gradients/concat_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes

:Ашы
gradients/concat_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:2&gradients/concat_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes

:Ашъ
gradients/concat_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:3&gradients/concat_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А2ъ
gradients/concat_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:4&gradients/concat_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes	
:А2ъ
gradients/concat_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:5&gradients/concat_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes	
:А2щ
gradients/concat_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:6&gradients/concat_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:7&gradients/concat_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:8&gradients/concat_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes
:Pщ
gradients/concat_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0+gradients/concat_grad/ConcatOffset:offset:9&gradients/concat_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes
:Pь
gradients/concat_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:10'gradients/concat_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes
:Pь
gradients/concat_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0,gradients/concat_grad/ConcatOffset:offset:11'gradients/concat_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes
:Po
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  д
 gradients/Reshape_1_grad/ReshapeReshape$gradients/concat_grad/Slice:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  ж
 gradients/Reshape_2_grad/ReshapeReshape&gradients/concat_grad/Slice_1:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   @  ж
 gradients/Reshape_3_grad/ReshapeReshape&gradients/concat_grad/Slice_2:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	P└o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_4_grad/ReshapeReshape&gradients/concat_grad/Slice_3:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0*
_output_shapes

:PPo
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_5_grad/ReshapeReshape&gradients/concat_grad/Slice_4:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0*
_output_shapes

:PPo
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"P   P   е
 gradients/Reshape_6_grad/ReshapeReshape&gradients/concat_grad/Slice_5:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0*
_output_shapes

:PPh
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_7_grad/ReshapeReshape&gradients/concat_grad/Slice_6:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0*
_output_shapes
:Ph
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_8_grad/ReshapeReshape&gradients/concat_grad/Slice_7:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes
:Ph
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pб
 gradients/Reshape_9_grad/ReshapeReshape&gradients/concat_grad/Slice_8:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pг
!gradients/Reshape_10_grad/ReshapeReshape&gradients/concat_grad/Slice_9:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pд
!gradients/Reshape_11_grad/ReshapeReshape'gradients/concat_grad/Slice_10:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes
:Pi
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Pд
!gradients/Reshape_12_grad/ReshapeReshape'gradients/concat_grad/Slice_11:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes
:PЬ
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:╕
$gradients/transpose_1_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:╕
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:╕
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	└PЬ
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:╖
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPЬ
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:╖
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPЬ
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:╖
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0*
_output_shapes

:PPО
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_7_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:рЖ
gradients/split_grad/concatConcatV2(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0* 
_output_shapes
:
└ЁЛ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0*
_output_shapes
:	PЁm
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"   Ё   в
gradients/Reshape_grad/ReshapeReshape&gradients/split_2_grad/concat:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	Ёs
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*,
_output_shapes
:         d└t

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*'
_output_shapes
:         Pg

Identity_2Identity$gradients/split_grad/concat:output:0*
T0* 
_output_shapes
:
└Ёh

Identity_3Identity&gradients/split_1_grad/concat:output:0*
T0*
_output_shapes
:	PЁi

Identity_4Identity'gradients/Reshape_grad/Reshape:output:0*
T0*
_output_shapes
:	Ё"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*Щ
_input_shapesЗ
Д:         P:         P:         P: :         P:         P:d         P: ::d         └:         P: :р╤::         P: ::::::: : : *<
api_implements*(gru_1ccaf889-86d4-4158-9f30-3e7d865ce12d*
api_preferred_deviceGPU*A
forward_function_name(&__forward_gpu_gru_with_fallback_383729*
go_backwards( *

time_major( :- )
'
_output_shapes
:         P:1-
+
_output_shapes
:         P:-)
'
_output_shapes
:         P:

_output_shapes
: :-)
'
_output_shapes
:         P:1-
+
_output_shapes
:         P:1-
+
_output_shapes
:d         P:

_output_shapes
: :

_output_shapes
::2	.
,
_output_shapes
:d         └:1
-
+
_output_shapes
:         P:

_output_shapes
: :"

_output_shapes

:р╤: 

_output_shapes
::-)
'
_output_shapes
:         P:

_output_shapes
: : 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
:: 

_output_shapes
::

_output_shapes
: :

_output_shapes
: :

_output_shapes
: "┐L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ш
serving_default╘
<
input3
serving_default_input:0         ш:
degree0
StatefulPartitionedCall:0         <
distance0
StatefulPartitionedCall:1         tensorflow/serving/predict:В╩
щ
layer-0
layer-1
layer-2
layer_with_weights-0
layer-3
layer-4
layer-5
layer_with_weights-1
layer-6
layer_with_weights-2
layer-7
	layer_with_weights-3
	layer-8

layer_with_weights-4

layer-9
layer_with_weights-5
layer-10
layer_with_weights-6
layer-11
layer_with_weights-7
layer-12
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_default_save_signature
	optimizer
loss

signatures"
_tf_keras_network
"
_tf_keras_input_layer
(
	keras_api"
_tf_keras_layer
е
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
▌
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias
 '_jit_compiled_convolution_op"
_tf_keras_layer
е
(	variables
)trainable_variables
*regularization_losses
+	keras_api
,__call__
*-&call_and_return_all_conditional_losses"
_tf_keras_layer
е
.	variables
/trainable_variables
0regularization_losses
1	keras_api
2__call__
*3&call_and_return_all_conditional_losses"
_tf_keras_layer
┌
4	variables
5trainable_variables
6regularization_losses
7	keras_api
8__call__
*9&call_and_return_all_conditional_losses
:_random_generator
;cell
<
state_spec"
_tf_keras_rnn_layer
╗
=	variables
>trainable_variables
?regularization_losses
@	keras_api
A__call__
*B&call_and_return_all_conditional_losses

Ckernel
Dbias"
_tf_keras_layer
╗
E	variables
Ftrainable_variables
Gregularization_losses
H	keras_api
I__call__
*J&call_and_return_all_conditional_losses

Kkernel
Lbias"
_tf_keras_layer
╗
M	variables
Ntrainable_variables
Oregularization_losses
P	keras_api
Q__call__
*R&call_and_return_all_conditional_losses

Skernel
Tbias"
_tf_keras_layer
╗
U	variables
Vtrainable_variables
Wregularization_losses
X	keras_api
Y__call__
*Z&call_and_return_all_conditional_losses

[kernel
\bias"
_tf_keras_layer
╗
]	variables
^trainable_variables
_regularization_losses
`	keras_api
a__call__
*b&call_and_return_all_conditional_losses

ckernel
dbias"
_tf_keras_layer
╗
e	variables
ftrainable_variables
gregularization_losses
h	keras_api
i__call__
*j&call_and_return_all_conditional_losses

kkernel
lbias"
_tf_keras_layer
Ю
%0
&1
m2
n3
o4
C5
D6
K7
L8
S9
T10
[11
\12
c13
d14
k15
l16"
trackable_list_wrapper
Ю
%0
&1
m2
n3
o4
C5
D6
K7
L8
S9
T10
[11
\12
c13
d14
k15
l16"
trackable_list_wrapper
C
p0
q1
r2
s3
t4"
trackable_list_wrapper
╩
unon_trainable_variables

vlayers
wmetrics
xlayer_regularization_losses
ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
_default_save_signature
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
┌
ztrace_0
{trace_1
|trace_2
}trace_32я
)__inference_model_27_layer_call_fn_385265
)__inference_model_27_layer_call_fn_386328
)__inference_model_27_layer_call_fn_386369
)__inference_model_27_layer_call_fn_385992└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zztrace_0z{trace_1z|trace_2z}trace_3
╩
~trace_0
trace_1
Аtrace_2
Бtrace_32█
D__inference_model_27_layer_call_and_return_conditional_losses_386855
D__inference_model_27_layer_call_and_return_conditional_losses_387365
D__inference_model_27_layer_call_and_return_conditional_losses_386080
D__inference_model_27_layer_call_and_return_conditional_losses_386168└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 z~trace_0ztrace_1zАtrace_2zБtrace_3
╩B╟
!__inference__wrapped_model_383771input"Ш
С▓Н
FullArgSpec
argsЪ 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
Ш
	Вiter
Гbeta_1
Дbeta_2

Еdecay%mЙ&mКCmЛDmМKmНLmОSmПTmР[mС\mТcmУdmФkmХlmЦmmЧnmШomЩ%vЪ&vЫCvЬDvЭKvЮLvЯSvаTvб[vв\vгcvдdvеkvжlvзmvиnvйovк"
	optimizer
 "
trackable_dict_wrapper
-
Жserving_default"
signature_map
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Зnon_trainable_variables
Иlayers
Йmetrics
 Кlayer_regularization_losses
Лlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
ё
Мtrace_02╥
+__inference_reshape_32_layer_call_fn_387370в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zМtrace_0
М
Нtrace_02э
F__inference_reshape_32_layer_call_and_return_conditional_losses_387384в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zНtrace_0
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
'
p0"
trackable_list_wrapper
▓
Оnon_trainable_variables
Пlayers
Рmetrics
 Сlayer_regularization_losses
Тlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
Ё
Уtrace_02╤
*__inference_conv2d_20_layer_call_fn_387393в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zУtrace_0
Л
Фtrace_02ь
E__inference_conv2d_20_layer_call_and_return_conditional_losses_387410в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zФtrace_0
+:)
╚2conv2d_20/kernel
:╚2conv2d_20/bias
┤2▒о
г▓Я
FullArgSpec'
argsЪ
jself
jinputs
jkernel
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Хnon_trainable_variables
Цlayers
Чmetrics
 Шlayer_regularization_losses
Щlayer_metrics
(	variables
)trainable_variables
*regularization_losses
,__call__
*-&call_and_return_all_conditional_losses
&-"call_and_return_conditional_losses"
_generic_user_object
Ў
Ъtrace_02╫
0__inference_max_pooling2d_8_layer_call_fn_387415в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЪtrace_0
С
Ыtrace_02Є
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_387420в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zЫtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
▓
Ьnon_trainable_variables
Эlayers
Юmetrics
 Яlayer_regularization_losses
аlayer_metrics
.	variables
/trainable_variables
0regularization_losses
2__call__
*3&call_and_return_all_conditional_losses
&3"call_and_return_conditional_losses"
_generic_user_object
ё
бtrace_02╥
+__inference_reshape_33_layer_call_fn_387425в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zбtrace_0
М
вtrace_02э
F__inference_reshape_33_layer_call_and_return_conditional_losses_387438в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zвtrace_0
5
m0
n1
o2"
trackable_list_wrapper
5
m0
n1
o2"
trackable_list_wrapper
(
г0"
trackable_list_wrapper
┐
дstates
еnon_trainable_variables
жlayers
зmetrics
 иlayer_regularization_losses
йlayer_metrics
4	variables
5trainable_variables
6regularization_losses
8__call__
*9&call_and_return_all_conditional_losses
&9"call_and_return_conditional_losses"
_generic_user_object
ы
кtrace_0
лtrace_1
мtrace_2
нtrace_32°
&__inference_gru_5_layer_call_fn_387449
&__inference_gru_5_layer_call_fn_387460
&__inference_gru_5_layer_call_fn_387471
&__inference_gru_5_layer_call_fn_387482╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zкtrace_0zлtrace_1zмtrace_2zнtrace_3
╫
оtrace_0
пtrace_1
░trace_2
▒trace_32ф
A__inference_gru_5_layer_call_and_return_conditional_losses_387870
A__inference_gru_5_layer_call_and_return_conditional_losses_388282
A__inference_gru_5_layer_call_and_return_conditional_losses_388670
A__inference_gru_5_layer_call_and_return_conditional_losses_389082╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 zоtrace_0zпtrace_1z░trace_2z▒trace_3
"
_generic_user_object
я
▓	variables
│trainable_variables
┤regularization_losses
╡	keras_api
╢__call__
+╖&call_and_return_all_conditional_losses
╕_random_generator

mkernel
nrecurrent_kernel
obias"
_tf_keras_layer
 "
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
.
C0
D1"
trackable_list_wrapper
'
q0"
trackable_list_wrapper
▓
╣non_trainable_variables
║layers
╗metrics
 ╝layer_regularization_losses
╜layer_metrics
=	variables
>trainable_variables
?regularization_losses
A__call__
*B&call_and_return_all_conditional_losses
&B"call_and_return_conditional_losses"
_generic_user_object
Ё
╛trace_02╤
*__inference_dense_114_layer_call_fn_389097в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╛trace_0
Л
┐trace_02ь
E__inference_dense_114_layer_call_and_return_conditional_losses_389113в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┐trace_0
": P22dense_114/kernel
:22dense_114/bias
.
K0
L1"
trackable_list_wrapper
.
K0
L1"
trackable_list_wrapper
'
r0"
trackable_list_wrapper
▓
└non_trainable_variables
┴layers
┬metrics
 ├layer_regularization_losses
─layer_metrics
E	variables
Ftrainable_variables
Gregularization_losses
I__call__
*J&call_and_return_all_conditional_losses
&J"call_and_return_conditional_losses"
_generic_user_object
Ё
┼trace_02╤
*__inference_dense_116_layer_call_fn_389122в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┼trace_0
Л
╞trace_02ь
E__inference_dense_116_layer_call_and_return_conditional_losses_389138в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╞trace_0
": P22dense_116/kernel
:22dense_116/bias
.
S0
T1"
trackable_list_wrapper
.
S0
T1"
trackable_list_wrapper
'
s0"
trackable_list_wrapper
▓
╟non_trainable_variables
╚layers
╔metrics
 ╩layer_regularization_losses
╦layer_metrics
M	variables
Ntrainable_variables
Oregularization_losses
Q__call__
*R&call_and_return_all_conditional_losses
&R"call_and_return_conditional_losses"
_generic_user_object
Ё
╠trace_02╤
*__inference_dense_115_layer_call_fn_389147в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╠trace_0
Л
═trace_02ь
E__inference_dense_115_layer_call_and_return_conditional_losses_389163в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z═trace_0
": 2
2dense_115/kernel
:
2dense_115/bias
.
[0
\1"
trackable_list_wrapper
.
[0
\1"
trackable_list_wrapper
'
t0"
trackable_list_wrapper
▓
╬non_trainable_variables
╧layers
╨metrics
 ╤layer_regularization_losses
╥layer_metrics
U	variables
Vtrainable_variables
Wregularization_losses
Y__call__
*Z&call_and_return_all_conditional_losses
&Z"call_and_return_conditional_losses"
_generic_user_object
Ё
╙trace_02╤
*__inference_dense_117_layer_call_fn_389172в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╙trace_0
Л
╘trace_02ь
E__inference_dense_117_layer_call_and_return_conditional_losses_389188в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z╘trace_0
": 2
2dense_117/kernel
:
2dense_117/bias
.
c0
d1"
trackable_list_wrapper
.
c0
d1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
╒non_trainable_variables
╓layers
╫metrics
 ╪layer_regularization_losses
┘layer_metrics
]	variables
^trainable_variables
_regularization_losses
a__call__
*b&call_and_return_all_conditional_losses
&b"call_and_return_conditional_losses"
_generic_user_object
я
┌trace_02╨
)__inference_distance_layer_call_fn_389197в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z┌trace_0
К
█trace_02ы
D__inference_distance_layer_call_and_return_conditional_losses_389208в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 z█trace_0
!:
2distance/kernel
:2distance/bias
.
k0
l1"
trackable_list_wrapper
.
k0
l1"
trackable_list_wrapper
 "
trackable_list_wrapper
▓
▄non_trainable_variables
▌layers
▐metrics
 ▀layer_regularization_losses
рlayer_metrics
e	variables
ftrainable_variables
gregularization_losses
i__call__
*j&call_and_return_all_conditional_losses
&j"call_and_return_conditional_losses"
_generic_user_object
э
сtrace_02╬
'__inference_degree_layer_call_fn_389217в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zсtrace_0
И
тtrace_02щ
B__inference_degree_layer_call_and_return_conditional_losses_389228в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 zтtrace_0
:
2degree/kernel
:2degree/bias
+:)
└Ё2gru_5/gru_cell_5/kernel
4:2	PЁ2!gru_5/gru_cell_5/recurrent_kernel
(:&	Ё2gru_5/gru_cell_5/bias
╧
уtrace_02░
__inference_loss_fn_0_389239П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в zуtrace_0
╧
фtrace_02░
__inference_loss_fn_1_389250П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в zфtrace_0
╧
хtrace_02░
__inference_loss_fn_2_389261П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в zхtrace_0
╧
цtrace_02░
__inference_loss_fn_3_389272П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в zцtrace_0
╧
чtrace_02░
__inference_loss_fn_4_389283П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в zчtrace_0
 "
trackable_list_wrapper
~
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
10
11
12"
trackable_list_wrapper
H
ш0
щ1
ъ2
ы3
ь4"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
·Bў
)__inference_model_27_layer_call_fn_385265input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
√B°
)__inference_model_27_layer_call_fn_386328inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
√B°
)__inference_model_27_layer_call_fn_386369inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
·Bў
)__inference_model_27_layer_call_fn_385992input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЦBУ
D__inference_model_27_layer_call_and_return_conditional_losses_386855inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ЦBУ
D__inference_model_27_layer_call_and_return_conditional_losses_387365inputs"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ХBТ
D__inference_model_27_layer_call_and_return_conditional_losses_386080input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ХBТ
D__inference_model_27_layer_call_and_return_conditional_losses_386168input"└
╖▓│
FullArgSpec1
args)Ъ&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЪ
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
╔B╞
$__inference_signature_wrapper_386251input"Ф
Н▓Й
FullArgSpec
argsЪ 
varargs
 
varkwjkwargs
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▀B▄
+__inference_reshape_32_layer_call_fn_387370inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
F__inference_reshape_32_layer_call_and_return_conditional_losses_387384inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
p0"
trackable_list_wrapper
 "
trackable_dict_wrapper
▐B█
*__inference_conv2d_20_layer_call_fn_387393inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_conv2d_20_layer_call_and_return_conditional_losses_387410inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
фBс
0__inference_max_pooling2d_8_layer_call_fn_387415inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 B№
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_387420inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▀B▄
+__inference_reshape_33_layer_call_fn_387425inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
·Bў
F__inference_reshape_33_layer_call_and_return_conditional_losses_387438inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
╧
эtrace_02░
__inference_loss_fn_5_389294П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в zэtrace_0
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
;0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ПBМ
&__inference_gru_5_layer_call_fn_387449inputs/0"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
ПBМ
&__inference_gru_5_layer_call_fn_387460inputs/0"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
НBК
&__inference_gru_5_layer_call_fn_387471inputs"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
НBК
&__inference_gru_5_layer_call_fn_387482inputs"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
кBз
A__inference_gru_5_layer_call_and_return_conditional_losses_387870inputs/0"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
кBз
A__inference_gru_5_layer_call_and_return_conditional_losses_388282inputs/0"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
иBе
A__inference_gru_5_layer_call_and_return_conditional_losses_388670inputs"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
иBе
A__inference_gru_5_layer_call_and_return_conditional_losses_389082inputs"╒
╠▓╚
FullArgSpecB
args:Ъ7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЪ

 
p 

 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
5
m0
n1
o2"
trackable_list_wrapper
5
m0
n1
o2"
trackable_list_wrapper
(
г0"
trackable_list_wrapper
╕
юnon_trainable_variables
яlayers
Ёmetrics
 ёlayer_regularization_losses
Єlayer_metrics
▓	variables
│trainable_variables
┤regularization_losses
╢__call__
+╖&call_and_return_all_conditional_losses
'╖"call_and_return_conditional_losses"
_generic_user_object
─2┴╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
─2┴╛
╡▓▒
FullArgSpec3
args+Ъ(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЪ
p 

kwonlyargsЪ 
kwonlydefaultsк 
annotationsк *
 
"
_generic_user_object
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
q0"
trackable_list_wrapper
 "
trackable_dict_wrapper
▐B█
*__inference_dense_114_layer_call_fn_389097inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_dense_114_layer_call_and_return_conditional_losses_389113inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
r0"
trackable_list_wrapper
 "
trackable_dict_wrapper
▐B█
*__inference_dense_116_layer_call_fn_389122inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_dense_116_layer_call_and_return_conditional_losses_389138inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
s0"
trackable_list_wrapper
 "
trackable_dict_wrapper
▐B█
*__inference_dense_115_layer_call_fn_389147inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_dense_115_layer_call_and_return_conditional_losses_389163inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
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
▐B█
*__inference_dense_117_layer_call_fn_389172inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
∙BЎ
E__inference_dense_117_layer_call_and_return_conditional_losses_389188inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
▌B┌
)__inference_distance_layer_call_fn_389197inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
°Bї
D__inference_distance_layer_call_and_return_conditional_losses_389208inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
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
█B╪
'__inference_degree_layer_call_fn_389217inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
ЎBє
B__inference_degree_layer_call_and_return_conditional_losses_389228inputs"в
Щ▓Х
FullArgSpec
argsЪ
jself
jinputs
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *
 
│B░
__inference_loss_fn_0_389239"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
│B░
__inference_loss_fn_1_389250"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
│B░
__inference_loss_fn_2_389261"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
│B░
__inference_loss_fn_3_389272"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
│B░
__inference_loss_fn_4_389283"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
R
є	variables
Ї	keras_api

їtotal

Ўcount"
_tf_keras_metric
R
ў	variables
°	keras_api

∙total

·count"
_tf_keras_metric
R
√	variables
№	keras_api

¤total

■count"
_tf_keras_metric
c
 	variables
А	keras_api

Бtotal

Вcount
Г
_fn_kwargs"
_tf_keras_metric
c
Д	variables
Е	keras_api

Жtotal

Зcount
И
_fn_kwargs"
_tf_keras_metric
│B░
__inference_loss_fn_5_389294"П
З▓Г
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotationsк *в 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
(
г0"
trackable_list_wrapper
 "
trackable_dict_wrapper
0
ї0
Ў1"
trackable_list_wrapper
.
є	variables"
_generic_user_object
:  (2total
:  (2count
0
∙0
·1"
trackable_list_wrapper
.
ў	variables"
_generic_user_object
:  (2total
:  (2count
0
¤0
■1"
trackable_list_wrapper
.
√	variables"
_generic_user_object
:  (2total
:  (2count
0
Б0
В1"
trackable_list_wrapper
.
 	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0
Ж0
З1"
trackable_list_wrapper
.
Д	variables"
_generic_user_object
:  (2total
:  (2count
 "
trackable_dict_wrapper
0:.
╚2Adam/conv2d_20/kernel/m
": ╚2Adam/conv2d_20/bias/m
':%P22Adam/dense_114/kernel/m
!:22Adam/dense_114/bias/m
':%P22Adam/dense_116/kernel/m
!:22Adam/dense_116/bias/m
':%2
2Adam/dense_115/kernel/m
!:
2Adam/dense_115/bias/m
':%2
2Adam/dense_117/kernel/m
!:
2Adam/dense_117/bias/m
&:$
2Adam/distance/kernel/m
 :2Adam/distance/bias/m
$:"
2Adam/degree/kernel/m
:2Adam/degree/bias/m
0:.
└Ё2Adam/gru_5/gru_cell_5/kernel/m
9:7	PЁ2(Adam/gru_5/gru_cell_5/recurrent_kernel/m
-:+	Ё2Adam/gru_5/gru_cell_5/bias/m
0:.
╚2Adam/conv2d_20/kernel/v
": ╚2Adam/conv2d_20/bias/v
':%P22Adam/dense_114/kernel/v
!:22Adam/dense_114/bias/v
':%P22Adam/dense_116/kernel/v
!:22Adam/dense_116/bias/v
':%2
2Adam/dense_115/kernel/v
!:
2Adam/dense_115/bias/v
':%2
2Adam/dense_117/kernel/v
!:
2Adam/dense_117/bias/v
&:$
2Adam/distance/kernel/v
 :2Adam/distance/bias/v
$:"
2Adam/degree/kernel/v
:2Adam/degree/bias/v
0:.
└Ё2Adam/gru_5/gru_cell_5/kernel/v
9:7	PЁ2(Adam/gru_5/gru_cell_5/recurrent_kernel/v
-:+	Ё2Adam/gru_5/gru_cell_5/bias/v╧
!__inference__wrapped_model_383771й%&mnoKLCD[\STklcd3в0
)в&
$К!
input         ш
к "_к\
*
degree К
degree         
.
distance"К
distance         ╕
E__inference_conv2d_20_layer_call_and_return_conditional_losses_387410o%&8в5
.в+
)К&
inputs         ш
к "/в,
%К"
0         ш╚
Ъ Р
*__inference_conv2d_20_layer_call_fn_387393b%&8в5
.в+
)К&
inputs         ш
к ""К         ш╚в
B__inference_degree_layer_call_and_return_conditional_losses_389228\kl/в,
%в"
 К
inputs         

к "%в"
К
0         
Ъ z
'__inference_degree_layer_call_fn_389217Okl/в,
%в"
 К
inputs         

к "К         е
E__inference_dense_114_layer_call_and_return_conditional_losses_389113\CD/в,
%в"
 К
inputs         P
к "%в"
К
0         2
Ъ }
*__inference_dense_114_layer_call_fn_389097OCD/в,
%в"
 К
inputs         P
к "К         2е
E__inference_dense_115_layer_call_and_return_conditional_losses_389163\ST/в,
%в"
 К
inputs         2
к "%в"
К
0         

Ъ }
*__inference_dense_115_layer_call_fn_389147OST/в,
%в"
 К
inputs         2
к "К         
е
E__inference_dense_116_layer_call_and_return_conditional_losses_389138\KL/в,
%в"
 К
inputs         P
к "%в"
К
0         2
Ъ }
*__inference_dense_116_layer_call_fn_389122OKL/в,
%в"
 К
inputs         P
к "К         2е
E__inference_dense_117_layer_call_and_return_conditional_losses_389188\[\/в,
%в"
 К
inputs         2
к "%в"
К
0         

Ъ }
*__inference_dense_117_layer_call_fn_389172O[\/в,
%в"
 К
inputs         2
к "К         
д
D__inference_distance_layer_call_and_return_conditional_losses_389208\cd/в,
%в"
 К
inputs         

к "%в"
К
0         
Ъ |
)__inference_distance_layer_call_fn_389197Ocd/в,
%в"
 К
inputs         

к "К         ├
A__inference_gru_5_layer_call_and_return_conditional_losses_387870~mnoPвM
FвC
5Ъ2
0К-
inputs/0                  └

 
p 

 
к "%в"
К
0         P
Ъ ├
A__inference_gru_5_layer_call_and_return_conditional_losses_388282~mnoPвM
FвC
5Ъ2
0К-
inputs/0                  └

 
p

 
к "%в"
К
0         P
Ъ │
A__inference_gru_5_layer_call_and_return_conditional_losses_388670nmno@в=
6в3
%К"
inputs         d└

 
p 

 
к "%в"
К
0         P
Ъ │
A__inference_gru_5_layer_call_and_return_conditional_losses_389082nmno@в=
6в3
%К"
inputs         d└

 
p

 
к "%в"
К
0         P
Ъ Ы
&__inference_gru_5_layer_call_fn_387449qmnoPвM
FвC
5Ъ2
0К-
inputs/0                  └

 
p 

 
к "К         PЫ
&__inference_gru_5_layer_call_fn_387460qmnoPвM
FвC
5Ъ2
0К-
inputs/0                  └

 
p

 
к "К         PЛ
&__inference_gru_5_layer_call_fn_387471amno@в=
6в3
%К"
inputs         d└

 
p 

 
к "К         PЛ
&__inference_gru_5_layer_call_fn_387482amno@в=
6в3
%К"
inputs         d└

 
p

 
к "К         P;
__inference_loss_fn_0_389239%в

в 
к "К ;
__inference_loss_fn_1_389250Cв

в 
к "К ;
__inference_loss_fn_2_389261Kв

в 
к "К ;
__inference_loss_fn_3_389272Sв

в 
к "К ;
__inference_loss_fn_4_389283[в

в 
к "К ;
__inference_loss_fn_5_389294mв

в 
к "К ю
K__inference_max_pooling2d_8_layer_call_and_return_conditional_losses_387420ЮRвO
HвE
CК@
inputs4                                    
к "HвE
>К;
04                                    
Ъ ╞
0__inference_max_pooling2d_8_layer_call_fn_387415СRвO
HвE
CК@
inputs4                                    
к ";К84                                    ц
D__inference_model_27_layer_call_and_return_conditional_losses_386080Э%&mnoKLCD[\STklcd;в8
1в.
$К!
input         ш
p 

 
к "KвH
AЪ>
К
0/0         
К
0/1         
Ъ ц
D__inference_model_27_layer_call_and_return_conditional_losses_386168Э%&mnoKLCD[\STklcd;в8
1в.
$К!
input         ш
p

 
к "KвH
AЪ>
К
0/0         
К
0/1         
Ъ ч
D__inference_model_27_layer_call_and_return_conditional_losses_386855Ю%&mnoKLCD[\STklcd<в9
2в/
%К"
inputs         ш
p 

 
к "KвH
AЪ>
К
0/0         
К
0/1         
Ъ ч
D__inference_model_27_layer_call_and_return_conditional_losses_387365Ю%&mnoKLCD[\STklcd<в9
2в/
%К"
inputs         ш
p

 
к "KвH
AЪ>
К
0/0         
К
0/1         
Ъ ╜
)__inference_model_27_layer_call_fn_385265П%&mnoKLCD[\STklcd;в8
1в.
$К!
input         ш
p 

 
к "=Ъ:
К
0         
К
1         ╜
)__inference_model_27_layer_call_fn_385992П%&mnoKLCD[\STklcd;в8
1в.
$К!
input         ш
p

 
к "=Ъ:
К
0         
К
1         ╛
)__inference_model_27_layer_call_fn_386328Р%&mnoKLCD[\STklcd<в9
2в/
%К"
inputs         ш
p 

 
к "=Ъ:
К
0         
К
1         ╛
)__inference_model_27_layer_call_fn_386369Р%&mnoKLCD[\STklcd<в9
2в/
%К"
inputs         ш
p

 
к "=Ъ:
К
0         
К
1         ░
F__inference_reshape_32_layer_call_and_return_conditional_losses_387384f4в1
*в'
%К"
inputs         ш
к ".в+
$К!
0         ш
Ъ И
+__inference_reshape_32_layer_call_fn_387370Y4в1
*в'
%К"
inputs         ш
к "!К         ш░
F__inference_reshape_33_layer_call_and_return_conditional_losses_387438f8в5
.в+
)К&
inputs         ш
к "*в'
 К
0         d└
Ъ И
+__inference_reshape_33_layer_call_fn_387425Y8в5
.в+
)К&
inputs         ш
к "К         d└█
$__inference_signature_wrapper_386251▓%&mnoKLCD[\STklcd<в9
в 
2к/
-
input$К!
input         ш"_к\
*
degree К
degree         
.
distance"К
distance         