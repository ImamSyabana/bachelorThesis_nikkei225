��3
��
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
�
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
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
$
DisableCopyOnRead
resource�
W

ExpandDims

input"T
dim"Tdim
output"T"	
Ttype"
Tdimtype0:
2	
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
u
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:
2	
�
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( �
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
E
Relu
features"T
activations"T"
Ttype:
2	
o
	RestoreV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0�
n
	ReverseV2
tensor"T
axis"Tidx
output"T"
Tidxtype0:
2	"
Ttype:
2	

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
d
Shape

input"T&
output"out_type��out_type"	
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
L

StringJoin
inputs*N

output"

Nint("
	separatorstring 
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
shared_namestring "

debug_namestring "
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
�"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48��0
v
countVarHandleOp*
_output_shapes
: *

debug_namecount/*
dtype0*
shape: *
shared_namecount
W
count/Read/ReadVariableOpReadVariableOpcount*
_output_shapes
: *
dtype0
v
totalVarHandleOp*
_output_shapes
: *

debug_nametotal/*
dtype0*
shape: *
shared_nametotal
W
total/Read/ReadVariableOpReadVariableOptotal*
_output_shapes
: *
dtype0
�
Adam/v/dense_26/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/dense_26/bias/*
dtype0*
shape:*%
shared_nameAdam/v/dense_26/bias
y
(Adam/v/dense_26/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_26/bias*
_output_shapes
:*
dtype0
�
Adam/m/dense_26/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/dense_26/bias/*
dtype0*
shape:*%
shared_nameAdam/m/dense_26/bias
y
(Adam/m/dense_26/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_26/bias*
_output_shapes
:*
dtype0
�
Adam/v/dense_26/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/dense_26/kernel/*
dtype0*
shape:	�*'
shared_nameAdam/v/dense_26/kernel
�
*Adam/v/dense_26/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_26/kernel*
_output_shapes
:	�*
dtype0
�
Adam/m/dense_26/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/dense_26/kernel/*
dtype0*
shape:	�*'
shared_nameAdam/m/dense_26/kernel
�
*Adam/m/dense_26/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_26/kernel*
_output_shapes
:	�*
dtype0
�
7Adam/v/bidirectional_26/backward_lstm_26/lstm_cell/biasVarHandleOp*
_output_shapes
: *H

debug_name:8Adam/v/bidirectional_26/backward_lstm_26/lstm_cell/bias/*
dtype0*
shape:�*H
shared_name97Adam/v/bidirectional_26/backward_lstm_26/lstm_cell/bias
�
KAdam/v/bidirectional_26/backward_lstm_26/lstm_cell/bias/Read/ReadVariableOpReadVariableOp7Adam/v/bidirectional_26/backward_lstm_26/lstm_cell/bias*
_output_shapes	
:�*
dtype0
�
7Adam/m/bidirectional_26/backward_lstm_26/lstm_cell/biasVarHandleOp*
_output_shapes
: *H

debug_name:8Adam/m/bidirectional_26/backward_lstm_26/lstm_cell/bias/*
dtype0*
shape:�*H
shared_name97Adam/m/bidirectional_26/backward_lstm_26/lstm_cell/bias
�
KAdam/m/bidirectional_26/backward_lstm_26/lstm_cell/bias/Read/ReadVariableOpReadVariableOp7Adam/m/bidirectional_26/backward_lstm_26/lstm_cell/bias*
_output_shapes	
:�*
dtype0
�
CAdam/v/bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *T

debug_nameFDAdam/v/bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel/*
dtype0*
shape:
��*T
shared_nameECAdam/v/bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel
�
WAdam/v/bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpCAdam/v/bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel* 
_output_shapes
:
��*
dtype0
�
CAdam/m/bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *T

debug_nameFDAdam/m/bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel/*
dtype0*
shape:
��*T
shared_nameECAdam/m/bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel
�
WAdam/m/bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpCAdam/m/bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel* 
_output_shapes
:
��*
dtype0
�
9Adam/v/bidirectional_26/backward_lstm_26/lstm_cell/kernelVarHandleOp*
_output_shapes
: *J

debug_name<:Adam/v/bidirectional_26/backward_lstm_26/lstm_cell/kernel/*
dtype0*
shape:	�*J
shared_name;9Adam/v/bidirectional_26/backward_lstm_26/lstm_cell/kernel
�
MAdam/v/bidirectional_26/backward_lstm_26/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp9Adam/v/bidirectional_26/backward_lstm_26/lstm_cell/kernel*
_output_shapes
:	�*
dtype0
�
9Adam/m/bidirectional_26/backward_lstm_26/lstm_cell/kernelVarHandleOp*
_output_shapes
: *J

debug_name<:Adam/m/bidirectional_26/backward_lstm_26/lstm_cell/kernel/*
dtype0*
shape:	�*J
shared_name;9Adam/m/bidirectional_26/backward_lstm_26/lstm_cell/kernel
�
MAdam/m/bidirectional_26/backward_lstm_26/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp9Adam/m/bidirectional_26/backward_lstm_26/lstm_cell/kernel*
_output_shapes
:	�*
dtype0
�
6Adam/v/bidirectional_26/forward_lstm_26/lstm_cell/biasVarHandleOp*
_output_shapes
: *G

debug_name97Adam/v/bidirectional_26/forward_lstm_26/lstm_cell/bias/*
dtype0*
shape:�*G
shared_name86Adam/v/bidirectional_26/forward_lstm_26/lstm_cell/bias
�
JAdam/v/bidirectional_26/forward_lstm_26/lstm_cell/bias/Read/ReadVariableOpReadVariableOp6Adam/v/bidirectional_26/forward_lstm_26/lstm_cell/bias*
_output_shapes	
:�*
dtype0
�
6Adam/m/bidirectional_26/forward_lstm_26/lstm_cell/biasVarHandleOp*
_output_shapes
: *G

debug_name97Adam/m/bidirectional_26/forward_lstm_26/lstm_cell/bias/*
dtype0*
shape:�*G
shared_name86Adam/m/bidirectional_26/forward_lstm_26/lstm_cell/bias
�
JAdam/m/bidirectional_26/forward_lstm_26/lstm_cell/bias/Read/ReadVariableOpReadVariableOp6Adam/m/bidirectional_26/forward_lstm_26/lstm_cell/bias*
_output_shapes	
:�*
dtype0
�
BAdam/v/bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *S

debug_nameECAdam/v/bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel/*
dtype0*
shape:
��*S
shared_nameDBAdam/v/bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel
�
VAdam/v/bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpBAdam/v/bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel* 
_output_shapes
:
��*
dtype0
�
BAdam/m/bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *S

debug_nameECAdam/m/bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel/*
dtype0*
shape:
��*S
shared_nameDBAdam/m/bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel
�
VAdam/m/bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOpBAdam/m/bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel* 
_output_shapes
:
��*
dtype0
�
8Adam/v/bidirectional_26/forward_lstm_26/lstm_cell/kernelVarHandleOp*
_output_shapes
: *I

debug_name;9Adam/v/bidirectional_26/forward_lstm_26/lstm_cell/kernel/*
dtype0*
shape:	�*I
shared_name:8Adam/v/bidirectional_26/forward_lstm_26/lstm_cell/kernel
�
LAdam/v/bidirectional_26/forward_lstm_26/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp8Adam/v/bidirectional_26/forward_lstm_26/lstm_cell/kernel*
_output_shapes
:	�*
dtype0
�
8Adam/m/bidirectional_26/forward_lstm_26/lstm_cell/kernelVarHandleOp*
_output_shapes
: *I

debug_name;9Adam/m/bidirectional_26/forward_lstm_26/lstm_cell/kernel/*
dtype0*
shape:	�*I
shared_name:8Adam/m/bidirectional_26/forward_lstm_26/lstm_cell/kernel
�
LAdam/m/bidirectional_26/forward_lstm_26/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp8Adam/m/bidirectional_26/forward_lstm_26/lstm_cell/kernel*
_output_shapes
:	�*
dtype0
�
learning_rateVarHandleOp*
_output_shapes
: *

debug_namelearning_rate/*
dtype0*
shape: *
shared_namelearning_rate
g
!learning_rate/Read/ReadVariableOpReadVariableOplearning_rate*
_output_shapes
: *
dtype0
�
	iterationVarHandleOp*
_output_shapes
: *

debug_name
iteration/*
dtype0	*
shape: *
shared_name	iteration
_
iteration/Read/ReadVariableOpReadVariableOp	iteration*
_output_shapes
: *
dtype0	
�
0bidirectional_26/backward_lstm_26/lstm_cell/biasVarHandleOp*
_output_shapes
: *A

debug_name31bidirectional_26/backward_lstm_26/lstm_cell/bias/*
dtype0*
shape:�*A
shared_name20bidirectional_26/backward_lstm_26/lstm_cell/bias
�
Dbidirectional_26/backward_lstm_26/lstm_cell/bias/Read/ReadVariableOpReadVariableOp0bidirectional_26/backward_lstm_26/lstm_cell/bias*
_output_shapes	
:�*
dtype0
�
<bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *M

debug_name?=bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel/*
dtype0*
shape:
��*M
shared_name><bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel
�
Pbidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp<bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel* 
_output_shapes
:
��*
dtype0
�
2bidirectional_26/backward_lstm_26/lstm_cell/kernelVarHandleOp*
_output_shapes
: *C

debug_name53bidirectional_26/backward_lstm_26/lstm_cell/kernel/*
dtype0*
shape:	�*C
shared_name42bidirectional_26/backward_lstm_26/lstm_cell/kernel
�
Fbidirectional_26/backward_lstm_26/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp2bidirectional_26/backward_lstm_26/lstm_cell/kernel*
_output_shapes
:	�*
dtype0
�
/bidirectional_26/forward_lstm_26/lstm_cell/biasVarHandleOp*
_output_shapes
: *@

debug_name20bidirectional_26/forward_lstm_26/lstm_cell/bias/*
dtype0*
shape:�*@
shared_name1/bidirectional_26/forward_lstm_26/lstm_cell/bias
�
Cbidirectional_26/forward_lstm_26/lstm_cell/bias/Read/ReadVariableOpReadVariableOp/bidirectional_26/forward_lstm_26/lstm_cell/bias*
_output_shapes	
:�*
dtype0
�
;bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *L

debug_name><bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel/*
dtype0*
shape:
��*L
shared_name=;bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel
�
Obidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp;bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel* 
_output_shapes
:
��*
dtype0
�
1bidirectional_26/forward_lstm_26/lstm_cell/kernelVarHandleOp*
_output_shapes
: *B

debug_name42bidirectional_26/forward_lstm_26/lstm_cell/kernel/*
dtype0*
shape:	�*B
shared_name31bidirectional_26/forward_lstm_26/lstm_cell/kernel
�
Ebidirectional_26/forward_lstm_26/lstm_cell/kernel/Read/ReadVariableOpReadVariableOp1bidirectional_26/forward_lstm_26/lstm_cell/kernel*
_output_shapes
:	�*
dtype0
�
dense_26/biasVarHandleOp*
_output_shapes
: *

debug_namedense_26/bias/*
dtype0*
shape:*
shared_namedense_26/bias
k
!dense_26/bias/Read/ReadVariableOpReadVariableOpdense_26/bias*
_output_shapes
:*
dtype0
�
dense_26/kernelVarHandleOp*
_output_shapes
: * 

debug_namedense_26/kernel/*
dtype0*
shape:	�* 
shared_namedense_26/kernel
t
#dense_26/kernel/Read/ReadVariableOpReadVariableOpdense_26/kernel*
_output_shapes
:	�*
dtype0
�
serving_default_lambda_26_inputPlaceholder*'
_output_shapes
:���������*
dtype0*
shape:���������
�
StatefulPartitionedCallStatefulPartitionedCallserving_default_lambda_26_input1bidirectional_26/forward_lstm_26/lstm_cell/kernel;bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel/bidirectional_26/forward_lstm_26/lstm_cell/bias2bidirectional_26/backward_lstm_26/lstm_cell/kernel<bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel0bidirectional_26/backward_lstm_26/lstm_cell/biasdense_26/kerneldense_26/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *-
f(R&
$__inference_signature_wrapper_458416

NoOpNoOp
�J
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*�I
value�IB�I B�I
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
forward_layer
backward_layer*
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias*
<
#0
$1
%2
&3
'4
(5
!6
"7*
<
#0
$1
%2
&3
'4
(5
!6
"7*
* 
�
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*

.trace_0
/trace_1* 

0trace_0
1trace_1* 
* 
�
2
_variables
3_iterations
4_learning_rate
5_index_dict
6
_momentums
7_velocities
8_update_step_xla*

9serving_default* 
* 
* 
* 
�
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

?trace_0
@trace_1* 

Atrace_0
Btrace_1* 
.
#0
$1
%2
&3
'4
(5*
.
#0
$1
%2
&3
'4
(5*
* 
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Htrace_0
Itrace_1
Jtrace_2
Ktrace_3* 
6
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_3* 
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
V_random_generator
Wcell
X
state_spec*
�
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses
__random_generator
`cell
a
state_spec*

!0
"1*

!0
"1*
* 
�
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*

gtrace_0* 

htrace_0* 
_Y
VARIABLE_VALUEdense_26/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_26/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE1bidirectional_26/forward_lstm_26/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
{u
VARIABLE_VALUE;bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
oi
VARIABLE_VALUE/bidirectional_26/forward_lstm_26/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE2bidirectional_26/backward_lstm_26/lstm_cell/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE<bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE0bidirectional_26/backward_lstm_26/lstm_cell/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

i0*
* 
* 
* 
* 
* 
* 
�
30
j1
k2
l3
m4
n5
o6
p7
q8
r9
s10
t11
u12
v13
w14
x15
y16*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
<
j0
l1
n2
p3
r4
t5
v6
x7*
<
k0
m1
o2
q3
s4
u5
w6
y7*
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

0
1*
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
#0
$1
%2*

#0
$1
%2*
* 
�

zstates
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
�
state_size

#kernel
$recurrent_kernel
%bias*
* 

&0
'1
(2*

&0
'1
(2*
* 
�
�states
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses*
:
�trace_0
�trace_1
�trace_2
�trace_3* 
:
�trace_0
�trace_1
�trace_2
�trace_3* 
* 
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
�
state_size

&kernel
'recurrent_kernel
(bias*
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
�}
VARIABLE_VALUE8Adam/m/bidirectional_26/forward_lstm_26/lstm_cell/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUE8Adam/v/bidirectional_26/forward_lstm_26/lstm_cell/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEBAdam/m/bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUEBAdam/v/bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUE6Adam/m/bidirectional_26/forward_lstm_26/lstm_cell/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
�{
VARIABLE_VALUE6Adam/v/bidirectional_26/forward_lstm_26/lstm_cell/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUE9Adam/m/bidirectional_26/backward_lstm_26/lstm_cell/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
�~
VARIABLE_VALUE9Adam/v/bidirectional_26/backward_lstm_26/lstm_cell/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUECAdam/m/bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
��
VARIABLE_VALUECAdam/v/bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUE7Adam/m/bidirectional_26/backward_lstm_26/lstm_cell/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
�}
VARIABLE_VALUE7Adam/v/bidirectional_26/backward_lstm_26/lstm_cell/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/m/dense_26/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
b\
VARIABLE_VALUEAdam/v/dense_26/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/m/dense_26/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
`Z
VARIABLE_VALUEAdam/v/dense_26/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 

W0*
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
#0
$1
%2*

#0
$1
%2*
* 
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

`0*
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
&0
'1
(2*

&0
'1
(2*
* 
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

�0
�1*

�	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
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
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
�
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_26/kerneldense_26/bias1bidirectional_26/forward_lstm_26/lstm_cell/kernel;bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel/bidirectional_26/forward_lstm_26/lstm_cell/bias2bidirectional_26/backward_lstm_26/lstm_cell/kernel<bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel0bidirectional_26/backward_lstm_26/lstm_cell/bias	iterationlearning_rate8Adam/m/bidirectional_26/forward_lstm_26/lstm_cell/kernel8Adam/v/bidirectional_26/forward_lstm_26/lstm_cell/kernelBAdam/m/bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernelBAdam/v/bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel6Adam/m/bidirectional_26/forward_lstm_26/lstm_cell/bias6Adam/v/bidirectional_26/forward_lstm_26/lstm_cell/bias9Adam/m/bidirectional_26/backward_lstm_26/lstm_cell/kernel9Adam/v/bidirectional_26/backward_lstm_26/lstm_cell/kernelCAdam/m/bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernelCAdam/v/bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel7Adam/m/bidirectional_26/backward_lstm_26/lstm_cell/bias7Adam/v/bidirectional_26/backward_lstm_26/lstm_cell/biasAdam/m/dense_26/kernelAdam/v/dense_26/kernelAdam/m/dense_26/biasAdam/v/dense_26/biastotalcountConst*)
Tin"
 2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *(
f#R!
__inference__traced_save_461327
�
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_26/kerneldense_26/bias1bidirectional_26/forward_lstm_26/lstm_cell/kernel;bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel/bidirectional_26/forward_lstm_26/lstm_cell/bias2bidirectional_26/backward_lstm_26/lstm_cell/kernel<bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel0bidirectional_26/backward_lstm_26/lstm_cell/bias	iterationlearning_rate8Adam/m/bidirectional_26/forward_lstm_26/lstm_cell/kernel8Adam/v/bidirectional_26/forward_lstm_26/lstm_cell/kernelBAdam/m/bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernelBAdam/v/bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel6Adam/m/bidirectional_26/forward_lstm_26/lstm_cell/bias6Adam/v/bidirectional_26/forward_lstm_26/lstm_cell/bias9Adam/m/bidirectional_26/backward_lstm_26/lstm_cell/kernel9Adam/v/bidirectional_26/backward_lstm_26/lstm_cell/kernelCAdam/m/bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernelCAdam/v/bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel7Adam/m/bidirectional_26/backward_lstm_26/lstm_cell/bias7Adam/v/bidirectional_26/backward_lstm_26/lstm_cell/biasAdam/m/dense_26/kernelAdam/v/dense_26/kernelAdam/m/dense_26/biasAdam/v/dense_26/biastotalcount*(
Tin!
2*
Tout
2*
_collective_manager_ids
 *
_output_shapes
: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *+
f&R$
"__inference__traced_restore_461420��/
�:
�
while_body_459934
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
��@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�D
0while_lstm_cell_matmul_1_readvariableop_resource:
��>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:����������o
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:����������l
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
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
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:����������w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�M
�
!forward_lstm_26_while_body_458856<
8forward_lstm_26_while_forward_lstm_26_while_loop_counterB
>forward_lstm_26_while_forward_lstm_26_while_maximum_iterations%
!forward_lstm_26_while_placeholder'
#forward_lstm_26_while_placeholder_1'
#forward_lstm_26_while_placeholder_2'
#forward_lstm_26_while_placeholder_3;
7forward_lstm_26_while_forward_lstm_26_strided_slice_1_0w
sforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0S
@forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0:	�V
Bforward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0:
��P
Aforward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0:	�"
forward_lstm_26_while_identity$
 forward_lstm_26_while_identity_1$
 forward_lstm_26_while_identity_2$
 forward_lstm_26_while_identity_3$
 forward_lstm_26_while_identity_4$
 forward_lstm_26_while_identity_59
5forward_lstm_26_while_forward_lstm_26_strided_slice_1u
qforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensorQ
>forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource:	�T
@forward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource:
��N
?forward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource:	���6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp�5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp�7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp�
Gforward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
9forward_lstm_26/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_26_while_placeholderPforward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
&forward_lstm_26/while/lstm_cell/MatMulMatMul@forward_lstm_26/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
(forward_lstm_26/while/lstm_cell/MatMul_1MatMul#forward_lstm_26_while_placeholder_2?forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#forward_lstm_26/while/lstm_cell/addAddV20forward_lstm_26/while/lstm_cell/MatMul:product:02forward_lstm_26/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
'forward_lstm_26/while/lstm_cell/BiasAddBiasAdd'forward_lstm_26/while/lstm_cell/add:z:0>forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������q
/forward_lstm_26/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
%forward_lstm_26/while/lstm_cell/splitSplit8forward_lstm_26/while/lstm_cell/split/split_dim:output:00forward_lstm_26/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
'forward_lstm_26/while/lstm_cell/SigmoidSigmoid.forward_lstm_26/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
)forward_lstm_26/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_26/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
#forward_lstm_26/while/lstm_cell/mulMul-forward_lstm_26/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_26_while_placeholder_3*
T0*(
_output_shapes
:�����������
$forward_lstm_26/while/lstm_cell/ReluRelu.forward_lstm_26/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
%forward_lstm_26/while/lstm_cell/mul_1Mul+forward_lstm_26/while/lstm_cell/Sigmoid:y:02forward_lstm_26/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
%forward_lstm_26/while/lstm_cell/add_1AddV2'forward_lstm_26/while/lstm_cell/mul:z:0)forward_lstm_26/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
)forward_lstm_26/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_26/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
&forward_lstm_26/while/lstm_cell/Relu_1Relu)forward_lstm_26/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
%forward_lstm_26/while/lstm_cell/mul_2Mul-forward_lstm_26/while/lstm_cell/Sigmoid_2:y:04forward_lstm_26/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:�����������
@forward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
:forward_lstm_26/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_26_while_placeholder_1Iforward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/index:output:0)forward_lstm_26/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���]
forward_lstm_26/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/while/addAddV2!forward_lstm_26_while_placeholder$forward_lstm_26/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_26/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/while/add_1AddV28forward_lstm_26_while_forward_lstm_26_while_loop_counter&forward_lstm_26/while/add_1/y:output:0*
T0*
_output_shapes
: �
forward_lstm_26/while/IdentityIdentityforward_lstm_26/while/add_1:z:0^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_1Identity>forward_lstm_26_while_forward_lstm_26_while_maximum_iterations^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_2Identityforward_lstm_26/while/add:z:0^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_3IdentityJforward_lstm_26/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_4Identity)forward_lstm_26/while/lstm_cell/mul_2:z:0^forward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
 forward_lstm_26/while/Identity_5Identity)forward_lstm_26/while/lstm_cell/add_1:z:0^forward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
forward_lstm_26/while/NoOpNoOp7^forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_26_while_forward_lstm_26_strided_slice_17forward_lstm_26_while_forward_lstm_26_strided_slice_1_0"I
forward_lstm_26_while_identity'forward_lstm_26/while/Identity:output:0"M
 forward_lstm_26_while_identity_1)forward_lstm_26/while/Identity_1:output:0"M
 forward_lstm_26_while_identity_2)forward_lstm_26/while/Identity_2:output:0"M
 forward_lstm_26_while_identity_3)forward_lstm_26/while/Identity_3:output:0"M
 forward_lstm_26_while_identity_4)forward_lstm_26/while/Identity_4:output:0"M
 forward_lstm_26_while_identity_5)forward_lstm_26/while/Identity_5:output:0"�
?forward_lstm_26_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0"�
@forward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0"�
>forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0"�
qforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensorsforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2p
6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_26/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_26/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_26/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�;
�
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_456891

inputs#
lstm_cell_456807:	�$
lstm_cell_456809:
��
lstm_cell_456811:	�
identity��!lstm_cell/StatefulPartitionedCall�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
B :�s
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
:����������S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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

shape_type0:���X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :�������������������
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
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
:���������*
shrink_axis_mask�
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_456807lstm_cell_456809lstm_cell_456811*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_456806n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_456807lstm_cell_456809lstm_cell_456811*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_456821*
condR
while_cond_456820*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
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
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:����������N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name456807:&"
 
_user_specified_name456809:&"
 
_user_specified_name456811
�:
�
while_body_460856
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
��@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�D
0while_lstm_cell_matmul_1_readvariableop_resource:
��>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:����������o
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:����������l
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
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
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:����������w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�K
�
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_459874
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	�>
*lstm_cell_matmul_1_readvariableop_resource:
��8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileK
ShapeShapeinputs_0*
T0*
_output_shapes
::��]
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
B :�s
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
:����������S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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
valueB"����   �
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
:���������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:����������r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:����������c
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:����������~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:����������s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:����������`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_459789*
condR
while_cond_459788*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
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
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�O
�
"backward_lstm_26_while_body_458999>
:backward_lstm_26_while_backward_lstm_26_while_loop_counterD
@backward_lstm_26_while_backward_lstm_26_while_maximum_iterations&
"backward_lstm_26_while_placeholder(
$backward_lstm_26_while_placeholder_1(
$backward_lstm_26_while_placeholder_2(
$backward_lstm_26_while_placeholder_3=
9backward_lstm_26_while_backward_lstm_26_strided_slice_1_0y
ubackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0T
Abackward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0:	�W
Cbackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0:
��Q
Bbackward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0:	�#
backward_lstm_26_while_identity%
!backward_lstm_26_while_identity_1%
!backward_lstm_26_while_identity_2%
!backward_lstm_26_while_identity_3%
!backward_lstm_26_while_identity_4%
!backward_lstm_26_while_identity_5;
7backward_lstm_26_while_backward_lstm_26_strided_slice_1w
sbackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensorR
?backward_lstm_26_while_lstm_cell_matmul_readvariableop_resource:	�U
Abackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource:
��O
@backward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource:	���7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp�6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp�8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp�
Hbackward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
:backward_lstm_26/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_26_while_placeholderQbackward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
'backward_lstm_26/while/lstm_cell/MatMulMatMulAbackward_lstm_26/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
)backward_lstm_26/while/lstm_cell/MatMul_1MatMul$backward_lstm_26_while_placeholder_2@backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$backward_lstm_26/while/lstm_cell/addAddV21backward_lstm_26/while/lstm_cell/MatMul:product:03backward_lstm_26/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
(backward_lstm_26/while/lstm_cell/BiasAddBiasAdd(backward_lstm_26/while/lstm_cell/add:z:0?backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������r
0backward_lstm_26/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
&backward_lstm_26/while/lstm_cell/splitSplit9backward_lstm_26/while/lstm_cell/split/split_dim:output:01backward_lstm_26/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
(backward_lstm_26/while/lstm_cell/SigmoidSigmoid/backward_lstm_26/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
*backward_lstm_26/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_26/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
$backward_lstm_26/while/lstm_cell/mulMul.backward_lstm_26/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_26_while_placeholder_3*
T0*(
_output_shapes
:�����������
%backward_lstm_26/while/lstm_cell/ReluRelu/backward_lstm_26/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
&backward_lstm_26/while/lstm_cell/mul_1Mul,backward_lstm_26/while/lstm_cell/Sigmoid:y:03backward_lstm_26/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
&backward_lstm_26/while/lstm_cell/add_1AddV2(backward_lstm_26/while/lstm_cell/mul:z:0*backward_lstm_26/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
*backward_lstm_26/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_26/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
'backward_lstm_26/while/lstm_cell/Relu_1Relu*backward_lstm_26/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
&backward_lstm_26/while/lstm_cell/mul_2Mul.backward_lstm_26/while/lstm_cell/Sigmoid_2:y:05backward_lstm_26/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:�����������
Abackward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
;backward_lstm_26/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_26_while_placeholder_1Jbackward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/index:output:0*backward_lstm_26/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���^
backward_lstm_26/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_26/while/addAddV2"backward_lstm_26_while_placeholder%backward_lstm_26/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_26/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_26/while/add_1AddV2:backward_lstm_26_while_backward_lstm_26_while_loop_counter'backward_lstm_26/while/add_1/y:output:0*
T0*
_output_shapes
: �
backward_lstm_26/while/IdentityIdentity backward_lstm_26/while/add_1:z:0^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_1Identity@backward_lstm_26_while_backward_lstm_26_while_maximum_iterations^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_2Identitybackward_lstm_26/while/add:z:0^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_3IdentityKbackward_lstm_26/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_4Identity*backward_lstm_26/while/lstm_cell/mul_2:z:0^backward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
!backward_lstm_26/while/Identity_5Identity*backward_lstm_26/while/lstm_cell/add_1:z:0^backward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
backward_lstm_26/while/NoOpNoOp8^backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_26_while_backward_lstm_26_strided_slice_19backward_lstm_26_while_backward_lstm_26_strided_slice_1_0"K
backward_lstm_26_while_identity(backward_lstm_26/while/Identity:output:0"O
!backward_lstm_26_while_identity_1*backward_lstm_26/while/Identity_1:output:0"O
!backward_lstm_26_while_identity_2*backward_lstm_26/while/Identity_2:output:0"O
!backward_lstm_26_while_identity_3*backward_lstm_26/while/Identity_3:output:0"O
!backward_lstm_26_while_identity_4*backward_lstm_26/while/Identity_4:output:0"O
!backward_lstm_26_while_identity_5*backward_lstm_26/while/Identity_5:output:0"�
@backward_lstm_26_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0"�
Abackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0"�
?backward_lstm_26_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0"�
sbackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensorubackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2r
7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_26/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_26/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_26/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�
�
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_458277

inputsK
8forward_lstm_26_lstm_cell_matmul_readvariableop_resource:	�N
:forward_lstm_26_lstm_cell_matmul_1_readvariableop_resource:
��H
9forward_lstm_26_lstm_cell_biasadd_readvariableop_resource:	�L
9backward_lstm_26_lstm_cell_matmul_readvariableop_resource:	�O
;backward_lstm_26_lstm_cell_matmul_1_readvariableop_resource:
��I
:backward_lstm_26_lstm_cell_biasadd_readvariableop_resource:	�
identity��1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp�0backward_lstm_26/lstm_cell/MatMul/ReadVariableOp�2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp�backward_lstm_26/while�0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp�/forward_lstm_26/lstm_cell/MatMul/ReadVariableOp�1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp�forward_lstm_26/whileY
forward_lstm_26/ShapeShapeinputs*
T0*
_output_shapes
::��m
#forward_lstm_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_sliceStridedSliceforward_lstm_26/Shape:output:0,forward_lstm_26/strided_slice/stack:output:0.forward_lstm_26/strided_slice/stack_1:output:0.forward_lstm_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
forward_lstm_26/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
forward_lstm_26/zeros/packedPack&forward_lstm_26/strided_slice:output:0'forward_lstm_26/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_26/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_26/zerosFill%forward_lstm_26/zeros/packed:output:0$forward_lstm_26/zeros/Const:output:0*
T0*(
_output_shapes
:����������c
 forward_lstm_26/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
forward_lstm_26/zeros_1/packedPack&forward_lstm_26/strided_slice:output:0)forward_lstm_26/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_26/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_26/zeros_1Fill'forward_lstm_26/zeros_1/packed:output:0&forward_lstm_26/zeros_1/Const:output:0*
T0*(
_output_shapes
:����������s
forward_lstm_26/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_26/transpose	Transposeinputs'forward_lstm_26/transpose/perm:output:0*
T0*+
_output_shapes
:���������r
forward_lstm_26/Shape_1Shapeforward_lstm_26/transpose:y:0*
T0*
_output_shapes
::��o
%forward_lstm_26/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_26/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_26/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_slice_1StridedSlice forward_lstm_26/Shape_1:output:0.forward_lstm_26/strided_slice_1/stack:output:00forward_lstm_26/strided_slice_1/stack_1:output:00forward_lstm_26/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_26/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
forward_lstm_26/TensorArrayV2TensorListReserve4forward_lstm_26/TensorArrayV2/element_shape:output:0(forward_lstm_26/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Eforward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
7forward_lstm_26/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_26/transpose:y:0Nforward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���o
%forward_lstm_26/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_26/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_26/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_slice_2StridedSliceforward_lstm_26/transpose:y:0.forward_lstm_26/strided_slice_2/stack:output:00forward_lstm_26/strided_slice_2/stack_1:output:00forward_lstm_26/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
/forward_lstm_26/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_26_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 forward_lstm_26/lstm_cell/MatMulMatMul(forward_lstm_26/strided_slice_2:output:07forward_lstm_26/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_26_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
"forward_lstm_26/lstm_cell/MatMul_1MatMulforward_lstm_26/zeros:output:09forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/addAddV2*forward_lstm_26/lstm_cell/MatMul:product:0,forward_lstm_26/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!forward_lstm_26/lstm_cell/BiasAddBiasAdd!forward_lstm_26/lstm_cell/add:z:08forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������k
)forward_lstm_26/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/lstm_cell/splitSplit2forward_lstm_26/lstm_cell/split/split_dim:output:0*forward_lstm_26/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
!forward_lstm_26/lstm_cell/SigmoidSigmoid(forward_lstm_26/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
#forward_lstm_26/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_26/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/mulMul'forward_lstm_26/lstm_cell/Sigmoid_1:y:0 forward_lstm_26/zeros_1:output:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/ReluRelu(forward_lstm_26/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/mul_1Mul%forward_lstm_26/lstm_cell/Sigmoid:y:0,forward_lstm_26/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/add_1AddV2!forward_lstm_26/lstm_cell/mul:z:0#forward_lstm_26/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
#forward_lstm_26/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_26/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
 forward_lstm_26/lstm_cell/Relu_1Relu#forward_lstm_26/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/mul_2Mul'forward_lstm_26/lstm_cell/Sigmoid_2:y:0.forward_lstm_26/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������~
-forward_lstm_26/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   n
,forward_lstm_26/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/TensorArrayV2_1TensorListReserve6forward_lstm_26/TensorArrayV2_1/element_shape:output:05forward_lstm_26/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���V
forward_lstm_26/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_26/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������d
"forward_lstm_26/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
forward_lstm_26/whileWhile+forward_lstm_26/while/loop_counter:output:01forward_lstm_26/while/maximum_iterations:output:0forward_lstm_26/time:output:0(forward_lstm_26/TensorArrayV2_1:handle:0forward_lstm_26/zeros:output:0 forward_lstm_26/zeros_1:output:0(forward_lstm_26/strided_slice_1:output:0Gforward_lstm_26/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_26_lstm_cell_matmul_readvariableop_resource:forward_lstm_26_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*-
body%R#
!forward_lstm_26_while_body_458047*-
cond%R#
!forward_lstm_26_while_cond_458046*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
@forward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2forward_lstm_26/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_26/while:output:3Iforward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elementsx
%forward_lstm_26/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������q
'forward_lstm_26/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_26/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_slice_3StridedSlice;forward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_26/strided_slice_3/stack:output:00forward_lstm_26/strided_slice_3/stack_1:output:00forward_lstm_26/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_masku
 forward_lstm_26/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_26/transpose_1	Transpose;forward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_26/transpose_1/perm:output:0*
T0*,
_output_shapes
:����������k
forward_lstm_26/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Z
backward_lstm_26/ShapeShapeinputs*
T0*
_output_shapes
::��n
$backward_lstm_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_lstm_26/strided_sliceStridedSlicebackward_lstm_26/Shape:output:0-backward_lstm_26/strided_slice/stack:output:0/backward_lstm_26/strided_slice/stack_1:output:0/backward_lstm_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
backward_lstm_26/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
backward_lstm_26/zeros/packedPack'backward_lstm_26/strided_slice:output:0(backward_lstm_26/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_26/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_26/zerosFill&backward_lstm_26/zeros/packed:output:0%backward_lstm_26/zeros/Const:output:0*
T0*(
_output_shapes
:����������d
!backward_lstm_26/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
backward_lstm_26/zeros_1/packedPack'backward_lstm_26/strided_slice:output:0*backward_lstm_26/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_26/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_26/zeros_1Fill(backward_lstm_26/zeros_1/packed:output:0'backward_lstm_26/zeros_1/Const:output:0*
T0*(
_output_shapes
:����������t
backward_lstm_26/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_26/transpose	Transposeinputs(backward_lstm_26/transpose/perm:output:0*
T0*+
_output_shapes
:���������t
backward_lstm_26/Shape_1Shapebackward_lstm_26/transpose:y:0*
T0*
_output_shapes
::��p
&backward_lstm_26/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_26/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_26/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_26/strided_slice_1StridedSlice!backward_lstm_26/Shape_1:output:0/backward_lstm_26/strided_slice_1/stack:output:01backward_lstm_26/strided_slice_1/stack_1:output:01backward_lstm_26/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_26/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
backward_lstm_26/TensorArrayV2TensorListReserve5backward_lstm_26/TensorArrayV2/element_shape:output:0)backward_lstm_26/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���i
backward_lstm_26/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
backward_lstm_26/ReverseV2	ReverseV2backward_lstm_26/transpose:y:0(backward_lstm_26/ReverseV2/axis:output:0*
T0*+
_output_shapes
:����������
Fbackward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
8backward_lstm_26/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_26/ReverseV2:output:0Obackward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���p
&backward_lstm_26/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_26/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_26/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_26/strided_slice_2StridedSlicebackward_lstm_26/transpose:y:0/backward_lstm_26/strided_slice_2/stack:output:01backward_lstm_26/strided_slice_2/stack_1:output:01backward_lstm_26/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
0backward_lstm_26/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_26_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
!backward_lstm_26/lstm_cell/MatMulMatMul)backward_lstm_26/strided_slice_2:output:08backward_lstm_26/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_26_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
#backward_lstm_26/lstm_cell/MatMul_1MatMulbackward_lstm_26/zeros:output:0:backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
backward_lstm_26/lstm_cell/addAddV2+backward_lstm_26/lstm_cell/MatMul:product:0-backward_lstm_26/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"backward_lstm_26/lstm_cell/BiasAddBiasAdd"backward_lstm_26/lstm_cell/add:z:09backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������l
*backward_lstm_26/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 backward_lstm_26/lstm_cell/splitSplit3backward_lstm_26/lstm_cell/split/split_dim:output:0+backward_lstm_26/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
"backward_lstm_26/lstm_cell/SigmoidSigmoid)backward_lstm_26/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
$backward_lstm_26/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_26/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
backward_lstm_26/lstm_cell/mulMul(backward_lstm_26/lstm_cell/Sigmoid_1:y:0!backward_lstm_26/zeros_1:output:0*
T0*(
_output_shapes
:�����������
backward_lstm_26/lstm_cell/ReluRelu)backward_lstm_26/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
 backward_lstm_26/lstm_cell/mul_1Mul&backward_lstm_26/lstm_cell/Sigmoid:y:0-backward_lstm_26/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
 backward_lstm_26/lstm_cell/add_1AddV2"backward_lstm_26/lstm_cell/mul:z:0$backward_lstm_26/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
$backward_lstm_26/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_26/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
!backward_lstm_26/lstm_cell/Relu_1Relu$backward_lstm_26/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
 backward_lstm_26/lstm_cell/mul_2Mul(backward_lstm_26/lstm_cell/Sigmoid_2:y:0/backward_lstm_26/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������
.backward_lstm_26/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   o
-backward_lstm_26/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
 backward_lstm_26/TensorArrayV2_1TensorListReserve7backward_lstm_26/TensorArrayV2_1/element_shape:output:06backward_lstm_26/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���W
backward_lstm_26/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_26/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������e
#backward_lstm_26/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
backward_lstm_26/whileWhile,backward_lstm_26/while/loop_counter:output:02backward_lstm_26/while/maximum_iterations:output:0backward_lstm_26/time:output:0)backward_lstm_26/TensorArrayV2_1:handle:0backward_lstm_26/zeros:output:0!backward_lstm_26/zeros_1:output:0)backward_lstm_26/strided_slice_1:output:0Hbackward_lstm_26/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_26_lstm_cell_matmul_readvariableop_resource;backward_lstm_26_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*.
body&R$
"backward_lstm_26_while_body_458190*.
cond&R$
"backward_lstm_26_while_cond_458189*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
Abackward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
3backward_lstm_26/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_26/while:output:3Jbackward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elementsy
&backward_lstm_26/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������r
(backward_lstm_26/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_26/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_26/strided_slice_3StridedSlice<backward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_26/strided_slice_3/stack:output:01backward_lstm_26/strided_slice_3/stack_1:output:01backward_lstm_26/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maskv
!backward_lstm_26/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_26/transpose_1	Transpose<backward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_26/transpose_1/perm:output:0*
T0*,
_output_shapes
:����������l
backward_lstm_26/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2(forward_lstm_26/strided_slice_3:output:0)backward_lstm_26/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:����������_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp2^backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_26/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_26/while1^forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_26/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_26/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2f
1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_26/lstm_cell/MatMul/ReadVariableOp0backward_lstm_26/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_26/whilebackward_lstm_26/while2d
0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_26/lstm_cell/MatMul/ReadVariableOp/forward_lstm_26/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_26/whileforward_lstm_26/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
0__inference_forward_lstm_26_layer_call_fn_459707
inputs_0
unknown:	�
	unknown_0:
��
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_456537p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0:&"
 
_user_specified_name459699:&"
 
_user_specified_name459701:&"
 
_user_specified_name459703
�	
�
while_cond_457162
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_457162___redundant_placeholder04
0while_while_cond_457162___redundant_placeholder14
0while_while_cond_457162___redundant_placeholder24
0while_while_cond_457162___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�
�
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_459376

inputsK
8forward_lstm_26_lstm_cell_matmul_readvariableop_resource:	�N
:forward_lstm_26_lstm_cell_matmul_1_readvariableop_resource:
��H
9forward_lstm_26_lstm_cell_biasadd_readvariableop_resource:	�L
9backward_lstm_26_lstm_cell_matmul_readvariableop_resource:	�O
;backward_lstm_26_lstm_cell_matmul_1_readvariableop_resource:
��I
:backward_lstm_26_lstm_cell_biasadd_readvariableop_resource:	�
identity��1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp�0backward_lstm_26/lstm_cell/MatMul/ReadVariableOp�2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp�backward_lstm_26/while�0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp�/forward_lstm_26/lstm_cell/MatMul/ReadVariableOp�1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp�forward_lstm_26/whileY
forward_lstm_26/ShapeShapeinputs*
T0*
_output_shapes
::��m
#forward_lstm_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_sliceStridedSliceforward_lstm_26/Shape:output:0,forward_lstm_26/strided_slice/stack:output:0.forward_lstm_26/strided_slice/stack_1:output:0.forward_lstm_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
forward_lstm_26/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
forward_lstm_26/zeros/packedPack&forward_lstm_26/strided_slice:output:0'forward_lstm_26/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_26/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_26/zerosFill%forward_lstm_26/zeros/packed:output:0$forward_lstm_26/zeros/Const:output:0*
T0*(
_output_shapes
:����������c
 forward_lstm_26/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
forward_lstm_26/zeros_1/packedPack&forward_lstm_26/strided_slice:output:0)forward_lstm_26/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_26/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_26/zeros_1Fill'forward_lstm_26/zeros_1/packed:output:0&forward_lstm_26/zeros_1/Const:output:0*
T0*(
_output_shapes
:����������s
forward_lstm_26/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_26/transpose	Transposeinputs'forward_lstm_26/transpose/perm:output:0*
T0*+
_output_shapes
:���������r
forward_lstm_26/Shape_1Shapeforward_lstm_26/transpose:y:0*
T0*
_output_shapes
::��o
%forward_lstm_26/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_26/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_26/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_slice_1StridedSlice forward_lstm_26/Shape_1:output:0.forward_lstm_26/strided_slice_1/stack:output:00forward_lstm_26/strided_slice_1/stack_1:output:00forward_lstm_26/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_26/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
forward_lstm_26/TensorArrayV2TensorListReserve4forward_lstm_26/TensorArrayV2/element_shape:output:0(forward_lstm_26/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Eforward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
7forward_lstm_26/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_26/transpose:y:0Nforward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���o
%forward_lstm_26/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_26/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_26/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_slice_2StridedSliceforward_lstm_26/transpose:y:0.forward_lstm_26/strided_slice_2/stack:output:00forward_lstm_26/strided_slice_2/stack_1:output:00forward_lstm_26/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
/forward_lstm_26/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_26_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 forward_lstm_26/lstm_cell/MatMulMatMul(forward_lstm_26/strided_slice_2:output:07forward_lstm_26/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_26_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
"forward_lstm_26/lstm_cell/MatMul_1MatMulforward_lstm_26/zeros:output:09forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/addAddV2*forward_lstm_26/lstm_cell/MatMul:product:0,forward_lstm_26/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!forward_lstm_26/lstm_cell/BiasAddBiasAdd!forward_lstm_26/lstm_cell/add:z:08forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������k
)forward_lstm_26/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/lstm_cell/splitSplit2forward_lstm_26/lstm_cell/split/split_dim:output:0*forward_lstm_26/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
!forward_lstm_26/lstm_cell/SigmoidSigmoid(forward_lstm_26/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
#forward_lstm_26/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_26/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/mulMul'forward_lstm_26/lstm_cell/Sigmoid_1:y:0 forward_lstm_26/zeros_1:output:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/ReluRelu(forward_lstm_26/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/mul_1Mul%forward_lstm_26/lstm_cell/Sigmoid:y:0,forward_lstm_26/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/add_1AddV2!forward_lstm_26/lstm_cell/mul:z:0#forward_lstm_26/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
#forward_lstm_26/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_26/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
 forward_lstm_26/lstm_cell/Relu_1Relu#forward_lstm_26/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/mul_2Mul'forward_lstm_26/lstm_cell/Sigmoid_2:y:0.forward_lstm_26/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������~
-forward_lstm_26/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   n
,forward_lstm_26/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/TensorArrayV2_1TensorListReserve6forward_lstm_26/TensorArrayV2_1/element_shape:output:05forward_lstm_26/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���V
forward_lstm_26/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_26/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������d
"forward_lstm_26/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
forward_lstm_26/whileWhile+forward_lstm_26/while/loop_counter:output:01forward_lstm_26/while/maximum_iterations:output:0forward_lstm_26/time:output:0(forward_lstm_26/TensorArrayV2_1:handle:0forward_lstm_26/zeros:output:0 forward_lstm_26/zeros_1:output:0(forward_lstm_26/strided_slice_1:output:0Gforward_lstm_26/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_26_lstm_cell_matmul_readvariableop_resource:forward_lstm_26_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*-
body%R#
!forward_lstm_26_while_body_459146*-
cond%R#
!forward_lstm_26_while_cond_459145*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
@forward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2forward_lstm_26/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_26/while:output:3Iforward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elementsx
%forward_lstm_26/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������q
'forward_lstm_26/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_26/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_slice_3StridedSlice;forward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_26/strided_slice_3/stack:output:00forward_lstm_26/strided_slice_3/stack_1:output:00forward_lstm_26/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_masku
 forward_lstm_26/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_26/transpose_1	Transpose;forward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_26/transpose_1/perm:output:0*
T0*,
_output_shapes
:����������k
forward_lstm_26/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Z
backward_lstm_26/ShapeShapeinputs*
T0*
_output_shapes
::��n
$backward_lstm_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_lstm_26/strided_sliceStridedSlicebackward_lstm_26/Shape:output:0-backward_lstm_26/strided_slice/stack:output:0/backward_lstm_26/strided_slice/stack_1:output:0/backward_lstm_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
backward_lstm_26/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
backward_lstm_26/zeros/packedPack'backward_lstm_26/strided_slice:output:0(backward_lstm_26/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_26/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_26/zerosFill&backward_lstm_26/zeros/packed:output:0%backward_lstm_26/zeros/Const:output:0*
T0*(
_output_shapes
:����������d
!backward_lstm_26/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
backward_lstm_26/zeros_1/packedPack'backward_lstm_26/strided_slice:output:0*backward_lstm_26/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_26/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_26/zeros_1Fill(backward_lstm_26/zeros_1/packed:output:0'backward_lstm_26/zeros_1/Const:output:0*
T0*(
_output_shapes
:����������t
backward_lstm_26/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_26/transpose	Transposeinputs(backward_lstm_26/transpose/perm:output:0*
T0*+
_output_shapes
:���������t
backward_lstm_26/Shape_1Shapebackward_lstm_26/transpose:y:0*
T0*
_output_shapes
::��p
&backward_lstm_26/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_26/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_26/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_26/strided_slice_1StridedSlice!backward_lstm_26/Shape_1:output:0/backward_lstm_26/strided_slice_1/stack:output:01backward_lstm_26/strided_slice_1/stack_1:output:01backward_lstm_26/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_26/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
backward_lstm_26/TensorArrayV2TensorListReserve5backward_lstm_26/TensorArrayV2/element_shape:output:0)backward_lstm_26/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���i
backward_lstm_26/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
backward_lstm_26/ReverseV2	ReverseV2backward_lstm_26/transpose:y:0(backward_lstm_26/ReverseV2/axis:output:0*
T0*+
_output_shapes
:����������
Fbackward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
8backward_lstm_26/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_26/ReverseV2:output:0Obackward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���p
&backward_lstm_26/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_26/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_26/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_26/strided_slice_2StridedSlicebackward_lstm_26/transpose:y:0/backward_lstm_26/strided_slice_2/stack:output:01backward_lstm_26/strided_slice_2/stack_1:output:01backward_lstm_26/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
0backward_lstm_26/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_26_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
!backward_lstm_26/lstm_cell/MatMulMatMul)backward_lstm_26/strided_slice_2:output:08backward_lstm_26/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_26_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
#backward_lstm_26/lstm_cell/MatMul_1MatMulbackward_lstm_26/zeros:output:0:backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
backward_lstm_26/lstm_cell/addAddV2+backward_lstm_26/lstm_cell/MatMul:product:0-backward_lstm_26/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"backward_lstm_26/lstm_cell/BiasAddBiasAdd"backward_lstm_26/lstm_cell/add:z:09backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������l
*backward_lstm_26/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 backward_lstm_26/lstm_cell/splitSplit3backward_lstm_26/lstm_cell/split/split_dim:output:0+backward_lstm_26/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
"backward_lstm_26/lstm_cell/SigmoidSigmoid)backward_lstm_26/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
$backward_lstm_26/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_26/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
backward_lstm_26/lstm_cell/mulMul(backward_lstm_26/lstm_cell/Sigmoid_1:y:0!backward_lstm_26/zeros_1:output:0*
T0*(
_output_shapes
:�����������
backward_lstm_26/lstm_cell/ReluRelu)backward_lstm_26/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
 backward_lstm_26/lstm_cell/mul_1Mul&backward_lstm_26/lstm_cell/Sigmoid:y:0-backward_lstm_26/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
 backward_lstm_26/lstm_cell/add_1AddV2"backward_lstm_26/lstm_cell/mul:z:0$backward_lstm_26/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
$backward_lstm_26/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_26/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
!backward_lstm_26/lstm_cell/Relu_1Relu$backward_lstm_26/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
 backward_lstm_26/lstm_cell/mul_2Mul(backward_lstm_26/lstm_cell/Sigmoid_2:y:0/backward_lstm_26/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������
.backward_lstm_26/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   o
-backward_lstm_26/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
 backward_lstm_26/TensorArrayV2_1TensorListReserve7backward_lstm_26/TensorArrayV2_1/element_shape:output:06backward_lstm_26/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���W
backward_lstm_26/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_26/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������e
#backward_lstm_26/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
backward_lstm_26/whileWhile,backward_lstm_26/while/loop_counter:output:02backward_lstm_26/while/maximum_iterations:output:0backward_lstm_26/time:output:0)backward_lstm_26/TensorArrayV2_1:handle:0backward_lstm_26/zeros:output:0!backward_lstm_26/zeros_1:output:0)backward_lstm_26/strided_slice_1:output:0Hbackward_lstm_26/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_26_lstm_cell_matmul_readvariableop_resource;backward_lstm_26_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*.
body&R$
"backward_lstm_26_while_body_459289*.
cond&R$
"backward_lstm_26_while_cond_459288*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
Abackward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
3backward_lstm_26/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_26/while:output:3Jbackward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elementsy
&backward_lstm_26/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������r
(backward_lstm_26/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_26/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_26/strided_slice_3StridedSlice<backward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_26/strided_slice_3/stack:output:01backward_lstm_26/strided_slice_3/stack_1:output:01backward_lstm_26/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maskv
!backward_lstm_26/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_26/transpose_1	Transpose<backward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_26/transpose_1/perm:output:0*
T0*,
_output_shapes
:����������l
backward_lstm_26/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2(forward_lstm_26/strided_slice_3:output:0)backward_lstm_26/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:����������_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp2^backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_26/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_26/while1^forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_26/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_26/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2f
1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_26/lstm_cell/MatMul/ReadVariableOp0backward_lstm_26/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_26/whilebackward_lstm_26/while2d
0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_26/lstm_cell/MatMul/ReadVariableOp/forward_lstm_26/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_26/whileforward_lstm_26/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�:
�
while_body_459789
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
��@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�D
0while_lstm_cell_matmul_1_readvariableop_resource:
��>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:����������o
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:����������l
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
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
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:����������w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�N
�
"backward_lstm_26_while_body_459289>
:backward_lstm_26_while_backward_lstm_26_while_loop_counterD
@backward_lstm_26_while_backward_lstm_26_while_maximum_iterations&
"backward_lstm_26_while_placeholder(
$backward_lstm_26_while_placeholder_1(
$backward_lstm_26_while_placeholder_2(
$backward_lstm_26_while_placeholder_3=
9backward_lstm_26_while_backward_lstm_26_strided_slice_1_0y
ubackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0T
Abackward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0:	�W
Cbackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0:
��Q
Bbackward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0:	�#
backward_lstm_26_while_identity%
!backward_lstm_26_while_identity_1%
!backward_lstm_26_while_identity_2%
!backward_lstm_26_while_identity_3%
!backward_lstm_26_while_identity_4%
!backward_lstm_26_while_identity_5;
7backward_lstm_26_while_backward_lstm_26_strided_slice_1w
sbackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensorR
?backward_lstm_26_while_lstm_cell_matmul_readvariableop_resource:	�U
Abackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource:
��O
@backward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource:	���7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp�6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp�8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp�
Hbackward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
:backward_lstm_26/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_26_while_placeholderQbackward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
'backward_lstm_26/while/lstm_cell/MatMulMatMulAbackward_lstm_26/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
)backward_lstm_26/while/lstm_cell/MatMul_1MatMul$backward_lstm_26_while_placeholder_2@backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$backward_lstm_26/while/lstm_cell/addAddV21backward_lstm_26/while/lstm_cell/MatMul:product:03backward_lstm_26/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
(backward_lstm_26/while/lstm_cell/BiasAddBiasAdd(backward_lstm_26/while/lstm_cell/add:z:0?backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������r
0backward_lstm_26/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
&backward_lstm_26/while/lstm_cell/splitSplit9backward_lstm_26/while/lstm_cell/split/split_dim:output:01backward_lstm_26/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
(backward_lstm_26/while/lstm_cell/SigmoidSigmoid/backward_lstm_26/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
*backward_lstm_26/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_26/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
$backward_lstm_26/while/lstm_cell/mulMul.backward_lstm_26/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_26_while_placeholder_3*
T0*(
_output_shapes
:�����������
%backward_lstm_26/while/lstm_cell/ReluRelu/backward_lstm_26/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
&backward_lstm_26/while/lstm_cell/mul_1Mul,backward_lstm_26/while/lstm_cell/Sigmoid:y:03backward_lstm_26/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
&backward_lstm_26/while/lstm_cell/add_1AddV2(backward_lstm_26/while/lstm_cell/mul:z:0*backward_lstm_26/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
*backward_lstm_26/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_26/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
'backward_lstm_26/while/lstm_cell/Relu_1Relu*backward_lstm_26/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
&backward_lstm_26/while/lstm_cell/mul_2Mul.backward_lstm_26/while/lstm_cell/Sigmoid_2:y:05backward_lstm_26/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:�����������
Abackward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
;backward_lstm_26/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_26_while_placeholder_1Jbackward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/index:output:0*backward_lstm_26/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���^
backward_lstm_26/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_26/while/addAddV2"backward_lstm_26_while_placeholder%backward_lstm_26/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_26/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_26/while/add_1AddV2:backward_lstm_26_while_backward_lstm_26_while_loop_counter'backward_lstm_26/while/add_1/y:output:0*
T0*
_output_shapes
: �
backward_lstm_26/while/IdentityIdentity backward_lstm_26/while/add_1:z:0^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_1Identity@backward_lstm_26_while_backward_lstm_26_while_maximum_iterations^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_2Identitybackward_lstm_26/while/add:z:0^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_3IdentityKbackward_lstm_26/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_4Identity*backward_lstm_26/while/lstm_cell/mul_2:z:0^backward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
!backward_lstm_26/while/Identity_5Identity*backward_lstm_26/while/lstm_cell/add_1:z:0^backward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
backward_lstm_26/while/NoOpNoOp8^backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_26_while_backward_lstm_26_strided_slice_19backward_lstm_26_while_backward_lstm_26_strided_slice_1_0"K
backward_lstm_26_while_identity(backward_lstm_26/while/Identity:output:0"O
!backward_lstm_26_while_identity_1*backward_lstm_26/while/Identity_1:output:0"O
!backward_lstm_26_while_identity_2*backward_lstm_26/while/Identity_2:output:0"O
!backward_lstm_26_while_identity_3*backward_lstm_26/while/Identity_3:output:0"O
!backward_lstm_26_while_identity_4*backward_lstm_26/while/Identity_4:output:0"O
!backward_lstm_26_while_identity_5*backward_lstm_26/while/Identity_5:output:0"�
@backward_lstm_26_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0"�
Abackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0"�
?backward_lstm_26_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0"�
sbackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensorubackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2r
7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_26/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_26/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_26/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
ې
�
Xmodel_9_bidirectionalLSTM_univariate_bidirectional_26_backward_lstm_26_while_body_456150�
�model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_loop_counter�
�model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_maximum_iterations\
Xmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_placeholder^
Zmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_placeholder_1^
Zmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_placeholder_2^
Zmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_placeholder_3�
�model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_strided_slice_1_0�
�model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0�
wmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0:	��
ymodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0:
���
xmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0:	�Y
Umodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_identity[
Wmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_identity_1[
Wmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_identity_2[
Wmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_identity_3[
Wmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_identity_4[
Wmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_identity_5�
�model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_strided_slice_1�
�model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_tensorarrayunstack_tensorlistfromtensor�
umodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_lstm_cell_matmul_readvariableop_resource:	��
wmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource:
���
vmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource:	���mmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp�lmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp�nmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp�
~model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
pmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0Xmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_placeholder�model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
lmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpwmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
]model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/MatMulMatMulwmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/TensorArrayV2Read/TensorListGetItem:item:0tmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
nmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpymodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
_model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/MatMul_1MatMulZmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_placeholder_2vmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/addAddV2gmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/MatMul:product:0imodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
mmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpxmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/BiasAddBiasAdd^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/add:z:0umodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
fmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
\model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/splitSplitomodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/split/split_dim:output:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/SigmoidSigmoidemodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
`model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/Sigmoid_1Sigmoidemodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/mulMuldmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/Sigmoid_1:y:0Zmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_placeholder_3*
T0*(
_output_shapes
:�����������
[model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/ReluReluemodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
\model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/mul_1Mulbmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/Sigmoid:y:0imodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
\model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/add_1AddV2^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/mul:z:0`model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
`model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/Sigmoid_2Sigmoidemodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
]model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/Relu_1Relu`model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
\model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/mul_2Muldmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/Sigmoid_2:y:0kmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:�����������
wmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
qmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemZmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_placeholder_1�model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/index:output:0`model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:����
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/addAddV2Xmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_placeholder[model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/add/y:output:0*
T0*
_output_shapes
: �
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/add_1AddV2�model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_loop_counter]model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/add_1/y:output:0*
T0*
_output_shapes
: �
Umodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/IdentityIdentityVmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/add_1:z:0R^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/Identity_1Identity�model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_maximum_iterationsR^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/Identity_2IdentityTmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/add:z:0R^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/Identity_3Identity�model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/TensorArrayV2Write/TensorListSetItem:output_handle:0R^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/Identity_4Identity`model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/mul_2:z:0R^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/Identity_5Identity`model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/add_1:z:0R^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/NoOpNoOpn^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOpm^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOpo^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "�
Umodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_identity^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/Identity:output:0"�
Wmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_identity_1`model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/Identity_1:output:0"�
Wmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_identity_2`model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/Identity_2:output:0"�
Wmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_identity_3`model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/Identity_3:output:0"�
Wmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_identity_4`model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/Identity_4:output:0"�
Wmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_identity_5`model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/Identity_5:output:0"�
vmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_lstm_cell_biasadd_readvariableop_resourcexmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0"�
wmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resourceymodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0"�
umodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_lstm_cell_matmul_readvariableop_resourcewmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0"�
�model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_strided_slice_1�model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_strided_slice_1_0"�
�model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_tensorarrayunstack_tensorlistfromtensor�model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2�
mmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOpmmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp2�
lmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOplmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp2�
nmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOpnmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:� �

_output_shapes
: 
s
_user_specified_name[Ymodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/loop_counter:��

_output_shapes
: 
y
_user_specified_namea_model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:��

_output_shapes
: 
p
_user_specified_nameXVmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_1:��

_output_shapes
: 
�
_user_specified_namepnmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�
a
E__inference_lambda_26_layer_call_and_return_conditional_losses_458438

inputs
identityY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:���������_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�K
�
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_460164

inputs;
(lstm_cell_matmul_readvariableop_resource:	�>
*lstm_cell_matmul_1_readvariableop_resource:
��8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
B :�s
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
:����������S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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
valueB"���������
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
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:����������r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:����������c
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:����������~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:����������s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:����������`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_460079*
condR
while_cond_460078*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
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
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
while_cond_460414
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_460414___redundant_placeholder04
0while_while_cond_460414___redundant_placeholder14
0while_while_cond_460414___redundant_placeholder24
0while_while_cond_460414___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�N
�
"backward_lstm_26_while_body_457861>
:backward_lstm_26_while_backward_lstm_26_while_loop_counterD
@backward_lstm_26_while_backward_lstm_26_while_maximum_iterations&
"backward_lstm_26_while_placeholder(
$backward_lstm_26_while_placeholder_1(
$backward_lstm_26_while_placeholder_2(
$backward_lstm_26_while_placeholder_3=
9backward_lstm_26_while_backward_lstm_26_strided_slice_1_0y
ubackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0T
Abackward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0:	�W
Cbackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0:
��Q
Bbackward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0:	�#
backward_lstm_26_while_identity%
!backward_lstm_26_while_identity_1%
!backward_lstm_26_while_identity_2%
!backward_lstm_26_while_identity_3%
!backward_lstm_26_while_identity_4%
!backward_lstm_26_while_identity_5;
7backward_lstm_26_while_backward_lstm_26_strided_slice_1w
sbackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensorR
?backward_lstm_26_while_lstm_cell_matmul_readvariableop_resource:	�U
Abackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource:
��O
@backward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource:	���7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp�6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp�8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp�
Hbackward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
:backward_lstm_26/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_26_while_placeholderQbackward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
'backward_lstm_26/while/lstm_cell/MatMulMatMulAbackward_lstm_26/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
)backward_lstm_26/while/lstm_cell/MatMul_1MatMul$backward_lstm_26_while_placeholder_2@backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$backward_lstm_26/while/lstm_cell/addAddV21backward_lstm_26/while/lstm_cell/MatMul:product:03backward_lstm_26/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
(backward_lstm_26/while/lstm_cell/BiasAddBiasAdd(backward_lstm_26/while/lstm_cell/add:z:0?backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������r
0backward_lstm_26/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
&backward_lstm_26/while/lstm_cell/splitSplit9backward_lstm_26/while/lstm_cell/split/split_dim:output:01backward_lstm_26/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
(backward_lstm_26/while/lstm_cell/SigmoidSigmoid/backward_lstm_26/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
*backward_lstm_26/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_26/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
$backward_lstm_26/while/lstm_cell/mulMul.backward_lstm_26/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_26_while_placeholder_3*
T0*(
_output_shapes
:�����������
%backward_lstm_26/while/lstm_cell/ReluRelu/backward_lstm_26/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
&backward_lstm_26/while/lstm_cell/mul_1Mul,backward_lstm_26/while/lstm_cell/Sigmoid:y:03backward_lstm_26/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
&backward_lstm_26/while/lstm_cell/add_1AddV2(backward_lstm_26/while/lstm_cell/mul:z:0*backward_lstm_26/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
*backward_lstm_26/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_26/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
'backward_lstm_26/while/lstm_cell/Relu_1Relu*backward_lstm_26/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
&backward_lstm_26/while/lstm_cell/mul_2Mul.backward_lstm_26/while/lstm_cell/Sigmoid_2:y:05backward_lstm_26/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:�����������
Abackward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
;backward_lstm_26/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_26_while_placeholder_1Jbackward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/index:output:0*backward_lstm_26/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���^
backward_lstm_26/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_26/while/addAddV2"backward_lstm_26_while_placeholder%backward_lstm_26/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_26/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_26/while/add_1AddV2:backward_lstm_26_while_backward_lstm_26_while_loop_counter'backward_lstm_26/while/add_1/y:output:0*
T0*
_output_shapes
: �
backward_lstm_26/while/IdentityIdentity backward_lstm_26/while/add_1:z:0^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_1Identity@backward_lstm_26_while_backward_lstm_26_while_maximum_iterations^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_2Identitybackward_lstm_26/while/add:z:0^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_3IdentityKbackward_lstm_26/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_4Identity*backward_lstm_26/while/lstm_cell/mul_2:z:0^backward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
!backward_lstm_26/while/Identity_5Identity*backward_lstm_26/while/lstm_cell/add_1:z:0^backward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
backward_lstm_26/while/NoOpNoOp8^backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_26_while_backward_lstm_26_strided_slice_19backward_lstm_26_while_backward_lstm_26_strided_slice_1_0"K
backward_lstm_26_while_identity(backward_lstm_26/while/Identity:output:0"O
!backward_lstm_26_while_identity_1*backward_lstm_26/while/Identity_1:output:0"O
!backward_lstm_26_while_identity_2*backward_lstm_26/while/Identity_2:output:0"O
!backward_lstm_26_while_identity_3*backward_lstm_26/while/Identity_3:output:0"O
!backward_lstm_26_while_identity_4*backward_lstm_26/while/Identity_4:output:0"O
!backward_lstm_26_while_identity_5*backward_lstm_26/while/Identity_5:output:0"�
@backward_lstm_26_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0"�
Abackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0"�
?backward_lstm_26_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0"�
sbackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensorubackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2r
7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_26/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_26/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_26/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�
�
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_458796
inputs_0K
8forward_lstm_26_lstm_cell_matmul_readvariableop_resource:	�N
:forward_lstm_26_lstm_cell_matmul_1_readvariableop_resource:
��H
9forward_lstm_26_lstm_cell_biasadd_readvariableop_resource:	�L
9backward_lstm_26_lstm_cell_matmul_readvariableop_resource:	�O
;backward_lstm_26_lstm_cell_matmul_1_readvariableop_resource:
��I
:backward_lstm_26_lstm_cell_biasadd_readvariableop_resource:	�
identity��1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp�0backward_lstm_26/lstm_cell/MatMul/ReadVariableOp�2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp�backward_lstm_26/while�0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp�/forward_lstm_26/lstm_cell/MatMul/ReadVariableOp�1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp�forward_lstm_26/while[
forward_lstm_26/ShapeShapeinputs_0*
T0*
_output_shapes
::��m
#forward_lstm_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_sliceStridedSliceforward_lstm_26/Shape:output:0,forward_lstm_26/strided_slice/stack:output:0.forward_lstm_26/strided_slice/stack_1:output:0.forward_lstm_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
forward_lstm_26/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
forward_lstm_26/zeros/packedPack&forward_lstm_26/strided_slice:output:0'forward_lstm_26/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_26/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_26/zerosFill%forward_lstm_26/zeros/packed:output:0$forward_lstm_26/zeros/Const:output:0*
T0*(
_output_shapes
:����������c
 forward_lstm_26/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
forward_lstm_26/zeros_1/packedPack&forward_lstm_26/strided_slice:output:0)forward_lstm_26/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_26/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_26/zeros_1Fill'forward_lstm_26/zeros_1/packed:output:0&forward_lstm_26/zeros_1/Const:output:0*
T0*(
_output_shapes
:����������s
forward_lstm_26/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_26/transpose	Transposeinputs_0'forward_lstm_26/transpose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������r
forward_lstm_26/Shape_1Shapeforward_lstm_26/transpose:y:0*
T0*
_output_shapes
::��o
%forward_lstm_26/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_26/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_26/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_slice_1StridedSlice forward_lstm_26/Shape_1:output:0.forward_lstm_26/strided_slice_1/stack:output:00forward_lstm_26/strided_slice_1/stack_1:output:00forward_lstm_26/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_26/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
forward_lstm_26/TensorArrayV2TensorListReserve4forward_lstm_26/TensorArrayV2/element_shape:output:0(forward_lstm_26/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Eforward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
7forward_lstm_26/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_26/transpose:y:0Nforward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���o
%forward_lstm_26/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_26/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_26/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_slice_2StridedSliceforward_lstm_26/transpose:y:0.forward_lstm_26/strided_slice_2/stack:output:00forward_lstm_26/strided_slice_2/stack_1:output:00forward_lstm_26/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
/forward_lstm_26/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_26_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 forward_lstm_26/lstm_cell/MatMulMatMul(forward_lstm_26/strided_slice_2:output:07forward_lstm_26/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_26_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
"forward_lstm_26/lstm_cell/MatMul_1MatMulforward_lstm_26/zeros:output:09forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/addAddV2*forward_lstm_26/lstm_cell/MatMul:product:0,forward_lstm_26/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!forward_lstm_26/lstm_cell/BiasAddBiasAdd!forward_lstm_26/lstm_cell/add:z:08forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������k
)forward_lstm_26/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/lstm_cell/splitSplit2forward_lstm_26/lstm_cell/split/split_dim:output:0*forward_lstm_26/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
!forward_lstm_26/lstm_cell/SigmoidSigmoid(forward_lstm_26/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
#forward_lstm_26/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_26/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/mulMul'forward_lstm_26/lstm_cell/Sigmoid_1:y:0 forward_lstm_26/zeros_1:output:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/ReluRelu(forward_lstm_26/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/mul_1Mul%forward_lstm_26/lstm_cell/Sigmoid:y:0,forward_lstm_26/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/add_1AddV2!forward_lstm_26/lstm_cell/mul:z:0#forward_lstm_26/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
#forward_lstm_26/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_26/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
 forward_lstm_26/lstm_cell/Relu_1Relu#forward_lstm_26/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/mul_2Mul'forward_lstm_26/lstm_cell/Sigmoid_2:y:0.forward_lstm_26/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������~
-forward_lstm_26/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   n
,forward_lstm_26/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/TensorArrayV2_1TensorListReserve6forward_lstm_26/TensorArrayV2_1/element_shape:output:05forward_lstm_26/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���V
forward_lstm_26/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_26/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������d
"forward_lstm_26/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
forward_lstm_26/whileWhile+forward_lstm_26/while/loop_counter:output:01forward_lstm_26/while/maximum_iterations:output:0forward_lstm_26/time:output:0(forward_lstm_26/TensorArrayV2_1:handle:0forward_lstm_26/zeros:output:0 forward_lstm_26/zeros_1:output:0(forward_lstm_26/strided_slice_1:output:0Gforward_lstm_26/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_26_lstm_cell_matmul_readvariableop_resource:forward_lstm_26_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*-
body%R#
!forward_lstm_26_while_body_458566*-
cond%R#
!forward_lstm_26_while_cond_458565*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
@forward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2forward_lstm_26/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_26/while:output:3Iforward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elementsx
%forward_lstm_26/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������q
'forward_lstm_26/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_26/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_slice_3StridedSlice;forward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_26/strided_slice_3/stack:output:00forward_lstm_26/strided_slice_3/stack_1:output:00forward_lstm_26/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_masku
 forward_lstm_26/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_26/transpose_1	Transpose;forward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_26/transpose_1/perm:output:0*
T0*,
_output_shapes
:����������k
forward_lstm_26/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    \
backward_lstm_26/ShapeShapeinputs_0*
T0*
_output_shapes
::��n
$backward_lstm_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_lstm_26/strided_sliceStridedSlicebackward_lstm_26/Shape:output:0-backward_lstm_26/strided_slice/stack:output:0/backward_lstm_26/strided_slice/stack_1:output:0/backward_lstm_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
backward_lstm_26/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
backward_lstm_26/zeros/packedPack'backward_lstm_26/strided_slice:output:0(backward_lstm_26/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_26/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_26/zerosFill&backward_lstm_26/zeros/packed:output:0%backward_lstm_26/zeros/Const:output:0*
T0*(
_output_shapes
:����������d
!backward_lstm_26/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
backward_lstm_26/zeros_1/packedPack'backward_lstm_26/strided_slice:output:0*backward_lstm_26/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_26/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_26/zeros_1Fill(backward_lstm_26/zeros_1/packed:output:0'backward_lstm_26/zeros_1/Const:output:0*
T0*(
_output_shapes
:����������t
backward_lstm_26/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_26/transpose	Transposeinputs_0(backward_lstm_26/transpose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������t
backward_lstm_26/Shape_1Shapebackward_lstm_26/transpose:y:0*
T0*
_output_shapes
::��p
&backward_lstm_26/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_26/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_26/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_26/strided_slice_1StridedSlice!backward_lstm_26/Shape_1:output:0/backward_lstm_26/strided_slice_1/stack:output:01backward_lstm_26/strided_slice_1/stack_1:output:01backward_lstm_26/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_26/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
backward_lstm_26/TensorArrayV2TensorListReserve5backward_lstm_26/TensorArrayV2/element_shape:output:0)backward_lstm_26/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���i
backward_lstm_26/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
backward_lstm_26/ReverseV2	ReverseV2backward_lstm_26/transpose:y:0(backward_lstm_26/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'����������������������������
Fbackward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
8backward_lstm_26/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_26/ReverseV2:output:0Obackward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���p
&backward_lstm_26/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_26/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_26/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_26/strided_slice_2StridedSlicebackward_lstm_26/transpose:y:0/backward_lstm_26/strided_slice_2/stack:output:01backward_lstm_26/strided_slice_2/stack_1:output:01backward_lstm_26/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
0backward_lstm_26/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_26_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
!backward_lstm_26/lstm_cell/MatMulMatMul)backward_lstm_26/strided_slice_2:output:08backward_lstm_26/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_26_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
#backward_lstm_26/lstm_cell/MatMul_1MatMulbackward_lstm_26/zeros:output:0:backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
backward_lstm_26/lstm_cell/addAddV2+backward_lstm_26/lstm_cell/MatMul:product:0-backward_lstm_26/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"backward_lstm_26/lstm_cell/BiasAddBiasAdd"backward_lstm_26/lstm_cell/add:z:09backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������l
*backward_lstm_26/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 backward_lstm_26/lstm_cell/splitSplit3backward_lstm_26/lstm_cell/split/split_dim:output:0+backward_lstm_26/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
"backward_lstm_26/lstm_cell/SigmoidSigmoid)backward_lstm_26/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
$backward_lstm_26/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_26/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
backward_lstm_26/lstm_cell/mulMul(backward_lstm_26/lstm_cell/Sigmoid_1:y:0!backward_lstm_26/zeros_1:output:0*
T0*(
_output_shapes
:�����������
backward_lstm_26/lstm_cell/ReluRelu)backward_lstm_26/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
 backward_lstm_26/lstm_cell/mul_1Mul&backward_lstm_26/lstm_cell/Sigmoid:y:0-backward_lstm_26/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
 backward_lstm_26/lstm_cell/add_1AddV2"backward_lstm_26/lstm_cell/mul:z:0$backward_lstm_26/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
$backward_lstm_26/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_26/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
!backward_lstm_26/lstm_cell/Relu_1Relu$backward_lstm_26/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
 backward_lstm_26/lstm_cell/mul_2Mul(backward_lstm_26/lstm_cell/Sigmoid_2:y:0/backward_lstm_26/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������
.backward_lstm_26/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   o
-backward_lstm_26/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
 backward_lstm_26/TensorArrayV2_1TensorListReserve7backward_lstm_26/TensorArrayV2_1/element_shape:output:06backward_lstm_26/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���W
backward_lstm_26/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_26/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������e
#backward_lstm_26/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
backward_lstm_26/whileWhile,backward_lstm_26/while/loop_counter:output:02backward_lstm_26/while/maximum_iterations:output:0backward_lstm_26/time:output:0)backward_lstm_26/TensorArrayV2_1:handle:0backward_lstm_26/zeros:output:0!backward_lstm_26/zeros_1:output:0)backward_lstm_26/strided_slice_1:output:0Hbackward_lstm_26/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_26_lstm_cell_matmul_readvariableop_resource;backward_lstm_26_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*.
body&R$
"backward_lstm_26_while_body_458709*.
cond&R$
"backward_lstm_26_while_cond_458708*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
Abackward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
3backward_lstm_26/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_26/while:output:3Jbackward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elementsy
&backward_lstm_26/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������r
(backward_lstm_26/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_26/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_26/strided_slice_3StridedSlice<backward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_26/strided_slice_3/stack:output:01backward_lstm_26/strided_slice_3/stack_1:output:01backward_lstm_26/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maskv
!backward_lstm_26/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_26/transpose_1	Transpose<backward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_26/transpose_1/perm:output:0*
T0*,
_output_shapes
:����������l
backward_lstm_26/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2(forward_lstm_26/strided_slice_3:output:0)backward_lstm_26/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:����������_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp2^backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_26/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_26/while1^forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_26/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_26/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'���������������������������: : : : : : 2f
1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_26/lstm_cell/MatMul/ReadVariableOp0backward_lstm_26/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_26/whilebackward_lstm_26/while2d
0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_26/lstm_cell/MatMul/ReadVariableOp/forward_lstm_26/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_26/whileforward_lstm_26/while:g c
=
_output_shapes+
):'���������������������������
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�:
�
while_body_457163
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
��@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�D
0while_lstm_cell_matmul_1_readvariableop_resource:
��>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:����������o
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:����������l
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
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
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:����������w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�M
�
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_457248

inputs;
(lstm_cell_matmul_readvariableop_resource:	�>
*lstm_cell_matmul_1_readvariableop_resource:
��8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
B :�s
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
:����������S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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

shape_type0:���X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'����������������������������
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
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
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:����������r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:����������c
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:����������~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:����������s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:����������`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_457163*
condR
while_cond_457162*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
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
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_459666

inputsK
8forward_lstm_26_lstm_cell_matmul_readvariableop_resource:	�N
:forward_lstm_26_lstm_cell_matmul_1_readvariableop_resource:
��H
9forward_lstm_26_lstm_cell_biasadd_readvariableop_resource:	�L
9backward_lstm_26_lstm_cell_matmul_readvariableop_resource:	�O
;backward_lstm_26_lstm_cell_matmul_1_readvariableop_resource:
��I
:backward_lstm_26_lstm_cell_biasadd_readvariableop_resource:	�
identity��1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp�0backward_lstm_26/lstm_cell/MatMul/ReadVariableOp�2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp�backward_lstm_26/while�0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp�/forward_lstm_26/lstm_cell/MatMul/ReadVariableOp�1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp�forward_lstm_26/whileY
forward_lstm_26/ShapeShapeinputs*
T0*
_output_shapes
::��m
#forward_lstm_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_sliceStridedSliceforward_lstm_26/Shape:output:0,forward_lstm_26/strided_slice/stack:output:0.forward_lstm_26/strided_slice/stack_1:output:0.forward_lstm_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
forward_lstm_26/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
forward_lstm_26/zeros/packedPack&forward_lstm_26/strided_slice:output:0'forward_lstm_26/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_26/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_26/zerosFill%forward_lstm_26/zeros/packed:output:0$forward_lstm_26/zeros/Const:output:0*
T0*(
_output_shapes
:����������c
 forward_lstm_26/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
forward_lstm_26/zeros_1/packedPack&forward_lstm_26/strided_slice:output:0)forward_lstm_26/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_26/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_26/zeros_1Fill'forward_lstm_26/zeros_1/packed:output:0&forward_lstm_26/zeros_1/Const:output:0*
T0*(
_output_shapes
:����������s
forward_lstm_26/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_26/transpose	Transposeinputs'forward_lstm_26/transpose/perm:output:0*
T0*+
_output_shapes
:���������r
forward_lstm_26/Shape_1Shapeforward_lstm_26/transpose:y:0*
T0*
_output_shapes
::��o
%forward_lstm_26/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_26/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_26/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_slice_1StridedSlice forward_lstm_26/Shape_1:output:0.forward_lstm_26/strided_slice_1/stack:output:00forward_lstm_26/strided_slice_1/stack_1:output:00forward_lstm_26/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_26/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
forward_lstm_26/TensorArrayV2TensorListReserve4forward_lstm_26/TensorArrayV2/element_shape:output:0(forward_lstm_26/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Eforward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
7forward_lstm_26/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_26/transpose:y:0Nforward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���o
%forward_lstm_26/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_26/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_26/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_slice_2StridedSliceforward_lstm_26/transpose:y:0.forward_lstm_26/strided_slice_2/stack:output:00forward_lstm_26/strided_slice_2/stack_1:output:00forward_lstm_26/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
/forward_lstm_26/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_26_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 forward_lstm_26/lstm_cell/MatMulMatMul(forward_lstm_26/strided_slice_2:output:07forward_lstm_26/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_26_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
"forward_lstm_26/lstm_cell/MatMul_1MatMulforward_lstm_26/zeros:output:09forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/addAddV2*forward_lstm_26/lstm_cell/MatMul:product:0,forward_lstm_26/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!forward_lstm_26/lstm_cell/BiasAddBiasAdd!forward_lstm_26/lstm_cell/add:z:08forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������k
)forward_lstm_26/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/lstm_cell/splitSplit2forward_lstm_26/lstm_cell/split/split_dim:output:0*forward_lstm_26/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
!forward_lstm_26/lstm_cell/SigmoidSigmoid(forward_lstm_26/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
#forward_lstm_26/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_26/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/mulMul'forward_lstm_26/lstm_cell/Sigmoid_1:y:0 forward_lstm_26/zeros_1:output:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/ReluRelu(forward_lstm_26/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/mul_1Mul%forward_lstm_26/lstm_cell/Sigmoid:y:0,forward_lstm_26/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/add_1AddV2!forward_lstm_26/lstm_cell/mul:z:0#forward_lstm_26/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
#forward_lstm_26/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_26/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
 forward_lstm_26/lstm_cell/Relu_1Relu#forward_lstm_26/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/mul_2Mul'forward_lstm_26/lstm_cell/Sigmoid_2:y:0.forward_lstm_26/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������~
-forward_lstm_26/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   n
,forward_lstm_26/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/TensorArrayV2_1TensorListReserve6forward_lstm_26/TensorArrayV2_1/element_shape:output:05forward_lstm_26/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���V
forward_lstm_26/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_26/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������d
"forward_lstm_26/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
forward_lstm_26/whileWhile+forward_lstm_26/while/loop_counter:output:01forward_lstm_26/while/maximum_iterations:output:0forward_lstm_26/time:output:0(forward_lstm_26/TensorArrayV2_1:handle:0forward_lstm_26/zeros:output:0 forward_lstm_26/zeros_1:output:0(forward_lstm_26/strided_slice_1:output:0Gforward_lstm_26/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_26_lstm_cell_matmul_readvariableop_resource:forward_lstm_26_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*-
body%R#
!forward_lstm_26_while_body_459436*-
cond%R#
!forward_lstm_26_while_cond_459435*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
@forward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2forward_lstm_26/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_26/while:output:3Iforward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elementsx
%forward_lstm_26/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������q
'forward_lstm_26/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_26/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_slice_3StridedSlice;forward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_26/strided_slice_3/stack:output:00forward_lstm_26/strided_slice_3/stack_1:output:00forward_lstm_26/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_masku
 forward_lstm_26/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_26/transpose_1	Transpose;forward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_26/transpose_1/perm:output:0*
T0*,
_output_shapes
:����������k
forward_lstm_26/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Z
backward_lstm_26/ShapeShapeinputs*
T0*
_output_shapes
::��n
$backward_lstm_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_lstm_26/strided_sliceStridedSlicebackward_lstm_26/Shape:output:0-backward_lstm_26/strided_slice/stack:output:0/backward_lstm_26/strided_slice/stack_1:output:0/backward_lstm_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
backward_lstm_26/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
backward_lstm_26/zeros/packedPack'backward_lstm_26/strided_slice:output:0(backward_lstm_26/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_26/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_26/zerosFill&backward_lstm_26/zeros/packed:output:0%backward_lstm_26/zeros/Const:output:0*
T0*(
_output_shapes
:����������d
!backward_lstm_26/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
backward_lstm_26/zeros_1/packedPack'backward_lstm_26/strided_slice:output:0*backward_lstm_26/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_26/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_26/zeros_1Fill(backward_lstm_26/zeros_1/packed:output:0'backward_lstm_26/zeros_1/Const:output:0*
T0*(
_output_shapes
:����������t
backward_lstm_26/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_26/transpose	Transposeinputs(backward_lstm_26/transpose/perm:output:0*
T0*+
_output_shapes
:���������t
backward_lstm_26/Shape_1Shapebackward_lstm_26/transpose:y:0*
T0*
_output_shapes
::��p
&backward_lstm_26/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_26/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_26/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_26/strided_slice_1StridedSlice!backward_lstm_26/Shape_1:output:0/backward_lstm_26/strided_slice_1/stack:output:01backward_lstm_26/strided_slice_1/stack_1:output:01backward_lstm_26/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_26/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
backward_lstm_26/TensorArrayV2TensorListReserve5backward_lstm_26/TensorArrayV2/element_shape:output:0)backward_lstm_26/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���i
backward_lstm_26/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
backward_lstm_26/ReverseV2	ReverseV2backward_lstm_26/transpose:y:0(backward_lstm_26/ReverseV2/axis:output:0*
T0*+
_output_shapes
:����������
Fbackward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
8backward_lstm_26/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_26/ReverseV2:output:0Obackward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���p
&backward_lstm_26/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_26/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_26/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_26/strided_slice_2StridedSlicebackward_lstm_26/transpose:y:0/backward_lstm_26/strided_slice_2/stack:output:01backward_lstm_26/strided_slice_2/stack_1:output:01backward_lstm_26/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
0backward_lstm_26/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_26_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
!backward_lstm_26/lstm_cell/MatMulMatMul)backward_lstm_26/strided_slice_2:output:08backward_lstm_26/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_26_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
#backward_lstm_26/lstm_cell/MatMul_1MatMulbackward_lstm_26/zeros:output:0:backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
backward_lstm_26/lstm_cell/addAddV2+backward_lstm_26/lstm_cell/MatMul:product:0-backward_lstm_26/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"backward_lstm_26/lstm_cell/BiasAddBiasAdd"backward_lstm_26/lstm_cell/add:z:09backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������l
*backward_lstm_26/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 backward_lstm_26/lstm_cell/splitSplit3backward_lstm_26/lstm_cell/split/split_dim:output:0+backward_lstm_26/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
"backward_lstm_26/lstm_cell/SigmoidSigmoid)backward_lstm_26/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
$backward_lstm_26/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_26/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
backward_lstm_26/lstm_cell/mulMul(backward_lstm_26/lstm_cell/Sigmoid_1:y:0!backward_lstm_26/zeros_1:output:0*
T0*(
_output_shapes
:�����������
backward_lstm_26/lstm_cell/ReluRelu)backward_lstm_26/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
 backward_lstm_26/lstm_cell/mul_1Mul&backward_lstm_26/lstm_cell/Sigmoid:y:0-backward_lstm_26/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
 backward_lstm_26/lstm_cell/add_1AddV2"backward_lstm_26/lstm_cell/mul:z:0$backward_lstm_26/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
$backward_lstm_26/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_26/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
!backward_lstm_26/lstm_cell/Relu_1Relu$backward_lstm_26/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
 backward_lstm_26/lstm_cell/mul_2Mul(backward_lstm_26/lstm_cell/Sigmoid_2:y:0/backward_lstm_26/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������
.backward_lstm_26/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   o
-backward_lstm_26/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
 backward_lstm_26/TensorArrayV2_1TensorListReserve7backward_lstm_26/TensorArrayV2_1/element_shape:output:06backward_lstm_26/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���W
backward_lstm_26/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_26/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������e
#backward_lstm_26/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
backward_lstm_26/whileWhile,backward_lstm_26/while/loop_counter:output:02backward_lstm_26/while/maximum_iterations:output:0backward_lstm_26/time:output:0)backward_lstm_26/TensorArrayV2_1:handle:0backward_lstm_26/zeros:output:0!backward_lstm_26/zeros_1:output:0)backward_lstm_26/strided_slice_1:output:0Hbackward_lstm_26/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_26_lstm_cell_matmul_readvariableop_resource;backward_lstm_26_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*.
body&R$
"backward_lstm_26_while_body_459579*.
cond&R$
"backward_lstm_26_while_cond_459578*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
Abackward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
3backward_lstm_26/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_26/while:output:3Jbackward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elementsy
&backward_lstm_26/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������r
(backward_lstm_26/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_26/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_26/strided_slice_3StridedSlice<backward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_26/strided_slice_3/stack:output:01backward_lstm_26/strided_slice_3/stack_1:output:01backward_lstm_26/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maskv
!backward_lstm_26/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_26/transpose_1	Transpose<backward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_26/transpose_1/perm:output:0*
T0*,
_output_shapes
:����������l
backward_lstm_26/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2(forward_lstm_26/strided_slice_3:output:0)backward_lstm_26/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:����������_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp2^backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_26/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_26/while1^forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_26/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_26/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2f
1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_26/lstm_cell/MatMul/ReadVariableOp0backward_lstm_26/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_26/whilebackward_lstm_26/while2d
0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_26/lstm_cell/MatMul/ReadVariableOp/forward_lstm_26/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_26/whileforward_lstm_26/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
��
�
!__inference__wrapped_model_456243
lambda_26_input�
nmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_lstm_cell_matmul_readvariableop_resource:	��
pmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_lstm_cell_matmul_1_readvariableop_resource:
��~
omodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_lstm_cell_biasadd_readvariableop_resource:	��
omodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_lstm_cell_matmul_readvariableop_resource:	��
qmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_lstm_cell_matmul_1_readvariableop_resource:
��
pmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_lstm_cell_biasadd_readvariableop_resource:	�_
Lmodel_9_bidirectionallstm_univariate_dense_26_matmul_readvariableop_resource:	�[
Mmodel_9_bidirectionallstm_univariate_dense_26_biasadd_readvariableop_resource:
identity��gmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp�fmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/MatMul/ReadVariableOp�hmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp�Lmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while�fmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp�emodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/MatMul/ReadVariableOp�gmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp�Kmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while�Dmodel_9_bidirectionalLSTM_univariate/dense_26/BiasAdd/ReadVariableOp�Cmodel_9_bidirectionalLSTM_univariate/dense_26/MatMul/ReadVariableOp�
=model_9_bidirectionalLSTM_univariate/lambda_26/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
����������
9model_9_bidirectionalLSTM_univariate/lambda_26/ExpandDims
ExpandDimslambda_26_inputFmodel_9_bidirectionalLSTM_univariate/lambda_26/ExpandDims/dim:output:0*
T0*+
_output_shapes
:����������
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/ShapeShapeBmodel_9_bidirectionalLSTM_univariate/lambda_26/ExpandDims:output:0*
T0*
_output_shapes
::���
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
[model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
[model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Smodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_sliceStridedSliceTmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/Shape:output:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice/stack:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice/stack_1:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/zeros/packedPack\model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:�
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/zerosFill[model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/zeros/packed:output:0Zmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/zeros/Const:output:0*
T0*(
_output_shapes
:�����������
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/zeros_1/packedPack\model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice:output:0_model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:�
Smodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Mmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/zeros_1Fill]model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/zeros_1/packed:output:0\model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/zeros_1/Const:output:0*
T0*(
_output_shapes
:�����������
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
Omodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/transpose	TransposeBmodel_9_bidirectionalLSTM_univariate/lambda_26/ExpandDims:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/transpose/perm:output:0*
T0*+
_output_shapes
:����������
Mmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/Shape_1ShapeSmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/transpose:y:0*
T0*
_output_shapes
::���
[model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
]model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
]model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Umodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_1StridedSliceVmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/Shape_1:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_1/stack:output:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_1/stack_1:output:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
amodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
Smodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/TensorArrayV2TensorListReservejmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/TensorArrayV2/element_shape:output:0^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
{model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
mmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorSmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/transpose:y:0�model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
[model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
]model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
]model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Umodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_2StridedSliceSmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/transpose:y:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_2/stack:output:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_2/stack_1:output:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
emodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/MatMul/ReadVariableOpReadVariableOpnmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/MatMulMatMul^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_2:output:0mmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
gmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOpReadVariableOppmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/MatMul_1MatMulTmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/zeros:output:0omodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Smodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/addAddV2`model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/MatMul:product:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
fmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpomodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/BiasAddBiasAddWmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/add:z:0nmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
_model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
Umodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/splitSplithmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/split/split_dim:output:0`model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/SigmoidSigmoid^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/Sigmoid_1Sigmoid^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
Smodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/mulMul]model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/Sigmoid_1:y:0Vmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/zeros_1:output:0*
T0*(
_output_shapes
:�����������
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/ReluRelu^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
Umodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/mul_1Mul[model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/Sigmoid:y:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
Umodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/add_1AddV2Wmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/mul:z:0Ymodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/Sigmoid_2Sigmoid^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/Relu_1ReluYmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
Umodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/mul_2Mul]model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/Sigmoid_2:y:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:�����������
cmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
bmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
Umodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/TensorArrayV2_1TensorListReservelmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/TensorArrayV2_1/element_shape:output:0kmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Jmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/timeConst*
_output_shapes
: *
dtype0*
value	B : �
^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
����������
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/whileWhileamodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/loop_counter:output:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/maximum_iterations:output:0Smodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/time:output:0^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/TensorArrayV2_1:handle:0Tmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/zeros:output:0Vmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/zeros_1:output:0^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_1:output:0}model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/TensorArrayUnstack/TensorListFromTensor:output_handle:0nmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_lstm_cell_matmul_readvariableop_resourcepmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_lstm_cell_matmul_1_readvariableop_resourceomodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*c
body[RY
Wmodel_9_bidirectionalLSTM_univariate_bidirectional_26_forward_lstm_26_while_body_456007*c
cond[RY
Wmodel_9_bidirectionalLSTM_univariate_bidirectional_26_forward_lstm_26_while_cond_456006*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
vmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
hmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/TensorArrayV2Stack/TensorListStackTensorListStackTmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while:output:3model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elements�
[model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
]model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
]model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Umodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_3StridedSliceqmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_3/stack:output:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_3/stack_1:output:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask�
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/transpose_1	Transposeqmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0_model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/transpose_1/perm:output:0*
T0*,
_output_shapes
:�����������
Mmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
Lmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/ShapeShapeBmodel_9_bidirectionalLSTM_univariate/lambda_26/ExpandDims:output:0*
T0*
_output_shapes
::���
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: �
\model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
\model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_sliceStridedSliceUmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/Shape:output:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice/stack:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice/stack_1:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
Umodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
Smodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/zeros/packedPack]model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice:output:0^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:�
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Lmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/zerosFill\model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/zeros/packed:output:0[model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/zeros/Const:output:0*
T0*(
_output_shapes
:�����������
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
Umodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/zeros_1/packedPack]model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice:output:0`model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:�
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/zeros_1Fill^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/zeros_1/packed:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/zeros_1/Const:output:0*
T0*(
_output_shapes
:�����������
Umodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/transpose	TransposeBmodel_9_bidirectionalLSTM_univariate/lambda_26/ExpandDims:output:0^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/transpose/perm:output:0*
T0*+
_output_shapes
:����������
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/Shape_1ShapeTmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/transpose:y:0*
T0*
_output_shapes
::���
\model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: �
^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_1StridedSliceWmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/Shape_1:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_1/stack:output:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_1/stack_1:output:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask�
bmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/TensorArrayV2TensorListReservekmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/TensorArrayV2/element_shape:output:0_model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Umodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/ReverseV2	ReverseV2Tmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/transpose:y:0^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/ReverseV2/axis:output:0*
T0*+
_output_shapes
:����������
|model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
nmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorYmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/ReverseV2:output:0�model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
\model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: �
^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:�
^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_2StridedSliceTmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/transpose:y:0emodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_2/stack:output:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_2/stack_1:output:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
fmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/MatMul/ReadVariableOpReadVariableOpomodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/MatMulMatMul_model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_2:output:0nmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
hmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpqmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/MatMul_1MatMulUmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/zeros:output:0pmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/addAddV2amodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/MatMul:product:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
gmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOpReadVariableOppmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/BiasAddBiasAddXmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/add:z:0omodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
`model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/splitSplitimodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/split/split_dim:output:0amodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/SigmoidSigmoid_model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/Sigmoid_1Sigmoid_model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/mulMul^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/Sigmoid_1:y:0Wmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/zeros_1:output:0*
T0*(
_output_shapes
:�����������
Umodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/ReluRelu_model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/mul_1Mul\model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/Sigmoid:y:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/add_1AddV2Xmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/mul:z:0Zmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/Sigmoid_2Sigmoid_model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/Relu_1ReluZmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/mul_2Mul^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/Sigmoid_2:y:0emodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:�����������
dmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
cmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/TensorArrayV2_1TensorListReservemmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/TensorArrayV2_1/element_shape:output:0lmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/timeConst*
_output_shapes
: *
dtype0*
value	B : �
_model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
����������
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
Lmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/whileWhilebmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/loop_counter:output:0hmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/maximum_iterations:output:0Tmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/time:output:0_model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/TensorArrayV2_1:handle:0Umodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/zeros:output:0Wmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/zeros_1:output:0_model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_1:output:0~model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/TensorArrayUnstack/TensorListFromTensor:output_handle:0omodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_lstm_cell_matmul_readvariableop_resourceqmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_lstm_cell_matmul_1_readvariableop_resourcepmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*d
body\RZ
Xmodel_9_bidirectionalLSTM_univariate_bidirectional_26_backward_lstm_26_while_body_456150*d
cond\RZ
Xmodel_9_bidirectionalLSTM_univariate_bidirectional_26_backward_lstm_26_while_cond_456149*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
wmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
imodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/TensorArrayV2Stack/TensorListStackTensorListStackUmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while:output:3�model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elements�
\model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
����������
^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: �
^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_3StridedSlicermodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0emodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_3/stack:output:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_3/stack_1:output:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_mask�
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/transpose_1	Transposermodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0`model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/transpose_1/perm:output:0*
T0*,
_output_shapes
:�����������
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    �
Amodel_9_bidirectionalLSTM_univariate/bidirectional_26/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
<model_9_bidirectionalLSTM_univariate/bidirectional_26/concatConcatV2^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_3:output:0_model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_3:output:0Jmodel_9_bidirectionalLSTM_univariate/bidirectional_26/concat/axis:output:0*
N*
T0*(
_output_shapes
:�����������
Cmodel_9_bidirectionalLSTM_univariate/dense_26/MatMul/ReadVariableOpReadVariableOpLmodel_9_bidirectionallstm_univariate_dense_26_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
4model_9_bidirectionalLSTM_univariate/dense_26/MatMulMatMulEmodel_9_bidirectionalLSTM_univariate/bidirectional_26/concat:output:0Kmodel_9_bidirectionalLSTM_univariate/dense_26/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
Dmodel_9_bidirectionalLSTM_univariate/dense_26/BiasAdd/ReadVariableOpReadVariableOpMmodel_9_bidirectionallstm_univariate_dense_26_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0�
5model_9_bidirectionalLSTM_univariate/dense_26/BiasAddBiasAdd>model_9_bidirectionalLSTM_univariate/dense_26/MatMul:product:0Lmodel_9_bidirectionalLSTM_univariate/dense_26/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:����������
IdentityIdentity>model_9_bidirectionalLSTM_univariate/dense_26/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:����������
NoOpNoOph^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOpg^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/MatMul/ReadVariableOpi^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOpM^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/whileg^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOpf^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/MatMul/ReadVariableOph^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOpL^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/whileE^model_9_bidirectionalLSTM_univariate/dense_26/BiasAdd/ReadVariableOpD^model_9_bidirectionalLSTM_univariate/dense_26/MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2�
gmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOpgmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp2�
fmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/MatMul/ReadVariableOpfmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/MatMul/ReadVariableOp2�
hmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOphmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp2�
Lmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/whileLmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while2�
fmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOpfmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp2�
emodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/MatMul/ReadVariableOpemodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/MatMul/ReadVariableOp2�
gmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOpgmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp2�
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/whileKmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while2�
Dmodel_9_bidirectionalLSTM_univariate/dense_26/BiasAdd/ReadVariableOpDmodel_9_bidirectionalLSTM_univariate/dense_26/BiasAdd/ReadVariableOp2�
Cmodel_9_bidirectionalLSTM_univariate/dense_26/MatMul/ReadVariableOpCmodel_9_bidirectionalLSTM_univariate/dense_26/MatMul/ReadVariableOp:X T
'
_output_shapes
:���������
)
_user_specified_namelambda_26_input:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�M
�
!forward_lstm_26_while_body_458047<
8forward_lstm_26_while_forward_lstm_26_while_loop_counterB
>forward_lstm_26_while_forward_lstm_26_while_maximum_iterations%
!forward_lstm_26_while_placeholder'
#forward_lstm_26_while_placeholder_1'
#forward_lstm_26_while_placeholder_2'
#forward_lstm_26_while_placeholder_3;
7forward_lstm_26_while_forward_lstm_26_strided_slice_1_0w
sforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0S
@forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0:	�V
Bforward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0:
��P
Aforward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0:	�"
forward_lstm_26_while_identity$
 forward_lstm_26_while_identity_1$
 forward_lstm_26_while_identity_2$
 forward_lstm_26_while_identity_3$
 forward_lstm_26_while_identity_4$
 forward_lstm_26_while_identity_59
5forward_lstm_26_while_forward_lstm_26_strided_slice_1u
qforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensorQ
>forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource:	�T
@forward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource:
��N
?forward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource:	���6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp�5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp�7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp�
Gforward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
9forward_lstm_26/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_26_while_placeholderPforward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
&forward_lstm_26/while/lstm_cell/MatMulMatMul@forward_lstm_26/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
(forward_lstm_26/while/lstm_cell/MatMul_1MatMul#forward_lstm_26_while_placeholder_2?forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#forward_lstm_26/while/lstm_cell/addAddV20forward_lstm_26/while/lstm_cell/MatMul:product:02forward_lstm_26/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
'forward_lstm_26/while/lstm_cell/BiasAddBiasAdd'forward_lstm_26/while/lstm_cell/add:z:0>forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������q
/forward_lstm_26/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
%forward_lstm_26/while/lstm_cell/splitSplit8forward_lstm_26/while/lstm_cell/split/split_dim:output:00forward_lstm_26/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
'forward_lstm_26/while/lstm_cell/SigmoidSigmoid.forward_lstm_26/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
)forward_lstm_26/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_26/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
#forward_lstm_26/while/lstm_cell/mulMul-forward_lstm_26/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_26_while_placeholder_3*
T0*(
_output_shapes
:�����������
$forward_lstm_26/while/lstm_cell/ReluRelu.forward_lstm_26/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
%forward_lstm_26/while/lstm_cell/mul_1Mul+forward_lstm_26/while/lstm_cell/Sigmoid:y:02forward_lstm_26/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
%forward_lstm_26/while/lstm_cell/add_1AddV2'forward_lstm_26/while/lstm_cell/mul:z:0)forward_lstm_26/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
)forward_lstm_26/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_26/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
&forward_lstm_26/while/lstm_cell/Relu_1Relu)forward_lstm_26/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
%forward_lstm_26/while/lstm_cell/mul_2Mul-forward_lstm_26/while/lstm_cell/Sigmoid_2:y:04forward_lstm_26/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:�����������
@forward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
:forward_lstm_26/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_26_while_placeholder_1Iforward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/index:output:0)forward_lstm_26/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���]
forward_lstm_26/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/while/addAddV2!forward_lstm_26_while_placeholder$forward_lstm_26/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_26/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/while/add_1AddV28forward_lstm_26_while_forward_lstm_26_while_loop_counter&forward_lstm_26/while/add_1/y:output:0*
T0*
_output_shapes
: �
forward_lstm_26/while/IdentityIdentityforward_lstm_26/while/add_1:z:0^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_1Identity>forward_lstm_26_while_forward_lstm_26_while_maximum_iterations^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_2Identityforward_lstm_26/while/add:z:0^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_3IdentityJforward_lstm_26/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_4Identity)forward_lstm_26/while/lstm_cell/mul_2:z:0^forward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
 forward_lstm_26/while/Identity_5Identity)forward_lstm_26/while/lstm_cell/add_1:z:0^forward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
forward_lstm_26/while/NoOpNoOp7^forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_26_while_forward_lstm_26_strided_slice_17forward_lstm_26_while_forward_lstm_26_strided_slice_1_0"I
forward_lstm_26_while_identity'forward_lstm_26/while/Identity:output:0"M
 forward_lstm_26_while_identity_1)forward_lstm_26/while/Identity_1:output:0"M
 forward_lstm_26_while_identity_2)forward_lstm_26/while/Identity_2:output:0"M
 forward_lstm_26_while_identity_3)forward_lstm_26/while/Identity_3:output:0"M
 forward_lstm_26_while_identity_4)forward_lstm_26/while/Identity_4:output:0"M
 forward_lstm_26_while_identity_5)forward_lstm_26/while/Identity_5:output:0"�
?forward_lstm_26_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0"�
@forward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0"�
>forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0"�
qforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensorsforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2p
6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_26/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_26/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_26/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�K
�
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_460309

inputs;
(lstm_cell_matmul_readvariableop_resource:	�>
*lstm_cell_matmul_1_readvariableop_resource:
��8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
B :�s
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
:����������S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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
valueB"���������
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
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:����������r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:����������c
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:����������~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:����������s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:����������`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_460224*
condR
while_cond_460223*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
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
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
while_cond_457320
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_457320___redundant_placeholder04
0while_while_cond_457320___redundant_placeholder14
0while_while_cond_457320___redundant_placeholder24
0while_while_cond_457320___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�
�
*__inference_lstm_cell_layer_call_fn_460975

inputs
states_0
states_1
unknown:	�
	unknown_0:
��
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_456452p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������:����������:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states_0:RN
(
_output_shapes
:����������
"
_user_specified_name
states_1:&"
 
_user_specified_name460963:&"
 
_user_specified_name460965:&"
 
_user_specified_name460967
�
�
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_459086
inputs_0K
8forward_lstm_26_lstm_cell_matmul_readvariableop_resource:	�N
:forward_lstm_26_lstm_cell_matmul_1_readvariableop_resource:
��H
9forward_lstm_26_lstm_cell_biasadd_readvariableop_resource:	�L
9backward_lstm_26_lstm_cell_matmul_readvariableop_resource:	�O
;backward_lstm_26_lstm_cell_matmul_1_readvariableop_resource:
��I
:backward_lstm_26_lstm_cell_biasadd_readvariableop_resource:	�
identity��1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp�0backward_lstm_26/lstm_cell/MatMul/ReadVariableOp�2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp�backward_lstm_26/while�0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp�/forward_lstm_26/lstm_cell/MatMul/ReadVariableOp�1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp�forward_lstm_26/while[
forward_lstm_26/ShapeShapeinputs_0*
T0*
_output_shapes
::��m
#forward_lstm_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_sliceStridedSliceforward_lstm_26/Shape:output:0,forward_lstm_26/strided_slice/stack:output:0.forward_lstm_26/strided_slice/stack_1:output:0.forward_lstm_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
forward_lstm_26/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
forward_lstm_26/zeros/packedPack&forward_lstm_26/strided_slice:output:0'forward_lstm_26/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_26/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_26/zerosFill%forward_lstm_26/zeros/packed:output:0$forward_lstm_26/zeros/Const:output:0*
T0*(
_output_shapes
:����������c
 forward_lstm_26/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
forward_lstm_26/zeros_1/packedPack&forward_lstm_26/strided_slice:output:0)forward_lstm_26/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_26/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_26/zeros_1Fill'forward_lstm_26/zeros_1/packed:output:0&forward_lstm_26/zeros_1/Const:output:0*
T0*(
_output_shapes
:����������s
forward_lstm_26/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_26/transpose	Transposeinputs_0'forward_lstm_26/transpose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������r
forward_lstm_26/Shape_1Shapeforward_lstm_26/transpose:y:0*
T0*
_output_shapes
::��o
%forward_lstm_26/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_26/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_26/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_slice_1StridedSlice forward_lstm_26/Shape_1:output:0.forward_lstm_26/strided_slice_1/stack:output:00forward_lstm_26/strided_slice_1/stack_1:output:00forward_lstm_26/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_26/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
forward_lstm_26/TensorArrayV2TensorListReserve4forward_lstm_26/TensorArrayV2/element_shape:output:0(forward_lstm_26/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Eforward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
7forward_lstm_26/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_26/transpose:y:0Nforward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���o
%forward_lstm_26/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_26/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_26/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_slice_2StridedSliceforward_lstm_26/transpose:y:0.forward_lstm_26/strided_slice_2/stack:output:00forward_lstm_26/strided_slice_2/stack_1:output:00forward_lstm_26/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
/forward_lstm_26/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_26_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 forward_lstm_26/lstm_cell/MatMulMatMul(forward_lstm_26/strided_slice_2:output:07forward_lstm_26/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_26_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
"forward_lstm_26/lstm_cell/MatMul_1MatMulforward_lstm_26/zeros:output:09forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/addAddV2*forward_lstm_26/lstm_cell/MatMul:product:0,forward_lstm_26/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!forward_lstm_26/lstm_cell/BiasAddBiasAdd!forward_lstm_26/lstm_cell/add:z:08forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������k
)forward_lstm_26/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/lstm_cell/splitSplit2forward_lstm_26/lstm_cell/split/split_dim:output:0*forward_lstm_26/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
!forward_lstm_26/lstm_cell/SigmoidSigmoid(forward_lstm_26/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
#forward_lstm_26/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_26/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/mulMul'forward_lstm_26/lstm_cell/Sigmoid_1:y:0 forward_lstm_26/zeros_1:output:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/ReluRelu(forward_lstm_26/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/mul_1Mul%forward_lstm_26/lstm_cell/Sigmoid:y:0,forward_lstm_26/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/add_1AddV2!forward_lstm_26/lstm_cell/mul:z:0#forward_lstm_26/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
#forward_lstm_26/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_26/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
 forward_lstm_26/lstm_cell/Relu_1Relu#forward_lstm_26/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/mul_2Mul'forward_lstm_26/lstm_cell/Sigmoid_2:y:0.forward_lstm_26/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������~
-forward_lstm_26/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   n
,forward_lstm_26/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/TensorArrayV2_1TensorListReserve6forward_lstm_26/TensorArrayV2_1/element_shape:output:05forward_lstm_26/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���V
forward_lstm_26/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_26/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������d
"forward_lstm_26/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
forward_lstm_26/whileWhile+forward_lstm_26/while/loop_counter:output:01forward_lstm_26/while/maximum_iterations:output:0forward_lstm_26/time:output:0(forward_lstm_26/TensorArrayV2_1:handle:0forward_lstm_26/zeros:output:0 forward_lstm_26/zeros_1:output:0(forward_lstm_26/strided_slice_1:output:0Gforward_lstm_26/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_26_lstm_cell_matmul_readvariableop_resource:forward_lstm_26_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*-
body%R#
!forward_lstm_26_while_body_458856*-
cond%R#
!forward_lstm_26_while_cond_458855*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
@forward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2forward_lstm_26/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_26/while:output:3Iforward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elementsx
%forward_lstm_26/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������q
'forward_lstm_26/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_26/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_slice_3StridedSlice;forward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_26/strided_slice_3/stack:output:00forward_lstm_26/strided_slice_3/stack_1:output:00forward_lstm_26/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_masku
 forward_lstm_26/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_26/transpose_1	Transpose;forward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_26/transpose_1/perm:output:0*
T0*,
_output_shapes
:����������k
forward_lstm_26/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    \
backward_lstm_26/ShapeShapeinputs_0*
T0*
_output_shapes
::��n
$backward_lstm_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_lstm_26/strided_sliceStridedSlicebackward_lstm_26/Shape:output:0-backward_lstm_26/strided_slice/stack:output:0/backward_lstm_26/strided_slice/stack_1:output:0/backward_lstm_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
backward_lstm_26/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
backward_lstm_26/zeros/packedPack'backward_lstm_26/strided_slice:output:0(backward_lstm_26/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_26/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_26/zerosFill&backward_lstm_26/zeros/packed:output:0%backward_lstm_26/zeros/Const:output:0*
T0*(
_output_shapes
:����������d
!backward_lstm_26/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
backward_lstm_26/zeros_1/packedPack'backward_lstm_26/strided_slice:output:0*backward_lstm_26/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_26/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_26/zeros_1Fill(backward_lstm_26/zeros_1/packed:output:0'backward_lstm_26/zeros_1/Const:output:0*
T0*(
_output_shapes
:����������t
backward_lstm_26/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_26/transpose	Transposeinputs_0(backward_lstm_26/transpose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������t
backward_lstm_26/Shape_1Shapebackward_lstm_26/transpose:y:0*
T0*
_output_shapes
::��p
&backward_lstm_26/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_26/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_26/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_26/strided_slice_1StridedSlice!backward_lstm_26/Shape_1:output:0/backward_lstm_26/strided_slice_1/stack:output:01backward_lstm_26/strided_slice_1/stack_1:output:01backward_lstm_26/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_26/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
backward_lstm_26/TensorArrayV2TensorListReserve5backward_lstm_26/TensorArrayV2/element_shape:output:0)backward_lstm_26/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���i
backward_lstm_26/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
backward_lstm_26/ReverseV2	ReverseV2backward_lstm_26/transpose:y:0(backward_lstm_26/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'����������������������������
Fbackward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
8backward_lstm_26/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_26/ReverseV2:output:0Obackward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���p
&backward_lstm_26/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_26/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_26/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_26/strided_slice_2StridedSlicebackward_lstm_26/transpose:y:0/backward_lstm_26/strided_slice_2/stack:output:01backward_lstm_26/strided_slice_2/stack_1:output:01backward_lstm_26/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
0backward_lstm_26/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_26_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
!backward_lstm_26/lstm_cell/MatMulMatMul)backward_lstm_26/strided_slice_2:output:08backward_lstm_26/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_26_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
#backward_lstm_26/lstm_cell/MatMul_1MatMulbackward_lstm_26/zeros:output:0:backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
backward_lstm_26/lstm_cell/addAddV2+backward_lstm_26/lstm_cell/MatMul:product:0-backward_lstm_26/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"backward_lstm_26/lstm_cell/BiasAddBiasAdd"backward_lstm_26/lstm_cell/add:z:09backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������l
*backward_lstm_26/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 backward_lstm_26/lstm_cell/splitSplit3backward_lstm_26/lstm_cell/split/split_dim:output:0+backward_lstm_26/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
"backward_lstm_26/lstm_cell/SigmoidSigmoid)backward_lstm_26/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
$backward_lstm_26/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_26/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
backward_lstm_26/lstm_cell/mulMul(backward_lstm_26/lstm_cell/Sigmoid_1:y:0!backward_lstm_26/zeros_1:output:0*
T0*(
_output_shapes
:�����������
backward_lstm_26/lstm_cell/ReluRelu)backward_lstm_26/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
 backward_lstm_26/lstm_cell/mul_1Mul&backward_lstm_26/lstm_cell/Sigmoid:y:0-backward_lstm_26/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
 backward_lstm_26/lstm_cell/add_1AddV2"backward_lstm_26/lstm_cell/mul:z:0$backward_lstm_26/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
$backward_lstm_26/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_26/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
!backward_lstm_26/lstm_cell/Relu_1Relu$backward_lstm_26/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
 backward_lstm_26/lstm_cell/mul_2Mul(backward_lstm_26/lstm_cell/Sigmoid_2:y:0/backward_lstm_26/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������
.backward_lstm_26/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   o
-backward_lstm_26/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
 backward_lstm_26/TensorArrayV2_1TensorListReserve7backward_lstm_26/TensorArrayV2_1/element_shape:output:06backward_lstm_26/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���W
backward_lstm_26/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_26/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������e
#backward_lstm_26/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
backward_lstm_26/whileWhile,backward_lstm_26/while/loop_counter:output:02backward_lstm_26/while/maximum_iterations:output:0backward_lstm_26/time:output:0)backward_lstm_26/TensorArrayV2_1:handle:0backward_lstm_26/zeros:output:0!backward_lstm_26/zeros_1:output:0)backward_lstm_26/strided_slice_1:output:0Hbackward_lstm_26/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_26_lstm_cell_matmul_readvariableop_resource;backward_lstm_26_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*.
body&R$
"backward_lstm_26_while_body_458999*.
cond&R$
"backward_lstm_26_while_cond_458998*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
Abackward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
3backward_lstm_26/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_26/while:output:3Jbackward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elementsy
&backward_lstm_26/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������r
(backward_lstm_26/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_26/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_26/strided_slice_3StridedSlice<backward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_26/strided_slice_3/stack:output:01backward_lstm_26/strided_slice_3/stack_1:output:01backward_lstm_26/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maskv
!backward_lstm_26/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_26/transpose_1	Transpose<backward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_26/transpose_1/perm:output:0*
T0*,
_output_shapes
:����������l
backward_lstm_26/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2(forward_lstm_26/strided_slice_3:output:0)backward_lstm_26/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:����������_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp2^backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_26/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_26/while1^forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_26/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_26/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'���������������������������: : : : : : 2f
1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_26/lstm_cell/MatMul/ReadVariableOp0backward_lstm_26/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_26/whilebackward_lstm_26/while2d
0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_26/lstm_cell/MatMul/ReadVariableOp/forward_lstm_26/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_26/whileforward_lstm_26/while:g c
=
_output_shapes+
):'���������������������������
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
Wmodel_9_bidirectionalLSTM_univariate_bidirectional_26_forward_lstm_26_while_cond_456006�
�model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_loop_counter�
�model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_maximum_iterations[
Wmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_placeholder]
Ymodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_placeholder_1]
Ymodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_placeholder_2]
Ymodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_placeholder_3�
�model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_less_model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_strided_slice_1�
�model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_cond_456006___redundant_placeholder0�
�model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_cond_456006___redundant_placeholder1�
�model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_cond_456006___redundant_placeholder2�
�model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_cond_456006___redundant_placeholder3X
Tmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_identity
�
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/LessLessWmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_placeholder�model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_less_model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_strided_slice_1*
T0*
_output_shapes
: �
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/IdentityIdentityTmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/Less:z:0*
T0
*
_output_shapes
: "�
Tmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_identity]model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::� �

_output_shapes
: 
r
_user_specified_nameZXmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/loop_counter:��

_output_shapes
: 
x
_user_specified_name`^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:��

_output_shapes
: 
o
_user_specified_nameWUmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_1:

_output_shapes
:
�M
�
!forward_lstm_26_while_body_459436<
8forward_lstm_26_while_forward_lstm_26_while_loop_counterB
>forward_lstm_26_while_forward_lstm_26_while_maximum_iterations%
!forward_lstm_26_while_placeholder'
#forward_lstm_26_while_placeholder_1'
#forward_lstm_26_while_placeholder_2'
#forward_lstm_26_while_placeholder_3;
7forward_lstm_26_while_forward_lstm_26_strided_slice_1_0w
sforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0S
@forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0:	�V
Bforward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0:
��P
Aforward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0:	�"
forward_lstm_26_while_identity$
 forward_lstm_26_while_identity_1$
 forward_lstm_26_while_identity_2$
 forward_lstm_26_while_identity_3$
 forward_lstm_26_while_identity_4$
 forward_lstm_26_while_identity_59
5forward_lstm_26_while_forward_lstm_26_strided_slice_1u
qforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensorQ
>forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource:	�T
@forward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource:
��N
?forward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource:	���6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp�5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp�7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp�
Gforward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
9forward_lstm_26/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_26_while_placeholderPforward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
&forward_lstm_26/while/lstm_cell/MatMulMatMul@forward_lstm_26/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
(forward_lstm_26/while/lstm_cell/MatMul_1MatMul#forward_lstm_26_while_placeholder_2?forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#forward_lstm_26/while/lstm_cell/addAddV20forward_lstm_26/while/lstm_cell/MatMul:product:02forward_lstm_26/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
'forward_lstm_26/while/lstm_cell/BiasAddBiasAdd'forward_lstm_26/while/lstm_cell/add:z:0>forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������q
/forward_lstm_26/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
%forward_lstm_26/while/lstm_cell/splitSplit8forward_lstm_26/while/lstm_cell/split/split_dim:output:00forward_lstm_26/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
'forward_lstm_26/while/lstm_cell/SigmoidSigmoid.forward_lstm_26/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
)forward_lstm_26/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_26/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
#forward_lstm_26/while/lstm_cell/mulMul-forward_lstm_26/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_26_while_placeholder_3*
T0*(
_output_shapes
:�����������
$forward_lstm_26/while/lstm_cell/ReluRelu.forward_lstm_26/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
%forward_lstm_26/while/lstm_cell/mul_1Mul+forward_lstm_26/while/lstm_cell/Sigmoid:y:02forward_lstm_26/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
%forward_lstm_26/while/lstm_cell/add_1AddV2'forward_lstm_26/while/lstm_cell/mul:z:0)forward_lstm_26/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
)forward_lstm_26/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_26/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
&forward_lstm_26/while/lstm_cell/Relu_1Relu)forward_lstm_26/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
%forward_lstm_26/while/lstm_cell/mul_2Mul-forward_lstm_26/while/lstm_cell/Sigmoid_2:y:04forward_lstm_26/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:�����������
@forward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
:forward_lstm_26/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_26_while_placeholder_1Iforward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/index:output:0)forward_lstm_26/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���]
forward_lstm_26/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/while/addAddV2!forward_lstm_26_while_placeholder$forward_lstm_26/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_26/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/while/add_1AddV28forward_lstm_26_while_forward_lstm_26_while_loop_counter&forward_lstm_26/while/add_1/y:output:0*
T0*
_output_shapes
: �
forward_lstm_26/while/IdentityIdentityforward_lstm_26/while/add_1:z:0^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_1Identity>forward_lstm_26_while_forward_lstm_26_while_maximum_iterations^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_2Identityforward_lstm_26/while/add:z:0^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_3IdentityJforward_lstm_26/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_4Identity)forward_lstm_26/while/lstm_cell/mul_2:z:0^forward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
 forward_lstm_26/while/Identity_5Identity)forward_lstm_26/while/lstm_cell/add_1:z:0^forward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
forward_lstm_26/while/NoOpNoOp7^forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_26_while_forward_lstm_26_strided_slice_17forward_lstm_26_while_forward_lstm_26_strided_slice_1_0"I
forward_lstm_26_while_identity'forward_lstm_26/while/Identity:output:0"M
 forward_lstm_26_while_identity_1)forward_lstm_26/while/Identity_1:output:0"M
 forward_lstm_26_while_identity_2)forward_lstm_26/while/Identity_2:output:0"M
 forward_lstm_26_while_identity_3)forward_lstm_26/while/Identity_3:output:0"M
 forward_lstm_26_while_identity_4)forward_lstm_26/while/Identity_4:output:0"M
 forward_lstm_26_while_identity_5)forward_lstm_26/while/Identity_5:output:0"�
?forward_lstm_26_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0"�
@forward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0"�
>forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0"�
qforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensorsforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2p
6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_26/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_26/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_26/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�K
�
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_460019
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	�>
*lstm_cell_matmul_1_readvariableop_resource:
��8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileK
ShapeShapeinputs_0*
T0*
_output_shapes
::��]
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
B :�s
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
:����������S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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
valueB"����   �
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
:���������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:����������r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:����������c
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:����������~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:����������s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:����������`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_459934*
condR
while_cond_459933*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
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
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�:
�
while_body_460079
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
��@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�D
0while_lstm_cell_matmul_1_readvariableop_resource:
��>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:����������o
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:����������l
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
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
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:����������w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�
�
E__inference_lstm_cell_layer_call_and_return_conditional_losses_461137

inputs
states_0
states_11
matmul_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:����������W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:����������V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:����������O
ReluRelusplit:output:2*
T0*(
_output_shapes
:����������`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:����������U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:����������W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:����������L
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:����������d
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:����������Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:����������[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:����������[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:����������m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������:����������:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states_0:RN
(
_output_shapes
:����������
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
while_cond_460223
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_460223___redundant_placeholder04
0while_while_cond_460223___redundant_placeholder14
0while_while_cond_460223___redundant_placeholder24
0while_while_cond_460223___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�	
�
0__inference_forward_lstm_26_layer_call_fn_459729

inputs
unknown:	�
	unknown_0:
��
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_457406p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name459721:&"
 
_user_specified_name459723:&"
 
_user_specified_name459725
�:
�
while_body_457475
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
��@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�D
0while_lstm_cell_matmul_1_readvariableop_resource:
��>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:����������o
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:����������l
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
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
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:����������w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�	
�
while_cond_456319
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_456319___redundant_placeholder04
0while_while_cond_456319___redundant_placeholder14
0while_while_cond_456319___redundant_placeholder24
0while_while_cond_456319___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�
�
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_458339
lambda_26_input
unknown:	�
	unknown_0:
��
	unknown_1:	�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllambda_26_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *i
fdRb
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_458297o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:���������
)
_user_specified_namelambda_26_input:&"
 
_user_specified_name458321:&"
 
_user_specified_name458323:&"
 
_user_specified_name458325:&"
 
_user_specified_name458327:&"
 
_user_specified_name458329:&"
 
_user_specified_name458331:&"
 
_user_specified_name458333:&"
 
_user_specified_name458335
�M
�
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_457560

inputs;
(lstm_cell_matmul_readvariableop_resource:	�>
*lstm_cell_matmul_1_readvariableop_resource:
��8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
B :�s
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
:����������S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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

shape_type0:���X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'����������������������������
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
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
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:����������r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:����������c
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:����������~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:����������s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:����������`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_457475*
condR
while_cond_457474*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
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
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�M
�
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_460794

inputs;
(lstm_cell_matmul_readvariableop_resource:	�>
*lstm_cell_matmul_1_readvariableop_resource:
��8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
B :�s
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
:����������S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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

shape_type0:���X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'����������������������������
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
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
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:����������r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:����������c
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:����������~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:����������s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:����������`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_460709*
condR
while_cond_460708*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
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
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�9
�
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_456390

inputs#
lstm_cell_456306:	�$
lstm_cell_456308:
��
lstm_cell_456310:	�
identity��!lstm_cell/StatefulPartitionedCall�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
B :�s
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
:����������S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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
valueB"����   �
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
:���������*
shrink_axis_mask�
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_456306lstm_cell_456308lstm_cell_456310*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_456305n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_456306lstm_cell_456308lstm_cell_456310*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_456320*
condR
while_cond_456319*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
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
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:����������N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name456306:&"
 
_user_specified_name456308:&"
 
_user_specified_name456310
�
�
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_457571

inputs)
forward_lstm_26_457407:	�*
forward_lstm_26_457409:
��%
forward_lstm_26_457411:	�*
backward_lstm_26_457561:	�+
backward_lstm_26_457563:
��&
backward_lstm_26_457565:	�
identity��(backward_lstm_26/StatefulPartitionedCall�'forward_lstm_26/StatefulPartitionedCall�
'forward_lstm_26/StatefulPartitionedCallStatefulPartitionedCallinputsforward_lstm_26_457407forward_lstm_26_457409forward_lstm_26_457411*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_457406�
(backward_lstm_26/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_lstm_26_457561backward_lstm_26_457563backward_lstm_26_457565*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_457560M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV20forward_lstm_26/StatefulPartitionedCall:output:01backward_lstm_26/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:����������_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp)^backward_lstm_26/StatefulPartitionedCall(^forward_lstm_26/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'���������������������������: : : : : : 2T
(backward_lstm_26/StatefulPartitionedCall(backward_lstm_26/StatefulPartitionedCall2R
'forward_lstm_26/StatefulPartitionedCall'forward_lstm_26/StatefulPartitionedCall:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name457407:&"
 
_user_specified_name457409:&"
 
_user_specified_name457411:&"
 
_user_specified_name457561:&"
 
_user_specified_name457563:&"
 
_user_specified_name457565
�	
�
while_cond_456820
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_456820___redundant_placeholder04
0while_while_cond_456820___redundant_placeholder14
0while_while_cond_456820___redundant_placeholder24
0while_while_cond_456820___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�%
�
while_body_456821
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_456845_0:	�,
while_lstm_cell_456847_0:
��'
while_lstm_cell_456849_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_456845:	�*
while_lstm_cell_456847:
��%
while_lstm_cell_456849:	���'while/lstm_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_456845_0while_lstm_cell_456847_0while_lstm_cell_456849_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_456806r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:�����������
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:����������R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_456845while_lstm_cell_456845_0"2
while_lstm_cell_456847while_lstm_cell_456847_0"2
while_lstm_cell_456849while_lstm_cell_456849_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name456845:&	"
 
_user_specified_name456847:&
"
 
_user_specified_name456849
�K
�
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_457406

inputs;
(lstm_cell_matmul_readvariableop_resource:	�>
*lstm_cell_matmul_1_readvariableop_resource:
��8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
B :�s
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
:����������S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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
valueB"���������
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
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:����������r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:����������c
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:����������~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:����������s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:����������`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_457321*
condR
while_cond_457320*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
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
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
while_cond_456671
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_456671___redundant_placeholder04
0while_while_cond_456671___redundant_placeholder14
0while_while_cond_456671___redundant_placeholder24
0while_while_cond_456671___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�	
�
D__inference_dense_26_layer_call_and_return_conditional_losses_459685

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
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
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�9
�
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_456537

inputs#
lstm_cell_456453:	�$
lstm_cell_456455:
��
lstm_cell_456457:	�
identity��!lstm_cell/StatefulPartitionedCall�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
B :�s
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
:����������S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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
valueB"����   �
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
:���������*
shrink_axis_mask�
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_456453lstm_cell_456455lstm_cell_456457*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_456452n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_456453lstm_cell_456455lstm_cell_456457*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_456467*
condR
while_cond_456466*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
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
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:����������N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name456453:&"
 
_user_specified_name456455:&"
 
_user_specified_name456457
�%
�
while_body_456320
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_456344_0:	�,
while_lstm_cell_456346_0:
��'
while_lstm_cell_456348_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_456344:	�*
while_lstm_cell_456346:
��%
while_lstm_cell_456348:	���'while/lstm_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_456344_0while_lstm_cell_456346_0while_lstm_cell_456348_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_456305r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:�����������
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:����������R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_456344while_lstm_cell_456344_0"2
while_lstm_cell_456346while_lstm_cell_456346_0"2
while_lstm_cell_456348while_lstm_cell_456348_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name456344:&	"
 
_user_specified_name456346:&
"
 
_user_specified_name456348
�
�
1__inference_backward_lstm_26_layer_call_fn_460331
inputs_0
unknown:	�
	unknown_0:
��
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_456891p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0:&"
 
_user_specified_name460323:&"
 
_user_specified_name460325:&"
 
_user_specified_name460327
�%
�
while_body_456672
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_456696_0:	�,
while_lstm_cell_456698_0:
��'
while_lstm_cell_456700_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_456696:	�*
while_lstm_cell_456698:
��%
while_lstm_cell_456700:	���'while/lstm_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_456696_0while_lstm_cell_456698_0while_lstm_cell_456700_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_456657r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:�����������
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:����������R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_456696while_lstm_cell_456696_0"2
while_lstm_cell_456698while_lstm_cell_456698_0"2
while_lstm_cell_456700while_lstm_cell_456700_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name456696:&	"
 
_user_specified_name456698:&
"
 
_user_specified_name456700
�:
�
while_body_457321
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
��@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�D
0while_lstm_cell_matmul_1_readvariableop_resource:
��>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:����������o
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:����������l
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
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
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:����������w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�

�
1__inference_bidirectional_26_layer_call_fn_458489

inputs
unknown:	�
	unknown_0:
��
	unknown_1:	�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_457948p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:&"
 
_user_specified_name458475:&"
 
_user_specified_name458477:&"
 
_user_specified_name458479:&"
 
_user_specified_name458481:&"
 
_user_specified_name458483:&"
 
_user_specified_name458485
�	
�
while_cond_457474
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_457474___redundant_placeholder04
0while_while_cond_457474___redundant_placeholder14
0while_while_cond_457474___redundant_placeholder24
0while_while_cond_457474___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�
F
*__inference_lambda_26_layer_call_fn_458421

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
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lambda_26_layer_call_and_return_conditional_losses_457657d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_lstm_cell_layer_call_fn_461073

inputs
states_0
states_1
unknown:	�
	unknown_0:
��
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_456806p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������:����������:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states_0:RN
(
_output_shapes
:����������
"
_user_specified_name
states_1:&"
 
_user_specified_name461061:&"
 
_user_specified_name461063:&"
 
_user_specified_name461065
�
a
E__inference_lambda_26_layer_call_and_return_conditional_losses_457657

inputs
identityY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:���������_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
$__inference_signature_wrapper_458416
lambda_26_input
unknown:	�
	unknown_0:
��
	unknown_1:	�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllambda_26_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� **
f%R#
!__inference__wrapped_model_456243o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:���������
)
_user_specified_namelambda_26_input:&"
 
_user_specified_name458398:&"
 
_user_specified_name458400:&"
 
_user_specified_name458402:&"
 
_user_specified_name458404:&"
 
_user_specified_name458406:&"
 
_user_specified_name458408:&"
 
_user_specified_name458410:&"
 
_user_specified_name458412
�
�
1__inference_bidirectional_26_layer_call_fn_458455
inputs_0
unknown:	�
	unknown_0:
��
	unknown_1:	�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_457259p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'���������������������������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'���������������������������
"
_user_specified_name
inputs_0:&"
 
_user_specified_name458441:&"
 
_user_specified_name458443:&"
 
_user_specified_name458445:&"
 
_user_specified_name458447:&"
 
_user_specified_name458449:&"
 
_user_specified_name458451
�
�
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_457259

inputs)
forward_lstm_26_457095:	�*
forward_lstm_26_457097:
��%
forward_lstm_26_457099:	�*
backward_lstm_26_457249:	�+
backward_lstm_26_457251:
��&
backward_lstm_26_457253:	�
identity��(backward_lstm_26/StatefulPartitionedCall�'forward_lstm_26/StatefulPartitionedCall�
'forward_lstm_26/StatefulPartitionedCallStatefulPartitionedCallinputsforward_lstm_26_457095forward_lstm_26_457097forward_lstm_26_457099*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_457094�
(backward_lstm_26/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_lstm_26_457249backward_lstm_26_457251backward_lstm_26_457253*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_457248M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV20forward_lstm_26/StatefulPartitionedCall:output:01backward_lstm_26/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:����������_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:����������w
NoOpNoOp)^backward_lstm_26/StatefulPartitionedCall(^forward_lstm_26/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'���������������������������: : : : : : 2T
(backward_lstm_26/StatefulPartitionedCall(backward_lstm_26/StatefulPartitionedCall2R
'forward_lstm_26/StatefulPartitionedCall'forward_lstm_26/StatefulPartitionedCall:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name457095:&"
 
_user_specified_name457097:&"
 
_user_specified_name457099:&"
 
_user_specified_name457249:&"
 
_user_specified_name457251:&"
 
_user_specified_name457253
�:
�
while_body_460562
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
��@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�D
0while_lstm_cell_matmul_1_readvariableop_resource:
��>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:����������o
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:����������l
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
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
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:����������w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�	
�
while_cond_459788
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_459788___redundant_placeholder04
0while_while_cond_459788___redundant_placeholder14
0while_while_cond_459788___redundant_placeholder24
0while_while_cond_459788___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
��
�
Wmodel_9_bidirectionalLSTM_univariate_bidirectional_26_forward_lstm_26_while_body_456007�
�model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_loop_counter�
�model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_maximum_iterations[
Wmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_placeholder]
Ymodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_placeholder_1]
Ymodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_placeholder_2]
Ymodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_placeholder_3�
�model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_strided_slice_1_0�
�model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0�
vmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0:	��
xmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0:
���
wmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0:	�X
Tmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_identityZ
Vmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_identity_1Z
Vmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_identity_2Z
Vmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_identity_3Z
Vmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_identity_4Z
Vmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_identity_5�
�model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_strided_slice_1�
�model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_tensorarrayunstack_tensorlistfromtensor�
tmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource:	��
vmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource:
���
umodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource:	���lmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp�kmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp�mmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp�
}model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
omodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/TensorArrayV2Read/TensorListGetItemTensorListGetItem�model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0Wmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_placeholder�model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
kmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpvmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
\model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/MatMulMatMulvmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/TensorArrayV2Read/TensorListGetItem:item:0smodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
mmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpxmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/MatMul_1MatMulYmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_placeholder_2umodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/addAddV2fmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/MatMul:product:0hmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
lmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpwmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
]model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/BiasAddBiasAdd]model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/add:z:0tmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
emodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
[model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/splitSplitnmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/split/split_dim:output:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
]model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/SigmoidSigmoiddmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
_model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/Sigmoid_1Sigmoiddmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/mulMulcmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/Sigmoid_1:y:0Ymodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_placeholder_3*
T0*(
_output_shapes
:�����������
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/ReluReludmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
[model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/mul_1Mulamodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/Sigmoid:y:0hmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
[model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/add_1AddV2]model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/mul:z:0_model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
_model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/Sigmoid_2Sigmoiddmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
\model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/Relu_1Relu_model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
[model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/mul_2Mulcmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/Sigmoid_2:y:0jmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:�����������
vmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
pmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemYmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_placeholder_1model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/index:output:0_model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:����
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
Omodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/addAddV2Wmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_placeholderZmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/add/y:output:0*
T0*
_output_shapes
: �
Smodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/add_1AddV2�model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_loop_counter\model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/add_1/y:output:0*
T0*
_output_shapes
: �
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/IdentityIdentityUmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/add_1:z:0Q^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/Identity_1Identity�model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_maximum_iterationsQ^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/Identity_2IdentitySmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/add:z:0Q^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/Identity_3Identity�model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/TensorArrayV2Write/TensorListSetItem:output_handle:0Q^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/Identity_4Identity_model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/mul_2:z:0Q^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/Identity_5Identity_model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/add_1:z:0Q^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/NoOpNoOpm^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOpl^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOpn^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "�
Tmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_identity]model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/Identity:output:0"�
Vmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_identity_1_model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/Identity_1:output:0"�
Vmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_identity_2_model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/Identity_2:output:0"�
Vmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_identity_3_model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/Identity_3:output:0"�
Vmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_identity_4_model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/Identity_4:output:0"�
Vmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_identity_5_model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/Identity_5:output:0"�
umodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_lstm_cell_biasadd_readvariableop_resourcewmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0"�
vmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resourcexmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0"�
tmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_lstm_cell_matmul_readvariableop_resourcevmodel_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0"�
�model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_strided_slice_1�model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_strided_slice_1_0"�
�model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_tensorarrayunstack_tensorlistfromtensor�model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_26_forward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2�
lmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOplmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp2�
kmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOpkmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp2�
mmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOpmmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:� �

_output_shapes
: 
r
_user_specified_nameZXmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/loop_counter:��

_output_shapes
: 
x
_user_specified_name`^model_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:��

_output_shapes
: 
o
_user_specified_nameWUmodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/strided_slice_1:��

_output_shapes
: 
�
_user_specified_nameommodel_9_bidirectionalLSTM_univariate/bidirectional_26/forward_lstm_26/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�;
�
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_456742

inputs#
lstm_cell_456658:	�$
lstm_cell_456660:
��
lstm_cell_456662:	�
identity��!lstm_cell/StatefulPartitionedCall�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
B :�s
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
:����������S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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

shape_type0:���X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :�������������������
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
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
:���������*
shrink_axis_mask�
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_456658lstm_cell_456660lstm_cell_456662*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_456657n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_456658lstm_cell_456660lstm_cell_456662*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_456672*
condR
while_cond_456671*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
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
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:����������N
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name456658:&"
 
_user_specified_name456660:&"
 
_user_specified_name456662
�	
�
while_cond_457008
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_457008___redundant_placeholder04
0while_while_cond_457008___redundant_placeholder14
0while_while_cond_457008___redundant_placeholder24
0while_while_cond_457008___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�M
�
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_460941

inputs;
(lstm_cell_matmul_readvariableop_resource:	�>
*lstm_cell_matmul_1_readvariableop_resource:
��8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
B :�s
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
:����������S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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

shape_type0:���X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'����������������������������
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
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
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:����������r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:����������c
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:����������~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:����������s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:����������`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_460856*
condR
while_cond_460855*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
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
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
a
E__inference_lambda_26_layer_call_and_return_conditional_losses_458432

inputs
identityY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:���������_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
E__inference_lstm_cell_layer_call_and_return_conditional_losses_456806

inputs

states
states_11
matmul_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:����������W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:����������V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:����������O
ReluRelusplit:output:2*
T0*(
_output_shapes
:����������`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:����������U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:����������W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:����������L
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:����������d
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:����������Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:����������[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:����������[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:����������m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������:����������:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_namestates:PL
(
_output_shapes
:����������
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
D__inference_dense_26_layer_call_and_return_conditional_losses_457971

inputs1
matmul_readvariableop_resource:	�-
biasadd_readvariableop_resource:
identity��BiasAdd/ReadVariableOp�MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
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
:���������_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:���������S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
��
�
"__inference__traced_restore_461420
file_prefix3
 assignvariableop_dense_26_kernel:	�.
 assignvariableop_1_dense_26_bias:W
Dassignvariableop_2_bidirectional_26_forward_lstm_26_lstm_cell_kernel:	�b
Nassignvariableop_3_bidirectional_26_forward_lstm_26_lstm_cell_recurrent_kernel:
��Q
Bassignvariableop_4_bidirectional_26_forward_lstm_26_lstm_cell_bias:	�X
Eassignvariableop_5_bidirectional_26_backward_lstm_26_lstm_cell_kernel:	�c
Oassignvariableop_6_bidirectional_26_backward_lstm_26_lstm_cell_recurrent_kernel:
��R
Cassignvariableop_7_bidirectional_26_backward_lstm_26_lstm_cell_bias:	�&
assignvariableop_8_iteration:	 *
 assignvariableop_9_learning_rate: _
Lassignvariableop_10_adam_m_bidirectional_26_forward_lstm_26_lstm_cell_kernel:	�_
Lassignvariableop_11_adam_v_bidirectional_26_forward_lstm_26_lstm_cell_kernel:	�j
Vassignvariableop_12_adam_m_bidirectional_26_forward_lstm_26_lstm_cell_recurrent_kernel:
��j
Vassignvariableop_13_adam_v_bidirectional_26_forward_lstm_26_lstm_cell_recurrent_kernel:
��Y
Jassignvariableop_14_adam_m_bidirectional_26_forward_lstm_26_lstm_cell_bias:	�Y
Jassignvariableop_15_adam_v_bidirectional_26_forward_lstm_26_lstm_cell_bias:	�`
Massignvariableop_16_adam_m_bidirectional_26_backward_lstm_26_lstm_cell_kernel:	�`
Massignvariableop_17_adam_v_bidirectional_26_backward_lstm_26_lstm_cell_kernel:	�k
Wassignvariableop_18_adam_m_bidirectional_26_backward_lstm_26_lstm_cell_recurrent_kernel:
��k
Wassignvariableop_19_adam_v_bidirectional_26_backward_lstm_26_lstm_cell_recurrent_kernel:
��Z
Kassignvariableop_20_adam_m_bidirectional_26_backward_lstm_26_lstm_cell_bias:	�Z
Kassignvariableop_21_adam_v_bidirectional_26_backward_lstm_26_lstm_cell_bias:	�=
*assignvariableop_22_adam_m_dense_26_kernel:	�=
*assignvariableop_23_adam_v_dense_26_kernel:	�6
(assignvariableop_24_adam_m_dense_26_bias:6
(assignvariableop_25_adam_v_dense_26_bias:#
assignvariableop_26_total: #
assignvariableop_27_count: 
identity_29��AssignVariableOp�AssignVariableOp_1�AssignVariableOp_10�AssignVariableOp_11�AssignVariableOp_12�AssignVariableOp_13�AssignVariableOp_14�AssignVariableOp_15�AssignVariableOp_16�AssignVariableOp_17�AssignVariableOp_18�AssignVariableOp_19�AssignVariableOp_2�AssignVariableOp_20�AssignVariableOp_21�AssignVariableOp_22�AssignVariableOp_23�AssignVariableOp_24�AssignVariableOp_25�AssignVariableOp_26�AssignVariableOp_27�AssignVariableOp_3�AssignVariableOp_4�AssignVariableOp_5�AssignVariableOp_6�AssignVariableOp_7�AssignVariableOp_8�AssignVariableOp_9�
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*�
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOpAssignVariableOp assignvariableop_dense_26_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_26_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_2AssignVariableOpDassignvariableop_2_bidirectional_26_forward_lstm_26_lstm_cell_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_3AssignVariableOpNassignvariableop_3_bidirectional_26_forward_lstm_26_lstm_cell_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_4AssignVariableOpBassignvariableop_4_bidirectional_26_forward_lstm_26_lstm_cell_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_5AssignVariableOpEassignvariableop_5_bidirectional_26_backward_lstm_26_lstm_cell_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_6AssignVariableOpOassignvariableop_6_bidirectional_26_backward_lstm_26_lstm_cell_recurrent_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_7AssignVariableOpCassignvariableop_7_bidirectional_26_backward_lstm_26_lstm_cell_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:�
AssignVariableOp_8AssignVariableOpassignvariableop_8_iterationIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_9AssignVariableOp assignvariableop_9_learning_rateIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_10AssignVariableOpLassignvariableop_10_adam_m_bidirectional_26_forward_lstm_26_lstm_cell_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_11AssignVariableOpLassignvariableop_11_adam_v_bidirectional_26_forward_lstm_26_lstm_cell_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_12AssignVariableOpVassignvariableop_12_adam_m_bidirectional_26_forward_lstm_26_lstm_cell_recurrent_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_13AssignVariableOpVassignvariableop_13_adam_v_bidirectional_26_forward_lstm_26_lstm_cell_recurrent_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_14AssignVariableOpJassignvariableop_14_adam_m_bidirectional_26_forward_lstm_26_lstm_cell_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_15AssignVariableOpJassignvariableop_15_adam_v_bidirectional_26_forward_lstm_26_lstm_cell_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_16AssignVariableOpMassignvariableop_16_adam_m_bidirectional_26_backward_lstm_26_lstm_cell_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_17AssignVariableOpMassignvariableop_17_adam_v_bidirectional_26_backward_lstm_26_lstm_cell_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_18AssignVariableOpWassignvariableop_18_adam_m_bidirectional_26_backward_lstm_26_lstm_cell_recurrent_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_19AssignVariableOpWassignvariableop_19_adam_v_bidirectional_26_backward_lstm_26_lstm_cell_recurrent_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_20AssignVariableOpKassignvariableop_20_adam_m_bidirectional_26_backward_lstm_26_lstm_cell_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_21AssignVariableOpKassignvariableop_21_adam_v_bidirectional_26_backward_lstm_26_lstm_cell_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_22AssignVariableOp*assignvariableop_22_adam_m_dense_26_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_v_dense_26_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_m_dense_26_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_25AssignVariableOp(assignvariableop_25_adam_v_dense_26_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_26AssignVariableOpassignvariableop_26_totalIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:�
AssignVariableOp_27AssignVariableOpassignvariableop_27_countIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 �
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_29IdentityIdentity_28:output:0^NoOp_1*
T0*
_output_shapes
: �
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_29Identity_29:output:0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_27AssignVariableOp_272(
AssignVariableOp_3AssignVariableOp_32(
AssignVariableOp_4AssignVariableOp_42(
AssignVariableOp_5AssignVariableOp_52(
AssignVariableOp_6AssignVariableOp_62(
AssignVariableOp_7AssignVariableOp_72(
AssignVariableOp_8AssignVariableOp_82(
AssignVariableOp_9AssignVariableOp_9:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:/+
)
_user_specified_namedense_26/kernel:-)
'
_user_specified_namedense_26/bias:QM
K
_user_specified_name31bidirectional_26/forward_lstm_26/lstm_cell/kernel:[W
U
_user_specified_name=;bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel:OK
I
_user_specified_name1/bidirectional_26/forward_lstm_26/lstm_cell/bias:RN
L
_user_specified_name42bidirectional_26/backward_lstm_26/lstm_cell/kernel:\X
V
_user_specified_name><bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel:PL
J
_user_specified_name20bidirectional_26/backward_lstm_26/lstm_cell/bias:)	%
#
_user_specified_name	iteration:-
)
'
_user_specified_namelearning_rate:XT
R
_user_specified_name:8Adam/m/bidirectional_26/forward_lstm_26/lstm_cell/kernel:XT
R
_user_specified_name:8Adam/v/bidirectional_26/forward_lstm_26/lstm_cell/kernel:b^
\
_user_specified_nameDBAdam/m/bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel:b^
\
_user_specified_nameDBAdam/v/bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel:VR
P
_user_specified_name86Adam/m/bidirectional_26/forward_lstm_26/lstm_cell/bias:VR
P
_user_specified_name86Adam/v/bidirectional_26/forward_lstm_26/lstm_cell/bias:YU
S
_user_specified_name;9Adam/m/bidirectional_26/backward_lstm_26/lstm_cell/kernel:YU
S
_user_specified_name;9Adam/v/bidirectional_26/backward_lstm_26/lstm_cell/kernel:c_
]
_user_specified_nameECAdam/m/bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel:c_
]
_user_specified_nameECAdam/v/bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel:WS
Q
_user_specified_name97Adam/m/bidirectional_26/backward_lstm_26/lstm_cell/bias:WS
Q
_user_specified_name97Adam/v/bidirectional_26/backward_lstm_26/lstm_cell/bias:62
0
_user_specified_nameAdam/m/dense_26/kernel:62
0
_user_specified_nameAdam/v/dense_26/kernel:40
.
_user_specified_nameAdam/m/dense_26/bias:40
.
_user_specified_nameAdam/v/dense_26/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount
�
�
"backward_lstm_26_while_cond_458708>
:backward_lstm_26_while_backward_lstm_26_while_loop_counterD
@backward_lstm_26_while_backward_lstm_26_while_maximum_iterations&
"backward_lstm_26_while_placeholder(
$backward_lstm_26_while_placeholder_1(
$backward_lstm_26_while_placeholder_2(
$backward_lstm_26_while_placeholder_3@
<backward_lstm_26_while_less_backward_lstm_26_strided_slice_1V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_458708___redundant_placeholder0V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_458708___redundant_placeholder1V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_458708___redundant_placeholder2V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_458708___redundant_placeholder3#
backward_lstm_26_while_identity
�
backward_lstm_26/while/LessLess"backward_lstm_26_while_placeholder<backward_lstm_26_while_less_backward_lstm_26_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_26/while/IdentityIdentitybackward_lstm_26/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_26_while_identity(backward_lstm_26/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_26/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_26/strided_slice_1:

_output_shapes
:
�
�
*__inference_lstm_cell_layer_call_fn_461056

inputs
states_0
states_1
unknown:	�
	unknown_0:
��
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_456657p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������:����������:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states_0:RN
(
_output_shapes
:����������
"
_user_specified_name
states_1:&"
 
_user_specified_name461044:&"
 
_user_specified_name461046:&"
 
_user_specified_name461048
�
�
E__inference_lstm_cell_layer_call_and_return_conditional_losses_456657

inputs

states
states_11
matmul_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:����������W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:����������V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:����������O
ReluRelusplit:output:2*
T0*(
_output_shapes
:����������`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:����������U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:����������W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:����������L
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:����������d
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:����������Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:����������[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:����������[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:����������m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������:����������:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_namestates:PL
(
_output_shapes
:����������
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
E__inference_lstm_cell_layer_call_and_return_conditional_losses_456452

inputs

states
states_11
matmul_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:����������W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:����������V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:����������O
ReluRelusplit:output:2*
T0*(
_output_shapes
:����������`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:����������U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:����������W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:����������L
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:����������d
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:����������Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:����������[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:����������[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:����������m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������:����������:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_namestates:PL
(
_output_shapes
:����������
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
��
�
__inference__traced_save_461327
file_prefix9
&read_disablecopyonread_dense_26_kernel:	�4
&read_1_disablecopyonread_dense_26_bias:]
Jread_2_disablecopyonread_bidirectional_26_forward_lstm_26_lstm_cell_kernel:	�h
Tread_3_disablecopyonread_bidirectional_26_forward_lstm_26_lstm_cell_recurrent_kernel:
��W
Hread_4_disablecopyonread_bidirectional_26_forward_lstm_26_lstm_cell_bias:	�^
Kread_5_disablecopyonread_bidirectional_26_backward_lstm_26_lstm_cell_kernel:	�i
Uread_6_disablecopyonread_bidirectional_26_backward_lstm_26_lstm_cell_recurrent_kernel:
��X
Iread_7_disablecopyonread_bidirectional_26_backward_lstm_26_lstm_cell_bias:	�,
"read_8_disablecopyonread_iteration:	 0
&read_9_disablecopyonread_learning_rate: e
Rread_10_disablecopyonread_adam_m_bidirectional_26_forward_lstm_26_lstm_cell_kernel:	�e
Rread_11_disablecopyonread_adam_v_bidirectional_26_forward_lstm_26_lstm_cell_kernel:	�p
\read_12_disablecopyonread_adam_m_bidirectional_26_forward_lstm_26_lstm_cell_recurrent_kernel:
��p
\read_13_disablecopyonread_adam_v_bidirectional_26_forward_lstm_26_lstm_cell_recurrent_kernel:
��_
Pread_14_disablecopyonread_adam_m_bidirectional_26_forward_lstm_26_lstm_cell_bias:	�_
Pread_15_disablecopyonread_adam_v_bidirectional_26_forward_lstm_26_lstm_cell_bias:	�f
Sread_16_disablecopyonread_adam_m_bidirectional_26_backward_lstm_26_lstm_cell_kernel:	�f
Sread_17_disablecopyonread_adam_v_bidirectional_26_backward_lstm_26_lstm_cell_kernel:	�q
]read_18_disablecopyonread_adam_m_bidirectional_26_backward_lstm_26_lstm_cell_recurrent_kernel:
��q
]read_19_disablecopyonread_adam_v_bidirectional_26_backward_lstm_26_lstm_cell_recurrent_kernel:
��`
Qread_20_disablecopyonread_adam_m_bidirectional_26_backward_lstm_26_lstm_cell_bias:	�`
Qread_21_disablecopyonread_adam_v_bidirectional_26_backward_lstm_26_lstm_cell_bias:	�C
0read_22_disablecopyonread_adam_m_dense_26_kernel:	�C
0read_23_disablecopyonread_adam_v_dense_26_kernel:	�<
.read_24_disablecopyonread_adam_m_dense_26_bias:<
.read_25_disablecopyonread_adam_v_dense_26_bias:)
read_26_disablecopyonread_total: )
read_27_disablecopyonread_count: 
savev2_const
identity_57��MergeV2Checkpoints�Read/DisableCopyOnRead�Read/ReadVariableOp�Read_1/DisableCopyOnRead�Read_1/ReadVariableOp�Read_10/DisableCopyOnRead�Read_10/ReadVariableOp�Read_11/DisableCopyOnRead�Read_11/ReadVariableOp�Read_12/DisableCopyOnRead�Read_12/ReadVariableOp�Read_13/DisableCopyOnRead�Read_13/ReadVariableOp�Read_14/DisableCopyOnRead�Read_14/ReadVariableOp�Read_15/DisableCopyOnRead�Read_15/ReadVariableOp�Read_16/DisableCopyOnRead�Read_16/ReadVariableOp�Read_17/DisableCopyOnRead�Read_17/ReadVariableOp�Read_18/DisableCopyOnRead�Read_18/ReadVariableOp�Read_19/DisableCopyOnRead�Read_19/ReadVariableOp�Read_2/DisableCopyOnRead�Read_2/ReadVariableOp�Read_20/DisableCopyOnRead�Read_20/ReadVariableOp�Read_21/DisableCopyOnRead�Read_21/ReadVariableOp�Read_22/DisableCopyOnRead�Read_22/ReadVariableOp�Read_23/DisableCopyOnRead�Read_23/ReadVariableOp�Read_24/DisableCopyOnRead�Read_24/ReadVariableOp�Read_25/DisableCopyOnRead�Read_25/ReadVariableOp�Read_26/DisableCopyOnRead�Read_26/ReadVariableOp�Read_27/DisableCopyOnRead�Read_27/ReadVariableOp�Read_3/DisableCopyOnRead�Read_3/ReadVariableOp�Read_4/DisableCopyOnRead�Read_4/ReadVariableOp�Read_5/DisableCopyOnRead�Read_5/ReadVariableOp�Read_6/DisableCopyOnRead�Read_6/ReadVariableOp�Read_7/DisableCopyOnRead�Read_7/ReadVariableOp�Read_8/DisableCopyOnRead�Read_8/ReadVariableOp�Read_9/DisableCopyOnRead�Read_9/ReadVariableOpw
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
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_dense_26_kernel"/device:CPU:0*
_output_shapes
 �
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_dense_26_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�b

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	�z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_dense_26_bias"/device:CPU:0*
_output_shapes
 �
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_dense_26_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_2/DisableCopyOnReadDisableCopyOnReadJread_2_disablecopyonread_bidirectional_26_forward_lstm_26_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 �
Read_2/ReadVariableOpReadVariableOpJread_2_disablecopyonread_bidirectional_26_forward_lstm_26_lstm_cell_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�d

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_3/DisableCopyOnReadDisableCopyOnReadTread_3_disablecopyonread_bidirectional_26_forward_lstm_26_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 �
Read_3/ReadVariableOpReadVariableOpTread_3_disablecopyonread_bidirectional_26_forward_lstm_26_lstm_cell_recurrent_kernel^Read_3/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0o

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��e

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_4/DisableCopyOnReadDisableCopyOnReadHread_4_disablecopyonread_bidirectional_26_forward_lstm_26_lstm_cell_bias"/device:CPU:0*
_output_shapes
 �
Read_4/ReadVariableOpReadVariableOpHread_4_disablecopyonread_bidirectional_26_forward_lstm_26_lstm_cell_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0j

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�`

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_5/DisableCopyOnReadDisableCopyOnReadKread_5_disablecopyonread_bidirectional_26_backward_lstm_26_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 �
Read_5/ReadVariableOpReadVariableOpKread_5_disablecopyonread_bidirectional_26_backward_lstm_26_lstm_cell_kernel^Read_5/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0o
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_6/DisableCopyOnReadDisableCopyOnReadUread_6_disablecopyonread_bidirectional_26_backward_lstm_26_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 �
Read_6/ReadVariableOpReadVariableOpUread_6_disablecopyonread_bidirectional_26_backward_lstm_26_lstm_cell_recurrent_kernel^Read_6/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0p
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_7/DisableCopyOnReadDisableCopyOnReadIread_7_disablecopyonread_bidirectional_26_backward_lstm_26_lstm_cell_bias"/device:CPU:0*
_output_shapes
 �
Read_7/ReadVariableOpReadVariableOpIread_7_disablecopyonread_bidirectional_26_backward_lstm_26_lstm_cell_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0k
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:�v
Read_8/DisableCopyOnReadDisableCopyOnRead"read_8_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 �
Read_8/ReadVariableOpReadVariableOp"read_8_disablecopyonread_iteration^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_9/DisableCopyOnReadDisableCopyOnRead&read_9_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 �
Read_9/ReadVariableOpReadVariableOp&read_9_disablecopyonread_learning_rate^Read_9/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*
_output_shapes
: �
Read_10/DisableCopyOnReadDisableCopyOnReadRread_10_disablecopyonread_adam_m_bidirectional_26_forward_lstm_26_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 �
Read_10/ReadVariableOpReadVariableOpRread_10_disablecopyonread_adam_m_bidirectional_26_forward_lstm_26_lstm_cell_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_11/DisableCopyOnReadDisableCopyOnReadRread_11_disablecopyonread_adam_v_bidirectional_26_forward_lstm_26_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 �
Read_11/ReadVariableOpReadVariableOpRread_11_disablecopyonread_adam_v_bidirectional_26_forward_lstm_26_lstm_cell_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_12/DisableCopyOnReadDisableCopyOnRead\read_12_disablecopyonread_adam_m_bidirectional_26_forward_lstm_26_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 �
Read_12/ReadVariableOpReadVariableOp\read_12_disablecopyonread_adam_m_bidirectional_26_forward_lstm_26_lstm_cell_recurrent_kernel^Read_12/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_13/DisableCopyOnReadDisableCopyOnRead\read_13_disablecopyonread_adam_v_bidirectional_26_forward_lstm_26_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 �
Read_13/ReadVariableOpReadVariableOp\read_13_disablecopyonread_adam_v_bidirectional_26_forward_lstm_26_lstm_cell_recurrent_kernel^Read_13/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_14/DisableCopyOnReadDisableCopyOnReadPread_14_disablecopyonread_adam_m_bidirectional_26_forward_lstm_26_lstm_cell_bias"/device:CPU:0*
_output_shapes
 �
Read_14/ReadVariableOpReadVariableOpPread_14_disablecopyonread_adam_m_bidirectional_26_forward_lstm_26_lstm_cell_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_15/DisableCopyOnReadDisableCopyOnReadPread_15_disablecopyonread_adam_v_bidirectional_26_forward_lstm_26_lstm_cell_bias"/device:CPU:0*
_output_shapes
 �
Read_15/ReadVariableOpReadVariableOpPread_15_disablecopyonread_adam_v_bidirectional_26_forward_lstm_26_lstm_cell_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_16/DisableCopyOnReadDisableCopyOnReadSread_16_disablecopyonread_adam_m_bidirectional_26_backward_lstm_26_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 �
Read_16/ReadVariableOpReadVariableOpSread_16_disablecopyonread_adam_m_bidirectional_26_backward_lstm_26_lstm_cell_kernel^Read_16/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_17/DisableCopyOnReadDisableCopyOnReadSread_17_disablecopyonread_adam_v_bidirectional_26_backward_lstm_26_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 �
Read_17/ReadVariableOpReadVariableOpSread_17_disablecopyonread_adam_v_bidirectional_26_backward_lstm_26_lstm_cell_kernel^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_18/DisableCopyOnReadDisableCopyOnRead]read_18_disablecopyonread_adam_m_bidirectional_26_backward_lstm_26_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 �
Read_18/ReadVariableOpReadVariableOp]read_18_disablecopyonread_adam_m_bidirectional_26_backward_lstm_26_lstm_cell_recurrent_kernel^Read_18/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_19/DisableCopyOnReadDisableCopyOnRead]read_19_disablecopyonread_adam_v_bidirectional_26_backward_lstm_26_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 �
Read_19/ReadVariableOpReadVariableOp]read_19_disablecopyonread_adam_v_bidirectional_26_backward_lstm_26_lstm_cell_recurrent_kernel^Read_19/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
��*
dtype0q
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
��g
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0* 
_output_shapes
:
���
Read_20/DisableCopyOnReadDisableCopyOnReadQread_20_disablecopyonread_adam_m_bidirectional_26_backward_lstm_26_lstm_cell_bias"/device:CPU:0*
_output_shapes
 �
Read_20/ReadVariableOpReadVariableOpQread_20_disablecopyonread_adam_m_bidirectional_26_backward_lstm_26_lstm_cell_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_21/DisableCopyOnReadDisableCopyOnReadQread_21_disablecopyonread_adam_v_bidirectional_26_backward_lstm_26_lstm_cell_bias"/device:CPU:0*
_output_shapes
 �
Read_21/ReadVariableOpReadVariableOpQread_21_disablecopyonread_adam_v_bidirectional_26_backward_lstm_26_lstm_cell_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:�*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:�b
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:��
Read_22/DisableCopyOnReadDisableCopyOnRead0read_22_disablecopyonread_adam_m_dense_26_kernel"/device:CPU:0*
_output_shapes
 �
Read_22/ReadVariableOpReadVariableOp0read_22_disablecopyonread_adam_m_dense_26_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_23/DisableCopyOnReadDisableCopyOnRead0read_23_disablecopyonread_adam_v_dense_26_kernel"/device:CPU:0*
_output_shapes
 �
Read_23/ReadVariableOpReadVariableOp0read_23_disablecopyonread_adam_v_dense_26_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	�*
dtype0p
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	�f
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:	��
Read_24/DisableCopyOnReadDisableCopyOnRead.read_24_disablecopyonread_adam_m_dense_26_bias"/device:CPU:0*
_output_shapes
 �
Read_24/ReadVariableOpReadVariableOp.read_24_disablecopyonread_adam_m_dense_26_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
:�
Read_25/DisableCopyOnReadDisableCopyOnRead.read_25_disablecopyonread_adam_v_dense_26_bias"/device:CPU:0*
_output_shapes
 �
Read_25/ReadVariableOpReadVariableOp.read_25_disablecopyonread_adam_v_dense_26_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_50IdentityRead_25/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_51IdentityIdentity_50:output:0"/device:CPU:0*
T0*
_output_shapes
:t
Read_26/DisableCopyOnReadDisableCopyOnReadread_26_disablecopyonread_total"/device:CPU:0*
_output_shapes
 �
Read_26/ReadVariableOpReadVariableOpread_26_disablecopyonread_total^Read_26/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_52IdentityRead_26/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_53IdentityIdentity_52:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_27/DisableCopyOnReadDisableCopyOnReadread_27_disablecopyonread_count"/device:CPU:0*
_output_shapes
 �
Read_27/ReadVariableOpReadVariableOpread_27_disablecopyonread_count^Read_27/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_54IdentityRead_27/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_55IdentityIdentity_54:output:0"/device:CPU:0*
T0*
_output_shapes
: �
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*�
value�B�B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH�
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B �
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *+
dtypes!
2	�
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:�
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_56Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_57IdentityIdentity_56:output:0^NoOp*
T0*
_output_shapes
: �
NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_25/DisableCopyOnRead^Read_25/ReadVariableOp^Read_26/DisableCopyOnRead^Read_26/ReadVariableOp^Read_27/DisableCopyOnRead^Read_27/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_57Identity_57:output:0*(
_construction_contextkEagerRuntime*O
_input_shapes>
<: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
MergeV2CheckpointsMergeV2Checkpoints20
Read/DisableCopyOnReadRead/DisableCopyOnRead2*
Read/ReadVariableOpRead/ReadVariableOp24
Read_1/DisableCopyOnReadRead_1/DisableCopyOnRead2.
Read_1/ReadVariableOpRead_1/ReadVariableOp26
Read_10/DisableCopyOnReadRead_10/DisableCopyOnRead20
Read_10/ReadVariableOpRead_10/ReadVariableOp26
Read_11/DisableCopyOnReadRead_11/DisableCopyOnRead20
Read_11/ReadVariableOpRead_11/ReadVariableOp26
Read_12/DisableCopyOnReadRead_12/DisableCopyOnRead20
Read_12/ReadVariableOpRead_12/ReadVariableOp26
Read_13/DisableCopyOnReadRead_13/DisableCopyOnRead20
Read_13/ReadVariableOpRead_13/ReadVariableOp26
Read_14/DisableCopyOnReadRead_14/DisableCopyOnRead20
Read_14/ReadVariableOpRead_14/ReadVariableOp26
Read_15/DisableCopyOnReadRead_15/DisableCopyOnRead20
Read_15/ReadVariableOpRead_15/ReadVariableOp26
Read_16/DisableCopyOnReadRead_16/DisableCopyOnRead20
Read_16/ReadVariableOpRead_16/ReadVariableOp26
Read_17/DisableCopyOnReadRead_17/DisableCopyOnRead20
Read_17/ReadVariableOpRead_17/ReadVariableOp26
Read_18/DisableCopyOnReadRead_18/DisableCopyOnRead20
Read_18/ReadVariableOpRead_18/ReadVariableOp26
Read_19/DisableCopyOnReadRead_19/DisableCopyOnRead20
Read_19/ReadVariableOpRead_19/ReadVariableOp24
Read_2/DisableCopyOnReadRead_2/DisableCopyOnRead2.
Read_2/ReadVariableOpRead_2/ReadVariableOp26
Read_20/DisableCopyOnReadRead_20/DisableCopyOnRead20
Read_20/ReadVariableOpRead_20/ReadVariableOp26
Read_21/DisableCopyOnReadRead_21/DisableCopyOnRead20
Read_21/ReadVariableOpRead_21/ReadVariableOp26
Read_22/DisableCopyOnReadRead_22/DisableCopyOnRead20
Read_22/ReadVariableOpRead_22/ReadVariableOp26
Read_23/DisableCopyOnReadRead_23/DisableCopyOnRead20
Read_23/ReadVariableOpRead_23/ReadVariableOp26
Read_24/DisableCopyOnReadRead_24/DisableCopyOnRead20
Read_24/ReadVariableOpRead_24/ReadVariableOp26
Read_25/DisableCopyOnReadRead_25/DisableCopyOnRead20
Read_25/ReadVariableOpRead_25/ReadVariableOp26
Read_26/DisableCopyOnReadRead_26/DisableCopyOnRead20
Read_26/ReadVariableOpRead_26/ReadVariableOp26
Read_27/DisableCopyOnReadRead_27/DisableCopyOnRead20
Read_27/ReadVariableOpRead_27/ReadVariableOp24
Read_3/DisableCopyOnReadRead_3/DisableCopyOnRead2.
Read_3/ReadVariableOpRead_3/ReadVariableOp24
Read_4/DisableCopyOnReadRead_4/DisableCopyOnRead2.
Read_4/ReadVariableOpRead_4/ReadVariableOp24
Read_5/DisableCopyOnReadRead_5/DisableCopyOnRead2.
Read_5/ReadVariableOpRead_5/ReadVariableOp24
Read_6/DisableCopyOnReadRead_6/DisableCopyOnRead2.
Read_6/ReadVariableOpRead_6/ReadVariableOp24
Read_7/DisableCopyOnReadRead_7/DisableCopyOnRead2.
Read_7/ReadVariableOpRead_7/ReadVariableOp24
Read_8/DisableCopyOnReadRead_8/DisableCopyOnRead2.
Read_8/ReadVariableOpRead_8/ReadVariableOp24
Read_9/DisableCopyOnReadRead_9/DisableCopyOnRead2.
Read_9/ReadVariableOpRead_9/ReadVariableOp:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:/+
)
_user_specified_namedense_26/kernel:-)
'
_user_specified_namedense_26/bias:QM
K
_user_specified_name31bidirectional_26/forward_lstm_26/lstm_cell/kernel:[W
U
_user_specified_name=;bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel:OK
I
_user_specified_name1/bidirectional_26/forward_lstm_26/lstm_cell/bias:RN
L
_user_specified_name42bidirectional_26/backward_lstm_26/lstm_cell/kernel:\X
V
_user_specified_name><bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel:PL
J
_user_specified_name20bidirectional_26/backward_lstm_26/lstm_cell/bias:)	%
#
_user_specified_name	iteration:-
)
'
_user_specified_namelearning_rate:XT
R
_user_specified_name:8Adam/m/bidirectional_26/forward_lstm_26/lstm_cell/kernel:XT
R
_user_specified_name:8Adam/v/bidirectional_26/forward_lstm_26/lstm_cell/kernel:b^
\
_user_specified_nameDBAdam/m/bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel:b^
\
_user_specified_nameDBAdam/v/bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel:VR
P
_user_specified_name86Adam/m/bidirectional_26/forward_lstm_26/lstm_cell/bias:VR
P
_user_specified_name86Adam/v/bidirectional_26/forward_lstm_26/lstm_cell/bias:YU
S
_user_specified_name;9Adam/m/bidirectional_26/backward_lstm_26/lstm_cell/kernel:YU
S
_user_specified_name;9Adam/v/bidirectional_26/backward_lstm_26/lstm_cell/kernel:c_
]
_user_specified_nameECAdam/m/bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel:c_
]
_user_specified_nameECAdam/v/bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel:WS
Q
_user_specified_name97Adam/m/bidirectional_26/backward_lstm_26/lstm_cell/bias:WS
Q
_user_specified_name97Adam/v/bidirectional_26/backward_lstm_26/lstm_cell/bias:62
0
_user_specified_nameAdam/m/dense_26/kernel:62
0
_user_specified_nameAdam/v/dense_26/kernel:40
.
_user_specified_nameAdam/m/dense_26/bias:40
.
_user_specified_nameAdam/v/dense_26/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount:=9

_output_shapes
: 

_user_specified_nameConst
�
�
1__inference_bidirectional_26_layer_call_fn_458472
inputs_0
unknown:	�
	unknown_0:
��
	unknown_1:	�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_457571p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'���������������������������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'���������������������������
"
_user_specified_name
inputs_0:&"
 
_user_specified_name458458:&"
 
_user_specified_name458460:&"
 
_user_specified_name458462:&"
 
_user_specified_name458464:&"
 
_user_specified_name458466:&"
 
_user_specified_name458468
�
�
1__inference_backward_lstm_26_layer_call_fn_460320
inputs_0
unknown:	�
	unknown_0:
��
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_456742p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0:&"
 
_user_specified_name460312:&"
 
_user_specified_name460314:&"
 
_user_specified_name460316
�	
�
1__inference_backward_lstm_26_layer_call_fn_460353

inputs
unknown:	�
	unknown_0:
��
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_457560p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name460345:&"
 
_user_specified_name460347:&"
 
_user_specified_name460349
�
�
E__inference_lstm_cell_layer_call_and_return_conditional_losses_461007

inputs
states_0
states_11
matmul_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:����������W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:����������V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:����������O
ReluRelusplit:output:2*
T0*(
_output_shapes
:����������`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:����������U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:����������W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:����������L
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:����������d
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:����������Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:����������[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:����������[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:����������m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������:����������:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states_0:RN
(
_output_shapes
:����������
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�L
�
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_460500
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	�>
*lstm_cell_matmul_1_readvariableop_resource:
��8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileK
ShapeShapeinputs_0*
T0*
_output_shapes
::��]
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
B :�s
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
:����������S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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

shape_type0:���X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :�������������������
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
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
:���������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:����������r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:����������c
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:����������~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:����������s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:����������`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_460415*
condR
while_cond_460414*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
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
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
!forward_lstm_26_while_cond_459145<
8forward_lstm_26_while_forward_lstm_26_while_loop_counterB
>forward_lstm_26_while_forward_lstm_26_while_maximum_iterations%
!forward_lstm_26_while_placeholder'
#forward_lstm_26_while_placeholder_1'
#forward_lstm_26_while_placeholder_2'
#forward_lstm_26_while_placeholder_3>
:forward_lstm_26_while_less_forward_lstm_26_strided_slice_1T
Pforward_lstm_26_while_forward_lstm_26_while_cond_459145___redundant_placeholder0T
Pforward_lstm_26_while_forward_lstm_26_while_cond_459145___redundant_placeholder1T
Pforward_lstm_26_while_forward_lstm_26_while_cond_459145___redundant_placeholder2T
Pforward_lstm_26_while_forward_lstm_26_while_cond_459145___redundant_placeholder3"
forward_lstm_26_while_identity
�
forward_lstm_26/while/LessLess!forward_lstm_26_while_placeholder:forward_lstm_26_while_less_forward_lstm_26_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_26/while/IdentityIdentityforward_lstm_26/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_26_while_identity'forward_lstm_26/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_26/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_26/strided_slice_1:

_output_shapes
:
�:
�
while_body_460224
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
��@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�D
0while_lstm_cell_matmul_1_readvariableop_resource:
��>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:����������o
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:����������l
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
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
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:����������w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�:
�
while_body_457009
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
��@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�D
0while_lstm_cell_matmul_1_readvariableop_resource:
��>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:����������o
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:����������l
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
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
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:����������w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�	
�
while_cond_459933
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_459933___redundant_placeholder04
0while_while_cond_459933___redundant_placeholder14
0while_while_cond_459933___redundant_placeholder24
0while_while_cond_459933___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�N
�
"backward_lstm_26_while_body_458190>
:backward_lstm_26_while_backward_lstm_26_while_loop_counterD
@backward_lstm_26_while_backward_lstm_26_while_maximum_iterations&
"backward_lstm_26_while_placeholder(
$backward_lstm_26_while_placeholder_1(
$backward_lstm_26_while_placeholder_2(
$backward_lstm_26_while_placeholder_3=
9backward_lstm_26_while_backward_lstm_26_strided_slice_1_0y
ubackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0T
Abackward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0:	�W
Cbackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0:
��Q
Bbackward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0:	�#
backward_lstm_26_while_identity%
!backward_lstm_26_while_identity_1%
!backward_lstm_26_while_identity_2%
!backward_lstm_26_while_identity_3%
!backward_lstm_26_while_identity_4%
!backward_lstm_26_while_identity_5;
7backward_lstm_26_while_backward_lstm_26_strided_slice_1w
sbackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensorR
?backward_lstm_26_while_lstm_cell_matmul_readvariableop_resource:	�U
Abackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource:
��O
@backward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource:	���7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp�6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp�8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp�
Hbackward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
:backward_lstm_26/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_26_while_placeholderQbackward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
'backward_lstm_26/while/lstm_cell/MatMulMatMulAbackward_lstm_26/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
)backward_lstm_26/while/lstm_cell/MatMul_1MatMul$backward_lstm_26_while_placeholder_2@backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$backward_lstm_26/while/lstm_cell/addAddV21backward_lstm_26/while/lstm_cell/MatMul:product:03backward_lstm_26/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
(backward_lstm_26/while/lstm_cell/BiasAddBiasAdd(backward_lstm_26/while/lstm_cell/add:z:0?backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������r
0backward_lstm_26/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
&backward_lstm_26/while/lstm_cell/splitSplit9backward_lstm_26/while/lstm_cell/split/split_dim:output:01backward_lstm_26/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
(backward_lstm_26/while/lstm_cell/SigmoidSigmoid/backward_lstm_26/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
*backward_lstm_26/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_26/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
$backward_lstm_26/while/lstm_cell/mulMul.backward_lstm_26/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_26_while_placeholder_3*
T0*(
_output_shapes
:�����������
%backward_lstm_26/while/lstm_cell/ReluRelu/backward_lstm_26/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
&backward_lstm_26/while/lstm_cell/mul_1Mul,backward_lstm_26/while/lstm_cell/Sigmoid:y:03backward_lstm_26/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
&backward_lstm_26/while/lstm_cell/add_1AddV2(backward_lstm_26/while/lstm_cell/mul:z:0*backward_lstm_26/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
*backward_lstm_26/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_26/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
'backward_lstm_26/while/lstm_cell/Relu_1Relu*backward_lstm_26/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
&backward_lstm_26/while/lstm_cell/mul_2Mul.backward_lstm_26/while/lstm_cell/Sigmoid_2:y:05backward_lstm_26/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:�����������
Abackward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
;backward_lstm_26/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_26_while_placeholder_1Jbackward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/index:output:0*backward_lstm_26/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���^
backward_lstm_26/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_26/while/addAddV2"backward_lstm_26_while_placeholder%backward_lstm_26/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_26/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_26/while/add_1AddV2:backward_lstm_26_while_backward_lstm_26_while_loop_counter'backward_lstm_26/while/add_1/y:output:0*
T0*
_output_shapes
: �
backward_lstm_26/while/IdentityIdentity backward_lstm_26/while/add_1:z:0^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_1Identity@backward_lstm_26_while_backward_lstm_26_while_maximum_iterations^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_2Identitybackward_lstm_26/while/add:z:0^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_3IdentityKbackward_lstm_26/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_4Identity*backward_lstm_26/while/lstm_cell/mul_2:z:0^backward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
!backward_lstm_26/while/Identity_5Identity*backward_lstm_26/while/lstm_cell/add_1:z:0^backward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
backward_lstm_26/while/NoOpNoOp8^backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_26_while_backward_lstm_26_strided_slice_19backward_lstm_26_while_backward_lstm_26_strided_slice_1_0"K
backward_lstm_26_while_identity(backward_lstm_26/while/Identity:output:0"O
!backward_lstm_26_while_identity_1*backward_lstm_26/while/Identity_1:output:0"O
!backward_lstm_26_while_identity_2*backward_lstm_26/while/Identity_2:output:0"O
!backward_lstm_26_while_identity_3*backward_lstm_26/while/Identity_3:output:0"O
!backward_lstm_26_while_identity_4*backward_lstm_26/while/Identity_4:output:0"O
!backward_lstm_26_while_identity_5*backward_lstm_26/while/Identity_5:output:0"�
@backward_lstm_26_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0"�
Abackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0"�
?backward_lstm_26_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0"�
sbackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensorubackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2r
7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_26/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_26/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_26/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�
�
E__inference_lstm_cell_layer_call_and_return_conditional_losses_461105

inputs
states_0
states_11
matmul_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:����������W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:����������V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:����������O
ReluRelusplit:output:2*
T0*(
_output_shapes
:����������`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:����������U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:����������W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:����������L
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:����������d
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:����������Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:����������[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:����������[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:����������m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������:����������:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states_0:RN
(
_output_shapes
:����������
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_458318
lambda_26_input
unknown:	�
	unknown_0:
��
	unknown_1:	�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
	unknown_5:	�
	unknown_6:
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCalllambda_26_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *i
fdRb
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_457978o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:���������
)
_user_specified_namelambda_26_input:&"
 
_user_specified_name458300:&"
 
_user_specified_name458302:&"
 
_user_specified_name458304:&"
 
_user_specified_name458306:&"
 
_user_specified_name458308:&"
 
_user_specified_name458310:&"
 
_user_specified_name458312:&"
 
_user_specified_name458314
�O
�
"backward_lstm_26_while_body_458709>
:backward_lstm_26_while_backward_lstm_26_while_loop_counterD
@backward_lstm_26_while_backward_lstm_26_while_maximum_iterations&
"backward_lstm_26_while_placeholder(
$backward_lstm_26_while_placeholder_1(
$backward_lstm_26_while_placeholder_2(
$backward_lstm_26_while_placeholder_3=
9backward_lstm_26_while_backward_lstm_26_strided_slice_1_0y
ubackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0T
Abackward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0:	�W
Cbackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0:
��Q
Bbackward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0:	�#
backward_lstm_26_while_identity%
!backward_lstm_26_while_identity_1%
!backward_lstm_26_while_identity_2%
!backward_lstm_26_while_identity_3%
!backward_lstm_26_while_identity_4%
!backward_lstm_26_while_identity_5;
7backward_lstm_26_while_backward_lstm_26_strided_slice_1w
sbackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensorR
?backward_lstm_26_while_lstm_cell_matmul_readvariableop_resource:	�U
Abackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource:
��O
@backward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource:	���7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp�6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp�8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp�
Hbackward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
:backward_lstm_26/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_26_while_placeholderQbackward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
'backward_lstm_26/while/lstm_cell/MatMulMatMulAbackward_lstm_26/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
)backward_lstm_26/while/lstm_cell/MatMul_1MatMul$backward_lstm_26_while_placeholder_2@backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$backward_lstm_26/while/lstm_cell/addAddV21backward_lstm_26/while/lstm_cell/MatMul:product:03backward_lstm_26/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
(backward_lstm_26/while/lstm_cell/BiasAddBiasAdd(backward_lstm_26/while/lstm_cell/add:z:0?backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������r
0backward_lstm_26/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
&backward_lstm_26/while/lstm_cell/splitSplit9backward_lstm_26/while/lstm_cell/split/split_dim:output:01backward_lstm_26/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
(backward_lstm_26/while/lstm_cell/SigmoidSigmoid/backward_lstm_26/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
*backward_lstm_26/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_26/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
$backward_lstm_26/while/lstm_cell/mulMul.backward_lstm_26/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_26_while_placeholder_3*
T0*(
_output_shapes
:�����������
%backward_lstm_26/while/lstm_cell/ReluRelu/backward_lstm_26/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
&backward_lstm_26/while/lstm_cell/mul_1Mul,backward_lstm_26/while/lstm_cell/Sigmoid:y:03backward_lstm_26/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
&backward_lstm_26/while/lstm_cell/add_1AddV2(backward_lstm_26/while/lstm_cell/mul:z:0*backward_lstm_26/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
*backward_lstm_26/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_26/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
'backward_lstm_26/while/lstm_cell/Relu_1Relu*backward_lstm_26/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
&backward_lstm_26/while/lstm_cell/mul_2Mul.backward_lstm_26/while/lstm_cell/Sigmoid_2:y:05backward_lstm_26/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:�����������
Abackward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
;backward_lstm_26/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_26_while_placeholder_1Jbackward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/index:output:0*backward_lstm_26/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���^
backward_lstm_26/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_26/while/addAddV2"backward_lstm_26_while_placeholder%backward_lstm_26/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_26/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_26/while/add_1AddV2:backward_lstm_26_while_backward_lstm_26_while_loop_counter'backward_lstm_26/while/add_1/y:output:0*
T0*
_output_shapes
: �
backward_lstm_26/while/IdentityIdentity backward_lstm_26/while/add_1:z:0^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_1Identity@backward_lstm_26_while_backward_lstm_26_while_maximum_iterations^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_2Identitybackward_lstm_26/while/add:z:0^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_3IdentityKbackward_lstm_26/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_4Identity*backward_lstm_26/while/lstm_cell/mul_2:z:0^backward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
!backward_lstm_26/while/Identity_5Identity*backward_lstm_26/while/lstm_cell/add_1:z:0^backward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
backward_lstm_26/while/NoOpNoOp8^backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_26_while_backward_lstm_26_strided_slice_19backward_lstm_26_while_backward_lstm_26_strided_slice_1_0"K
backward_lstm_26_while_identity(backward_lstm_26/while/Identity:output:0"O
!backward_lstm_26_while_identity_1*backward_lstm_26/while/Identity_1:output:0"O
!backward_lstm_26_while_identity_2*backward_lstm_26/while/Identity_2:output:0"O
!backward_lstm_26_while_identity_3*backward_lstm_26/while/Identity_3:output:0"O
!backward_lstm_26_while_identity_4*backward_lstm_26/while/Identity_4:output:0"O
!backward_lstm_26_while_identity_5*backward_lstm_26/while/Identity_5:output:0"�
@backward_lstm_26_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0"�
Abackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0"�
?backward_lstm_26_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0"�
sbackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensorubackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2r
7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_26/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_26/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_26/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�:
�
while_body_460709
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
��@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�D
0while_lstm_cell_matmul_1_readvariableop_resource:
��>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:����������o
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:����������l
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
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
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:����������w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�M
�
!forward_lstm_26_while_body_458566<
8forward_lstm_26_while_forward_lstm_26_while_loop_counterB
>forward_lstm_26_while_forward_lstm_26_while_maximum_iterations%
!forward_lstm_26_while_placeholder'
#forward_lstm_26_while_placeholder_1'
#forward_lstm_26_while_placeholder_2'
#forward_lstm_26_while_placeholder_3;
7forward_lstm_26_while_forward_lstm_26_strided_slice_1_0w
sforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0S
@forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0:	�V
Bforward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0:
��P
Aforward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0:	�"
forward_lstm_26_while_identity$
 forward_lstm_26_while_identity_1$
 forward_lstm_26_while_identity_2$
 forward_lstm_26_while_identity_3$
 forward_lstm_26_while_identity_4$
 forward_lstm_26_while_identity_59
5forward_lstm_26_while_forward_lstm_26_strided_slice_1u
qforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensorQ
>forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource:	�T
@forward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource:
��N
?forward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource:	���6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp�5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp�7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp�
Gforward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"���������
9forward_lstm_26/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_26_while_placeholderPforward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:������������������*
element_dtype0�
5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
&forward_lstm_26/while/lstm_cell/MatMulMatMul@forward_lstm_26/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
(forward_lstm_26/while/lstm_cell/MatMul_1MatMul#forward_lstm_26_while_placeholder_2?forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#forward_lstm_26/while/lstm_cell/addAddV20forward_lstm_26/while/lstm_cell/MatMul:product:02forward_lstm_26/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
'forward_lstm_26/while/lstm_cell/BiasAddBiasAdd'forward_lstm_26/while/lstm_cell/add:z:0>forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������q
/forward_lstm_26/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
%forward_lstm_26/while/lstm_cell/splitSplit8forward_lstm_26/while/lstm_cell/split/split_dim:output:00forward_lstm_26/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
'forward_lstm_26/while/lstm_cell/SigmoidSigmoid.forward_lstm_26/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
)forward_lstm_26/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_26/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
#forward_lstm_26/while/lstm_cell/mulMul-forward_lstm_26/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_26_while_placeholder_3*
T0*(
_output_shapes
:�����������
$forward_lstm_26/while/lstm_cell/ReluRelu.forward_lstm_26/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
%forward_lstm_26/while/lstm_cell/mul_1Mul+forward_lstm_26/while/lstm_cell/Sigmoid:y:02forward_lstm_26/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
%forward_lstm_26/while/lstm_cell/add_1AddV2'forward_lstm_26/while/lstm_cell/mul:z:0)forward_lstm_26/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
)forward_lstm_26/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_26/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
&forward_lstm_26/while/lstm_cell/Relu_1Relu)forward_lstm_26/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
%forward_lstm_26/while/lstm_cell/mul_2Mul-forward_lstm_26/while/lstm_cell/Sigmoid_2:y:04forward_lstm_26/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:�����������
@forward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
:forward_lstm_26/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_26_while_placeholder_1Iforward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/index:output:0)forward_lstm_26/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���]
forward_lstm_26/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/while/addAddV2!forward_lstm_26_while_placeholder$forward_lstm_26/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_26/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/while/add_1AddV28forward_lstm_26_while_forward_lstm_26_while_loop_counter&forward_lstm_26/while/add_1/y:output:0*
T0*
_output_shapes
: �
forward_lstm_26/while/IdentityIdentityforward_lstm_26/while/add_1:z:0^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_1Identity>forward_lstm_26_while_forward_lstm_26_while_maximum_iterations^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_2Identityforward_lstm_26/while/add:z:0^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_3IdentityJforward_lstm_26/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_4Identity)forward_lstm_26/while/lstm_cell/mul_2:z:0^forward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
 forward_lstm_26/while/Identity_5Identity)forward_lstm_26/while/lstm_cell/add_1:z:0^forward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
forward_lstm_26/while/NoOpNoOp7^forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_26_while_forward_lstm_26_strided_slice_17forward_lstm_26_while_forward_lstm_26_strided_slice_1_0"I
forward_lstm_26_while_identity'forward_lstm_26/while/Identity:output:0"M
 forward_lstm_26_while_identity_1)forward_lstm_26/while/Identity_1:output:0"M
 forward_lstm_26_while_identity_2)forward_lstm_26/while/Identity_2:output:0"M
 forward_lstm_26_while_identity_3)forward_lstm_26/while/Identity_3:output:0"M
 forward_lstm_26_while_identity_4)forward_lstm_26/while/Identity_4:output:0"M
 forward_lstm_26_while_identity_5)forward_lstm_26/while/Identity_5:output:0"�
?forward_lstm_26_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0"�
@forward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0"�
>forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0"�
qforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensorsforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2p
6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_26/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_26/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_26/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�K
�
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_457094

inputs;
(lstm_cell_matmul_readvariableop_resource:	�>
*lstm_cell_matmul_1_readvariableop_resource:
��8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileI
ShapeShapeinputs*
T0*
_output_shapes
::��]
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
B :�s
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
:����������S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'���������������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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
valueB"���������
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
T0*0
_output_shapes
:������������������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:����������r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:����������c
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:����������~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:����������s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:����������`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_457009*
condR
while_cond_457008*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
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
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�L
�
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_460647
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	�>
*lstm_cell_matmul_1_readvariableop_resource:
��8
)lstm_cell_biasadd_readvariableop_resource:	�
identity�� lstm_cell/BiasAdd/ReadVariableOp�lstm_cell/MatMul/ReadVariableOp�!lstm_cell/MatMul_1/ReadVariableOp�whileK
ShapeShapeinputs_0*
T0*
_output_shapes
::��]
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
B :�s
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
:����������S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :�w
zeros_1/packedPackstrided_slice:output:0zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:R
zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    s
zeros_1Fillzeros_1/packed:output:0zeros_1/Const:output:0*
T0*(
_output_shapes
:����������c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :������������������R
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::��_
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

shape_type0:���X
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :�������������������
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
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
:���������*
shrink_axis_mask�
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:����������r
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:����������c
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:����������~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:����������s
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������k
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:����������`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   ^
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
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_460562*
condR
while_cond_460561*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
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
:����������*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:����������[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
F
*__inference_lambda_26_layer_call_fn_458426

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
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lambda_26_layer_call_and_return_conditional_losses_457986d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
"backward_lstm_26_while_cond_459578>
:backward_lstm_26_while_backward_lstm_26_while_loop_counterD
@backward_lstm_26_while_backward_lstm_26_while_maximum_iterations&
"backward_lstm_26_while_placeholder(
$backward_lstm_26_while_placeholder_1(
$backward_lstm_26_while_placeholder_2(
$backward_lstm_26_while_placeholder_3@
<backward_lstm_26_while_less_backward_lstm_26_strided_slice_1V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_459578___redundant_placeholder0V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_459578___redundant_placeholder1V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_459578___redundant_placeholder2V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_459578___redundant_placeholder3#
backward_lstm_26_while_identity
�
backward_lstm_26/while/LessLess"backward_lstm_26_while_placeholder<backward_lstm_26_while_less_backward_lstm_26_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_26/while/IdentityIdentitybackward_lstm_26/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_26_while_identity(backward_lstm_26/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_26/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_26/strided_slice_1:

_output_shapes
:
�	
�
0__inference_forward_lstm_26_layer_call_fn_459718

inputs
unknown:	�
	unknown_0:
��
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_457094p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name459710:&"
 
_user_specified_name459712:&"
 
_user_specified_name459714
�
�
!forward_lstm_26_while_cond_459435<
8forward_lstm_26_while_forward_lstm_26_while_loop_counterB
>forward_lstm_26_while_forward_lstm_26_while_maximum_iterations%
!forward_lstm_26_while_placeholder'
#forward_lstm_26_while_placeholder_1'
#forward_lstm_26_while_placeholder_2'
#forward_lstm_26_while_placeholder_3>
:forward_lstm_26_while_less_forward_lstm_26_strided_slice_1T
Pforward_lstm_26_while_forward_lstm_26_while_cond_459435___redundant_placeholder0T
Pforward_lstm_26_while_forward_lstm_26_while_cond_459435___redundant_placeholder1T
Pforward_lstm_26_while_forward_lstm_26_while_cond_459435___redundant_placeholder2T
Pforward_lstm_26_while_forward_lstm_26_while_cond_459435___redundant_placeholder3"
forward_lstm_26_while_identity
�
forward_lstm_26/while/LessLess!forward_lstm_26_while_placeholder:forward_lstm_26_while_less_forward_lstm_26_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_26/while/IdentityIdentityforward_lstm_26/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_26_while_identity'forward_lstm_26/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_26/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_26/strided_slice_1:

_output_shapes
:
�
�
"backward_lstm_26_while_cond_458189>
:backward_lstm_26_while_backward_lstm_26_while_loop_counterD
@backward_lstm_26_while_backward_lstm_26_while_maximum_iterations&
"backward_lstm_26_while_placeholder(
$backward_lstm_26_while_placeholder_1(
$backward_lstm_26_while_placeholder_2(
$backward_lstm_26_while_placeholder_3@
<backward_lstm_26_while_less_backward_lstm_26_strided_slice_1V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_458189___redundant_placeholder0V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_458189___redundant_placeholder1V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_458189___redundant_placeholder2V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_458189___redundant_placeholder3#
backward_lstm_26_while_identity
�
backward_lstm_26/while/LessLess"backward_lstm_26_while_placeholder<backward_lstm_26_while_less_backward_lstm_26_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_26/while/IdentityIdentitybackward_lstm_26/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_26_while_identity(backward_lstm_26/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_26/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_26/strided_slice_1:

_output_shapes
:
�	
�
while_cond_460561
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_460561___redundant_placeholder04
0while_while_cond_460561___redundant_placeholder14
0while_while_cond_460561___redundant_placeholder24
0while_while_cond_460561___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�N
�
"backward_lstm_26_while_body_459579>
:backward_lstm_26_while_backward_lstm_26_while_loop_counterD
@backward_lstm_26_while_backward_lstm_26_while_maximum_iterations&
"backward_lstm_26_while_placeholder(
$backward_lstm_26_while_placeholder_1(
$backward_lstm_26_while_placeholder_2(
$backward_lstm_26_while_placeholder_3=
9backward_lstm_26_while_backward_lstm_26_strided_slice_1_0y
ubackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0T
Abackward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0:	�W
Cbackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0:
��Q
Bbackward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0:	�#
backward_lstm_26_while_identity%
!backward_lstm_26_while_identity_1%
!backward_lstm_26_while_identity_2%
!backward_lstm_26_while_identity_3%
!backward_lstm_26_while_identity_4%
!backward_lstm_26_while_identity_5;
7backward_lstm_26_while_backward_lstm_26_strided_slice_1w
sbackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensorR
?backward_lstm_26_while_lstm_cell_matmul_readvariableop_resource:	�U
Abackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource:
��O
@backward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource:	���7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp�6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp�8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp�
Hbackward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
:backward_lstm_26/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_26_while_placeholderQbackward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpAbackward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
'backward_lstm_26/while/lstm_cell/MatMulMatMulAbackward_lstm_26/while/TensorArrayV2Read/TensorListGetItem:item:0>backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpCbackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
)backward_lstm_26/while/lstm_cell/MatMul_1MatMul$backward_lstm_26_while_placeholder_2@backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
$backward_lstm_26/while/lstm_cell/addAddV21backward_lstm_26/while/lstm_cell/MatMul:product:03backward_lstm_26/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpBbackward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
(backward_lstm_26/while/lstm_cell/BiasAddBiasAdd(backward_lstm_26/while/lstm_cell/add:z:0?backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������r
0backward_lstm_26/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
&backward_lstm_26/while/lstm_cell/splitSplit9backward_lstm_26/while/lstm_cell/split/split_dim:output:01backward_lstm_26/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
(backward_lstm_26/while/lstm_cell/SigmoidSigmoid/backward_lstm_26/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
*backward_lstm_26/while/lstm_cell/Sigmoid_1Sigmoid/backward_lstm_26/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
$backward_lstm_26/while/lstm_cell/mulMul.backward_lstm_26/while/lstm_cell/Sigmoid_1:y:0$backward_lstm_26_while_placeholder_3*
T0*(
_output_shapes
:�����������
%backward_lstm_26/while/lstm_cell/ReluRelu/backward_lstm_26/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
&backward_lstm_26/while/lstm_cell/mul_1Mul,backward_lstm_26/while/lstm_cell/Sigmoid:y:03backward_lstm_26/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
&backward_lstm_26/while/lstm_cell/add_1AddV2(backward_lstm_26/while/lstm_cell/mul:z:0*backward_lstm_26/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
*backward_lstm_26/while/lstm_cell/Sigmoid_2Sigmoid/backward_lstm_26/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
'backward_lstm_26/while/lstm_cell/Relu_1Relu*backward_lstm_26/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
&backward_lstm_26/while/lstm_cell/mul_2Mul.backward_lstm_26/while/lstm_cell/Sigmoid_2:y:05backward_lstm_26/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:�����������
Abackward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
;backward_lstm_26/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_26_while_placeholder_1Jbackward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/index:output:0*backward_lstm_26/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���^
backward_lstm_26/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_26/while/addAddV2"backward_lstm_26_while_placeholder%backward_lstm_26/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_26/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
backward_lstm_26/while/add_1AddV2:backward_lstm_26_while_backward_lstm_26_while_loop_counter'backward_lstm_26/while/add_1/y:output:0*
T0*
_output_shapes
: �
backward_lstm_26/while/IdentityIdentity backward_lstm_26/while/add_1:z:0^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_1Identity@backward_lstm_26_while_backward_lstm_26_while_maximum_iterations^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_2Identitybackward_lstm_26/while/add:z:0^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_3IdentityKbackward_lstm_26/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
!backward_lstm_26/while/Identity_4Identity*backward_lstm_26/while/lstm_cell/mul_2:z:0^backward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
!backward_lstm_26/while/Identity_5Identity*backward_lstm_26/while/lstm_cell/add_1:z:0^backward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
backward_lstm_26/while/NoOpNoOp8^backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp7^backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp9^backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "t
7backward_lstm_26_while_backward_lstm_26_strided_slice_19backward_lstm_26_while_backward_lstm_26_strided_slice_1_0"K
backward_lstm_26_while_identity(backward_lstm_26/while/Identity:output:0"O
!backward_lstm_26_while_identity_1*backward_lstm_26/while/Identity_1:output:0"O
!backward_lstm_26_while_identity_2*backward_lstm_26/while/Identity_2:output:0"O
!backward_lstm_26_while_identity_3*backward_lstm_26/while/Identity_3:output:0"O
!backward_lstm_26_while_identity_4*backward_lstm_26/while/Identity_4:output:0"O
!backward_lstm_26_while_identity_5*backward_lstm_26/while/Identity_5:output:0"�
@backward_lstm_26_while_lstm_cell_biasadd_readvariableop_resourceBbackward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0"�
Abackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resourceCbackward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0"�
?backward_lstm_26_while_lstm_cell_matmul_readvariableop_resourceAbackward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0"�
sbackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensorubackward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2r
7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp7backward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp2p
6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp6backward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp2t
8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp8backward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_26/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_26/strided_slice_1:pl

_output_shapes
: 
R
_user_specified_name:8backward_lstm_26/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�
�
"backward_lstm_26_while_cond_457860>
:backward_lstm_26_while_backward_lstm_26_while_loop_counterD
@backward_lstm_26_while_backward_lstm_26_while_maximum_iterations&
"backward_lstm_26_while_placeholder(
$backward_lstm_26_while_placeholder_1(
$backward_lstm_26_while_placeholder_2(
$backward_lstm_26_while_placeholder_3@
<backward_lstm_26_while_less_backward_lstm_26_strided_slice_1V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_457860___redundant_placeholder0V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_457860___redundant_placeholder1V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_457860___redundant_placeholder2V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_457860___redundant_placeholder3#
backward_lstm_26_while_identity
�
backward_lstm_26/while/LessLess"backward_lstm_26_while_placeholder<backward_lstm_26_while_less_backward_lstm_26_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_26/while/IdentityIdentitybackward_lstm_26/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_26_while_identity(backward_lstm_26/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_26/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_26/strided_slice_1:

_output_shapes
:
�
�
!forward_lstm_26_while_cond_457717<
8forward_lstm_26_while_forward_lstm_26_while_loop_counterB
>forward_lstm_26_while_forward_lstm_26_while_maximum_iterations%
!forward_lstm_26_while_placeholder'
#forward_lstm_26_while_placeholder_1'
#forward_lstm_26_while_placeholder_2'
#forward_lstm_26_while_placeholder_3>
:forward_lstm_26_while_less_forward_lstm_26_strided_slice_1T
Pforward_lstm_26_while_forward_lstm_26_while_cond_457717___redundant_placeholder0T
Pforward_lstm_26_while_forward_lstm_26_while_cond_457717___redundant_placeholder1T
Pforward_lstm_26_while_forward_lstm_26_while_cond_457717___redundant_placeholder2T
Pforward_lstm_26_while_forward_lstm_26_while_cond_457717___redundant_placeholder3"
forward_lstm_26_while_identity
�
forward_lstm_26/while/LessLess!forward_lstm_26_while_placeholder:forward_lstm_26_while_less_forward_lstm_26_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_26/while/IdentityIdentityforward_lstm_26/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_26_while_identity'forward_lstm_26/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_26/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_26/strided_slice_1:

_output_shapes
:
�	
�
1__inference_backward_lstm_26_layer_call_fn_460342

inputs
unknown:	�
	unknown_0:
��
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_457248p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'���������������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'���������������������������
 
_user_specified_nameinputs:&"
 
_user_specified_name460334:&"
 
_user_specified_name460336:&"
 
_user_specified_name460338
�
�
E__inference_lstm_cell_layer_call_and_return_conditional_losses_461039

inputs
states_0
states_11
matmul_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:����������W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:����������V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:����������O
ReluRelusplit:output:2*
T0*(
_output_shapes
:����������`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:����������U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:����������W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:����������L
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:����������d
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:����������Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:����������[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:����������[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:����������m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������:����������:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states_0:RN
(
_output_shapes
:����������
"
_user_specified_name
states_1:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�	
�
while_cond_460708
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_460708___redundant_placeholder04
0while_while_cond_460708___redundant_placeholder14
0while_while_cond_460708___redundant_placeholder24
0while_while_cond_460708___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�
�
Xmodel_9_bidirectionalLSTM_univariate_bidirectional_26_backward_lstm_26_while_cond_456149�
�model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_loop_counter�
�model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_maximum_iterations\
Xmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_placeholder^
Zmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_placeholder_1^
Zmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_placeholder_2^
Zmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_placeholder_3�
�model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_less_model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_strided_slice_1�
�model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_cond_456149___redundant_placeholder0�
�model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_cond_456149___redundant_placeholder1�
�model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_cond_456149___redundant_placeholder2�
�model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_cond_456149___redundant_placeholder3Y
Umodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_identity
�
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/LessLessXmodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_placeholder�model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_less_model_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_strided_slice_1*
T0*
_output_shapes
: �
Umodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/IdentityIdentityUmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/Less:z:0*
T0
*
_output_shapes
: "�
Umodel_9_bidirectionallstm_univariate_bidirectional_26_backward_lstm_26_while_identity^model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::� �

_output_shapes
: 
s
_user_specified_name[Ymodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/loop_counter:��

_output_shapes
: 
y
_user_specified_namea_model_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:��

_output_shapes
: 
p
_user_specified_nameXVmodel_9_bidirectionalLSTM_univariate/bidirectional_26/backward_lstm_26/strided_slice_1:

_output_shapes
:
�:
�
while_body_460415
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	�F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
��@
1while_lstm_cell_biasadd_readvariableop_resource_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	�D
0while_lstm_cell_matmul_1_readvariableop_resource:
��>
/while_lstm_cell_biasadd_readvariableop_resource:	���&while/lstm_cell/BiasAdd/ReadVariableOp�%while/lstm_cell/MatMul/ReadVariableOp�'while/lstm_cell/MatMul_1/ReadVariableOp�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������a
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:����������o
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:����������w
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:����������l
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
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
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:����������w
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:�����������

while/NoOpNoOp'^while/lstm_cell/BiasAdd/ReadVariableOp&^while/lstm_cell/MatMul/ReadVariableOp(^while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"d
/while_lstm_cell_biasadd_readvariableop_resource1while_lstm_cell_biasadd_readvariableop_resource_0"f
0while_lstm_cell_matmul_1_readvariableop_resource2while_lstm_cell_matmul_1_readvariableop_resource_0"b
.while_lstm_cell_matmul_readvariableop_resource0while_lstm_cell_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2P
&while/lstm_cell/BiasAdd/ReadVariableOp&while/lstm_cell/BiasAdd/ReadVariableOp2N
%while/lstm_cell/MatMul/ReadVariableOp%while/lstm_cell/MatMul/ReadVariableOp2R
'while/lstm_cell/MatMul_1/ReadVariableOp'while/lstm_cell/MatMul_1/ReadVariableOp:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�
a
E__inference_lambda_26_layer_call_and_return_conditional_losses_457986

inputs
identityY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
���������o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:���������_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:���������"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:���������:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs
�
�
*__inference_lstm_cell_layer_call_fn_460958

inputs
states_0
states_1
unknown:	�
	unknown_0:
��
	unknown_1:	�
identity

identity_1

identity_2��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_456305p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:����������r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������:����������:����������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:RN
(
_output_shapes
:����������
"
_user_specified_name
states_0:RN
(
_output_shapes
:����������
"
_user_specified_name
states_1:&"
 
_user_specified_name460946:&"
 
_user_specified_name460948:&"
 
_user_specified_name460950
�	
�
while_cond_456466
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_456466___redundant_placeholder04
0while_while_cond_456466___redundant_placeholder14
0while_while_cond_456466___redundant_placeholder24
0while_while_cond_456466___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�
�
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_458297
lambda_26_input*
bidirectional_26_458278:	�+
bidirectional_26_458280:
��&
bidirectional_26_458282:	�*
bidirectional_26_458284:	�+
bidirectional_26_458286:
��&
bidirectional_26_458288:	�"
dense_26_458291:	�
dense_26_458293:
identity��(bidirectional_26/StatefulPartitionedCall� dense_26/StatefulPartitionedCall�
lambda_26/PartitionedCallPartitionedCalllambda_26_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lambda_26_layer_call_and_return_conditional_losses_457986�
(bidirectional_26/StatefulPartitionedCallStatefulPartitionedCall"lambda_26/PartitionedCall:output:0bidirectional_26_458278bidirectional_26_458280bidirectional_26_458282bidirectional_26_458284bidirectional_26_458286bidirectional_26_458288*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_458277�
 dense_26/StatefulPartitionedCallStatefulPartitionedCall1bidirectional_26/StatefulPartitionedCall:output:0dense_26_458291dense_26_458293*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_457971x
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������p
NoOpNoOp)^bidirectional_26/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2T
(bidirectional_26/StatefulPartitionedCall(bidirectional_26/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall:X T
'
_output_shapes
:���������
)
_user_specified_namelambda_26_input:&"
 
_user_specified_name458278:&"
 
_user_specified_name458280:&"
 
_user_specified_name458282:&"
 
_user_specified_name458284:&"
 
_user_specified_name458286:&"
 
_user_specified_name458288:&"
 
_user_specified_name458291:&"
 
_user_specified_name458293
�M
�
!forward_lstm_26_while_body_459146<
8forward_lstm_26_while_forward_lstm_26_while_loop_counterB
>forward_lstm_26_while_forward_lstm_26_while_maximum_iterations%
!forward_lstm_26_while_placeholder'
#forward_lstm_26_while_placeholder_1'
#forward_lstm_26_while_placeholder_2'
#forward_lstm_26_while_placeholder_3;
7forward_lstm_26_while_forward_lstm_26_strided_slice_1_0w
sforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0S
@forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0:	�V
Bforward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0:
��P
Aforward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0:	�"
forward_lstm_26_while_identity$
 forward_lstm_26_while_identity_1$
 forward_lstm_26_while_identity_2$
 forward_lstm_26_while_identity_3$
 forward_lstm_26_while_identity_4$
 forward_lstm_26_while_identity_59
5forward_lstm_26_while_forward_lstm_26_strided_slice_1u
qforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensorQ
>forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource:	�T
@forward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource:
��N
?forward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource:	���6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp�5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp�7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp�
Gforward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
9forward_lstm_26/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_26_while_placeholderPforward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
&forward_lstm_26/while/lstm_cell/MatMulMatMul@forward_lstm_26/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
(forward_lstm_26/while/lstm_cell/MatMul_1MatMul#forward_lstm_26_while_placeholder_2?forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#forward_lstm_26/while/lstm_cell/addAddV20forward_lstm_26/while/lstm_cell/MatMul:product:02forward_lstm_26/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
'forward_lstm_26/while/lstm_cell/BiasAddBiasAdd'forward_lstm_26/while/lstm_cell/add:z:0>forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������q
/forward_lstm_26/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
%forward_lstm_26/while/lstm_cell/splitSplit8forward_lstm_26/while/lstm_cell/split/split_dim:output:00forward_lstm_26/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
'forward_lstm_26/while/lstm_cell/SigmoidSigmoid.forward_lstm_26/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
)forward_lstm_26/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_26/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
#forward_lstm_26/while/lstm_cell/mulMul-forward_lstm_26/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_26_while_placeholder_3*
T0*(
_output_shapes
:�����������
$forward_lstm_26/while/lstm_cell/ReluRelu.forward_lstm_26/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
%forward_lstm_26/while/lstm_cell/mul_1Mul+forward_lstm_26/while/lstm_cell/Sigmoid:y:02forward_lstm_26/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
%forward_lstm_26/while/lstm_cell/add_1AddV2'forward_lstm_26/while/lstm_cell/mul:z:0)forward_lstm_26/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
)forward_lstm_26/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_26/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
&forward_lstm_26/while/lstm_cell/Relu_1Relu)forward_lstm_26/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
%forward_lstm_26/while/lstm_cell/mul_2Mul-forward_lstm_26/while/lstm_cell/Sigmoid_2:y:04forward_lstm_26/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:�����������
@forward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
:forward_lstm_26/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_26_while_placeholder_1Iforward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/index:output:0)forward_lstm_26/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���]
forward_lstm_26/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/while/addAddV2!forward_lstm_26_while_placeholder$forward_lstm_26/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_26/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/while/add_1AddV28forward_lstm_26_while_forward_lstm_26_while_loop_counter&forward_lstm_26/while/add_1/y:output:0*
T0*
_output_shapes
: �
forward_lstm_26/while/IdentityIdentityforward_lstm_26/while/add_1:z:0^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_1Identity>forward_lstm_26_while_forward_lstm_26_while_maximum_iterations^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_2Identityforward_lstm_26/while/add:z:0^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_3IdentityJforward_lstm_26/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_4Identity)forward_lstm_26/while/lstm_cell/mul_2:z:0^forward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
 forward_lstm_26/while/Identity_5Identity)forward_lstm_26/while/lstm_cell/add_1:z:0^forward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
forward_lstm_26/while/NoOpNoOp7^forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_26_while_forward_lstm_26_strided_slice_17forward_lstm_26_while_forward_lstm_26_strided_slice_1_0"I
forward_lstm_26_while_identity'forward_lstm_26/while/Identity:output:0"M
 forward_lstm_26_while_identity_1)forward_lstm_26/while/Identity_1:output:0"M
 forward_lstm_26_while_identity_2)forward_lstm_26/while/Identity_2:output:0"M
 forward_lstm_26_while_identity_3)forward_lstm_26/while/Identity_3:output:0"M
 forward_lstm_26_while_identity_4)forward_lstm_26/while/Identity_4:output:0"M
 forward_lstm_26_while_identity_5)forward_lstm_26/while/Identity_5:output:0"�
?forward_lstm_26_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0"�
@forward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0"�
>forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0"�
qforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensorsforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2p
6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_26/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_26/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_26/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�
�
!forward_lstm_26_while_cond_458046<
8forward_lstm_26_while_forward_lstm_26_while_loop_counterB
>forward_lstm_26_while_forward_lstm_26_while_maximum_iterations%
!forward_lstm_26_while_placeholder'
#forward_lstm_26_while_placeholder_1'
#forward_lstm_26_while_placeholder_2'
#forward_lstm_26_while_placeholder_3>
:forward_lstm_26_while_less_forward_lstm_26_strided_slice_1T
Pforward_lstm_26_while_forward_lstm_26_while_cond_458046___redundant_placeholder0T
Pforward_lstm_26_while_forward_lstm_26_while_cond_458046___redundant_placeholder1T
Pforward_lstm_26_while_forward_lstm_26_while_cond_458046___redundant_placeholder2T
Pforward_lstm_26_while_forward_lstm_26_while_cond_458046___redundant_placeholder3"
forward_lstm_26_while_identity
�
forward_lstm_26/while/LessLess!forward_lstm_26_while_placeholder:forward_lstm_26_while_less_forward_lstm_26_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_26/while/IdentityIdentityforward_lstm_26/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_26_while_identity'forward_lstm_26/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_26/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_26/strided_slice_1:

_output_shapes
:
�
�
E__inference_lstm_cell_layer_call_and_return_conditional_losses_456305

inputs

states
states_11
matmul_readvariableop_resource:	�4
 matmul_1_readvariableop_resource:
��.
biasadd_readvariableop_resource:	�
identity

identity_1

identity_2��BiasAdd/ReadVariableOp�MatMul/ReadVariableOp�MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	�*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:����������s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:����������W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:����������V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:����������O
ReluRelusplit:output:2*
T0*(
_output_shapes
:����������`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:����������U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:����������W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:����������L
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:����������d
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:����������Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:����������[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:����������[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:����������m
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:���������:����������:����������: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:���������
 
_user_specified_nameinputs:PL
(
_output_shapes
:����������
 
_user_specified_namestates:PL
(
_output_shapes
:����������
 
_user_specified_namestates:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
!forward_lstm_26_while_cond_458855<
8forward_lstm_26_while_forward_lstm_26_while_loop_counterB
>forward_lstm_26_while_forward_lstm_26_while_maximum_iterations%
!forward_lstm_26_while_placeholder'
#forward_lstm_26_while_placeholder_1'
#forward_lstm_26_while_placeholder_2'
#forward_lstm_26_while_placeholder_3>
:forward_lstm_26_while_less_forward_lstm_26_strided_slice_1T
Pforward_lstm_26_while_forward_lstm_26_while_cond_458855___redundant_placeholder0T
Pforward_lstm_26_while_forward_lstm_26_while_cond_458855___redundant_placeholder1T
Pforward_lstm_26_while_forward_lstm_26_while_cond_458855___redundant_placeholder2T
Pforward_lstm_26_while_forward_lstm_26_while_cond_458855___redundant_placeholder3"
forward_lstm_26_while_identity
�
forward_lstm_26/while/LessLess!forward_lstm_26_while_placeholder:forward_lstm_26_while_less_forward_lstm_26_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_26/while/IdentityIdentityforward_lstm_26/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_26_while_identity'forward_lstm_26/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_26/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_26/strided_slice_1:

_output_shapes
:
�M
�
!forward_lstm_26_while_body_457718<
8forward_lstm_26_while_forward_lstm_26_while_loop_counterB
>forward_lstm_26_while_forward_lstm_26_while_maximum_iterations%
!forward_lstm_26_while_placeholder'
#forward_lstm_26_while_placeholder_1'
#forward_lstm_26_while_placeholder_2'
#forward_lstm_26_while_placeholder_3;
7forward_lstm_26_while_forward_lstm_26_strided_slice_1_0w
sforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0S
@forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0:	�V
Bforward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0:
��P
Aforward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0:	�"
forward_lstm_26_while_identity$
 forward_lstm_26_while_identity_1$
 forward_lstm_26_while_identity_2$
 forward_lstm_26_while_identity_3$
 forward_lstm_26_while_identity_4$
 forward_lstm_26_while_identity_59
5forward_lstm_26_while_forward_lstm_26_strided_slice_1u
qforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensorQ
>forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource:	�T
@forward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource:
��N
?forward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource:	���6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp�5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp�7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp�
Gforward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
9forward_lstm_26/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_26_while_placeholderPforward_lstm_26/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOpReadVariableOp@forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	�*
dtype0�
&forward_lstm_26/while/lstm_cell/MatMulMatMul@forward_lstm_26/while/TensorArrayV2Read/TensorListGetItem:item:0=forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpBforward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
��*
dtype0�
(forward_lstm_26/while/lstm_cell/MatMul_1MatMul#forward_lstm_26_while_placeholder_2?forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
#forward_lstm_26/while/lstm_cell/addAddV20forward_lstm_26/while/lstm_cell/MatMul:product:02forward_lstm_26/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpAforward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:�*
dtype0�
'forward_lstm_26/while/lstm_cell/BiasAddBiasAdd'forward_lstm_26/while/lstm_cell/add:z:0>forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������q
/forward_lstm_26/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
%forward_lstm_26/while/lstm_cell/splitSplit8forward_lstm_26/while/lstm_cell/split/split_dim:output:00forward_lstm_26/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
'forward_lstm_26/while/lstm_cell/SigmoidSigmoid.forward_lstm_26/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
)forward_lstm_26/while/lstm_cell/Sigmoid_1Sigmoid.forward_lstm_26/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
#forward_lstm_26/while/lstm_cell/mulMul-forward_lstm_26/while/lstm_cell/Sigmoid_1:y:0#forward_lstm_26_while_placeholder_3*
T0*(
_output_shapes
:�����������
$forward_lstm_26/while/lstm_cell/ReluRelu.forward_lstm_26/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
%forward_lstm_26/while/lstm_cell/mul_1Mul+forward_lstm_26/while/lstm_cell/Sigmoid:y:02forward_lstm_26/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
%forward_lstm_26/while/lstm_cell/add_1AddV2'forward_lstm_26/while/lstm_cell/mul:z:0)forward_lstm_26/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
)forward_lstm_26/while/lstm_cell/Sigmoid_2Sigmoid.forward_lstm_26/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
&forward_lstm_26/while/lstm_cell/Relu_1Relu)forward_lstm_26/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
%forward_lstm_26/while/lstm_cell/mul_2Mul-forward_lstm_26/while/lstm_cell/Sigmoid_2:y:04forward_lstm_26/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:�����������
@forward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
:forward_lstm_26/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_26_while_placeholder_1Iforward_lstm_26/while/TensorArrayV2Write/TensorListSetItem/index:output:0)forward_lstm_26/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:���]
forward_lstm_26/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/while/addAddV2!forward_lstm_26_while_placeholder$forward_lstm_26/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_26/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/while/add_1AddV28forward_lstm_26_while_forward_lstm_26_while_loop_counter&forward_lstm_26/while/add_1/y:output:0*
T0*
_output_shapes
: �
forward_lstm_26/while/IdentityIdentityforward_lstm_26/while/add_1:z:0^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_1Identity>forward_lstm_26_while_forward_lstm_26_while_maximum_iterations^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_2Identityforward_lstm_26/while/add:z:0^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_3IdentityJforward_lstm_26/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_26/while/NoOp*
T0*
_output_shapes
: �
 forward_lstm_26/while/Identity_4Identity)forward_lstm_26/while/lstm_cell/mul_2:z:0^forward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
 forward_lstm_26/while/Identity_5Identity)forward_lstm_26/while/lstm_cell/add_1:z:0^forward_lstm_26/while/NoOp*
T0*(
_output_shapes
:�����������
forward_lstm_26/while/NoOpNoOp7^forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp6^forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp8^forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "p
5forward_lstm_26_while_forward_lstm_26_strided_slice_17forward_lstm_26_while_forward_lstm_26_strided_slice_1_0"I
forward_lstm_26_while_identity'forward_lstm_26/while/Identity:output:0"M
 forward_lstm_26_while_identity_1)forward_lstm_26/while/Identity_1:output:0"M
 forward_lstm_26_while_identity_2)forward_lstm_26/while/Identity_2:output:0"M
 forward_lstm_26_while_identity_3)forward_lstm_26/while/Identity_3:output:0"M
 forward_lstm_26_while_identity_4)forward_lstm_26/while/Identity_4:output:0"M
 forward_lstm_26_while_identity_5)forward_lstm_26/while/Identity_5:output:0"�
?forward_lstm_26_while_lstm_cell_biasadd_readvariableop_resourceAforward_lstm_26_while_lstm_cell_biasadd_readvariableop_resource_0"�
@forward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resourceBforward_lstm_26_while_lstm_cell_matmul_1_readvariableop_resource_0"�
>forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource@forward_lstm_26_while_lstm_cell_matmul_readvariableop_resource_0"�
qforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensorsforward_lstm_26_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_26_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2p
6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp6forward_lstm_26/while/lstm_cell/BiasAdd/ReadVariableOp2n
5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp5forward_lstm_26/while/lstm_cell/MatMul/ReadVariableOp2r
7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp7forward_lstm_26/while/lstm_cell/MatMul_1/ReadVariableOp:Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_26/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_26/strided_slice_1:ok

_output_shapes
: 
Q
_user_specified_name97forward_lstm_26/TensorArrayUnstack/TensorListFromTensor:($
"
_user_specified_name
resource:(	$
"
_user_specified_name
resource:(
$
"
_user_specified_name
resource
�
�
)__inference_dense_26_layer_call_fn_459675

inputs
unknown:	�
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
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_457971o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:����������: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:����������
 
_user_specified_nameinputs:&"
 
_user_specified_name459669:&"
 
_user_specified_name459671
�
�
"backward_lstm_26_while_cond_458998>
:backward_lstm_26_while_backward_lstm_26_while_loop_counterD
@backward_lstm_26_while_backward_lstm_26_while_maximum_iterations&
"backward_lstm_26_while_placeholder(
$backward_lstm_26_while_placeholder_1(
$backward_lstm_26_while_placeholder_2(
$backward_lstm_26_while_placeholder_3@
<backward_lstm_26_while_less_backward_lstm_26_strided_slice_1V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_458998___redundant_placeholder0V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_458998___redundant_placeholder1V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_458998___redundant_placeholder2V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_458998___redundant_placeholder3#
backward_lstm_26_while_identity
�
backward_lstm_26/while/LessLess"backward_lstm_26_while_placeholder<backward_lstm_26_while_less_backward_lstm_26_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_26/while/IdentityIdentitybackward_lstm_26/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_26_while_identity(backward_lstm_26/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_26/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_26/strided_slice_1:

_output_shapes
:
�

�
1__inference_bidirectional_26_layer_call_fn_458506

inputs
unknown:	�
	unknown_0:
��
	unknown_1:	�
	unknown_2:	�
	unknown_3:
��
	unknown_4:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_458277p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:&"
 
_user_specified_name458492:&"
 
_user_specified_name458494:&"
 
_user_specified_name458496:&"
 
_user_specified_name458498:&"
 
_user_specified_name458500:&"
 
_user_specified_name458502
�%
�
while_body_456467
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_456491_0:	�,
while_lstm_cell_456493_0:
��'
while_lstm_cell_456495_0:	�
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_456491:	�*
while_lstm_cell_456493:
��%
while_lstm_cell_456495:	���'while/lstm_cell/StatefulPartitionedCall�
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:���������*
element_dtype0�
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_456491_0while_lstm_cell_456493_0while_lstm_cell_456495_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:����������:����������:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_456452r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : �
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:�����������
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:����������R

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_456491while_lstm_cell_456491_0"2
while_lstm_cell_456493while_lstm_cell_456493_0"2
while_lstm_cell_456495while_lstm_cell_456495_0"0
while_strided_slice_1while_strided_slice_1_0"�
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :����������:����������: : : : : 2R
'while/lstm_cell/StatefulPartitionedCall'while/lstm_cell/StatefulPartitionedCall:J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:&"
 
_user_specified_name456491:&	"
 
_user_specified_name456493:&
"
 
_user_specified_name456495
�
�
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_457948

inputsK
8forward_lstm_26_lstm_cell_matmul_readvariableop_resource:	�N
:forward_lstm_26_lstm_cell_matmul_1_readvariableop_resource:
��H
9forward_lstm_26_lstm_cell_biasadd_readvariableop_resource:	�L
9backward_lstm_26_lstm_cell_matmul_readvariableop_resource:	�O
;backward_lstm_26_lstm_cell_matmul_1_readvariableop_resource:
��I
:backward_lstm_26_lstm_cell_biasadd_readvariableop_resource:	�
identity��1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp�0backward_lstm_26/lstm_cell/MatMul/ReadVariableOp�2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp�backward_lstm_26/while�0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp�/forward_lstm_26/lstm_cell/MatMul/ReadVariableOp�1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp�forward_lstm_26/whileY
forward_lstm_26/ShapeShapeinputs*
T0*
_output_shapes
::��m
#forward_lstm_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_sliceStridedSliceforward_lstm_26/Shape:output:0,forward_lstm_26/strided_slice/stack:output:0.forward_lstm_26/strided_slice/stack_1:output:0.forward_lstm_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
forward_lstm_26/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
forward_lstm_26/zeros/packedPack&forward_lstm_26/strided_slice:output:0'forward_lstm_26/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_26/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_26/zerosFill%forward_lstm_26/zeros/packed:output:0$forward_lstm_26/zeros/Const:output:0*
T0*(
_output_shapes
:����������c
 forward_lstm_26/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
forward_lstm_26/zeros_1/packedPack&forward_lstm_26/strided_slice:output:0)forward_lstm_26/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_26/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
forward_lstm_26/zeros_1Fill'forward_lstm_26/zeros_1/packed:output:0&forward_lstm_26/zeros_1/Const:output:0*
T0*(
_output_shapes
:����������s
forward_lstm_26/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_26/transpose	Transposeinputs'forward_lstm_26/transpose/perm:output:0*
T0*+
_output_shapes
:���������r
forward_lstm_26/Shape_1Shapeforward_lstm_26/transpose:y:0*
T0*
_output_shapes
::��o
%forward_lstm_26/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_26/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_26/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_slice_1StridedSlice forward_lstm_26/Shape_1:output:0.forward_lstm_26/strided_slice_1/stack:output:00forward_lstm_26/strided_slice_1/stack_1:output:00forward_lstm_26/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_26/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
forward_lstm_26/TensorArrayV2TensorListReserve4forward_lstm_26/TensorArrayV2/element_shape:output:0(forward_lstm_26/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:����
Eforward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
7forward_lstm_26/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_26/transpose:y:0Nforward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���o
%forward_lstm_26/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_26/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_26/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_slice_2StridedSliceforward_lstm_26/transpose:y:0.forward_lstm_26/strided_slice_2/stack:output:00forward_lstm_26/strided_slice_2/stack_1:output:00forward_lstm_26/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
/forward_lstm_26/lstm_cell/MatMul/ReadVariableOpReadVariableOp8forward_lstm_26_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
 forward_lstm_26/lstm_cell/MatMulMatMul(forward_lstm_26/strided_slice_2:output:07forward_lstm_26/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp:forward_lstm_26_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
"forward_lstm_26/lstm_cell/MatMul_1MatMulforward_lstm_26/zeros:output:09forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/addAddV2*forward_lstm_26/lstm_cell/MatMul:product:0,forward_lstm_26/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp9forward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
!forward_lstm_26/lstm_cell/BiasAddBiasAdd!forward_lstm_26/lstm_cell/add:z:08forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������k
)forward_lstm_26/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/lstm_cell/splitSplit2forward_lstm_26/lstm_cell/split/split_dim:output:0*forward_lstm_26/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
!forward_lstm_26/lstm_cell/SigmoidSigmoid(forward_lstm_26/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
#forward_lstm_26/lstm_cell/Sigmoid_1Sigmoid(forward_lstm_26/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/mulMul'forward_lstm_26/lstm_cell/Sigmoid_1:y:0 forward_lstm_26/zeros_1:output:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/ReluRelu(forward_lstm_26/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/mul_1Mul%forward_lstm_26/lstm_cell/Sigmoid:y:0,forward_lstm_26/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/add_1AddV2!forward_lstm_26/lstm_cell/mul:z:0#forward_lstm_26/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
#forward_lstm_26/lstm_cell/Sigmoid_2Sigmoid(forward_lstm_26/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
 forward_lstm_26/lstm_cell/Relu_1Relu#forward_lstm_26/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
forward_lstm_26/lstm_cell/mul_2Mul'forward_lstm_26/lstm_cell/Sigmoid_2:y:0.forward_lstm_26/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������~
-forward_lstm_26/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   n
,forward_lstm_26/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
forward_lstm_26/TensorArrayV2_1TensorListReserve6forward_lstm_26/TensorArrayV2_1/element_shape:output:05forward_lstm_26/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���V
forward_lstm_26/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_26/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������d
"forward_lstm_26/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
forward_lstm_26/whileWhile+forward_lstm_26/while/loop_counter:output:01forward_lstm_26/while/maximum_iterations:output:0forward_lstm_26/time:output:0(forward_lstm_26/TensorArrayV2_1:handle:0forward_lstm_26/zeros:output:0 forward_lstm_26/zeros_1:output:0(forward_lstm_26/strided_slice_1:output:0Gforward_lstm_26/TensorArrayUnstack/TensorListFromTensor:output_handle:08forward_lstm_26_lstm_cell_matmul_readvariableop_resource:forward_lstm_26_lstm_cell_matmul_1_readvariableop_resource9forward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*-
body%R#
!forward_lstm_26_while_body_457718*-
cond%R#
!forward_lstm_26_while_cond_457717*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
@forward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
2forward_lstm_26/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_26/while:output:3Iforward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elementsx
%forward_lstm_26/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������q
'forward_lstm_26/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_26/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
forward_lstm_26/strided_slice_3StridedSlice;forward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_26/strided_slice_3/stack:output:00forward_lstm_26/strided_slice_3/stack_1:output:00forward_lstm_26/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_masku
 forward_lstm_26/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
forward_lstm_26/transpose_1	Transpose;forward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_26/transpose_1/perm:output:0*
T0*,
_output_shapes
:����������k
forward_lstm_26/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    Z
backward_lstm_26/ShapeShapeinputs*
T0*
_output_shapes
::��n
$backward_lstm_26/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_26/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_26/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
backward_lstm_26/strided_sliceStridedSlicebackward_lstm_26/Shape:output:0-backward_lstm_26/strided_slice/stack:output:0/backward_lstm_26/strided_slice/stack_1:output:0/backward_lstm_26/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
backward_lstm_26/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
backward_lstm_26/zeros/packedPack'backward_lstm_26/strided_slice:output:0(backward_lstm_26/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_26/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_26/zerosFill&backward_lstm_26/zeros/packed:output:0%backward_lstm_26/zeros/Const:output:0*
T0*(
_output_shapes
:����������d
!backward_lstm_26/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :��
backward_lstm_26/zeros_1/packedPack'backward_lstm_26/strided_slice:output:0*backward_lstm_26/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_26/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    �
backward_lstm_26/zeros_1Fill(backward_lstm_26/zeros_1/packed:output:0'backward_lstm_26/zeros_1/Const:output:0*
T0*(
_output_shapes
:����������t
backward_lstm_26/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_26/transpose	Transposeinputs(backward_lstm_26/transpose/perm:output:0*
T0*+
_output_shapes
:���������t
backward_lstm_26/Shape_1Shapebackward_lstm_26/transpose:y:0*
T0*
_output_shapes
::��p
&backward_lstm_26/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_26/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_26/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_26/strided_slice_1StridedSlice!backward_lstm_26/Shape_1:output:0/backward_lstm_26/strided_slice_1/stack:output:01backward_lstm_26/strided_slice_1/stack_1:output:01backward_lstm_26/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_26/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
����������
backward_lstm_26/TensorArrayV2TensorListReserve5backward_lstm_26/TensorArrayV2/element_shape:output:0)backward_lstm_26/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���i
backward_lstm_26/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: �
backward_lstm_26/ReverseV2	ReverseV2backward_lstm_26/transpose:y:0(backward_lstm_26/ReverseV2/axis:output:0*
T0*+
_output_shapes
:����������
Fbackward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
8backward_lstm_26/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_26/ReverseV2:output:0Obackward_lstm_26/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���p
&backward_lstm_26/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_26/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_26/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_26/strided_slice_2StridedSlicebackward_lstm_26/transpose:y:0/backward_lstm_26/strided_slice_2/stack:output:01backward_lstm_26/strided_slice_2/stack_1:output:01backward_lstm_26/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:���������*
shrink_axis_mask�
0backward_lstm_26/lstm_cell/MatMul/ReadVariableOpReadVariableOp9backward_lstm_26_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	�*
dtype0�
!backward_lstm_26/lstm_cell/MatMulMatMul)backward_lstm_26/strided_slice_2:output:08backward_lstm_26/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp;backward_lstm_26_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
��*
dtype0�
#backward_lstm_26/lstm_cell/MatMul_1MatMulbackward_lstm_26/zeros:output:0:backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:�����������
backward_lstm_26/lstm_cell/addAddV2+backward_lstm_26/lstm_cell/MatMul:product:0-backward_lstm_26/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:�����������
1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp:backward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:�*
dtype0�
"backward_lstm_26/lstm_cell/BiasAddBiasAdd"backward_lstm_26/lstm_cell/add:z:09backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:����������l
*backward_lstm_26/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :�
 backward_lstm_26/lstm_cell/splitSplit3backward_lstm_26/lstm_cell/split/split_dim:output:0+backward_lstm_26/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:����������:����������:����������:����������*
	num_split�
"backward_lstm_26/lstm_cell/SigmoidSigmoid)backward_lstm_26/lstm_cell/split:output:0*
T0*(
_output_shapes
:�����������
$backward_lstm_26/lstm_cell/Sigmoid_1Sigmoid)backward_lstm_26/lstm_cell/split:output:1*
T0*(
_output_shapes
:�����������
backward_lstm_26/lstm_cell/mulMul(backward_lstm_26/lstm_cell/Sigmoid_1:y:0!backward_lstm_26/zeros_1:output:0*
T0*(
_output_shapes
:�����������
backward_lstm_26/lstm_cell/ReluRelu)backward_lstm_26/lstm_cell/split:output:2*
T0*(
_output_shapes
:�����������
 backward_lstm_26/lstm_cell/mul_1Mul&backward_lstm_26/lstm_cell/Sigmoid:y:0-backward_lstm_26/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:�����������
 backward_lstm_26/lstm_cell/add_1AddV2"backward_lstm_26/lstm_cell/mul:z:0$backward_lstm_26/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:�����������
$backward_lstm_26/lstm_cell/Sigmoid_2Sigmoid)backward_lstm_26/lstm_cell/split:output:3*
T0*(
_output_shapes
:�����������
!backward_lstm_26/lstm_cell/Relu_1Relu$backward_lstm_26/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:�����������
 backward_lstm_26/lstm_cell/mul_2Mul(backward_lstm_26/lstm_cell/Sigmoid_2:y:0/backward_lstm_26/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:����������
.backward_lstm_26/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   o
-backward_lstm_26/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :�
 backward_lstm_26/TensorArrayV2_1TensorListReserve7backward_lstm_26/TensorArrayV2_1/element_shape:output:06backward_lstm_26/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:���W
backward_lstm_26/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_26/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
���������e
#backward_lstm_26/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : �
backward_lstm_26/whileWhile,backward_lstm_26/while/loop_counter:output:02backward_lstm_26/while/maximum_iterations:output:0backward_lstm_26/time:output:0)backward_lstm_26/TensorArrayV2_1:handle:0backward_lstm_26/zeros:output:0!backward_lstm_26/zeros_1:output:0)backward_lstm_26/strided_slice_1:output:0Hbackward_lstm_26/TensorArrayUnstack/TensorListFromTensor:output_handle:09backward_lstm_26_lstm_cell_matmul_readvariableop_resource;backward_lstm_26_lstm_cell_matmul_1_readvariableop_resource:backward_lstm_26_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :����������:����������: : : : : *%
_read_only_resource_inputs
	
*.
body&R$
"backward_lstm_26_while_body_457861*.
cond&R$
"backward_lstm_26_while_cond_457860*M
output_shapes<
:: : : : :����������:����������: : : : : *
parallel_iterations �
Abackward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"����   �
3backward_lstm_26/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_26/while:output:3Jbackward_lstm_26/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:����������*
element_dtype0*
num_elementsy
&backward_lstm_26/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
���������r
(backward_lstm_26/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_26/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:�
 backward_lstm_26/strided_slice_3StridedSlice<backward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_26/strided_slice_3/stack:output:01backward_lstm_26/strided_slice_3/stack_1:output:01backward_lstm_26/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:����������*
shrink_axis_maskv
!backward_lstm_26/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          �
backward_lstm_26/transpose_1	Transpose<backward_lstm_26/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_26/transpose_1/perm:output:0*
T0*,
_output_shapes
:����������l
backward_lstm_26/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :�
concatConcatV2(forward_lstm_26/strided_slice_3:output:0)backward_lstm_26/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:����������_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:�����������
NoOpNoOp2^backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp1^backward_lstm_26/lstm_cell/MatMul/ReadVariableOp3^backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp^backward_lstm_26/while1^forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp0^forward_lstm_26/lstm_cell/MatMul/ReadVariableOp2^forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp^forward_lstm_26/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : 2f
1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp1backward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp2d
0backward_lstm_26/lstm_cell/MatMul/ReadVariableOp0backward_lstm_26/lstm_cell/MatMul/ReadVariableOp2h
2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp2backward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp20
backward_lstm_26/whilebackward_lstm_26/while2d
0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp0forward_lstm_26/lstm_cell/BiasAdd/ReadVariableOp2b
/forward_lstm_26/lstm_cell/MatMul/ReadVariableOp/forward_lstm_26/lstm_cell/MatMul/ReadVariableOp2f
1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp1forward_lstm_26/lstm_cell/MatMul_1/ReadVariableOp2.
forward_lstm_26/whileforward_lstm_26/while:S O
+
_output_shapes
:���������
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
�
�
!forward_lstm_26_while_cond_458565<
8forward_lstm_26_while_forward_lstm_26_while_loop_counterB
>forward_lstm_26_while_forward_lstm_26_while_maximum_iterations%
!forward_lstm_26_while_placeholder'
#forward_lstm_26_while_placeholder_1'
#forward_lstm_26_while_placeholder_2'
#forward_lstm_26_while_placeholder_3>
:forward_lstm_26_while_less_forward_lstm_26_strided_slice_1T
Pforward_lstm_26_while_forward_lstm_26_while_cond_458565___redundant_placeholder0T
Pforward_lstm_26_while_forward_lstm_26_while_cond_458565___redundant_placeholder1T
Pforward_lstm_26_while_forward_lstm_26_while_cond_458565___redundant_placeholder2T
Pforward_lstm_26_while_forward_lstm_26_while_cond_458565___redundant_placeholder3"
forward_lstm_26_while_identity
�
forward_lstm_26/while/LessLess!forward_lstm_26_while_placeholder:forward_lstm_26_while_less_forward_lstm_26_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_26/while/IdentityIdentityforward_lstm_26/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_26_while_identity'forward_lstm_26/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::Z V

_output_shapes
: 
<
_user_specified_name$"forward_lstm_26/while/loop_counter:`\

_output_shapes
: 
B
_user_specified_name*(forward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:WS

_output_shapes
: 
9
_user_specified_name!forward_lstm_26/strided_slice_1:

_output_shapes
:
�
�
0__inference_forward_lstm_26_layer_call_fn_459696
inputs_0
unknown:	�
	unknown_0:
��
	unknown_1:	�
identity��StatefulPartitionedCall�
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *T
fORM
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_456390p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:����������<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:������������������: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :������������������
"
_user_specified_name
inputs_0:&"
 
_user_specified_name459688:&"
 
_user_specified_name459690:&"
 
_user_specified_name459692
�
�
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_457978
lambda_26_input*
bidirectional_26_457949:	�+
bidirectional_26_457951:
��&
bidirectional_26_457953:	�*
bidirectional_26_457955:	�+
bidirectional_26_457957:
��&
bidirectional_26_457959:	�"
dense_26_457972:	�
dense_26_457974:
identity��(bidirectional_26/StatefulPartitionedCall� dense_26/StatefulPartitionedCall�
lambda_26/PartitionedCallPartitionedCalllambda_26_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:���������* 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8� *N
fIRG
E__inference_lambda_26_layer_call_and_return_conditional_losses_457657�
(bidirectional_26/StatefulPartitionedCallStatefulPartitionedCall"lambda_26/PartitionedCall:output:0bidirectional_26_457949bidirectional_26_457951bidirectional_26_457953bidirectional_26_457955bidirectional_26_457957bidirectional_26_457959*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:����������*(
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8� *U
fPRN
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_457948�
 dense_26/StatefulPartitionedCallStatefulPartitionedCall1bidirectional_26/StatefulPartitionedCall:output:0dense_26_457972dense_26_457974*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:���������*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8� *M
fHRF
D__inference_dense_26_layer_call_and_return_conditional_losses_457971x
IdentityIdentity)dense_26/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:���������p
NoOpNoOp)^bidirectional_26/StatefulPartitionedCall!^dense_26/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:���������: : : : : : : : 2T
(bidirectional_26/StatefulPartitionedCall(bidirectional_26/StatefulPartitionedCall2D
 dense_26/StatefulPartitionedCall dense_26/StatefulPartitionedCall:X T
'
_output_shapes
:���������
)
_user_specified_namelambda_26_input:&"
 
_user_specified_name457949:&"
 
_user_specified_name457951:&"
 
_user_specified_name457953:&"
 
_user_specified_name457955:&"
 
_user_specified_name457957:&"
 
_user_specified_name457959:&"
 
_user_specified_name457972:&"
 
_user_specified_name457974
�	
�
while_cond_460078
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_460078___redundant_placeholder04
0while_while_cond_460078___redundant_placeholder14
0while_while_cond_460078___redundant_placeholder24
0while_while_cond_460078___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�	
�
while_cond_460855
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_460855___redundant_placeholder04
0while_while_cond_460855___redundant_placeholder14
0while_while_cond_460855___redundant_placeholder24
0while_while_cond_460855___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::J F

_output_shapes
: 
,
_user_specified_namewhile/loop_counter:PL

_output_shapes
: 
2
_user_specified_namewhile/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
�
�
"backward_lstm_26_while_cond_459288>
:backward_lstm_26_while_backward_lstm_26_while_loop_counterD
@backward_lstm_26_while_backward_lstm_26_while_maximum_iterations&
"backward_lstm_26_while_placeholder(
$backward_lstm_26_while_placeholder_1(
$backward_lstm_26_while_placeholder_2(
$backward_lstm_26_while_placeholder_3@
<backward_lstm_26_while_less_backward_lstm_26_strided_slice_1V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_459288___redundant_placeholder0V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_459288___redundant_placeholder1V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_459288___redundant_placeholder2V
Rbackward_lstm_26_while_backward_lstm_26_while_cond_459288___redundant_placeholder3#
backward_lstm_26_while_identity
�
backward_lstm_26/while/LessLess"backward_lstm_26_while_placeholder<backward_lstm_26_while_less_backward_lstm_26_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_26/while/IdentityIdentitybackward_lstm_26/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_26_while_identity(backward_lstm_26/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :����������:����������: :::::[ W

_output_shapes
: 
=
_user_specified_name%#backward_lstm_26/while/loop_counter:a]

_output_shapes
: 
C
_user_specified_name+)backward_lstm_26/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:����������:.*
(
_output_shapes
:����������:XT

_output_shapes
: 
:
_user_specified_name" backward_lstm_26/strided_slice_1:

_output_shapes
:"�L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*�
serving_default�
K
lambda_26_input8
!serving_default_lambda_26_input:0���������<
dense_260
StatefulPartitionedCall:0���������tensorflow/serving/predict:��
�
layer-0
layer_with_weights-0
layer-1
layer_with_weights-1
layer-2
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*	&call_and_return_all_conditional_losses

_default_save_signature
	optimizer

signatures"
_tf_keras_sequential
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
forward_layer
backward_layer"
_tf_keras_layer
�
	variables
trainable_variables
regularization_losses
	keras_api
__call__
* &call_and_return_all_conditional_losses

!kernel
"bias"
_tf_keras_layer
X
#0
$1
%2
&3
'4
(5
!6
"7"
trackable_list_wrapper
X
#0
$1
%2
&3
'4
(5
!6
"7"
trackable_list_wrapper
 "
trackable_list_wrapper
�
)non_trainable_variables

*layers
+metrics
,layer_regularization_losses
-layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
�
.trace_0
/trace_12�
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_458318
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_458339�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z.trace_0z/trace_1
�
0trace_0
1trace_12�
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_457978
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_458297�
���
FullArgSpec)
args!�
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z0trace_0z1trace_1
�B�
!__inference__wrapped_model_456243lambda_26_input"�
���
FullArgSpec
args�

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
2
_variables
3_iterations
4_learning_rate
5_index_dict
6
_momentums
7_velocities
8_update_step_xla"
experimentalOptimizer
,
9serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
�
:non_trainable_variables

;layers
<metrics
=layer_regularization_losses
>layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
?trace_0
@trace_12�
*__inference_lambda_26_layer_call_fn_458421
*__inference_lambda_26_layer_call_fn_458426�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z?trace_0z@trace_1
�
Atrace_0
Btrace_12�
E__inference_lambda_26_layer_call_and_return_conditional_losses_458432
E__inference_lambda_26_layer_call_and_return_conditional_losses_458438�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults�

 
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zAtrace_0zBtrace_1
J
#0
$1
%2
&3
'4
(5"
trackable_list_wrapper
J
#0
$1
%2
&3
'4
(5"
trackable_list_wrapper
 "
trackable_list_wrapper
�
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
�
Htrace_0
Itrace_1
Jtrace_2
Ktrace_32�
1__inference_bidirectional_26_layer_call_fn_458455
1__inference_bidirectional_26_layer_call_fn_458472
1__inference_bidirectional_26_layer_call_fn_458489
1__inference_bidirectional_26_layer_call_fn_458506�
���
FullArgSpecG
args?�<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults�
p 

 

 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zHtrace_0zItrace_1zJtrace_2zKtrace_3
�
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_32�
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_458796
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_459086
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_459376
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_459666�
���
FullArgSpecG
args?�<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults�
p 

 

 

 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 zLtrace_0zMtrace_1zNtrace_2zOtrace_3
�
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
V_random_generator
Wcell
X
state_spec"
_tf_keras_rnn_layer
�
Y	variables
Ztrainable_variables
[regularization_losses
\	keras_api
]__call__
*^&call_and_return_all_conditional_losses
__random_generator
`cell
a
state_spec"
_tf_keras_rnn_layer
.
!0
"1"
trackable_list_wrapper
.
!0
"1"
trackable_list_wrapper
 "
trackable_list_wrapper
�
bnon_trainable_variables

clayers
dmetrics
elayer_regularization_losses
flayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
�
gtrace_02�
)__inference_dense_26_layer_call_fn_459675�
���
FullArgSpec
args�

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
annotations� *
 zgtrace_0
�
htrace_02�
D__inference_dense_26_layer_call_and_return_conditional_losses_459685�
���
FullArgSpec
args�

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
annotations� *
 zhtrace_0
": 	�2dense_26/kernel
:2dense_26/bias
D:B	�21bidirectional_26/forward_lstm_26/lstm_cell/kernel
O:M
��2;bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel
>:<�2/bidirectional_26/forward_lstm_26/lstm_cell/bias
E:C	�22bidirectional_26/backward_lstm_26/lstm_cell/kernel
P:N
��2<bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel
?:=�20bidirectional_26/backward_lstm_26/lstm_cell/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
'
i0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_458318lambda_26_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_458339lambda_26_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_457978lambda_26_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_458297lambda_26_input"�
���
FullArgSpec)
args!�
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�
30
j1
k2
l3
m4
n5
o6
p7
q8
r9
s10
t11
u12
v13
w14
x15
y16"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
X
j0
l1
n2
p3
r4
t5
v6
x7"
trackable_list_wrapper
X
k0
m1
o2
q3
s4
u5
w6
y7"
trackable_list_wrapper
�2��
���
FullArgSpec*
args"�

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 0
�B�
$__inference_signature_wrapper_458416lambda_26_input"�
���
FullArgSpec
args� 
varargs
 
varkw
 
defaults
 $

kwonlyargs�
jlambda_26_input
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
*__inference_lambda_26_layer_call_fn_458421inputs"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_lambda_26_layer_call_fn_458426inputs"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_lambda_26_layer_call_and_return_conditional_losses_458432inputs"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_lambda_26_layer_call_and_return_conditional_losses_458438inputs"�
���
FullArgSpec)
args!�
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
 "
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_bidirectional_26_layer_call_fn_458455inputs_0"�
���
FullArgSpecG
args?�<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
1__inference_bidirectional_26_layer_call_fn_458472inputs_0"�
���
FullArgSpecG
args?�<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
1__inference_bidirectional_26_layer_call_fn_458489inputs"�
���
FullArgSpecG
args?�<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
1__inference_bidirectional_26_layer_call_fn_458506inputs"�
���
FullArgSpecG
args?�<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_458796inputs_0"�
���
FullArgSpecG
args?�<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_459086inputs_0"�
���
FullArgSpecG
args?�<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_459376inputs"�
���
FullArgSpecG
args?�<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_459666inputs"�
���
FullArgSpecG
args?�<
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
5
#0
$1
%2"
trackable_list_wrapper
5
#0
$1
%2"
trackable_list_wrapper
 "
trackable_list_wrapper
�

zstates
{non_trainable_variables

|layers
}metrics
~layer_regularization_losses
layer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
0__inference_forward_lstm_26_layer_call_fn_459696
0__inference_forward_lstm_26_layer_call_fn_459707
0__inference_forward_lstm_26_layer_call_fn_459718
0__inference_forward_lstm_26_layer_call_fn_459729�
���
FullArgSpec:
args2�/
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_459874
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_460019
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_460164
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_460309�
���
FullArgSpec:
args2�/
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
"
_generic_user_object
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
�
state_size

#kernel
$recurrent_kernel
%bias"
_tf_keras_layer
 "
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
 "
trackable_list_wrapper
�
�states
�non_trainable_variables
�layers
�metrics
 �layer_regularization_losses
�layer_metrics
Y	variables
Ztrainable_variables
[regularization_losses
]__call__
*^&call_and_return_all_conditional_losses
&^"call_and_return_conditional_losses"
_generic_user_object
�
�trace_0
�trace_1
�trace_2
�trace_32�
1__inference_backward_lstm_26_layer_call_fn_460320
1__inference_backward_lstm_26_layer_call_fn_460331
1__inference_backward_lstm_26_layer_call_fn_460342
1__inference_backward_lstm_26_layer_call_fn_460353�
���
FullArgSpec:
args2�/
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
�
�trace_0
�trace_1
�trace_2
�trace_32�
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_460500
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_460647
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_460794
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_460941�
���
FullArgSpec:
args2�/
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

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1z�trace_2z�trace_3
"
_generic_user_object
�
�	variables
�trainable_variables
�regularization_losses
�	keras_api
�__call__
+�&call_and_return_all_conditional_losses
�_random_generator
�
state_size

&kernel
'recurrent_kernel
(bias"
_tf_keras_layer
 "
trackable_list_wrapper
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
)__inference_dense_26_layer_call_fn_459675inputs"�
���
FullArgSpec
args�

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
annotations� *
 
�B�
D__inference_dense_26_layer_call_and_return_conditional_losses_459685inputs"�
���
FullArgSpec
args�

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
annotations� *
 
R
�	variables
�	keras_api

�total

�count"
_tf_keras_metric
I:G	�28Adam/m/bidirectional_26/forward_lstm_26/lstm_cell/kernel
I:G	�28Adam/v/bidirectional_26/forward_lstm_26/lstm_cell/kernel
T:R
��2BAdam/m/bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel
T:R
��2BAdam/v/bidirectional_26/forward_lstm_26/lstm_cell/recurrent_kernel
C:A�26Adam/m/bidirectional_26/forward_lstm_26/lstm_cell/bias
C:A�26Adam/v/bidirectional_26/forward_lstm_26/lstm_cell/bias
J:H	�29Adam/m/bidirectional_26/backward_lstm_26/lstm_cell/kernel
J:H	�29Adam/v/bidirectional_26/backward_lstm_26/lstm_cell/kernel
U:S
��2CAdam/m/bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel
U:S
��2CAdam/v/bidirectional_26/backward_lstm_26/lstm_cell/recurrent_kernel
D:B�27Adam/m/bidirectional_26/backward_lstm_26/lstm_cell/bias
D:B�27Adam/v/bidirectional_26/backward_lstm_26/lstm_cell/bias
':%	�2Adam/m/dense_26/kernel
':%	�2Adam/v/dense_26/kernel
 :2Adam/m/dense_26/bias
 :2Adam/v/dense_26/bias
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
W0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
0__inference_forward_lstm_26_layer_call_fn_459696inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
0__inference_forward_lstm_26_layer_call_fn_459707inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
0__inference_forward_lstm_26_layer_call_fn_459718inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
0__inference_forward_lstm_26_layer_call_fn_459729inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_459874inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_460019inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_460164inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_460309inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
5
#0
$1
%2"
trackable_list_wrapper
5
#0
$1
%2"
trackable_list_wrapper
 "
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
*__inference_lstm_cell_layer_call_fn_460958
*__inference_lstm_cell_layer_call_fn_460975�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
E__inference_lstm_cell_layer_call_and_return_conditional_losses_461007
E__inference_lstm_cell_layer_call_and_return_conditional_losses_461039�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
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
`0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
�B�
1__inference_backward_lstm_26_layer_call_fn_460320inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
1__inference_backward_lstm_26_layer_call_fn_460331inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
1__inference_backward_lstm_26_layer_call_fn_460342inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
1__inference_backward_lstm_26_layer_call_fn_460353inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_460500inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_460647inputs_0"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_460794inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_460941inputs"�
���
FullArgSpec:
args2�/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
5
&0
'1
(2"
trackable_list_wrapper
5
&0
'1
(2"
trackable_list_wrapper
 "
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
*__inference_lstm_cell_layer_call_fn_461056
*__inference_lstm_cell_layer_call_fn_461073�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
�
�trace_0
�trace_12�
E__inference_lstm_cell_layer_call_and_return_conditional_losses_461105
E__inference_lstm_cell_layer_call_and_return_conditional_losses_461137�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults�
p 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 z�trace_0z�trace_1
"
_generic_user_object
 "
trackable_list_wrapper
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
*__inference_lstm_cell_layer_call_fn_460958inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_lstm_cell_layer_call_fn_460975inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_lstm_cell_layer_call_and_return_conditional_losses_461007inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_lstm_cell_layer_call_and_return_conditional_losses_461039inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
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
*__inference_lstm_cell_layer_call_fn_461056inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
*__inference_lstm_cell_layer_call_fn_461073inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_lstm_cell_layer_call_and_return_conditional_losses_461105inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 
�B�
E__inference_lstm_cell_layer_call_and_return_conditional_losses_461137inputsstates_0states_1"�
���
FullArgSpec+
args#� 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs� 
kwonlydefaults
 
annotations� *
 �
!__inference__wrapped_model_456243y#$%&'(!"8�5
.�+
)�&
lambda_26_input���������
� "3�0
.
dense_26"�
dense_26����������
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_460500�&'(O�L
E�B
4�1
/�,
inputs_0������������������

 
p

 
� "-�*
#� 
tensor_0����������
� �
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_460647�&'(O�L
E�B
4�1
/�,
inputs_0������������������

 
p 

 
� "-�*
#� 
tensor_0����������
� �
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_460794�&'(Q�N
G�D
6�3
inputs'���������������������������

 
p

 
� "-�*
#� 
tensor_0����������
� �
L__inference_backward_lstm_26_layer_call_and_return_conditional_losses_460941�&'(Q�N
G�D
6�3
inputs'���������������������������

 
p 

 
� "-�*
#� 
tensor_0����������
� �
1__inference_backward_lstm_26_layer_call_fn_460320z&'(O�L
E�B
4�1
/�,
inputs_0������������������

 
p

 
� ""�
unknown�����������
1__inference_backward_lstm_26_layer_call_fn_460331z&'(O�L
E�B
4�1
/�,
inputs_0������������������

 
p 

 
� ""�
unknown�����������
1__inference_backward_lstm_26_layer_call_fn_460342|&'(Q�N
G�D
6�3
inputs'���������������������������

 
p

 
� ""�
unknown�����������
1__inference_backward_lstm_26_layer_call_fn_460353|&'(Q�N
G�D
6�3
inputs'���������������������������

 
p 

 
� ""�
unknown�����������
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_458796�#$%&'(\�Y
R�O
=�:
8�5
inputs_0'���������������������������
p

 

 

 
� "-�*
#� 
tensor_0����������
� �
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_459086�#$%&'(\�Y
R�O
=�:
8�5
inputs_0'���������������������������
p 

 

 

 
� "-�*
#� 
tensor_0����������
� �
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_459376|#$%&'(C�@
9�6
$�!
inputs���������
p

 

 

 
� "-�*
#� 
tensor_0����������
� �
L__inference_bidirectional_26_layer_call_and_return_conditional_losses_459666|#$%&'(C�@
9�6
$�!
inputs���������
p 

 

 

 
� "-�*
#� 
tensor_0����������
� �
1__inference_bidirectional_26_layer_call_fn_458455�#$%&'(\�Y
R�O
=�:
8�5
inputs_0'���������������������������
p

 

 

 
� ""�
unknown�����������
1__inference_bidirectional_26_layer_call_fn_458472�#$%&'(\�Y
R�O
=�:
8�5
inputs_0'���������������������������
p 

 

 

 
� ""�
unknown�����������
1__inference_bidirectional_26_layer_call_fn_458489q#$%&'(C�@
9�6
$�!
inputs���������
p

 

 

 
� ""�
unknown�����������
1__inference_bidirectional_26_layer_call_fn_458506q#$%&'(C�@
9�6
$�!
inputs���������
p 

 

 

 
� ""�
unknown�����������
D__inference_dense_26_layer_call_and_return_conditional_losses_459685d!"0�-
&�#
!�
inputs����������
� ",�)
"�
tensor_0���������
� �
)__inference_dense_26_layer_call_fn_459675Y!"0�-
&�#
!�
inputs����������
� "!�
unknown����������
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_459874�#$%O�L
E�B
4�1
/�,
inputs_0������������������

 
p

 
� "-�*
#� 
tensor_0����������
� �
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_460019�#$%O�L
E�B
4�1
/�,
inputs_0������������������

 
p 

 
� "-�*
#� 
tensor_0����������
� �
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_460164�#$%Q�N
G�D
6�3
inputs'���������������������������

 
p

 
� "-�*
#� 
tensor_0����������
� �
K__inference_forward_lstm_26_layer_call_and_return_conditional_losses_460309�#$%Q�N
G�D
6�3
inputs'���������������������������

 
p 

 
� "-�*
#� 
tensor_0����������
� �
0__inference_forward_lstm_26_layer_call_fn_459696z#$%O�L
E�B
4�1
/�,
inputs_0������������������

 
p

 
� ""�
unknown�����������
0__inference_forward_lstm_26_layer_call_fn_459707z#$%O�L
E�B
4�1
/�,
inputs_0������������������

 
p 

 
� ""�
unknown�����������
0__inference_forward_lstm_26_layer_call_fn_459718|#$%Q�N
G�D
6�3
inputs'���������������������������

 
p

 
� ""�
unknown�����������
0__inference_forward_lstm_26_layer_call_fn_459729|#$%Q�N
G�D
6�3
inputs'���������������������������

 
p 

 
� ""�
unknown�����������
E__inference_lambda_26_layer_call_and_return_conditional_losses_458432k7�4
-�*
 �
inputs���������

 
p
� "0�-
&�#
tensor_0���������
� �
E__inference_lambda_26_layer_call_and_return_conditional_losses_458438k7�4
-�*
 �
inputs���������

 
p 
� "0�-
&�#
tensor_0���������
� �
*__inference_lambda_26_layer_call_fn_458421`7�4
-�*
 �
inputs���������

 
p
� "%�"
unknown����������
*__inference_lambda_26_layer_call_fn_458426`7�4
-�*
 �
inputs���������

 
p 
� "%�"
unknown����������
E__inference_lstm_cell_layer_call_and_return_conditional_losses_461007�#$%��
x�u
 �
inputs���������
M�J
#� 
states_0����������
#� 
states_1����������
p
� "���
��~
%�"

tensor_0_0����������
U�R
'�$
tensor_0_1_0����������
'�$
tensor_0_1_1����������
� �
E__inference_lstm_cell_layer_call_and_return_conditional_losses_461039�#$%��
x�u
 �
inputs���������
M�J
#� 
states_0����������
#� 
states_1����������
p 
� "���
��~
%�"

tensor_0_0����������
U�R
'�$
tensor_0_1_0����������
'�$
tensor_0_1_1����������
� �
E__inference_lstm_cell_layer_call_and_return_conditional_losses_461105�&'(��
x�u
 �
inputs���������
M�J
#� 
states_0����������
#� 
states_1����������
p
� "���
��~
%�"

tensor_0_0����������
U�R
'�$
tensor_0_1_0����������
'�$
tensor_0_1_1����������
� �
E__inference_lstm_cell_layer_call_and_return_conditional_losses_461137�&'(��
x�u
 �
inputs���������
M�J
#� 
states_0����������
#� 
states_1����������
p 
� "���
��~
%�"

tensor_0_0����������
U�R
'�$
tensor_0_1_0����������
'�$
tensor_0_1_1����������
� �
*__inference_lstm_cell_layer_call_fn_460958�#$%��
x�u
 �
inputs���������
M�J
#� 
states_0����������
#� 
states_1����������
p
� "{�x
#� 
tensor_0����������
Q�N
%�"

tensor_1_0����������
%�"

tensor_1_1�����������
*__inference_lstm_cell_layer_call_fn_460975�#$%��
x�u
 �
inputs���������
M�J
#� 
states_0����������
#� 
states_1����������
p 
� "{�x
#� 
tensor_0����������
Q�N
%�"

tensor_1_0����������
%�"

tensor_1_1�����������
*__inference_lstm_cell_layer_call_fn_461056�&'(��
x�u
 �
inputs���������
M�J
#� 
states_0����������
#� 
states_1����������
p
� "{�x
#� 
tensor_0����������
Q�N
%�"

tensor_1_0����������
%�"

tensor_1_1�����������
*__inference_lstm_cell_layer_call_fn_461073�&'(��
x�u
 �
inputs���������
M�J
#� 
states_0����������
#� 
states_1����������
p 
� "{�x
#� 
tensor_0����������
Q�N
%�"

tensor_1_0����������
%�"

tensor_1_1�����������
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_457978z#$%&'(!"@�=
6�3
)�&
lambda_26_input���������
p

 
� ",�)
"�
tensor_0���������
� �
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_458297z#$%&'(!"@�=
6�3
)�&
lambda_26_input���������
p 

 
� ",�)
"�
tensor_0���������
� �
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_458318o#$%&'(!"@�=
6�3
)�&
lambda_26_input���������
p

 
� "!�
unknown����������
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_458339o#$%&'(!"@�=
6�3
)�&
lambda_26_input���������
p 

 
� "!�
unknown����������
$__inference_signature_wrapper_458416�#$%&'(!"K�H
� 
A�>
<
lambda_26_input)�&
lambda_26_input���������"3�0
.
dense_26"�
dense_26���������