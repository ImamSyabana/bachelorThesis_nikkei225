зр(
лї
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
А
BiasAdd

value"T	
bias"T
output"T""
Ttype:
2	"-
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
$
DisableCopyOnRead
resourceИ
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
Ж
MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( И
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
_
Pad

input"T
paddings"	Tpaddings
output"T"	
Ttype"
	Tpaddingstype0:
2	
≥
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
d
Shape

input"T&
output"out_typeКнout_type"	
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
N
Squeeze

input"T
output"T"	
Ttype"
squeeze_dims	list(int)
 (
Ѕ
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
executor_typestring И®
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
ч
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
-
Tanh
x"T
y"T"
Ttype:

2
∞
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleКйиelement_dtype"
element_dtypetype"

shape_typetype:
2	
Я
TensorListReserve
element_shape"
shape_type
num_elements(
handleКйиelement_dtype"
element_dtypetype"

shape_typetype:
2	
И
TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint€€€€€€€€€
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
∞
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 И"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48Иƒ'
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
§
Adam/v/dense_1/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/v/dense_1/bias/*
dtype0*
shape:*$
shared_nameAdam/v/dense_1/bias
w
'Adam/v/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/bias*
_output_shapes
:*
dtype0
§
Adam/m/dense_1/biasVarHandleOp*
_output_shapes
: *$

debug_nameAdam/m/dense_1/bias/*
dtype0*
shape:*$
shared_nameAdam/m/dense_1/bias
w
'Adam/m/dense_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/bias*
_output_shapes
:*
dtype0
ѓ
Adam/v/dense_1/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/dense_1/kernel/*
dtype0*
shape:	†*&
shared_nameAdam/v/dense_1/kernel
А
)Adam/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/kernel*
_output_shapes
:	†*
dtype0
ѓ
Adam/m/dense_1/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/dense_1/kernel/*
dtype0*
shape:	†*&
shared_nameAdam/m/dense_1/kernel
А
)Adam/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/kernel*
_output_shapes
:	†*
dtype0
ј
Adam/v/lstm_1/lstm_cell/biasVarHandleOp*
_output_shapes
: *-

debug_nameAdam/v/lstm_1/lstm_cell/bias/*
dtype0*
shape:А*-
shared_nameAdam/v/lstm_1/lstm_cell/bias
К
0Adam/v/lstm_1/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/v/lstm_1/lstm_cell/bias*
_output_shapes	
:А*
dtype0
ј
Adam/m/lstm_1/lstm_cell/biasVarHandleOp*
_output_shapes
: *-

debug_nameAdam/m/lstm_1/lstm_cell/bias/*
dtype0*
shape:А*-
shared_nameAdam/m/lstm_1/lstm_cell/bias
К
0Adam/m/lstm_1/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/m/lstm_1/lstm_cell/bias*
_output_shapes	
:А*
dtype0
й
(Adam/v/lstm_1/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *9

debug_name+)Adam/v/lstm_1/lstm_cell/recurrent_kernel/*
dtype0*
shape:
†А*9
shared_name*(Adam/v/lstm_1/lstm_cell/recurrent_kernel
І
<Adam/v/lstm_1/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp(Adam/v/lstm_1/lstm_cell/recurrent_kernel* 
_output_shapes
:
†А*
dtype0
й
(Adam/m/lstm_1/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *9

debug_name+)Adam/m/lstm_1/lstm_cell/recurrent_kernel/*
dtype0*
shape:
†А*9
shared_name*(Adam/m/lstm_1/lstm_cell/recurrent_kernel
І
<Adam/m/lstm_1/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp(Adam/m/lstm_1/lstm_cell/recurrent_kernel* 
_output_shapes
:
†А*
dtype0
 
Adam/v/lstm_1/lstm_cell/kernelVarHandleOp*
_output_shapes
: */

debug_name!Adam/v/lstm_1/lstm_cell/kernel/*
dtype0*
shape:	 А*/
shared_name Adam/v/lstm_1/lstm_cell/kernel
Т
2Adam/v/lstm_1/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/v/lstm_1/lstm_cell/kernel*
_output_shapes
:	 А*
dtype0
 
Adam/m/lstm_1/lstm_cell/kernelVarHandleOp*
_output_shapes
: */

debug_name!Adam/m/lstm_1/lstm_cell/kernel/*
dtype0*
shape:	 А*/
shared_name Adam/m/lstm_1/lstm_cell/kernel
Т
2Adam/m/lstm_1/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/m/lstm_1/lstm_cell/kernel*
_output_shapes
:	 А*
dtype0
І
Adam/v/conv1d_1/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/v/conv1d_1/bias/*
dtype0*
shape: *%
shared_nameAdam/v/conv1d_1/bias
y
(Adam/v/conv1d_1/bias/Read/ReadVariableOpReadVariableOpAdam/v/conv1d_1/bias*
_output_shapes
: *
dtype0
І
Adam/m/conv1d_1/biasVarHandleOp*
_output_shapes
: *%

debug_nameAdam/m/conv1d_1/bias/*
dtype0*
shape: *%
shared_nameAdam/m/conv1d_1/bias
y
(Adam/m/conv1d_1/bias/Read/ReadVariableOpReadVariableOpAdam/m/conv1d_1/bias*
_output_shapes
: *
dtype0
µ
Adam/v/conv1d_1/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/v/conv1d_1/kernel/*
dtype0*
shape: *'
shared_nameAdam/v/conv1d_1/kernel
Е
*Adam/v/conv1d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/conv1d_1/kernel*"
_output_shapes
: *
dtype0
µ
Adam/m/conv1d_1/kernelVarHandleOp*
_output_shapes
: *'

debug_nameAdam/m/conv1d_1/kernel/*
dtype0*
shape: *'
shared_nameAdam/m/conv1d_1/kernel
Е
*Adam/m/conv1d_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/conv1d_1/kernel*"
_output_shapes
: *
dtype0
О
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
В
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
Ђ
lstm_1/lstm_cell/biasVarHandleOp*
_output_shapes
: *&

debug_namelstm_1/lstm_cell/bias/*
dtype0*
shape:А*&
shared_namelstm_1/lstm_cell/bias
|
)lstm_1/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell/bias*
_output_shapes	
:А*
dtype0
‘
!lstm_1/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *2

debug_name$"lstm_1/lstm_cell/recurrent_kernel/*
dtype0*
shape:
†А*2
shared_name#!lstm_1/lstm_cell/recurrent_kernel
Щ
5lstm_1/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp!lstm_1/lstm_cell/recurrent_kernel* 
_output_shapes
:
†А*
dtype0
µ
lstm_1/lstm_cell/kernelVarHandleOp*
_output_shapes
: *(

debug_namelstm_1/lstm_cell/kernel/*
dtype0*
shape:	 А*(
shared_namelstm_1/lstm_cell/kernel
Д
+lstm_1/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm_1/lstm_cell/kernel*
_output_shapes
:	 А*
dtype0
П
dense_1/biasVarHandleOp*
_output_shapes
: *

debug_namedense_1/bias/*
dtype0*
shape:*
shared_namedense_1/bias
i
 dense_1/bias/Read/ReadVariableOpReadVariableOpdense_1/bias*
_output_shapes
:*
dtype0
Ъ
dense_1/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_1/kernel/*
dtype0*
shape:	†*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	†*
dtype0
Т
conv1d_1/biasVarHandleOp*
_output_shapes
: *

debug_nameconv1d_1/bias/*
dtype0*
shape: *
shared_nameconv1d_1/bias
k
!conv1d_1/bias/Read/ReadVariableOpReadVariableOpconv1d_1/bias*
_output_shapes
: *
dtype0
†
conv1d_1/kernelVarHandleOp*
_output_shapes
: * 

debug_nameconv1d_1/kernel/*
dtype0*
shape: * 
shared_nameconv1d_1/kernel
w
#conv1d_1/kernel/Read/ReadVariableOpReadVariableOpconv1d_1/kernel*"
_output_shapes
: *
dtype0
Й
serving_default_conv1d_1_inputPlaceholder*+
_output_shapes
:€€€€€€€€€*
dtype0* 
shape:€€€€€€€€€
ў
StatefulPartitionedCallStatefulPartitionedCallserving_default_conv1d_1_inputconv1d_1/kernelconv1d_1/biaslstm_1/lstm_cell/kernel!lstm_1/lstm_cell/recurrent_kernellstm_1/lstm_cell/biasdense_1/kerneldense_1/bias*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8В *.
f)R'
%__inference_signature_wrapper_1800165

NoOpNoOp
к1
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*•1
valueЫ1BШ1 BС1
Ѕ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
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
»
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op*
Ѕ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
¶
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias*
5
0
1
'2
(3
)4
%5
&6*
5
0
1
'2
(3
)4
%5
&6*
* 
∞
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*

/trace_0
0trace_1* 

1trace_0
2trace_1* 
* 
Б
3
_variables
4_iterations
5_learning_rate
6_index_dict
7
_momentums
8_velocities
9_update_step_xla*

:serving_default* 

0
1*

0
1*
* 
У
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

@trace_0* 

Atrace_0* 
_Y
VARIABLE_VALUEconv1d_1/kernel6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEconv1d_1/bias4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUE*
* 

'0
(1
)2*

'0
(1
)2*
* 
Я

Bstates
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
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
* 
г
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
V_random_generator
W
state_size

'kernel
(recurrent_kernel
)bias*
* 

%0
&1*

%0
&1*
* 
У
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

]trace_0* 

^trace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUElstm_1/lstm_cell/kernel&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!lstm_1/lstm_cell/recurrent_kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUElstm_1/lstm_cell/bias&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

_0*
* 
* 
* 
* 
* 
* 
r
40
`1
a2
b3
c4
d5
e6
f7
g8
h9
i10
j11
k12
l13
m14*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
5
`0
b1
d2
f3
h4
j5
l6*
5
a0
c1
e2
g3
i4
k5
m6*
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

0*
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
'0
(1
)2*

'0
(1
)2*
* 
У
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses*
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
8
s	variables
t	keras_api
	utotal
	vcount*
a[
VARIABLE_VALUEAdam/m/conv1d_1/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/conv1d_1/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/conv1d_1/bias1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/conv1d_1/bias1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/lstm_1/lstm_cell/kernel1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/lstm_1/lstm_cell/kernel1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE(Adam/m/lstm_1/lstm_cell/recurrent_kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE(Adam/v/lstm_1/lstm_cell/recurrent_kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/lstm_1/lstm_cell/bias1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/lstm_1/lstm_cell/bias2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_1/kernel2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_1/kernel2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_1/bias2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_1/bias2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
* 
* 
* 
* 
* 

u0
v1*

s	variables*
SM
VARIABLE_VALUEtotal4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUE*
SM
VARIABLE_VALUEcount4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
т
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenameconv1d_1/kernelconv1d_1/biasdense_1/kerneldense_1/biaslstm_1/lstm_cell/kernel!lstm_1/lstm_cell/recurrent_kernellstm_1/lstm_cell/bias	iterationlearning_rateAdam/m/conv1d_1/kernelAdam/v/conv1d_1/kernelAdam/m/conv1d_1/biasAdam/v/conv1d_1/biasAdam/m/lstm_1/lstm_cell/kernelAdam/v/lstm_1/lstm_cell/kernel(Adam/m/lstm_1/lstm_cell/recurrent_kernel(Adam/v/lstm_1/lstm_cell/recurrent_kernelAdam/m/lstm_1/lstm_cell/biasAdam/v/lstm_1/lstm_cell/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biastotalcountConst*&
Tin
2*
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
GPU 2J 8В *)
f$R"
 __inference__traced_save_1802143
н
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenameconv1d_1/kernelconv1d_1/biasdense_1/kerneldense_1/biaslstm_1/lstm_cell/kernel!lstm_1/lstm_cell/recurrent_kernellstm_1/lstm_cell/bias	iterationlearning_rateAdam/m/conv1d_1/kernelAdam/v/conv1d_1/kernelAdam/m/conv1d_1/biasAdam/v/conv1d_1/biasAdam/m/lstm_1/lstm_cell/kernelAdam/v/lstm_1/lstm_cell/kernel(Adam/m/lstm_1/lstm_cell/recurrent_kernel(Adam/v/lstm_1/lstm_cell/recurrent_kernelAdam/m/lstm_1/lstm_cell/biasAdam/v/lstm_1/lstm_cell/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biastotalcount*%
Tin
2*
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
GPU 2J 8В *,
f'R%
#__inference__traced_restore_1802227‘√&
й
Є
(__inference_lstm_1_layer_call_fn_1800203
inputs_0
unknown:	 А
	unknown_0:
†А
	unknown_1:	А
identityИҐStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_1_layer_call_and_return_conditional_losses_1798686p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
"
_user_specified_name
inputs_0:'#
!
_user_specified_name	1800195:'#
!
_user_specified_name	1800197:'#
!
_user_specified_name	1800199
х 
з
=__inference___backward_gpu_lstm_with_fallback_1799873_1800049
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:€€€€€€€€€†e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:€€€€€€€€€†a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:€€€€€€€€€†a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:€€€€€€€€€†O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: О
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::нѕЂ
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕ•
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Г
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕ©
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:€€€€€€€€€†∆
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:€€€€€€€€€†Л
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕЖ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ъ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*,
_output_shapes
:€€€€€€€€€†*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:•
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:А Ц
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:–
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:€€€€€€€€€ Г
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::нѕ∆
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†З
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::нѕ 
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А(k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:А»j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:†j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:†ш
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::м
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А(с
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:А»р
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:†р
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:†m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       Ґ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
††i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†§
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:†i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†§
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:†Ь
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ґ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:Є
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:Є
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:Є
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:є
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:є
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:є
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:є
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††з
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А
ѓ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 Аґ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
†А\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Аh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А 
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::“
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А÷
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Аr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:€€€€€€€€€ u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 Аi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
†Аd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*В
_input_shapesр
н:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†: :€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†::€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:А ::€€€€€€€€€†:€€€€€€€€€†: ::::::::: : : : *=
api_implements+)lstm_3ccbd0de-6613-430a-be8e-d03c53c27a2d*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_1800048*
go_backwards( *

time_major( :. *
(
_output_shapes
:€€€€€€€€€†:2.
,
_output_shapes
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:

_output_shapes
: :WS
(
_output_shapes
:€€€€€€€€€†
'
_user_specified_namestrided_slice:VR
,
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
CudnnRNN:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:V
R
+
_output_shapes
:€€€€€€€€€ 
#
_user_specified_name	transpose:XT
,
_output_shapes
:€€€€€€€€€†
$
_user_specified_name
ExpandDims:ZV
,
_output_shapes
:€€€€€€€€€†
&
_user_specified_nameExpandDims_1:FB

_output_shapes

:А 
"
_user_specified_name
concat_1:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:C?

_output_shapes
: 
%
_user_specified_nameconcat/axis
ИA
Ќ
*__inference_gpu_lstm_with_fallback_1798507

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	 †:	 †:	 †:	 †*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
††:
††:
††:
††*
	num_splitY

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А
S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : •
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:†:†:†:†:†:†:†:†*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	† Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:А»\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:†\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:†]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:†]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:†]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:†]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:†]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:†]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:†O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : †
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:А ÷
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:€€€€€€€€€€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€†*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Д
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€†d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:€€€€€€€€€†]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_a8f5f535-452d-447c-a4d9-2e5b9d0f5d18*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
•

∆
while_cond_1799231
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_1799231___redundant_placeholder05
1while_while_cond_1799231___redundant_placeholder15
1while_while_cond_1799231___redundant_placeholder25
1while_while_cond_1799231___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€†:€€€€€€€€€†: :::::J F
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
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:
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
•

∆
while_cond_1801592
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_1801592___redundant_placeholder05
1while_while_cond_1801592___redundant_placeholder15
1while_while_cond_1801592___redundant_placeholder25
1while_while_cond_1801592___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€†:€€€€€€€€€†: :::::J F
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
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:
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
Ђ,
–
while_body_1801164
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€АГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€Аw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:€€€€€€€€€АW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ћ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€†c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€†m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€†[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€†h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€†g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€†X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:€€€€€€€€€†r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€†`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А:J F
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
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
:	 А
 
_user_specified_namekernel:R	N
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A
=

_output_shapes	
:А

_user_specified_namebias
“;
Ѕ
!__inference_standard_lstm_1798413

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
€€€€€€€€€≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:€€€€€€€€€А_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€†W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€†T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:€€€€€€€€€†O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€†V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€†U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€†L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:€€€€€€€€€†n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€†   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : °
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А* 
_read_only_resource_inputs
 *
bodyR
while_body_1798327*
condR
while_cond_1798326*e
output_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€†   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€†*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€†*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€†^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:€€€€€€€€€†Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:€€€€€€€€€†Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_a8f5f535-452d-447c-a4d9-2e5b9d0f5d18*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
х 
з
=__inference___backward_gpu_lstm_with_fallback_1799413_1799589
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:€€€€€€€€€†e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:€€€€€€€€€†a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:€€€€€€€€€†a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:€€€€€€€€€†O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: О
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::нѕЂ
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕ•
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Г
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕ©
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:€€€€€€€€€†∆
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:€€€€€€€€€†Л
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕЖ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ъ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*,
_output_shapes
:€€€€€€€€€†*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:•
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:А Ц
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:–
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:€€€€€€€€€ Г
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::нѕ∆
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†З
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::нѕ 
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А(k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:А»j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:†j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:†ш
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::м
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А(с
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:А»р
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:†р
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:†m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       Ґ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
††i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†§
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:†i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†§
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:†Ь
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ґ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:Є
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:Є
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:Є
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:є
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:є
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:є
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:є
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††з
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А
ѓ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 Аґ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
†А\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Аh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А 
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::“
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А÷
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Аr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:€€€€€€€€€ u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 Аi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
†Аd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*В
_input_shapesр
н:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†: :€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†::€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:А ::€€€€€€€€€†:€€€€€€€€€†: ::::::::: : : : *=
api_implements+)lstm_ca49e71a-1961-4b77-a2fd-efcec9ce0585*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_1799588*
go_backwards( *

time_major( :. *
(
_output_shapes
:€€€€€€€€€†:2.
,
_output_shapes
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:

_output_shapes
: :WS
(
_output_shapes
:€€€€€€€€€†
'
_user_specified_namestrided_slice:VR
,
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
CudnnRNN:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:V
R
+
_output_shapes
:€€€€€€€€€ 
#
_user_specified_name	transpose:XT
,
_output_shapes
:€€€€€€€€€†
$
_user_specified_name
ExpandDims:ZV
,
_output_shapes
:€€€€€€€€€†
&
_user_specified_nameExpandDims_1:FB

_output_shapes

:А 
"
_user_specified_name
concat_1:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:C?

_output_shapes
: 
%
_user_specified_nameconcat/axis
Ј;
Ѕ
!__inference_standard_lstm_1801250

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
€€€€€€€€€≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:€€€€€€€€€А_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€†W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€†T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:€€€€€€€€€†O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€†V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€†U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€†L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:€€€€€€€€€†n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€†   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : °
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А* 
_read_only_resource_inputs
 *
bodyR
while_body_1801164*
condR
while_cond_1801163*e
output_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€†   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€†*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€†*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€†^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:€€€€€€€€€†Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:€€€€€€€€€†Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_e2dac475-f5d7-493a-a518-db95e30ef103*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
£
ј
C__inference_lstm_1_layer_call_and_return_conditional_losses_1801094
inputs_0/
read_readvariableop_resource:	 А2
read_1_readvariableop_resource:
†А-
read_2_readvariableop_resource:	А

identity_3ИҐRead/ReadVariableOpҐRead_1/ReadVariableOpҐRead_2/ReadVariableOpK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
B :†s
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
:€€€€€€€€€†S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :†w
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
:€€€€€€€€€†q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 А*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 Аv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
†А*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
†Аq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Ає
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference_standard_lstm_1800821j

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€ : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
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
љЋ
з
=__inference___backward_gpu_lstm_with_fallback_1800916_1801092
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:€€€€€€€€€†e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:€€€€€€€€€†a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:€€€€€€€€€†a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:€€€€€€€€€†O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: О
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::нѕЂ
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕ•
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Г
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕ©
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:€€€€€€€€€†∆
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:€€€€€€€€€†Л
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕЖ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:£
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ѓ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:А Ц
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:ў
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ Г
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::нѕ∆
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†З
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::нѕ 
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А(k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:А»j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:†j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:†ш
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::м
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А(с
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:А»р
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:†р
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:†m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       Ґ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
††i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†§
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:†i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†§
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:†Ь
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ґ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:Є
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:Є
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:Є
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:є
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:є
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:є
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:є
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††з
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А
ѓ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 Аґ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
†А\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Аh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А 
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::“
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А÷
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 Аi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
†Аd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ф
_input_shapesВ
€:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†: :€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€€€€€€€€€€†::€€€€€€€€€€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:А ::€€€€€€€€€†:€€€€€€€€€†: ::::::::: : : : *=
api_implements+)lstm_d89a24ba-f568-46f6-8273-6da96719f439*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_1801091*
go_backwards( *

time_major( :. *
(
_output_shapes
:€€€€€€€€€†:2.
,
_output_shapes
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:

_output_shapes
: :WS
(
_output_shapes
:€€€€€€€€€†
'
_user_specified_namestrided_slice:VR
,
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
CudnnRNN:_[
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†
"
_user_specified_name
CudnnRNN:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:_
[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
#
_user_specified_name	transpose:XT
,
_output_shapes
:€€€€€€€€€†
$
_user_specified_name
ExpandDims:ZV
,
_output_shapes
:€€€€€€€€€†
&
_user_specified_nameExpandDims_1:FB

_output_shapes

:А 
"
_user_specified_name
concat_1:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:C?

_output_shapes
: 
%
_user_specified_nameconcat/axis
Ђ,
–
while_body_1799692
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€АГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€Аw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:€€€€€€€€€АW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ћ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€†c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€†m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€†[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€†h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€†g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€†X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:€€€€€€€€€†r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€†`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А:J F
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
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
:	 А
 
_user_specified_namekernel:R	N
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A
=

_output_shapes	
:А

_user_specified_namebias
£
ј
C__inference_lstm_1_layer_call_and_return_conditional_losses_1800665
inputs_0/
read_readvariableop_resource:	 А2
read_1_readvariableop_resource:
†А-
read_2_readvariableop_resource:	А

identity_3ИҐRead/ReadVariableOpҐRead_1/ReadVariableOpҐRead_2/ReadVariableOpK
ShapeShapeinputs_0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
B :†s
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
:€€€€€€€€€†S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :†w
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
:€€€€€€€€€†q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 А*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 Аv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
†А*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
†Аq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:Ає
PartitionedCallPartitionedCallinputs_0zeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference_standard_lstm_1800392j

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€ : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
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
Ф
ђ
%__inference_signature_wrapper_1800165
conv1d_1_input
unknown: 
	unknown_0: 
	unknown_1:	 А
	unknown_2:
†А
	unknown_3:	А
	unknown_4:	†
	unknown_5:
identityИҐStatefulPartitionedCallА
StatefulPartitionedCallStatefulPartitionedCallconv1d_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8В *+
f&R$
"__inference__wrapped_model_1798257o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:€€€€€€€€€
(
_user_specified_nameconv1d_1_input:'#
!
_user_specified_name	1800149:'#
!
_user_specified_name	1800151:'#
!
_user_specified_name	1800153:'#
!
_user_specified_name	1800155:'#
!
_user_specified_name	1800157:'#
!
_user_specified_name	1800159:'#
!
_user_specified_name	1800161
—
ґ
(__inference_lstm_1_layer_call_fn_1800225

inputs
unknown:	 А
	unknown_0:
†А
	unknown_1:	А
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_1_layer_call_and_return_conditional_losses_1799591p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:'#
!
_user_specified_name	1800217:'#
!
_user_specified_name	1800219:'#
!
_user_specified_name	1800221
ИA
Ќ
*__inference_gpu_lstm_with_fallback_1798936

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	 †:	 †:	 †:	 †*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
††:
††:
††:
††*
	num_splitY

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А
S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : •
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:†:†:†:†:†:†:†:†*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	† Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:А»\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:†\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:†]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:†]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:†]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:†]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:†]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:†]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:†O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : †
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:А ÷
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:€€€€€€€€€€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€†*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Д
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€†d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:€€€€€€€€€†]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_e50da1fd-a6fc-421b-a64b-5e15fff47e4f*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
Ђ,
–
while_body_1800306
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€АГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€Аw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:€€€€€€€€€АW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ћ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€†c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€†m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€†[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€†h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€†g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€†X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:€€€€€€€€€†r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€†`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А:J F
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
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
:	 А
 
_user_specified_namekernel:R	N
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A
=

_output_shapes	
:А

_user_specified_namebias
ЪL
Ґ
(__forward_gpu_lstm_with_fallback_1798248

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
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
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	 †:	 †:	 †:	 †*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
††:
††:
††:
††*
	num_splitY

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А
S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : •
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:†:†:†:†:†:†:†:†*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	† Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:А»\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:†\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:†]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:†]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:†]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:†]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:†]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:†]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:†O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0—
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Њ
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:€€€€€€€€€†d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:€€€€€€€€€†]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
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
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_92a95860-3442-4484-b993-b6f63c7d4c4b*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_1798073_1798249*
go_backwards( *

time_major( :S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
«R
к
"__inference__wrapped_model_1798257
conv1d_1_inputg
Qmodel_10_cnn_lstm_univariate_conv1d_1_conv1d_expanddims_1_readvariableop_resource: S
Emodel_10_cnn_lstm_univariate_conv1d_1_biasadd_readvariableop_resource: S
@model_10_cnn_lstm_univariate_lstm_1_read_readvariableop_resource:	 АV
Bmodel_10_cnn_lstm_univariate_lstm_1_read_1_readvariableop_resource:
†АQ
Bmodel_10_cnn_lstm_univariate_lstm_1_read_2_readvariableop_resource:	АV
Cmodel_10_cnn_lstm_univariate_dense_1_matmul_readvariableop_resource:	†R
Dmodel_10_cnn_lstm_univariate_dense_1_biasadd_readvariableop_resource:
identityИҐ<model_10_CNN-LSTM_univariate/conv1d_1/BiasAdd/ReadVariableOpҐHmodel_10_CNN-LSTM_univariate/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpҐ;model_10_CNN-LSTM_univariate/dense_1/BiasAdd/ReadVariableOpҐ:model_10_CNN-LSTM_univariate/dense_1/MatMul/ReadVariableOpҐ7model_10_CNN-LSTM_univariate/lstm_1/Read/ReadVariableOpҐ9model_10_CNN-LSTM_univariate/lstm_1/Read_1/ReadVariableOpҐ9model_10_CNN-LSTM_univariate/lstm_1/Read_2/ReadVariableOpЫ
2model_10_CNN-LSTM_univariate/conv1d_1/Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       ≥
)model_10_CNN-LSTM_univariate/conv1d_1/PadPadconv1d_1_input;model_10_CNN-LSTM_univariate/conv1d_1/Pad/paddings:output:0*
T0*+
_output_shapes
:€€€€€€€€€Ж
;model_10_CNN-LSTM_univariate/conv1d_1/Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€щ
7model_10_CNN-LSTM_univariate/conv1d_1/Conv1D/ExpandDims
ExpandDims2model_10_CNN-LSTM_univariate/conv1d_1/Pad:output:0Dmodel_10_CNN-LSTM_univariate/conv1d_1/Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€ё
Hmodel_10_CNN-LSTM_univariate/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpReadVariableOpQmodel_10_cnn_lstm_univariate_conv1d_1_conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0
=model_10_CNN-LSTM_univariate/conv1d_1/Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : Т
9model_10_CNN-LSTM_univariate/conv1d_1/Conv1D/ExpandDims_1
ExpandDimsPmodel_10_CNN-LSTM_univariate/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp:value:0Fmodel_10_CNN-LSTM_univariate/conv1d_1/Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: Я
,model_10_CNN-LSTM_univariate/conv1d_1/Conv1DConv2D@model_10_CNN-LSTM_univariate/conv1d_1/Conv1D/ExpandDims:output:0Bmodel_10_CNN-LSTM_univariate/conv1d_1/Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingVALID*
strides
ћ
4model_10_CNN-LSTM_univariate/conv1d_1/Conv1D/SqueezeSqueeze5model_10_CNN-LSTM_univariate/conv1d_1/Conv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€ *
squeeze_dims

э€€€€€€€€Њ
<model_10_CNN-LSTM_univariate/conv1d_1/BiasAdd/ReadVariableOpReadVariableOpEmodel_10_cnn_lstm_univariate_conv1d_1_biasadd_readvariableop_resource*
_output_shapes
: *
dtype0у
-model_10_CNN-LSTM_univariate/conv1d_1/BiasAddBiasAdd=model_10_CNN-LSTM_univariate/conv1d_1/Conv1D/Squeeze:output:0Dmodel_10_CNN-LSTM_univariate/conv1d_1/BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ †
*model_10_CNN-LSTM_univariate/conv1d_1/ReluRelu6model_10_CNN-LSTM_univariate/conv1d_1/BiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ Я
)model_10_CNN-LSTM_univariate/lstm_1/ShapeShape8model_10_CNN-LSTM_univariate/conv1d_1/Relu:activations:0*
T0*
_output_shapes
::нѕБ
7model_10_CNN-LSTM_univariate/lstm_1/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: Г
9model_10_CNN-LSTM_univariate/lstm_1/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Г
9model_10_CNN-LSTM_univariate/lstm_1/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Е
1model_10_CNN-LSTM_univariate/lstm_1/strided_sliceStridedSlice2model_10_CNN-LSTM_univariate/lstm_1/Shape:output:0@model_10_CNN-LSTM_univariate/lstm_1/strided_slice/stack:output:0Bmodel_10_CNN-LSTM_univariate/lstm_1/strided_slice/stack_1:output:0Bmodel_10_CNN-LSTM_univariate/lstm_1/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
2model_10_CNN-LSTM_univariate/lstm_1/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :†я
0model_10_CNN-LSTM_univariate/lstm_1/zeros/packedPack:model_10_CNN-LSTM_univariate/lstm_1/strided_slice:output:0;model_10_CNN-LSTM_univariate/lstm_1/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:t
/model_10_CNN-LSTM_univariate/lstm_1/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ў
)model_10_CNN-LSTM_univariate/lstm_1/zerosFill9model_10_CNN-LSTM_univariate/lstm_1/zeros/packed:output:08model_10_CNN-LSTM_univariate/lstm_1/zeros/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€†w
4model_10_CNN-LSTM_univariate/lstm_1/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :†г
2model_10_CNN-LSTM_univariate/lstm_1/zeros_1/packedPack:model_10_CNN-LSTM_univariate/lstm_1/strided_slice:output:0=model_10_CNN-LSTM_univariate/lstm_1/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:v
1model_10_CNN-LSTM_univariate/lstm_1/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    я
+model_10_CNN-LSTM_univariate/lstm_1/zeros_1Fill;model_10_CNN-LSTM_univariate/lstm_1/zeros_1/packed:output:0:model_10_CNN-LSTM_univariate/lstm_1/zeros_1/Const:output:0*
T0*(
_output_shapes
:€€€€€€€€€†є
7model_10_CNN-LSTM_univariate/lstm_1/Read/ReadVariableOpReadVariableOp@model_10_cnn_lstm_univariate_lstm_1_read_readvariableop_resource*
_output_shapes
:	 А*
dtype0£
,model_10_CNN-LSTM_univariate/lstm_1/IdentityIdentity?model_10_CNN-LSTM_univariate/lstm_1/Read/ReadVariableOp:value:0*
T0*
_output_shapes
:	 АЊ
9model_10_CNN-LSTM_univariate/lstm_1/Read_1/ReadVariableOpReadVariableOpBmodel_10_cnn_lstm_univariate_lstm_1_read_1_readvariableop_resource* 
_output_shapes
:
†А*
dtype0®
.model_10_CNN-LSTM_univariate/lstm_1/Identity_1IdentityAmodel_10_CNN-LSTM_univariate/lstm_1/Read_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
†Ає
9model_10_CNN-LSTM_univariate/lstm_1/Read_2/ReadVariableOpReadVariableOpBmodel_10_cnn_lstm_univariate_lstm_1_read_2_readvariableop_resource*
_output_shapes	
:А*
dtype0£
.model_10_CNN-LSTM_univariate/lstm_1/Identity_2IdentityAmodel_10_CNN-LSTM_univariate/lstm_1/Read_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:АЅ
3model_10_CNN-LSTM_univariate/lstm_1/PartitionedCallPartitionedCall8model_10_CNN-LSTM_univariate/conv1d_1/Relu:activations:02model_10_CNN-LSTM_univariate/lstm_1/zeros:output:04model_10_CNN-LSTM_univariate/lstm_1/zeros_1:output:05model_10_CNN-LSTM_univariate/lstm_1/Identity:output:07model_10_CNN-LSTM_univariate/lstm_1/Identity_1:output:07model_10_CNN-LSTM_univariate/lstm_1/Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference_standard_lstm_1797978њ
:model_10_CNN-LSTM_univariate/dense_1/MatMul/ReadVariableOpReadVariableOpCmodel_10_cnn_lstm_univariate_dense_1_matmul_readvariableop_resource*
_output_shapes
:	†*
dtype0й
+model_10_CNN-LSTM_univariate/dense_1/MatMulMatMul<model_10_CNN-LSTM_univariate/lstm_1/PartitionedCall:output:0Bmodel_10_CNN-LSTM_univariate/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Љ
;model_10_CNN-LSTM_univariate/dense_1/BiasAdd/ReadVariableOpReadVariableOpDmodel_10_cnn_lstm_univariate_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0е
,model_10_CNN-LSTM_univariate/dense_1/BiasAddBiasAdd5model_10_CNN-LSTM_univariate/dense_1/MatMul:product:0Cmodel_10_CNN-LSTM_univariate/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€Д
IdentityIdentity5model_10_CNN-LSTM_univariate/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€ў
NoOpNoOp=^model_10_CNN-LSTM_univariate/conv1d_1/BiasAdd/ReadVariableOpI^model_10_CNN-LSTM_univariate/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp<^model_10_CNN-LSTM_univariate/dense_1/BiasAdd/ReadVariableOp;^model_10_CNN-LSTM_univariate/dense_1/MatMul/ReadVariableOp8^model_10_CNN-LSTM_univariate/lstm_1/Read/ReadVariableOp:^model_10_CNN-LSTM_univariate/lstm_1/Read_1/ReadVariableOp:^model_10_CNN-LSTM_univariate/lstm_1/Read_2/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€: : : : : : : 2|
<model_10_CNN-LSTM_univariate/conv1d_1/BiasAdd/ReadVariableOp<model_10_CNN-LSTM_univariate/conv1d_1/BiasAdd/ReadVariableOp2Ф
Hmodel_10_CNN-LSTM_univariate/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOpHmodel_10_CNN-LSTM_univariate/conv1d_1/Conv1D/ExpandDims_1/ReadVariableOp2z
;model_10_CNN-LSTM_univariate/dense_1/BiasAdd/ReadVariableOp;model_10_CNN-LSTM_univariate/dense_1/BiasAdd/ReadVariableOp2x
:model_10_CNN-LSTM_univariate/dense_1/MatMul/ReadVariableOp:model_10_CNN-LSTM_univariate/dense_1/MatMul/ReadVariableOp2r
7model_10_CNN-LSTM_univariate/lstm_1/Read/ReadVariableOp7model_10_CNN-LSTM_univariate/lstm_1/Read/ReadVariableOp2v
9model_10_CNN-LSTM_univariate/lstm_1/Read_1/ReadVariableOp9model_10_CNN-LSTM_univariate/lstm_1/Read_1/ReadVariableOp2v
9model_10_CNN-LSTM_univariate/lstm_1/Read_2/ReadVariableOp9model_10_CNN-LSTM_univariate/lstm_1/Read_2/ReadVariableOp:[ W
+
_output_shapes
:€€€€€€€€€
(
_user_specified_nameconv1d_1_input:($
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
resource
ИA
Ќ
*__inference_gpu_lstm_with_fallback_1800915

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	 †:	 †:	 †:	 †*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
††:
††:
††:
††*
	num_splitY

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А
S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : •
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:†:†:†:†:†:†:†:†*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	† Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:А»\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:†\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:†]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:†]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:†]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:†]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:†]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:†]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:†O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : †
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:А ÷
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:€€€€€€€€€€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€†*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Д
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€†d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:€€€€€€€€€†]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_d89a24ba-f568-46f6-8273-6da96719f439*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
µL
Ґ
(__forward_gpu_lstm_with_fallback_1799112

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
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
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	 †:	 †:	 †:	 †*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
††:
††:
††:
††*
	num_splitY

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А
S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : •
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:†:†:†:†:†:†:†:†*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	† Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:А»\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:†\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:†]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:†]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:†]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:†]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:†]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:†]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:†O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Џ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:€€€€€€€€€€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Њ
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:€€€€€€€€€†d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:€€€€€€€€€†]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
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
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_e50da1fd-a6fc-421b-a64b-5e15fff47e4f*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_1798937_1799113*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
в
„
Y__inference_model_10_CNN-LSTM_univariate_layer_call_and_return_conditional_losses_1800065
conv1d_1_input&
conv1d_1_1799618: 
conv1d_1_1799620: !
lstm_1_1800052:	 А"
lstm_1_1800054:
†А
lstm_1_1800056:	А"
dense_1_1800059:	†
dense_1_1800061:
identityИҐ conv1d_1/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐlstm_1/StatefulPartitionedCall€
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCallconv1d_1_inputconv1d_1_1799618conv1d_1_1799620*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv1d_1_layer_call_and_return_conditional_losses_1799157°
lstm_1/StatefulPartitionedCallStatefulPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0lstm_1_1800052lstm_1_1800054lstm_1_1800056*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_1_layer_call_and_return_conditional_losses_1800051Р
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_1_1800059dense_1_1800061*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1799608w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€И
NoOpNoOp!^conv1d_1/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€: : : : : : : 2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:[ W
+
_output_shapes
:€€€€€€€€€
(
_user_specified_nameconv1d_1_input:'#
!
_user_specified_name	1799618:'#
!
_user_specified_name	1799620:'#
!
_user_specified_name	1800052:'#
!
_user_specified_name	1800054:'#
!
_user_specified_name	1800056:'#
!
_user_specified_name	1800059:'#
!
_user_specified_name	1800061
д@
Ќ
*__inference_gpu_lstm_with_fallback_1801344

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	 †:	 †:	 †:	 †*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
††:
††:
††:
††*
	num_splitY

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А
S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : •
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:†:†:†:†:†:†:†:†*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	† Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:А»\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:†\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:†]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:†]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:†]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:†]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:†]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:†]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:†O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : †
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:А Ќ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€†*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Д
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€†d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:€€€€€€€€€†]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_e2dac475-f5d7-493a-a518-db95e30ef103*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
ИA
Ќ
*__inference_gpu_lstm_with_fallback_1800486

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	 †:	 †:	 †:	 †*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
††:
††:
††:
††*
	num_splitY

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А
S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : •
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:†:†:†:†:†:†:†:†*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	† Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:А»\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:†\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:†]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:†]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:†]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:†]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:†]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:†]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:†O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : †
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:А ÷
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*i
_output_shapesW
U:€€€€€€€€€€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€†*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Д
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€†d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:€€€€€€€€€†]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_b4261cca-f165-40ae-87e7-e7805d7f7ac9*
api_preferred_deviceGPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
•

∆
while_cond_1798326
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_1798326___redundant_placeholder05
1while_while_cond_1798326___redundant_placeholder15
1while_while_cond_1798326___redundant_placeholder25
1while_while_cond_1798326___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€†:€€€€€€€€€†: :::::J F
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
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:
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
Ђ,
–
while_body_1797892
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€АГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€Аw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:€€€€€€€€€АW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ћ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€†c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€†m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€†[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€†h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€†g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€†X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:€€€€€€€€€†r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€†`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А:J F
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
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
:	 А
 
_user_specified_namekernel:R	N
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A
=

_output_shapes	
:А

_user_specified_namebias
 w
Ґ
#__inference__traced_restore_1802227
file_prefix6
 assignvariableop_conv1d_1_kernel: .
 assignvariableop_1_conv1d_1_bias: 4
!assignvariableop_2_dense_1_kernel:	†-
assignvariableop_3_dense_1_bias:=
*assignvariableop_4_lstm_1_lstm_cell_kernel:	 АH
4assignvariableop_5_lstm_1_lstm_cell_recurrent_kernel:
†А7
(assignvariableop_6_lstm_1_lstm_cell_bias:	А&
assignvariableop_7_iteration:	 *
 assignvariableop_8_learning_rate: ?
)assignvariableop_9_adam_m_conv1d_1_kernel: @
*assignvariableop_10_adam_v_conv1d_1_kernel: 6
(assignvariableop_11_adam_m_conv1d_1_bias: 6
(assignvariableop_12_adam_v_conv1d_1_bias: E
2assignvariableop_13_adam_m_lstm_1_lstm_cell_kernel:	 АE
2assignvariableop_14_adam_v_lstm_1_lstm_cell_kernel:	 АP
<assignvariableop_15_adam_m_lstm_1_lstm_cell_recurrent_kernel:
†АP
<assignvariableop_16_adam_v_lstm_1_lstm_cell_recurrent_kernel:
†А?
0assignvariableop_17_adam_m_lstm_1_lstm_cell_bias:	А?
0assignvariableop_18_adam_v_lstm_1_lstm_cell_bias:	А<
)assignvariableop_19_adam_m_dense_1_kernel:	†<
)assignvariableop_20_adam_v_dense_1_kernel:	†5
'assignvariableop_21_adam_m_dense_1_bias:5
'assignvariableop_22_adam_v_dense_1_bias:#
assignvariableop_23_total: #
assignvariableop_24_count: 
identity_26ИҐAssignVariableOpҐAssignVariableOp_1ҐAssignVariableOp_10ҐAssignVariableOp_11ҐAssignVariableOp_12ҐAssignVariableOp_13ҐAssignVariableOp_14ҐAssignVariableOp_15ҐAssignVariableOp_16ҐAssignVariableOp_17ҐAssignVariableOp_18ҐAssignVariableOp_19ҐAssignVariableOp_2ҐAssignVariableOp_20ҐAssignVariableOp_21ҐAssignVariableOp_22ҐAssignVariableOp_23ҐAssignVariableOp_24ҐAssignVariableOp_3ҐAssignVariableOp_4ҐAssignVariableOp_5ҐAssignVariableOp_6ҐAssignVariableOp_7ҐAssignVariableOp_8ҐAssignVariableOp_9Г
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*©

valueЯ
BЬ
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH§
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B †
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*|
_output_shapesj
h::::::::::::::::::::::::::*(
dtypes
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:≥
AssignVariableOpAssignVariableOp assignvariableop_conv1d_1_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_1AssignVariableOp assignvariableop_1_conv1d_1_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:Є
AssignVariableOp_2AssignVariableOp!assignvariableop_2_dense_1_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:ґ
AssignVariableOp_3AssignVariableOpassignvariableop_3_dense_1_biasIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_4AssignVariableOp*assignvariableop_4_lstm_1_lstm_cell_kernelIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_5AssignVariableOp4assignvariableop_5_lstm_1_lstm_cell_recurrent_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:њ
AssignVariableOp_6AssignVariableOp(assignvariableop_6_lstm_1_lstm_cell_biasIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0	*
_output_shapes
:≥
AssignVariableOp_7AssignVariableOpassignvariableop_7_iterationIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0*
_output_shapes
:Ј
AssignVariableOp_8AssignVariableOp assignvariableop_8_learning_rateIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_9AssignVariableOp)assignvariableop_9_adam_m_conv1d_1_kernelIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:√
AssignVariableOp_10AssignVariableOp*assignvariableop_10_adam_v_conv1d_1_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_11AssignVariableOp(assignvariableop_11_adam_m_conv1d_1_biasIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:Ѕ
AssignVariableOp_12AssignVariableOp(assignvariableop_12_adam_v_conv1d_1_biasIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_13AssignVariableOp2assignvariableop_13_adam_m_lstm_1_lstm_cell_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Ћ
AssignVariableOp_14AssignVariableOp2assignvariableop_14_adam_v_lstm_1_lstm_cell_kernelIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:’
AssignVariableOp_15AssignVariableOp<assignvariableop_15_adam_m_lstm_1_lstm_cell_recurrent_kernelIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:’
AssignVariableOp_16AssignVariableOp<assignvariableop_16_adam_v_lstm_1_lstm_cell_recurrent_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:…
AssignVariableOp_17AssignVariableOp0assignvariableop_17_adam_m_lstm_1_lstm_cell_biasIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:…
AssignVariableOp_18AssignVariableOp0assignvariableop_18_adam_v_lstm_1_lstm_cell_biasIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_19AssignVariableOp)assignvariableop_19_adam_m_dense_1_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:¬
AssignVariableOp_20AssignVariableOp)assignvariableop_20_adam_v_dense_1_kernelIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_21AssignVariableOp'assignvariableop_21_adam_m_dense_1_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:ј
AssignVariableOp_22AssignVariableOp'assignvariableop_22_adam_v_dense_1_biasIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_23AssignVariableOpassignvariableop_23_totalIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:≤
AssignVariableOp_24AssignVariableOpassignvariableop_24_countIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 х
Identity_25Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_26IdentityIdentity_25:output:0^NoOp_1*
T0*
_output_shapes
: Њ
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*
_output_shapes
 "#
identity_26Identity_26:output:0*(
_construction_contextkEagerRuntime*G
_input_shapes6
4: : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_24AssignVariableOp_242(
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
_user_specified_nameconv1d_1/kernel:-)
'
_user_specified_nameconv1d_1/bias:.*
(
_user_specified_namedense_1/kernel:,(
&
_user_specified_namedense_1/bias:73
1
_user_specified_namelstm_1/lstm_cell/kernel:A=
;
_user_specified_name#!lstm_1/lstm_cell/recurrent_kernel:51
/
_user_specified_namelstm_1/lstm_cell/bias:)%
#
_user_specified_name	iteration:-	)
'
_user_specified_namelearning_rate:6
2
0
_user_specified_nameAdam/m/conv1d_1/kernel:62
0
_user_specified_nameAdam/v/conv1d_1/kernel:40
.
_user_specified_nameAdam/m/conv1d_1/bias:40
.
_user_specified_nameAdam/v/conv1d_1/bias:>:
8
_user_specified_name Adam/m/lstm_1/lstm_cell/kernel:>:
8
_user_specified_name Adam/v/lstm_1/lstm_cell/kernel:HD
B
_user_specified_name*(Adam/m/lstm_1/lstm_cell/recurrent_kernel:HD
B
_user_specified_name*(Adam/v/lstm_1/lstm_cell/recurrent_kernel:<8
6
_user_specified_nameAdam/m/lstm_1/lstm_cell/bias:<8
6
_user_specified_nameAdam/v/lstm_1/lstm_cell/bias:51
/
_user_specified_nameAdam/m/dense_1/kernel:51
/
_user_specified_nameAdam/v/dense_1/kernel:3/
-
_user_specified_nameAdam/m/dense_1/bias:3/
-
_user_specified_nameAdam/v/dense_1/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount
й
Є
(__inference_lstm_1_layer_call_fn_1800214
inputs_0
unknown:	 А
	unknown_0:
†А
	unknown_1:	А
identityИҐStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_1_layer_call_and_return_conditional_losses_1799115p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
"
_user_specified_name
inputs_0:'#
!
_user_specified_name	1800206:'#
!
_user_specified_name	1800208:'#
!
_user_specified_name	1800210
д@
Ќ
*__inference_gpu_lstm_with_fallback_1798072

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	 †:	 †:	 †:	 †*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
††:
††:
††:
††*
	num_splitY

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А
S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : •
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:†:†:†:†:†:†:†:†*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	† Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:А»\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:†\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:†]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:†]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:†]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:†]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:†]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:†]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:†O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : †
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:А Ќ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€†*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Д
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€†d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:€€€€€€€€€†]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_92a95860-3442-4484-b993-b6f63c7d4c4b*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
Ы
Њ
C__inference_lstm_1_layer_call_and_return_conditional_losses_1799115

inputs/
read_readvariableop_resource:	 А2
read_1_readvariableop_resource:
†А-
read_2_readvariableop_resource:	А

identity_3ИҐRead/ReadVariableOpҐRead_1/ReadVariableOpҐRead_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
B :†s
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
:€€€€€€€€€†S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :†w
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
:€€€€€€€€€†q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 А*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 Аv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
†А*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
†Аq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:АЈ
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference_standard_lstm_1798842j

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€ : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
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
Ђ,
–
while_body_1798327
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€АГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€Аw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:€€€€€€€€€АW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ћ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€†c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€†m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€†[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€†h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€†g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€†X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:€€€€€€€€€†r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€†`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А:J F
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
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
:	 А
 
_user_specified_namekernel:R	N
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A
=

_output_shapes	
:А

_user_specified_namebias
•

∆
while_cond_1801163
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_1801163___redundant_placeholder05
1while_while_cond_1801163___redundant_placeholder15
1while_while_cond_1801163___redundant_placeholder25
1while_while_cond_1801163___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€†:€€€€€€€€€†: :::::J F
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
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:
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
ы	
ц
D__inference_dense_1_layer_call_and_return_conditional_losses_1801971

inputs1
matmul_readvariableop_resource:	†-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	†*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€†: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
•

∆
while_cond_1799691
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_1799691___redundant_placeholder05
1while_while_cond_1799691___redundant_placeholder15
1while_while_cond_1799691___redundant_placeholder25
1while_while_cond_1799691___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€†:€€€€€€€€€†: :::::J F
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
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:
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
ЪL
Ґ
(__forward_gpu_lstm_with_fallback_1799588

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
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
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	 †:	 †:	 †:	 †*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
††:
††:
††:
††*
	num_splitY

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А
S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : •
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:†:†:†:†:†:†:†:†*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	† Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:А»\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:†\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:†]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:†]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:†]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:†]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:†]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:†]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:†O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0—
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Њ
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:€€€€€€€€€†d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:€€€€€€€€€†]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
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
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_ca49e71a-1961-4b77-a2fd-efcec9ce0585*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_1799413_1799589*
go_backwards( *

time_major( :S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
Ђ,
–
while_body_1801593
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€АГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€Аw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:€€€€€€€€€АW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ћ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€†c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€†m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€†[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€†h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€†g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€†X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:€€€€€€€€€†r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€†`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А:J F
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
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
:	 А
 
_user_specified_namekernel:R	N
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A
=

_output_shapes	
:А

_user_specified_namebias
“;
Ѕ
!__inference_standard_lstm_1800821

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
€€€€€€€€€≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:€€€€€€€€€А_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€†W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€†T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:€€€€€€€€€†O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€†V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€†U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€†L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:€€€€€€€€€†n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€†   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : °
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А* 
_read_only_resource_inputs
 *
bodyR
while_body_1800735*
condR
while_cond_1800734*e
output_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€†   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€†*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€†*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€†^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:€€€€€€€€€†Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:€€€€€€€€€†Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_d89a24ba-f568-46f6-8273-6da96719f439*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
µL
Ґ
(__forward_gpu_lstm_with_fallback_1798683

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
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
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	 †:	 †:	 †:	 †*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
††:
††:
††:
††*
	num_splitY

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А
S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : •
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:†:†:†:†:†:†:†:†*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	† Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:А»\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:†\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:†]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:†]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:†]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:†]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:†]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:†]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:†O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Џ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:€€€€€€€€€€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Њ
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:€€€€€€€€€†d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:€€€€€€€€€†]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
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
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_a8f5f535-452d-447c-a4d9-2e5b9d0f5d18*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_1798508_1798684*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
љЋ
з
=__inference___backward_gpu_lstm_with_fallback_1798508_1798684
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:€€€€€€€€€†e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:€€€€€€€€€†a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:€€€€€€€€€†a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:€€€€€€€€€†O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: О
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::нѕЂ
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕ•
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Г
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕ©
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:€€€€€€€€€†∆
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:€€€€€€€€€†Л
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕЖ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:£
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ѓ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:А Ц
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:ў
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ Г
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::нѕ∆
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†З
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::нѕ 
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А(k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:А»j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:†j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:†ш
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::м
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А(с
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:А»р
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:†р
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:†m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       Ґ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
††i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†§
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:†i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†§
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:†Ь
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ґ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:Є
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:Є
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:Є
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:є
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:є
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:є
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:є
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††з
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А
ѓ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 Аґ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
†А\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Аh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А 
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::“
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А÷
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 Аi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
†Аd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ф
_input_shapesВ
€:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†: :€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€€€€€€€€€€†::€€€€€€€€€€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:А ::€€€€€€€€€†:€€€€€€€€€†: ::::::::: : : : *=
api_implements+)lstm_a8f5f535-452d-447c-a4d9-2e5b9d0f5d18*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_1798683*
go_backwards( *

time_major( :. *
(
_output_shapes
:€€€€€€€€€†:2.
,
_output_shapes
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:

_output_shapes
: :WS
(
_output_shapes
:€€€€€€€€€†
'
_user_specified_namestrided_slice:VR
,
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
CudnnRNN:_[
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†
"
_user_specified_name
CudnnRNN:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:_
[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
#
_user_specified_name	transpose:XT
,
_output_shapes
:€€€€€€€€€†
$
_user_specified_name
ExpandDims:ZV
,
_output_shapes
:€€€€€€€€€†
&
_user_specified_nameExpandDims_1:FB

_output_shapes

:А 
"
_user_specified_name
concat_1:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:C?

_output_shapes
: 
%
_user_specified_nameconcat/axis
Ј;
Ѕ
!__inference_standard_lstm_1799778

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
€€€€€€€€€≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:€€€€€€€€€А_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€†W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€†T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:€€€€€€€€€†O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€†V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€†U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€†L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:€€€€€€€€€†n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€†   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : °
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А* 
_read_only_resource_inputs
 *
bodyR
while_body_1799692*
condR
while_cond_1799691*e
output_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€†   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€†*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€†*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€†^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:€€€€€€€€€†Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:€€€€€€€€€†Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_3ccbd0de-6613-430a-be8e-d03c53c27a2d*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
д
≈
>__inference_model_10_CNN-LSTM_univariate_layer_call_fn_1800084
conv1d_1_input
unknown: 
	unknown_0: 
	unknown_1:	 А
	unknown_2:
†А
	unknown_3:	А
	unknown_4:	†
	unknown_5:
identityИҐStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallconv1d_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8В *b
f]R[
Y__inference_model_10_CNN-LSTM_univariate_layer_call_and_return_conditional_losses_1799615o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:€€€€€€€€€
(
_user_specified_nameconv1d_1_input:'#
!
_user_specified_name	1800068:'#
!
_user_specified_name	1800070:'#
!
_user_specified_name	1800072:'#
!
_user_specified_name	1800074:'#
!
_user_specified_name	1800076:'#
!
_user_specified_name	1800078:'#
!
_user_specified_name	1800080
µL
Ґ
(__forward_gpu_lstm_with_fallback_1800662

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
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
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	 †:	 †:	 †:	 †*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
††:
††:
††:
††*
	num_splitY

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А
S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : •
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:†:†:†:†:†:†:†:†*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	† Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:А»\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:†\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:†]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:†]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:†]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:†]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:†]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:†]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:†O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Џ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:€€€€€€€€€€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Њ
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:€€€€€€€€€†d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:€€€€€€€€€†]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
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
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_b4261cca-f165-40ae-87e7-e7805d7f7ac9*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_1800487_1800663*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
Ђ,
–
while_body_1799232
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€АГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€Аw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:€€€€€€€€€АW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ћ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€†c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€†m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€†[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€†h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€†g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€†X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:€€€€€€€€€†r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€†`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А:J F
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
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
:	 А
 
_user_specified_namekernel:R	N
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A
=

_output_shapes	
:А

_user_specified_namebias
“;
Ѕ
!__inference_standard_lstm_1798842

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
€€€€€€€€€≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:€€€€€€€€€А_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€†W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€†T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:€€€€€€€€€†O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€†V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€†U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€†L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:€€€€€€€€€†n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€†   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : °
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А* 
_read_only_resource_inputs
 *
bodyR
while_body_1798756*
condR
while_cond_1798755*e
output_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€†   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€†*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€†*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€†^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:€€€€€€€€€†Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:€€€€€€€€€†Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_e50da1fd-a6fc-421b-a64b-5e15fff47e4f*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
•

∆
while_cond_1798755
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_1798755___redundant_placeholder05
1while_while_cond_1798755___redundant_placeholder15
1while_while_cond_1798755___redundant_placeholder25
1while_while_cond_1798755___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€†:€€€€€€€€€†: :::::J F
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
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:
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
х 
з
=__inference___backward_gpu_lstm_with_fallback_1801345_1801521
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:€€€€€€€€€†e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:€€€€€€€€€†a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:€€€€€€€€€†a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:€€€€€€€€€†O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: О
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::нѕЂ
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕ•
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Г
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕ©
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:€€€€€€€€€†∆
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:€€€€€€€€€†Л
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕЖ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ъ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*,
_output_shapes
:€€€€€€€€€†*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:•
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:А Ц
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:–
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:€€€€€€€€€ Г
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::нѕ∆
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†З
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::нѕ 
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А(k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:А»j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:†j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:†ш
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::м
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А(с
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:А»р
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:†р
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:†m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       Ґ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
††i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†§
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:†i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†§
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:†Ь
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ґ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:Є
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:Є
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:Є
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:є
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:є
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:є
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:є
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††з
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А
ѓ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 Аґ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
†А\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Аh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А 
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::“
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А÷
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Аr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:€€€€€€€€€ u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 Аi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
†Аd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*В
_input_shapesр
н:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†: :€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†::€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:А ::€€€€€€€€€†:€€€€€€€€€†: ::::::::: : : : *=
api_implements+)lstm_e2dac475-f5d7-493a-a518-db95e30ef103*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_1801520*
go_backwards( *

time_major( :. *
(
_output_shapes
:€€€€€€€€€†:2.
,
_output_shapes
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:

_output_shapes
: :WS
(
_output_shapes
:€€€€€€€€€†
'
_user_specified_namestrided_slice:VR
,
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
CudnnRNN:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:V
R
+
_output_shapes
:€€€€€€€€€ 
#
_user_specified_name	transpose:XT
,
_output_shapes
:€€€€€€€€€†
$
_user_specified_name
ExpandDims:ZV
,
_output_shapes
:€€€€€€€€€†
&
_user_specified_nameExpandDims_1:FB

_output_shapes

:А 
"
_user_specified_name
concat_1:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:C?

_output_shapes
: 
%
_user_specified_nameconcat/axis
•

∆
while_cond_1800305
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_1800305___redundant_placeholder05
1while_while_cond_1800305___redundant_placeholder15
1while_while_cond_1800305___redundant_placeholder25
1while_while_cond_1800305___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€†:€€€€€€€€€†: :::::J F
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
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:
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
в
„
Y__inference_model_10_CNN-LSTM_univariate_layer_call_and_return_conditional_losses_1799615
conv1d_1_input&
conv1d_1_1799158: 
conv1d_1_1799160: !
lstm_1_1799592:	 А"
lstm_1_1799594:
†А
lstm_1_1799596:	А"
dense_1_1799609:	†
dense_1_1799611:
identityИҐ conv1d_1/StatefulPartitionedCallҐdense_1/StatefulPartitionedCallҐlstm_1/StatefulPartitionedCall€
 conv1d_1/StatefulPartitionedCallStatefulPartitionedCallconv1d_1_inputconv1d_1_1799158conv1d_1_1799160*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv1d_1_layer_call_and_return_conditional_losses_1799157°
lstm_1/StatefulPartitionedCallStatefulPartitionedCall)conv1d_1/StatefulPartitionedCall:output:0lstm_1_1799592lstm_1_1799594lstm_1_1799596*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_1_layer_call_and_return_conditional_losses_1799591Р
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_1/StatefulPartitionedCall:output:0dense_1_1799609dense_1_1799611*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1799608w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€И
NoOpNoOp!^conv1d_1/StatefulPartitionedCall ^dense_1/StatefulPartitionedCall^lstm_1/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€: : : : : : : 2D
 conv1d_1/StatefulPartitionedCall conv1d_1/StatefulPartitionedCall2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_1/StatefulPartitionedCalllstm_1/StatefulPartitionedCall:[ W
+
_output_shapes
:€€€€€€€€€
(
_user_specified_nameconv1d_1_input:'#
!
_user_specified_name	1799158:'#
!
_user_specified_name	1799160:'#
!
_user_specified_name	1799592:'#
!
_user_specified_name	1799594:'#
!
_user_specified_name	1799596:'#
!
_user_specified_name	1799609:'#
!
_user_specified_name	1799611
Ђ,
–
while_body_1800735
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€АГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€Аw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:€€€€€€€€€АW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ћ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€†c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€†m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€†[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€†h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€†g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€†X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:€€€€€€€€€†r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€†`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А:J F
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
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
:	 А
 
_user_specified_namekernel:R	N
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A
=

_output_shapes	
:А

_user_specified_namebias
•

∆
while_cond_1800734
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_1800734___redundant_placeholder05
1while_while_cond_1800734___redundant_placeholder15
1while_while_cond_1800734___redundant_placeholder25
1while_while_cond_1800734___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€†:€€€€€€€€€†: :::::J F
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
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:
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
ЪL
Ґ
(__forward_gpu_lstm_with_fallback_1800048

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
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
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	 †:	 †:	 †:	 †*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
††:
††:
††:
††*
	num_splitY

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А
S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : •
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:†:†:†:†:†:†:†:†*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	† Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:А»\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:†\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:†]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:†]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:†]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:†]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:†]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:†]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:†O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0—
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Њ
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:€€€€€€€€€†d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:€€€€€€€€€†]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
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
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_3ccbd0de-6613-430a-be8e-d03c53c27a2d*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_1799873_1800049*
go_backwards( *

time_major( :S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
Ј;
Ѕ
!__inference_standard_lstm_1797978

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
€€€€€€€€€≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:€€€€€€€€€А_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€†W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€†T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:€€€€€€€€€†O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€†V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€†U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€†L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:€€€€€€€€€†n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€†   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : °
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А* 
_read_only_resource_inputs
 *
bodyR
while_body_1797892*
condR
while_cond_1797891*e
output_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€†   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€†*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€†*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€†^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:€€€€€€€€€†Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:€€€€€€€€€†Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_92a95860-3442-4484-b993-b6f63c7d4c4b*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
х 
з
=__inference___backward_gpu_lstm_with_fallback_1801774_1801950
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:€€€€€€€€€†e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:€€€€€€€€€†a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:€€€€€€€€€†a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:€€€€€€€€€†O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: О
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::нѕЂ
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕ•
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Г
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕ©
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:€€€€€€€€€†∆
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:€€€€€€€€€†Л
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕЖ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ъ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*,
_output_shapes
:€€€€€€€€€†*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:•
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:А Ц
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:–
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:€€€€€€€€€ Г
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::нѕ∆
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†З
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::нѕ 
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А(k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:А»j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:†j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:†ш
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::м
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А(с
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:А»р
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:†р
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:†m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       Ґ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
††i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†§
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:†i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†§
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:†Ь
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ґ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:Є
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:Є
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:Є
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:є
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:є
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:є
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:є
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††з
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А
ѓ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 Аґ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
†А\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Аh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А 
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::“
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А÷
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Аr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:€€€€€€€€€ u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 Аi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
†Аd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*В
_input_shapesр
н:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†: :€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†::€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:А ::€€€€€€€€€†:€€€€€€€€€†: ::::::::: : : : *=
api_implements+)lstm_1a6f79d2-a8f3-4bbb-a1e6-f5d193edbff5*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_1801949*
go_backwards( *

time_major( :. *
(
_output_shapes
:€€€€€€€€€†:2.
,
_output_shapes
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:

_output_shapes
: :WS
(
_output_shapes
:€€€€€€€€€†
'
_user_specified_namestrided_slice:VR
,
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
CudnnRNN:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:V
R
+
_output_shapes
:€€€€€€€€€ 
#
_user_specified_name	transpose:XT
,
_output_shapes
:€€€€€€€€€†
$
_user_specified_name
ExpandDims:ZV
,
_output_shapes
:€€€€€€€€€†
&
_user_specified_nameExpandDims_1:FB

_output_shapes

:А 
"
_user_specified_name
concat_1:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:C?

_output_shapes
: 
%
_user_specified_nameconcat/axis
÷
Ф
E__inference_conv1d_1_layer_call_and_return_conditional_losses_1800192

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐ"Conv1D/ExpandDims_1/ReadVariableOpu
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       _
PadPadinputsPad/paddings:output:0*
T0*+
_output_shapes
:€€€€€€€€€`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€З
Conv1D/ExpandDims
ExpandDimsPad:output:0Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€Т
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : †
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ≠
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingVALID*
strides
А
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€ *
squeeze_dims

э€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Б
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ `
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
д@
Ќ
*__inference_gpu_lstm_with_fallback_1799872

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	 †:	 †:	 †:	 †*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
††:
††:
††:
††*
	num_splitY

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А
S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : •
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:†:†:†:†:†:†:†:†*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	† Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:А»\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:†\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:†]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:†]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:†]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:†]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:†]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:†]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:†O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : †
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:А Ќ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€†*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Д
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€†d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:€€€€€€€€€†]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_3ccbd0de-6613-430a-be8e-d03c53c27a2d*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
÷
Ф
E__inference_conv1d_1_layer_call_and_return_conditional_losses_1799157

inputsA
+conv1d_expanddims_1_readvariableop_resource: -
biasadd_readvariableop_resource: 
identityИҐBiasAdd/ReadVariableOpҐ"Conv1D/ExpandDims_1/ReadVariableOpu
Pad/paddingsConst*
_output_shapes

:*
dtype0*1
value(B&"                       _
PadPadinputsPad/paddings:output:0*
T0*+
_output_shapes
:€€€€€€€€€`
Conv1D/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
э€€€€€€€€З
Conv1D/ExpandDims
ExpandDimsPad:output:0Conv1D/ExpandDims/dim:output:0*
T0*/
_output_shapes
:€€€€€€€€€Т
"Conv1D/ExpandDims_1/ReadVariableOpReadVariableOp+conv1d_expanddims_1_readvariableop_resource*"
_output_shapes
: *
dtype0Y
Conv1D/ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : †
Conv1D/ExpandDims_1
ExpandDims*Conv1D/ExpandDims_1/ReadVariableOp:value:0 Conv1D/ExpandDims_1/dim:output:0*
T0*&
_output_shapes
: ≠
Conv1DConv2DConv1D/ExpandDims:output:0Conv1D/ExpandDims_1:output:0*
T0*/
_output_shapes
:€€€€€€€€€ *
paddingVALID*
strides
А
Conv1D/SqueezeSqueezeConv1D:output:0*
T0*+
_output_shapes
:€€€€€€€€€ *
squeeze_dims

э€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
: *
dtype0Б
BiasAddBiasAddConv1D/Squeeze:output:0BiasAdd/ReadVariableOp:value:0*
T0*+
_output_shapes
:€€€€€€€€€ T
ReluReluBiasAdd:output:0*
T0*+
_output_shapes
:€€€€€€€€€ e
IdentityIdentityRelu:activations:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ `
NoOpNoOp^BiasAdd/ReadVariableOp#^Conv1D/ExpandDims_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2H
"Conv1D/ExpandDims_1/ReadVariableOp"Conv1D/ExpandDims_1/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
д
≈
>__inference_model_10_CNN-LSTM_univariate_layer_call_fn_1800103
conv1d_1_input
unknown: 
	unknown_0: 
	unknown_1:	 А
	unknown_2:
†А
	unknown_3:	А
	unknown_4:	†
	unknown_5:
identityИҐStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallconv1d_1_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5*
Tin

2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*)
_read_only_resource_inputs
	*-
config_proto

CPU

GPU 2J 8В *b
f]R[
Y__inference_model_10_CNN-LSTM_univariate_layer_call_and_return_conditional_losses_1800065o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*8
_input_shapes'
%:€€€€€€€€€: : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:[ W
+
_output_shapes
:€€€€€€€€€
(
_user_specified_nameconv1d_1_input:'#
!
_user_specified_name	1800087:'#
!
_user_specified_name	1800089:'#
!
_user_specified_name	1800091:'#
!
_user_specified_name	1800093:'#
!
_user_specified_name	1800095:'#
!
_user_specified_name	1800097:'#
!
_user_specified_name	1800099
Й
Њ
C__inference_lstm_1_layer_call_and_return_conditional_losses_1801952

inputs/
read_readvariableop_resource:	 А2
read_1_readvariableop_resource:
†А-
read_2_readvariableop_resource:	А

identity_3ИҐRead/ReadVariableOpҐRead_1/ReadVariableOpҐRead_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
B :†s
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
:€€€€€€€€€†S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :†w
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
:€€€€€€€€€†q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 А*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 Аv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
†А*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
†Аq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:АЈ
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference_standard_lstm_1801679j

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€ : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€ 
 
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
д@
Ќ
*__inference_gpu_lstm_with_fallback_1799412

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	 †:	 †:	 †:	 †*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
††:
††:
††:
††*
	num_splitY

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А
S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : •
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:†:†:†:†:†:†:†:†*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	† Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:А»\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:†\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:†]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:†]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:†]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:†]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:†]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:†]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:†O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : †
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:А Ќ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€†*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Д
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€†d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:€€€€€€€€€†]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_ca49e71a-1961-4b77-a2fd-efcec9ce0585*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
ЪL
Ґ
(__forward_gpu_lstm_with_fallback_1801520

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
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
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	 †:	 †:	 †:	 †*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
††:
††:
††:
††*
	num_splitY

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А
S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : •
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:†:†:†:†:†:†:†:†*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	† Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:А»\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:†\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:†]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:†]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:†]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:†]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:†]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:†]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:†O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0—
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Њ
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:€€€€€€€€€†d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:€€€€€€€€€†]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
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
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_e2dac475-f5d7-493a-a518-db95e30ef103*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_1801345_1801521*
go_backwards( *

time_major( :S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
Й
Њ
C__inference_lstm_1_layer_call_and_return_conditional_losses_1801523

inputs/
read_readvariableop_resource:	 А2
read_1_readvariableop_resource:
†А-
read_2_readvariableop_resource:	А

identity_3ИҐRead/ReadVariableOpҐRead_1/ReadVariableOpҐRead_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
B :†s
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
:€€€€€€€€€†S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :†w
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
:€€€€€€€€€†q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 А*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 Аv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
†А*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
†Аq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:АЈ
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference_standard_lstm_1801250j

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€ : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€ 
 
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
љЋ
з
=__inference___backward_gpu_lstm_with_fallback_1800487_1800663
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:€€€€€€€€€†e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:€€€€€€€€€†a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:€€€€€€€€€†a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:€€€€€€€€€†O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: О
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::нѕЂ
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕ•
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Г
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕ©
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:€€€€€€€€€†∆
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:€€€€€€€€€†Л
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕЖ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:£
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ѓ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:А Ц
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:ў
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ Г
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::нѕ∆
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†З
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::нѕ 
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А(k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:А»j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:†j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:†ш
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::м
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А(с
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:А»р
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:†р
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:†m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       Ґ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
††i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†§
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:†i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†§
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:†Ь
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ґ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:Є
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:Є
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:Є
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:є
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:є
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:є
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:є
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††з
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А
ѓ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 Аґ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
†А\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Аh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А 
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::“
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А÷
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 Аi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
†Аd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ф
_input_shapesВ
€:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†: :€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€€€€€€€€€€†::€€€€€€€€€€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:А ::€€€€€€€€€†:€€€€€€€€€†: ::::::::: : : : *=
api_implements+)lstm_b4261cca-f165-40ae-87e7-e7805d7f7ac9*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_1800662*
go_backwards( *

time_major( :. *
(
_output_shapes
:€€€€€€€€€†:2.
,
_output_shapes
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:

_output_shapes
: :WS
(
_output_shapes
:€€€€€€€€€†
'
_user_specified_namestrided_slice:VR
,
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
CudnnRNN:_[
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†
"
_user_specified_name
CudnnRNN:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:_
[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
#
_user_specified_name	transpose:XT
,
_output_shapes
:€€€€€€€€€†
$
_user_specified_name
ExpandDims:ZV
,
_output_shapes
:€€€€€€€€€†
&
_user_specified_nameExpandDims_1:FB

_output_shapes

:А 
"
_user_specified_name
concat_1:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:C?

_output_shapes
: 
%
_user_specified_nameconcat/axis
ы	
ц
D__inference_dense_1_layer_call_and_return_conditional_losses_1799608

inputs1
matmul_readvariableop_resource:	†-
biasadd_readvariableop_resource:
identityИҐBiasAdd/ReadVariableOpҐMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	†*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:€€€€€€€€€_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€S
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€†: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ј;
Ѕ
!__inference_standard_lstm_1801679

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
€€€€€€€€€≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:€€€€€€€€€А_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€†W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€†T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:€€€€€€€€€†O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€†V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€†U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€†L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:€€€€€€€€€†n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€†   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : °
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А* 
_read_only_resource_inputs
 *
bodyR
while_body_1801593*
condR
while_cond_1801592*e
output_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€†   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€†*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€†*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€†^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:€€€€€€€€€†Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:€€€€€€€€€†Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_1a6f79d2-a8f3-4bbb-a1e6-f5d193edbff5*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
•

∆
while_cond_1797891
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice5
1while_while_cond_1797891___redundant_placeholder05
1while_while_cond_1797891___redundant_placeholder15
1while_while_cond_1797891___redundant_placeholder25
1while_while_cond_1797891___redundant_placeholder3
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
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :€€€€€€€€€†:€€€€€€€€€†: :::::J F
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
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:
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
Й
Њ
C__inference_lstm_1_layer_call_and_return_conditional_losses_1799591

inputs/
read_readvariableop_resource:	 А2
read_1_readvariableop_resource:
†А-
read_2_readvariableop_resource:	А

identity_3ИҐRead/ReadVariableOpҐRead_1/ReadVariableOpҐRead_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
B :†s
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
:€€€€€€€€€†S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :†w
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
:€€€€€€€€€†q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 А*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 Аv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
†А*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
†Аq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:АЈ
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference_standard_lstm_1799318j

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€ : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€ 
 
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
х 
з
=__inference___backward_gpu_lstm_with_fallback_1798073_1798249
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:€€€€€€€€€†e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:€€€€€€€€€†a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:€€€€€€€€€†a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:€€€€€€€€€†O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: О
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::нѕЂ
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕ•
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Г
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕ©
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:€€€€€€€€€†∆
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:€€€€€€€€€†Л
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕЖ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:Ъ
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*,
_output_shapes
:€€€€€€€€€†*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:•
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*c
_output_shapesQ
O:€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:А Ц
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:–
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*+
_output_shapes
:€€€€€€€€€ Г
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::нѕ∆
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†З
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::нѕ 
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А(k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:А»j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:†j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:†ш
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::м
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А(с
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:А»р
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:†р
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:†m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       Ґ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
††i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†§
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:†i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†§
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:†Ь
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ґ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:Є
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:Є
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:Є
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:є
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:є
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:є
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:є
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††з
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А
ѓ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 Аґ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
†А\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Аh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А 
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::“
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А÷
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:Аr
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*+
_output_shapes
:€€€€€€€€€ u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 Аi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
†Аd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*В
_input_shapesр
н:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†: :€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†::€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:А ::€€€€€€€€€†:€€€€€€€€€†: ::::::::: : : : *=
api_implements+)lstm_92a95860-3442-4484-b993-b6f63c7d4c4b*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_1798248*
go_backwards( *

time_major( :. *
(
_output_shapes
:€€€€€€€€€†:2.
,
_output_shapes
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:

_output_shapes
: :WS
(
_output_shapes
:€€€€€€€€€†
'
_user_specified_namestrided_slice:VR
,
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
CudnnRNN:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:V
R
+
_output_shapes
:€€€€€€€€€ 
#
_user_specified_name	transpose:XT
,
_output_shapes
:€€€€€€€€€†
$
_user_specified_name
ExpandDims:ZV
,
_output_shapes
:€€€€€€€€€†
&
_user_specified_nameExpandDims_1:FB

_output_shapes

:А 
"
_user_specified_name
concat_1:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:C?

_output_shapes
: 
%
_user_specified_nameconcat/axis
Ы
Њ
C__inference_lstm_1_layer_call_and_return_conditional_losses_1798686

inputs/
read_readvariableop_resource:	 А2
read_1_readvariableop_resource:
†А-
read_2_readvariableop_resource:	А

identity_3ИҐRead/ReadVariableOpҐRead_1/ReadVariableOpҐRead_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
B :†s
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
:€€€€€€€€€†S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :†w
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
:€€€€€€€€€†q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 А*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 Аv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
†А*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
†Аq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:АЈ
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference_standard_lstm_1798413j

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:€€€€€€€€€€€€€€€€€€ : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
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
у
Ч
)__inference_dense_1_layer_call_fn_1801961

inputs
unknown:	†
	unknown_0:
identityИҐStatefulPartitionedCallў
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:€€€€€€€€€*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *M
fHRF
D__inference_dense_1_layer_call_and_return_conditional_losses_1799608o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:€€€€€€€€€<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:€€€€€€€€€†: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinputs:'#
!
_user_specified_name	1801955:'#
!
_user_specified_name	1801957
Ј;
Ѕ
!__inference_standard_lstm_1799318

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
€€€€€€€€€≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:€€€€€€€€€А_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€†W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€†T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:€€€€€€€€€†O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€†V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€†U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€†L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:€€€€€€€€€†n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€†   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : °
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А* 
_read_only_resource_inputs
 *
bodyR
while_body_1799232*
condR
while_cond_1799231*e
output_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€†   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€†*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€†*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€†^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:€€€€€€€€€†Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:€€€€€€€€€†Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_ca49e71a-1961-4b77-a2fd-efcec9ce0585*
api_preferred_deviceCPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
“;
Ѕ
!__inference_standard_lstm_1800392

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ P
ShapeShapetranspose:y:0*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
€€€€€€€€€≤
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“Ж
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    а
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“_
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
valueB:й
strided_slice_1StridedSlicetranspose:y:0strided_slice_1/stack:output:0 strided_slice_1/stack_1:output:0 strided_slice_1/stack_2:output:0*
Index0*
T0*'
_output_shapes
:€€€€€€€€€ *
shrink_axis_maske
MatMulMatMulstrided_slice_1:output:0kernel*
T0*(
_output_shapes
:€€€€€€€€€А_
MatMul_1MatMulinit_hrecurrent_kernel*
T0*(
_output_shapes
:€€€€€€€€€Аe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€АT
BiasAddBiasAddadd:z:0bias*
T0*(
_output_shapes
:€€€€€€€€€АQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ї
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:€€€€€€€€€†W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:€€€€€€€€€†T
mulMulSigmoid_1:y:0init_c*
T0*(
_output_shapes
:€€€€€€€€€†O
TanhTanhsplit:output:2*
T0*(
_output_shapes
:€€€€€€€€€†V
mul_1MulSigmoid:y:0Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€†U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:€€€€€€€€€†L
Tanh_1Tanh	add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†Z
mul_2MulSigmoid_2:y:0
Tanh_1:y:0*
T0*(
_output_shapes
:€€€€€€€€€†n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€†   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :≈
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:йи“F
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
€€€€€€€€€T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : °
whileStatelessWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0init_hinit_cstrided_slice:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0kernelrecurrent_kernelbias*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*f
_output_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А* 
_read_only_resource_inputs
 *
bodyR
while_body_1800306*
condR
while_cond_1800305*e
output_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А*
parallel_iterations Б
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€†   „
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:€€€€€€€€€†*
element_dtype0*
num_elementsh
strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:И
strided_slice_2StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€†*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ч
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *  А?a
IdentityIdentitystrided_slice_2:output:0*
T0*(
_output_shapes
:€€€€€€€€€†^

Identity_1Identitytranspose_1:y:0*
T0*,
_output_shapes
:€€€€€€€€€†Y

Identity_2Identitywhile:output:4*
T0*(
_output_shapes
:€€€€€€€€€†Y

Identity_3Identitywhile:output:5*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_b4261cca-f165-40ae-87e7-e7805d7f7ac9*
api_preferred_deviceCPU*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
Ж
Ы
*__inference_conv1d_1_layer_call_fn_1800174

inputs
unknown: 
	unknown_0: 
identityИҐStatefulPartitionedCallё
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:€€€€€€€€€ *$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *N
fIRG
E__inference_conv1d_1_layer_call_and_return_conditional_losses_1799157s
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*+
_output_shapes
:€€€€€€€€€ <
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*.
_input_shapes
:€€€€€€€€€: : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€
 
_user_specified_nameinputs:'#
!
_user_specified_name	1800168:'#
!
_user_specified_name	1800170
Й
Њ
C__inference_lstm_1_layer_call_and_return_conditional_losses_1800051

inputs/
read_readvariableop_resource:	 А2
read_1_readvariableop_resource:
†А-
read_2_readvariableop_resource:	А

identity_3ИҐRead/ReadVariableOpҐRead_1/ReadVariableOpҐRead_2/ReadVariableOpI
ShapeShapeinputs*
T0*
_output_shapes
::нѕ]
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
valueB:—
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
B :†s
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
:€€€€€€€€€†S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :†w
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
:€€€€€€€€€†q
Read/ReadVariableOpReadVariableOpread_readvariableop_resource*
_output_shapes
:	 А*
dtype0[
IdentityIdentityRead/ReadVariableOp:value:0*
T0*
_output_shapes
:	 Аv
Read_1/ReadVariableOpReadVariableOpread_1_readvariableop_resource* 
_output_shapes
:
†А*
dtype0`

Identity_1IdentityRead_1/ReadVariableOp:value:0*
T0* 
_output_shapes
:
†Аq
Read_2/ReadVariableOpReadVariableOpread_2_readvariableop_resource*
_output_shapes	
:А*
dtype0[

Identity_2IdentityRead_2/ReadVariableOp:value:0*
T0*
_output_shapes	
:АЈ
PartitionedCallPartitionedCallinputszeros:output:0zeros_1:output:0Identity:output:0Identity_1:output:0Identity_2:output:0*
Tin

2*
Tout	
2*
_collective_manager_ids
 *j
_output_shapesX
V:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†: * 
_read_only_resource_inputs
 *-
config_proto

CPU

GPU 2J 8В **
f%R#
!__inference_standard_lstm_1799778j

Identity_3IdentityPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†h
NoOpNoOp^Read/ReadVariableOp^Read_1/ReadVariableOp^Read_2/ReadVariableOp*
_output_shapes
 "!

identity_3Identity_3:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€ : : : 2*
Read/ReadVariableOpRead/ReadVariableOp2.
Read_1/ReadVariableOpRead_1/ReadVariableOp2.
Read_2/ReadVariableOpRead_2/ReadVariableOp:S O
+
_output_shapes
:€€€€€€€€€ 
 
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
д@
Ќ
*__inference_gpu_lstm_with_fallback_1801773

inputs

init_h

init_c

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4Иc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:€€€€€€€€€ P
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
value	B : p

ExpandDims
ExpandDimsinit_hExpandDims/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : t
ExpandDims_1
ExpandDimsinit_cExpandDims_1/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	 †:	 †:	 †:	 †*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
††:
††:
††:
††*
	num_splitY

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А
S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : •
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:†:†:†:†:†:†:†:†*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	† Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:А»\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:†\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:†]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:†]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:†]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:†]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:†]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:†]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:†O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : †
concat_1ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0*
_output_shapes

:А Ќ
CudnnRNNCudnnRNNtranspose:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ж
strided_sliceStridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*(
_output_shapes
:€€€€€€€€€†*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Д
ExpandDims_2
ExpandDimsstrided_slice:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @_
IdentityIdentitystrided_slice:output:0*
T0*(
_output_shapes
:€€€€€€€€€†d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:€€€€€€€€€†]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_1a6f79d2-a8f3-4bbb-a1e6-f5d193edbff5*
api_preferred_deviceGPU*
go_backwards( *

time_major( :S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
—
ґ
(__inference_lstm_1_layer_call_fn_1800236

inputs
unknown:	 А
	unknown_0:
†А
	unknown_1:	А
identityИҐStatefulPartitionedCallж
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:€€€€€€€€€†*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8В *L
fGRE
C__inference_lstm_1_layer_call_and_return_conditional_losses_1800051p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:€€€€€€€€€†<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:€€€€€€€€€ : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:'#
!
_user_specified_name	1800228:'#
!
_user_specified_name	1800230:'#
!
_user_specified_name	1800232
Ђ,
–
while_body_1798756
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0
while_matmul_kernel_0%
!while_matmul_1_recurrent_kernel_0
while_biasadd_bias_0
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_sliceU
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor
while_matmul_kernel#
while_matmul_1_recurrent_kernel
while_biasadd_biasИ
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"€€€€    ¶
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:€€€€€€€€€ *
element_dtype0Т
while/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0while_matmul_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€АГ
while/MatMul_1MatMulwhile_placeholder_2!while_matmul_1_recurrent_kernel_0*
T0*(
_output_shapes
:€€€€€€€€€Аw
	while/addAddV2while/MatMul:product:0while/MatMul_1:product:0*
T0*(
_output_shapes
:€€€€€€€€€Аp
while/BiasAddBiasAddwhile/add:z:0while_biasadd_bias_0*
T0*(
_output_shapes
:€€€€€€€€€АW
while/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ћ
while/splitSplitwhile/split/split_dim:output:0while/BiasAdd:output:0*
T0*d
_output_shapesR
P:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†*
	num_splita
while/SigmoidSigmoidwhile/split:output:0*
T0*(
_output_shapes
:€€€€€€€€€†c
while/Sigmoid_1Sigmoidwhile/split:output:1*
T0*(
_output_shapes
:€€€€€€€€€†m
	while/mulMulwhile/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:€€€€€€€€€†[

while/TanhTanhwhile/split:output:2*
T0*(
_output_shapes
:€€€€€€€€€†h
while/mul_1Mulwhile/Sigmoid:y:0while/Tanh:y:0*
T0*(
_output_shapes
:€€€€€€€€€†g
while/add_1AddV2while/mul:z:0while/mul_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†c
while/Sigmoid_2Sigmoidwhile/split:output:3*
T0*(
_output_shapes
:€€€€€€€€€†X
while/Tanh_1Tanhwhile/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†l
while/mul_2Mulwhile/Sigmoid_2:y:0while/Tanh_1:y:0*
T0*(
_output_shapes
:€€€€€€€€€†r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : а
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/mul_2:z:0*
_output_shapes
: *
element_dtype0:йи“O
while/add_2/yConst*
_output_shapes
: *
dtype0*
value	B :`
while/add_2AddV2while_placeholderwhile/add_2/y:output:0*
T0*
_output_shapes
: O
while/add_3/yConst*
_output_shapes
: *
dtype0*
value	B :g
while/add_3AddV2while_while_loop_counterwhile/add_3/y:output:0*
T0*
_output_shapes
: L
while/IdentityIdentitywhile/add_3:z:0*
T0*
_output_shapes
: ]
while/Identity_1Identitywhile_while_maximum_iterations*
T0*
_output_shapes
: N
while/Identity_2Identitywhile/add_2:z:0*
T0*
_output_shapes
: y
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0*
T0*
_output_shapes
: `
while/Identity_4Identitywhile/mul_2:z:0*
T0*(
_output_shapes
:€€€€€€€€€†`
while/Identity_5Identitywhile/add_1:z:0*
T0*(
_output_shapes
:€€€€€€€€€†"*
while_biasadd_biaswhile_biasadd_bias_0")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"D
while_matmul_1_recurrent_kernel!while_matmul_1_recurrent_kernel_0",
while_matmul_kernelwhile_matmul_kernel_0",
while_strided_slicewhile_strided_slice_0"®
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*e
_input_shapesT
R: : : : :€€€€€€€€€†:€€€€€€€€€†: : :	 А:
†А:А:J F
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
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:EA

_output_shapes
: 
'
_user_specified_namestrided_slice:_[

_output_shapes
: 
A
_user_specified_name)'TensorArrayUnstack/TensorListFromTensor:GC

_output_shapes
:	 А
 
_user_specified_namekernel:R	N
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A
=

_output_shapes	
:А

_user_specified_namebias
®«
„
 __inference__traced_save_1802143
file_prefix<
&read_disablecopyonread_conv1d_1_kernel: 4
&read_1_disablecopyonread_conv1d_1_bias: :
'read_2_disablecopyonread_dense_1_kernel:	†3
%read_3_disablecopyonread_dense_1_bias:C
0read_4_disablecopyonread_lstm_1_lstm_cell_kernel:	 АN
:read_5_disablecopyonread_lstm_1_lstm_cell_recurrent_kernel:
†А=
.read_6_disablecopyonread_lstm_1_lstm_cell_bias:	А,
"read_7_disablecopyonread_iteration:	 0
&read_8_disablecopyonread_learning_rate: E
/read_9_disablecopyonread_adam_m_conv1d_1_kernel: F
0read_10_disablecopyonread_adam_v_conv1d_1_kernel: <
.read_11_disablecopyonread_adam_m_conv1d_1_bias: <
.read_12_disablecopyonread_adam_v_conv1d_1_bias: K
8read_13_disablecopyonread_adam_m_lstm_1_lstm_cell_kernel:	 АK
8read_14_disablecopyonread_adam_v_lstm_1_lstm_cell_kernel:	 АV
Bread_15_disablecopyonread_adam_m_lstm_1_lstm_cell_recurrent_kernel:
†АV
Bread_16_disablecopyonread_adam_v_lstm_1_lstm_cell_recurrent_kernel:
†АE
6read_17_disablecopyonread_adam_m_lstm_1_lstm_cell_bias:	АE
6read_18_disablecopyonread_adam_v_lstm_1_lstm_cell_bias:	АB
/read_19_disablecopyonread_adam_m_dense_1_kernel:	†B
/read_20_disablecopyonread_adam_v_dense_1_kernel:	†;
-read_21_disablecopyonread_adam_m_dense_1_bias:;
-read_22_disablecopyonread_adam_v_dense_1_bias:)
read_23_disablecopyonread_total: )
read_24_disablecopyonread_count: 
savev2_const
identity_51ИҐMergeV2CheckpointsҐRead/DisableCopyOnReadҐRead/ReadVariableOpҐRead_1/DisableCopyOnReadҐRead_1/ReadVariableOpҐRead_10/DisableCopyOnReadҐRead_10/ReadVariableOpҐRead_11/DisableCopyOnReadҐRead_11/ReadVariableOpҐRead_12/DisableCopyOnReadҐRead_12/ReadVariableOpҐRead_13/DisableCopyOnReadҐRead_13/ReadVariableOpҐRead_14/DisableCopyOnReadҐRead_14/ReadVariableOpҐRead_15/DisableCopyOnReadҐRead_15/ReadVariableOpҐRead_16/DisableCopyOnReadҐRead_16/ReadVariableOpҐRead_17/DisableCopyOnReadҐRead_17/ReadVariableOpҐRead_18/DisableCopyOnReadҐRead_18/ReadVariableOpҐRead_19/DisableCopyOnReadҐRead_19/ReadVariableOpҐRead_2/DisableCopyOnReadҐRead_2/ReadVariableOpҐRead_20/DisableCopyOnReadҐRead_20/ReadVariableOpҐRead_21/DisableCopyOnReadҐRead_21/ReadVariableOpҐRead_22/DisableCopyOnReadҐRead_22/ReadVariableOpҐRead_23/DisableCopyOnReadҐRead_23/ReadVariableOpҐRead_24/DisableCopyOnReadҐRead_24/ReadVariableOpҐRead_3/DisableCopyOnReadҐRead_3/ReadVariableOpҐRead_4/DisableCopyOnReadҐRead_4/ReadVariableOpҐRead_5/DisableCopyOnReadҐRead_5/ReadVariableOpҐRead_6/DisableCopyOnReadҐRead_6/ReadVariableOpҐRead_7/DisableCopyOnReadҐRead_7/ReadVariableOpҐRead_8/DisableCopyOnReadҐRead_8/ReadVariableOpҐRead_9/DisableCopyOnReadҐRead_9/ReadVariableOpw
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
: x
Read/DisableCopyOnReadDisableCopyOnRead&read_disablecopyonread_conv1d_1_kernel"/device:CPU:0*
_output_shapes
 ¶
Read/ReadVariableOpReadVariableOp&read_disablecopyonread_conv1d_1_kernel^Read/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
: *
dtype0m
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
: e

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*"
_output_shapes
: z
Read_1/DisableCopyOnReadDisableCopyOnRead&read_1_disablecopyonread_conv1d_1_bias"/device:CPU:0*
_output_shapes
 Ґ
Read_1/ReadVariableOpReadVariableOp&read_1_disablecopyonread_conv1d_1_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0i

Identity_2IdentityRead_1/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: _

Identity_3IdentityIdentity_2:output:0"/device:CPU:0*
T0*
_output_shapes
: {
Read_2/DisableCopyOnReadDisableCopyOnRead'read_2_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 ®
Read_2/ReadVariableOpReadVariableOp'read_2_disablecopyonread_dense_1_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	†*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	†d

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	†y
Read_3/DisableCopyOnReadDisableCopyOnRead%read_3_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 °
Read_3/ReadVariableOpReadVariableOp%read_3_disablecopyonread_dense_1_bias^Read_3/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0i

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:_

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0*
_output_shapes
:Д
Read_4/DisableCopyOnReadDisableCopyOnRead0read_4_disablecopyonread_lstm_1_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ±
Read_4/ReadVariableOpReadVariableOp0read_4_disablecopyonread_lstm_1_lstm_cell_kernel^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	 А*
dtype0n

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	 Аd

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes
:	 АО
Read_5/DisableCopyOnReadDisableCopyOnRead:read_5_disablecopyonread_lstm_1_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Љ
Read_5/ReadVariableOpReadVariableOp:read_5_disablecopyonread_lstm_1_lstm_cell_recurrent_kernel^Read_5/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
†А*
dtype0p
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
†Аg
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0* 
_output_shapes
:
†АВ
Read_6/DisableCopyOnReadDisableCopyOnRead.read_6_disablecopyonread_lstm_1_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_6/ReadVariableOpReadVariableOp.read_6_disablecopyonread_lstm_1_lstm_cell_bias^Read_6/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0k
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0*
_output_shapes	
:Аv
Read_7/DisableCopyOnReadDisableCopyOnRead"read_7_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 Ъ
Read_7/ReadVariableOpReadVariableOp"read_7_disablecopyonread_iteration^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0	f
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0	*
_output_shapes
: ]
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0	*
_output_shapes
: z
Read_8/DisableCopyOnReadDisableCopyOnRead&read_8_disablecopyonread_learning_rate"/device:CPU:0*
_output_shapes
 Ю
Read_8/ReadVariableOpReadVariableOp&read_8_disablecopyonread_learning_rate^Read_8/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0f
Identity_16IdentityRead_8/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_17IdentityIdentity_16:output:0"/device:CPU:0*
T0*
_output_shapes
: Г
Read_9/DisableCopyOnReadDisableCopyOnRead/read_9_disablecopyonread_adam_m_conv1d_1_kernel"/device:CPU:0*
_output_shapes
 ≥
Read_9/ReadVariableOpReadVariableOp/read_9_disablecopyonread_adam_m_conv1d_1_kernel^Read_9/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
: *
dtype0r
Identity_18IdentityRead_9/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
: i
Identity_19IdentityIdentity_18:output:0"/device:CPU:0*
T0*"
_output_shapes
: Е
Read_10/DisableCopyOnReadDisableCopyOnRead0read_10_disablecopyonread_adam_v_conv1d_1_kernel"/device:CPU:0*
_output_shapes
 ґ
Read_10/ReadVariableOpReadVariableOp0read_10_disablecopyonread_adam_v_conv1d_1_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*"
_output_shapes
: *
dtype0s
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*"
_output_shapes
: i
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*"
_output_shapes
: Г
Read_11/DisableCopyOnReadDisableCopyOnRead.read_11_disablecopyonread_adam_m_conv1d_1_bias"/device:CPU:0*
_output_shapes
 ђ
Read_11/ReadVariableOpReadVariableOp.read_11_disablecopyonread_adam_m_conv1d_1_bias^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
: Г
Read_12/DisableCopyOnReadDisableCopyOnRead.read_12_disablecopyonread_adam_v_conv1d_1_bias"/device:CPU:0*
_output_shapes
 ђ
Read_12/ReadVariableOpReadVariableOp.read_12_disablecopyonread_adam_v_conv1d_1_bias^Read_12/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0k
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: a
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0*
_output_shapes
: Н
Read_13/DisableCopyOnReadDisableCopyOnRead8read_13_disablecopyonread_adam_m_lstm_1_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ї
Read_13/ReadVariableOpReadVariableOp8read_13_disablecopyonread_adam_m_lstm_1_lstm_cell_kernel^Read_13/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	 А*
dtype0p
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	 Аf
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0*
_output_shapes
:	 АН
Read_14/DisableCopyOnReadDisableCopyOnRead8read_14_disablecopyonread_adam_v_lstm_1_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 ї
Read_14/ReadVariableOpReadVariableOp8read_14_disablecopyonread_adam_v_lstm_1_lstm_cell_kernel^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	 А*
dtype0p
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	 Аf
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes
:	 АЧ
Read_15/DisableCopyOnReadDisableCopyOnReadBread_15_disablecopyonread_adam_m_lstm_1_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ∆
Read_15/ReadVariableOpReadVariableOpBread_15_disablecopyonread_adam_m_lstm_1_lstm_cell_recurrent_kernel^Read_15/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
†А*
dtype0q
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
†Аg
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0* 
_output_shapes
:
†АЧ
Read_16/DisableCopyOnReadDisableCopyOnReadBread_16_disablecopyonread_adam_v_lstm_1_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 ∆
Read_16/ReadVariableOpReadVariableOpBread_16_disablecopyonread_adam_v_lstm_1_lstm_cell_recurrent_kernel^Read_16/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
†А*
dtype0q
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
†Аg
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0* 
_output_shapes
:
†АЛ
Read_17/DisableCopyOnReadDisableCopyOnRead6read_17_disablecopyonread_adam_m_lstm_1_lstm_cell_bias"/device:CPU:0*
_output_shapes
 µ
Read_17/ReadVariableOpReadVariableOp6read_17_disablecopyonread_adam_m_lstm_1_lstm_cell_bias^Read_17/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0*
_output_shapes	
:АЛ
Read_18/DisableCopyOnReadDisableCopyOnRead6read_18_disablecopyonread_adam_v_lstm_1_lstm_cell_bias"/device:CPU:0*
_output_shapes
 µ
Read_18/ReadVariableOpReadVariableOp6read_18_disablecopyonread_adam_v_lstm_1_lstm_cell_bias^Read_18/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:А*
dtype0l
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:Аb
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0*
_output_shapes	
:АД
Read_19/DisableCopyOnReadDisableCopyOnRead/read_19_disablecopyonread_adam_m_dense_1_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_19/ReadVariableOpReadVariableOp/read_19_disablecopyonread_adam_m_dense_1_kernel^Read_19/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	†*
dtype0p
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	†f
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0*
_output_shapes
:	†Д
Read_20/DisableCopyOnReadDisableCopyOnRead/read_20_disablecopyonread_adam_v_dense_1_kernel"/device:CPU:0*
_output_shapes
 ≤
Read_20/ReadVariableOpReadVariableOp/read_20_disablecopyonread_adam_v_dense_1_kernel^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	†*
dtype0p
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	†f
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes
:	†В
Read_21/DisableCopyOnReadDisableCopyOnRead-read_21_disablecopyonread_adam_m_dense_1_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_21/ReadVariableOpReadVariableOp-read_21_disablecopyonread_adam_m_dense_1_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes
:В
Read_22/DisableCopyOnReadDisableCopyOnRead-read_22_disablecopyonread_adam_v_dense_1_bias"/device:CPU:0*
_output_shapes
 Ђ
Read_22/ReadVariableOpReadVariableOp-read_22_disablecopyonread_adam_v_dense_1_bias^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:*
dtype0k
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:a
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:t
Read_23/DisableCopyOnReadDisableCopyOnReadread_23_disablecopyonread_total"/device:CPU:0*
_output_shapes
 Щ
Read_23/ReadVariableOpReadVariableOpread_23_disablecopyonread_total^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
: t
Read_24/DisableCopyOnReadDisableCopyOnReadread_24_disablecopyonread_count"/device:CPU:0*
_output_shapes
 Щ
Read_24/ReadVariableOpReadVariableOpread_24_disablecopyonread_count^Read_24/DisableCopyOnRead"/device:CPU:0*
_output_shapes
: *
dtype0g
Identity_48IdentityRead_24/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
: ]
Identity_49IdentityIdentity_48:output:0"/device:CPU:0*
T0*
_output_shapes
: А
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*©

valueЯ
BЬ
B6layer_with_weights-0/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-0/bias/.ATTRIBUTES/VARIABLE_VALUEB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH°
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*G
value>B<B B B B B B B B B B B B B B B B B B B B B B B B B B Т
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *(
dtypes
2	Р
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:≥
MergeV2CheckpointsMergeV2Checkpoints/MergeV2Checkpoints/checkpoint_prefixes:output:0file_prefix"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 i
Identity_50Identityfile_prefix^MergeV2Checkpoints"/device:CPU:0*
T0*
_output_shapes
: U
Identity_51IdentityIdentity_50:output:0^NoOp*
T0*
_output_shapes
: ћ

NoOpNoOp^MergeV2Checkpoints^Read/DisableCopyOnRead^Read/ReadVariableOp^Read_1/DisableCopyOnRead^Read_1/ReadVariableOp^Read_10/DisableCopyOnRead^Read_10/ReadVariableOp^Read_11/DisableCopyOnRead^Read_11/ReadVariableOp^Read_12/DisableCopyOnRead^Read_12/ReadVariableOp^Read_13/DisableCopyOnRead^Read_13/ReadVariableOp^Read_14/DisableCopyOnRead^Read_14/ReadVariableOp^Read_15/DisableCopyOnRead^Read_15/ReadVariableOp^Read_16/DisableCopyOnRead^Read_16/ReadVariableOp^Read_17/DisableCopyOnRead^Read_17/ReadVariableOp^Read_18/DisableCopyOnRead^Read_18/ReadVariableOp^Read_19/DisableCopyOnRead^Read_19/ReadVariableOp^Read_2/DisableCopyOnRead^Read_2/ReadVariableOp^Read_20/DisableCopyOnRead^Read_20/ReadVariableOp^Read_21/DisableCopyOnRead^Read_21/ReadVariableOp^Read_22/DisableCopyOnRead^Read_22/ReadVariableOp^Read_23/DisableCopyOnRead^Read_23/ReadVariableOp^Read_24/DisableCopyOnRead^Read_24/ReadVariableOp^Read_3/DisableCopyOnRead^Read_3/ReadVariableOp^Read_4/DisableCopyOnRead^Read_4/ReadVariableOp^Read_5/DisableCopyOnRead^Read_5/ReadVariableOp^Read_6/DisableCopyOnRead^Read_6/ReadVariableOp^Read_7/DisableCopyOnRead^Read_7/ReadVariableOp^Read_8/DisableCopyOnRead^Read_8/ReadVariableOp^Read_9/DisableCopyOnRead^Read_9/ReadVariableOp*
_output_shapes
 "#
identity_51Identity_51:output:0*(
_construction_contextkEagerRuntime*I
_input_shapes8
6: : : : : : : : : : : : : : : : : : : : : : : : : : : 2(
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
Read_24/ReadVariableOpRead_24/ReadVariableOp24
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
_user_specified_nameconv1d_1/kernel:-)
'
_user_specified_nameconv1d_1/bias:.*
(
_user_specified_namedense_1/kernel:,(
&
_user_specified_namedense_1/bias:73
1
_user_specified_namelstm_1/lstm_cell/kernel:A=
;
_user_specified_name#!lstm_1/lstm_cell/recurrent_kernel:51
/
_user_specified_namelstm_1/lstm_cell/bias:)%
#
_user_specified_name	iteration:-	)
'
_user_specified_namelearning_rate:6
2
0
_user_specified_nameAdam/m/conv1d_1/kernel:62
0
_user_specified_nameAdam/v/conv1d_1/kernel:40
.
_user_specified_nameAdam/m/conv1d_1/bias:40
.
_user_specified_nameAdam/v/conv1d_1/bias:>:
8
_user_specified_name Adam/m/lstm_1/lstm_cell/kernel:>:
8
_user_specified_name Adam/v/lstm_1/lstm_cell/kernel:HD
B
_user_specified_name*(Adam/m/lstm_1/lstm_cell/recurrent_kernel:HD
B
_user_specified_name*(Adam/v/lstm_1/lstm_cell/recurrent_kernel:<8
6
_user_specified_nameAdam/m/lstm_1/lstm_cell/bias:<8
6
_user_specified_nameAdam/v/lstm_1/lstm_cell/bias:51
/
_user_specified_nameAdam/m/dense_1/kernel:51
/
_user_specified_nameAdam/v/dense_1/kernel:3/
-
_user_specified_nameAdam/m/dense_1/bias:3/
-
_user_specified_nameAdam/v/dense_1/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount:=9

_output_shapes
: 

_user_specified_nameConst
ЪL
Ґ
(__forward_gpu_lstm_with_fallback_1801949

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
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
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	 †:	 †:	 †:	 †*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
††:
††:
††:
††*
	num_splitY

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А
S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : •
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:†:†:†:†:†:†:†:†*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	† Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:А»\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:†\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:†]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:†]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:†]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:†]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:†]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:†]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:†O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0—
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*`
_output_shapesN
L:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Њ
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:€€€€€€€€€†d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:€€€€€€€€€†]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
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
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*p
_input_shapes_
]:€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_1a6f79d2-a8f3-4bbb-a1e6-f5d193edbff5*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_1801774_1801950*
go_backwards( *

time_major( :S O
+
_output_shapes
:€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias
љЋ
з
=__inference___backward_gpu_lstm_with_fallback_1798937_1799113
placeholder
placeholder_1
placeholder_2
placeholder_3
placeholder_43
/gradients_expanddims_2_grad_shape_strided_slice)
%gradients_squeeze_grad_shape_cudnnrnn+
'gradients_squeeze_1_grad_shape_cudnnrnn/
+gradients_strided_slice_grad_shape_cudnnrnn!
gradients_zeros_like_cudnnrnn6
2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose7
3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims9
5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_15
1gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1=
9gradients_transpose_grad_invertpermutation_transpose_perm*
&gradients_expanddims_grad_shape_init_h,
(gradients_expanddims_1_grad_shape_init_c-
)gradients_concat_1_grad_mod_concat_1_axisA
=gradients_transpose_1_grad_invertpermutation_transpose_1_permA
=gradients_transpose_2_grad_invertpermutation_transpose_2_permA
=gradients_transpose_3_grad_invertpermutation_transpose_3_permA
=gradients_transpose_4_grad_invertpermutation_transpose_4_permA
=gradients_transpose_5_grad_invertpermutation_transpose_5_permA
=gradients_transpose_6_grad_invertpermutation_transpose_6_permA
=gradients_transpose_7_grad_invertpermutation_transpose_7_permA
=gradients_transpose_8_grad_invertpermutation_transpose_8_perm3
/gradients_split_2_grad_concat_split_2_split_dim/
+gradients_split_grad_concat_split_split_dim3
/gradients_split_1_grad_concat_split_1_split_dim)
%gradients_concat_grad_mod_concat_axis
identity

identity_1

identity_2

identity_3

identity_4

identity_5И_
gradients/grad_ys_0Identityplaceholder*
T0*(
_output_shapes
:€€€€€€€€€†e
gradients/grad_ys_1Identityplaceholder_1*
T0*,
_output_shapes
:€€€€€€€€€†a
gradients/grad_ys_2Identityplaceholder_2*
T0*(
_output_shapes
:€€€€€€€€€†a
gradients/grad_ys_3Identityplaceholder_3*
T0*(
_output_shapes
:€€€€€€€€€†O
gradients/grad_ys_4Identityplaceholder_4*
T0*
_output_shapes
: О
!gradients/ExpandDims_2_grad/ShapeShape/gradients_expanddims_2_grad_shape_strided_slice*
T0*
_output_shapes
::нѕЂ
#gradients/ExpandDims_2_grad/ReshapeReshapegradients/grad_ys_1:output:0*gradients/ExpandDims_2_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†
gradients/Squeeze_grad/ShapeShape%gradients_squeeze_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕ•
gradients/Squeeze_grad/ReshapeReshapegradients/grad_ys_2:output:0%gradients/Squeeze_grad/Shape:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Г
gradients/Squeeze_1_grad/ShapeShape'gradients_squeeze_1_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕ©
 gradients/Squeeze_1_grad/ReshapeReshapegradients/grad_ys_3:output:0'gradients/Squeeze_1_grad/Shape:output:0*
T0*,
_output_shapes
:€€€€€€€€€†∆
gradients/AddNAddNgradients/grad_ys_0:output:0,gradients/ExpandDims_2_grad/Reshape:output:0*
N*
T0*&
_class
loc:@gradients/grad_ys_0*(
_output_shapes
:€€€€€€€€€†Л
"gradients/strided_slice_grad/ShapeShape+gradients_strided_slice_grad_shape_cudnnrnn*
T0*
_output_shapes
::нѕЖ
3gradients/strided_slice_grad/StridedSliceGrad/beginConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€{
1gradients/strided_slice_grad/StridedSliceGrad/endConst*
_output_shapes
:*
dtype0*
valueB: 
5gradients/strided_slice_grad/StridedSliceGrad/stridesConst*
_output_shapes
:*
dtype0*
valueB:£
-gradients/strided_slice_grad/StridedSliceGradStridedSliceGrad+gradients/strided_slice_grad/Shape:output:0<gradients/strided_slice_grad/StridedSliceGrad/begin:output:0:gradients/strided_slice_grad/StridedSliceGrad/end:output:0>gradients/strided_slice_grad/StridedSliceGrad/strides:output:0gradients/AddN:sum:0*
Index0*
T0*5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†*
shrink_axis_maskc
gradients/zeros_like	ZerosLikegradients_zeros_like_cudnnrnn*
T0*
_output_shapes
:Ѓ
(gradients/CudnnRNN_grad/CudnnRNNBackpropCudnnRNNBackprop2gradients_cudnnrnn_grad_cudnnrnnbackprop_transpose3gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims5gradients_cudnnrnn_grad_cudnnrnnbackprop_expanddims_11gradients_cudnnrnn_grad_cudnnrnnbackprop_concat_1+gradients_strided_slice_grad_shape_cudnnrnn%gradients_squeeze_grad_shape_cudnnrnn'gradients_squeeze_1_grad_shape_cudnnrnn6gradients/strided_slice_grad/StridedSliceGrad:output:0'gradients/Squeeze_grad/Reshape:output:0)gradients/Squeeze_1_grad/Reshape:output:0gradients_zeros_like_cudnnrnn*
T0*l
_output_shapesZ
X:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:А Ц
*gradients/transpose_grad/InvertPermutationInvertPermutation9gradients_transpose_grad_invertpermutation_transpose_perm*
_output_shapes
:ў
"gradients/transpose_grad/transpose	Transpose9gradients/CudnnRNN_grad/CudnnRNNBackprop:input_backprop:0.gradients/transpose_grad/InvertPermutation:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ Г
gradients/ExpandDims_grad/ShapeShape&gradients_expanddims_grad_shape_init_h*
T0*
_output_shapes
::нѕ∆
!gradients/ExpandDims_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_h_backprop:0(gradients/ExpandDims_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†З
!gradients/ExpandDims_1_grad/ShapeShape(gradients_expanddims_1_grad_shape_init_c*
T0*
_output_shapes
::нѕ 
#gradients/ExpandDims_1_grad/ReshapeReshape;gradients/CudnnRNN_grad/CudnnRNNBackprop:input_c_backprop:0*gradients/ExpandDims_1_grad/Shape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†^
gradients/concat_1_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Ъ
gradients/concat_1_grad/modFloorMod)gradients_concat_1_grad_mod_concat_1_axis%gradients/concat_1_grad/Rank:output:0*
T0*
_output_shapes
: h
gradients/concat_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_2Const*
_output_shapes
:*
dtype0*
valueB:А(j
gradients/concat_1_grad/Shape_3Const*
_output_shapes
:*
dtype0*
valueB:А(k
gradients/concat_1_grad/Shape_4Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_5Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_6Const*
_output_shapes
:*
dtype0*
valueB:А»k
gradients/concat_1_grad/Shape_7Const*
_output_shapes
:*
dtype0*
valueB:А»j
gradients/concat_1_grad/Shape_8Const*
_output_shapes
:*
dtype0*
valueB:†j
gradients/concat_1_grad/Shape_9Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_10Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_11Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_12Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_13Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_14Const*
_output_shapes
:*
dtype0*
valueB:†k
 gradients/concat_1_grad/Shape_15Const*
_output_shapes
:*
dtype0*
valueB:†ш
$gradients/concat_1_grad/ConcatOffsetConcatOffsetgradients/concat_1_grad/mod:z:0&gradients/concat_1_grad/Shape:output:0(gradients/concat_1_grad/Shape_1:output:0(gradients/concat_1_grad/Shape_2:output:0(gradients/concat_1_grad/Shape_3:output:0(gradients/concat_1_grad/Shape_4:output:0(gradients/concat_1_grad/Shape_5:output:0(gradients/concat_1_grad/Shape_6:output:0(gradients/concat_1_grad/Shape_7:output:0(gradients/concat_1_grad/Shape_8:output:0(gradients/concat_1_grad/Shape_9:output:0)gradients/concat_1_grad/Shape_10:output:0)gradients/concat_1_grad/Shape_11:output:0)gradients/concat_1_grad/Shape_12:output:0)gradients/concat_1_grad/Shape_13:output:0)gradients/concat_1_grad/Shape_14:output:0)gradients/concat_1_grad/Shape_15:output:0*
N*t
_output_shapesb
`::::::::::::::::м
gradients/concat_1_grad/SliceSlice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:0&gradients/concat_1_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_1Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:1(gradients/concat_1_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_2Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:2(gradients/concat_1_grad/Shape_2:output:0*
Index0*
T0*
_output_shapes	
:А(р
gradients/concat_1_grad/Slice_3Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:3(gradients/concat_1_grad/Shape_3:output:0*
Index0*
T0*
_output_shapes	
:А(с
gradients/concat_1_grad/Slice_4Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:4(gradients/concat_1_grad/Shape_4:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_5Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:5(gradients/concat_1_grad/Shape_5:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_6Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:6(gradients/concat_1_grad/Shape_6:output:0*
Index0*
T0*
_output_shapes

:А»с
gradients/concat_1_grad/Slice_7Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:7(gradients/concat_1_grad/Shape_7:output:0*
Index0*
T0*
_output_shapes

:А»р
gradients/concat_1_grad/Slice_8Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:8(gradients/concat_1_grad/Shape_8:output:0*
Index0*
T0*
_output_shapes	
:†р
gradients/concat_1_grad/Slice_9Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0-gradients/concat_1_grad/ConcatOffset:offset:9(gradients/concat_1_grad/Shape_9:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_10Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:10)gradients/concat_1_grad/Shape_10:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_11Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:11)gradients/concat_1_grad/Shape_11:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_12Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:12)gradients/concat_1_grad/Shape_12:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_13Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:13)gradients/concat_1_grad/Shape_13:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_14Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:14)gradients/concat_1_grad/Shape_14:output:0*
Index0*
T0*
_output_shapes	
:†у
 gradients/concat_1_grad/Slice_15Slice:gradients/CudnnRNN_grad/CudnnRNNBackprop:params_backprop:0.gradients/concat_1_grad/ConcatOffset:offset:15)gradients/concat_1_grad/Shape_15:output:0*
Index0*
T0*
_output_shapes	
:†m
gradients/Reshape_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       Ґ
gradients/Reshape_grad/ReshapeReshape&gradients/concat_1_grad/Slice:output:0%gradients/Reshape_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_1_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_1_grad/ReshapeReshape(gradients/concat_1_grad/Slice_1:output:0'gradients/Reshape_1_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_2_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_2_grad/ReshapeReshape(gradients/concat_1_grad/Slice_2:output:0'gradients/Reshape_2_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_3_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†       ®
 gradients/Reshape_3_grad/ReshapeReshape(gradients/concat_1_grad/Slice_3:output:0'gradients/Reshape_3_grad/Shape:output:0*
T0*
_output_shapes
:	† o
gradients/Reshape_4_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_4_grad/ReshapeReshape(gradients/concat_1_grad/Slice_4:output:0'gradients/Reshape_4_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_5_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_5_grad/ReshapeReshape(gradients/concat_1_grad/Slice_5:output:0'gradients/Reshape_5_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_6_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_6_grad/ReshapeReshape(gradients/concat_1_grad/Slice_6:output:0'gradients/Reshape_6_grad/Shape:output:0*
T0* 
_output_shapes
:
††o
gradients/Reshape_7_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB"†   †   ©
 gradients/Reshape_7_grad/ReshapeReshape(gradients/concat_1_grad/Slice_7:output:0'gradients/Reshape_7_grad/Shape:output:0*
T0* 
_output_shapes
:
††i
gradients/Reshape_8_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†§
 gradients/Reshape_8_grad/ReshapeReshape(gradients/concat_1_grad/Slice_8:output:0'gradients/Reshape_8_grad/Shape:output:0*
T0*
_output_shapes	
:†i
gradients/Reshape_9_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†§
 gradients/Reshape_9_grad/ReshapeReshape(gradients/concat_1_grad/Slice_9:output:0'gradients/Reshape_9_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_10_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_10_grad/ReshapeReshape)gradients/concat_1_grad/Slice_10:output:0(gradients/Reshape_10_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_11_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_11_grad/ReshapeReshape)gradients/concat_1_grad/Slice_11:output:0(gradients/Reshape_11_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_12_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_12_grad/ReshapeReshape)gradients/concat_1_grad/Slice_12:output:0(gradients/Reshape_12_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_13_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_13_grad/ReshapeReshape)gradients/concat_1_grad/Slice_13:output:0(gradients/Reshape_13_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_14_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_14_grad/ReshapeReshape)gradients/concat_1_grad/Slice_14:output:0(gradients/Reshape_14_grad/Shape:output:0*
T0*
_output_shapes	
:†j
gradients/Reshape_15_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:†І
!gradients/Reshape_15_grad/ReshapeReshape)gradients/concat_1_grad/Slice_15:output:0(gradients/Reshape_15_grad/Shape:output:0*
T0*
_output_shapes	
:†Ь
,gradients/transpose_1_grad/InvertPermutationInvertPermutation=gradients_transpose_1_grad_invertpermutation_transpose_1_perm*
_output_shapes
:ґ
$gradients/transpose_1_grad/transpose	Transpose'gradients/Reshape_grad/Reshape:output:00gradients/transpose_1_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_2_grad/InvertPermutationInvertPermutation=gradients_transpose_2_grad_invertpermutation_transpose_2_perm*
_output_shapes
:Є
$gradients/transpose_2_grad/transpose	Transpose)gradients/Reshape_1_grad/Reshape:output:00gradients/transpose_2_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_3_grad/InvertPermutationInvertPermutation=gradients_transpose_3_grad_invertpermutation_transpose_3_perm*
_output_shapes
:Є
$gradients/transpose_3_grad/transpose	Transpose)gradients/Reshape_2_grad/Reshape:output:00gradients/transpose_3_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_4_grad/InvertPermutationInvertPermutation=gradients_transpose_4_grad_invertpermutation_transpose_4_perm*
_output_shapes
:Є
$gradients/transpose_4_grad/transpose	Transpose)gradients/Reshape_3_grad/Reshape:output:00gradients/transpose_4_grad/InvertPermutation:y:0*
T0*
_output_shapes
:	 †Ь
,gradients/transpose_5_grad/InvertPermutationInvertPermutation=gradients_transpose_5_grad_invertpermutation_transpose_5_perm*
_output_shapes
:є
$gradients/transpose_5_grad/transpose	Transpose)gradients/Reshape_4_grad/Reshape:output:00gradients/transpose_5_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_6_grad/InvertPermutationInvertPermutation=gradients_transpose_6_grad_invertpermutation_transpose_6_perm*
_output_shapes
:є
$gradients/transpose_6_grad/transpose	Transpose)gradients/Reshape_5_grad/Reshape:output:00gradients/transpose_6_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_7_grad/InvertPermutationInvertPermutation=gradients_transpose_7_grad_invertpermutation_transpose_7_perm*
_output_shapes
:є
$gradients/transpose_7_grad/transpose	Transpose)gradients/Reshape_6_grad/Reshape:output:00gradients/transpose_7_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††Ь
,gradients/transpose_8_grad/InvertPermutationInvertPermutation=gradients_transpose_8_grad_invertpermutation_transpose_8_perm*
_output_shapes
:є
$gradients/transpose_8_grad/transpose	Transpose)gradients/Reshape_7_grad/Reshape:output:00gradients/transpose_8_grad/InvertPermutation:y:0*
T0* 
_output_shapes
:
††з
gradients/split_2_grad/concatConcatV2)gradients/Reshape_8_grad/Reshape:output:0)gradients/Reshape_9_grad/Reshape:output:0*gradients/Reshape_10_grad/Reshape:output:0*gradients/Reshape_11_grad/Reshape:output:0*gradients/Reshape_12_grad/Reshape:output:0*gradients/Reshape_13_grad/Reshape:output:0*gradients/Reshape_14_grad/Reshape:output:0*gradients/Reshape_15_grad/Reshape:output:0/gradients_split_2_grad_concat_split_2_split_dim*
N*
T0*
_output_shapes	
:А
ѓ
gradients/split_grad/concatConcatV2(gradients/transpose_1_grad/transpose:y:0(gradients/transpose_2_grad/transpose:y:0(gradients/transpose_3_grad/transpose:y:0(gradients/transpose_4_grad/transpose:y:0+gradients_split_grad_concat_split_split_dim*
N*
T0*
_output_shapes
:	 Аґ
gradients/split_1_grad/concatConcatV2(gradients/transpose_5_grad/transpose:y:0(gradients/transpose_6_grad/transpose:y:0(gradients/transpose_7_grad/transpose:y:0(gradients/transpose_8_grad/transpose:y:0/gradients_split_1_grad_concat_split_1_split_dim*
N*
T0* 
_output_shapes
:
†А\
gradients/concat_grad/RankConst*
_output_shapes
: *
dtype0*
value	B :Т
gradients/concat_grad/modFloorMod%gradients_concat_grad_mod_concat_axis#gradients/concat_grad/Rank:output:0*
T0*
_output_shapes
: f
gradients/concat_grad/ShapeConst*
_output_shapes
:*
dtype0*
valueB:Аh
gradients/concat_grad/Shape_1Const*
_output_shapes
:*
dtype0*
valueB:А 
"gradients/concat_grad/ConcatOffsetConcatOffsetgradients/concat_grad/mod:z:0$gradients/concat_grad/Shape:output:0&gradients/concat_grad/Shape_1:output:0*
N* 
_output_shapes
::“
gradients/concat_grad/SliceSlice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:0$gradients/concat_grad/Shape:output:0*
Index0*
T0*
_output_shapes	
:А÷
gradients/concat_grad/Slice_1Slice&gradients/split_2_grad/concat:output:0+gradients/concat_grad/ConcatOffset:offset:1&gradients/concat_grad/Shape_1:output:0*
Index0*
T0*
_output_shapes	
:А{
IdentityIdentity&gradients/transpose_grad/transpose:y:0*
T0*4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ u

Identity_1Identity*gradients/ExpandDims_grad/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†w

Identity_2Identity,gradients/ExpandDims_1_grad/Reshape:output:0*
T0*(
_output_shapes
:€€€€€€€€€†f

Identity_3Identity$gradients/split_grad/concat:output:0*
T0*
_output_shapes
:	 Аi

Identity_4Identity&gradients/split_1_grad/concat:output:0*
T0* 
_output_shapes
:
†Аd

Identity_5Identity&gradients/concat_grad/Slice_1:output:0*
T0*
_output_shapes	
:А"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"!

identity_5Identity_5:output:0*(
_construction_contextkEagerRuntime*Ф
_input_shapesВ
€:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†: :€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€€€€€€€€€€†::€€€€€€€€€€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:А ::€€€€€€€€€†:€€€€€€€€€†: ::::::::: : : : *=
api_implements+)lstm_e50da1fd-a6fc-421b-a64b-5e15fff47e4f*
api_preferred_deviceGPU*C
forward_function_name*(__forward_gpu_lstm_with_fallback_1799112*
go_backwards( *

time_major( :. *
(
_output_shapes
:€€€€€€€€€†:2.
,
_output_shapes
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:.*
(
_output_shapes
:€€€€€€€€€†:

_output_shapes
: :WS
(
_output_shapes
:€€€€€€€€€†
'
_user_specified_namestrided_slice:VR
,
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
CudnnRNN:VR
,
_output_shapes
:€€€€€€€€€†
"
_user_specified_name
CudnnRNN:_[
5
_output_shapes#
!:€€€€€€€€€€€€€€€€€€†
"
_user_specified_name
CudnnRNN:B	>

_output_shapes
:
"
_user_specified_name
CudnnRNN:_
[
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
#
_user_specified_name	transpose:XT
,
_output_shapes
:€€€€€€€€€†
$
_user_specified_name
ExpandDims:ZV
,
_output_shapes
:€€€€€€€€€†
&
_user_specified_nameExpandDims_1:FB

_output_shapes

:А 
"
_user_specified_name
concat_1:JF

_output_shapes
:
(
_user_specified_nametranspose/perm:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:EA

_output_shapes
: 
'
_user_specified_nameconcat_1/axis:LH

_output_shapes
:
*
_user_specified_nametranspose_1/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_2/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_3/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_4/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_5/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_6/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_7/perm:LH

_output_shapes
:
*
_user_specified_nametranspose_8/perm:IE

_output_shapes
: 
+
_user_specified_namesplit_2/split_dim:GC

_output_shapes
: 
)
_user_specified_namesplit/split_dim:IE

_output_shapes
: 
+
_user_specified_namesplit_1/split_dim:C?

_output_shapes
: 
%
_user_specified_nameconcat/axis
µL
Ґ
(__forward_gpu_lstm_with_fallback_1801091

inputs
init_h_0
init_c_0

kernel
recurrent_kernel
bias
identity

identity_1

identity_2

identity_3

identity_4
strided_slice
cudnnrnn

cudnnrnn_0

cudnnrnn_1

cudnnrnn_2
	transpose

expanddims
expanddims_1
concat_1
transpose_perm

init_h

init_c
concat_1_axis
transpose_1_perm
transpose_2_perm
transpose_3_perm
transpose_4_perm
transpose_5_perm
transpose_6_perm
transpose_7_perm
transpose_8_perm
split_2_split_dim
split_split_dim
split_1_split_dim
concat_axisИc
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
value	B : r

ExpandDims
ExpandDimsinit_h_0ExpandDims/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†R
ExpandDims_1/dimConst*
_output_shapes
: *
dtype0*
value	B : v
ExpandDims_1
ExpandDimsinit_c_0ExpandDims_1/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :М
splitSplitsplit/split_dim:output:0kernel*
T0*@
_output_shapes.
,:	 †:	 †:	 †:	 †*
	num_splitS
split_1/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ю
split_1Splitsplit_1/split_dim:output:0recurrent_kernel*
T0*D
_output_shapes2
0:
††:
††:
††:
††*
	num_splitY

zeros_likeConst*
_output_shapes	
:А*
dtype0*
valueBА*    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B : r
concatConcatV2zeros_like:output:0biasconcat/axis:output:0*
N*
T0*
_output_shapes	
:А
S
split_2/split_dimConst*
_output_shapes
: *
dtype0*
value	B : •
split_2Splitsplit_2/split_dim:output:0concat:output:0*
T0*L
_output_shapes:
8:†:†:†:†:†:†:†:†*
	num_splitX
ConstConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€a
transpose_1/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_1	Transposesplit:output:0transpose_1/perm:output:0*
T0*
_output_shapes
:	† Y
ReshapeReshapetranspose_1:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_2/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_2	Transposesplit:output:1transpose_2/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_1Reshapetranspose_2:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_3/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_3	Transposesplit:output:2transpose_3/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_2Reshapetranspose_3:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_4/permConst*
_output_shapes
:*
dtype0*
valueB"       m
transpose_4	Transposesplit:output:3transpose_4/perm:output:0*
T0*
_output_shapes
:	† [
	Reshape_3Reshapetranspose_4:y:0Const:output:0*
T0*
_output_shapes	
:А(a
transpose_5/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_5	Transposesplit_1:output:0transpose_5/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_4Reshapetranspose_5:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_6/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_6	Transposesplit_1:output:1transpose_6/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_5Reshapetranspose_6:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_7/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_7	Transposesplit_1:output:2transpose_7/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_6Reshapetranspose_7:y:0Const:output:0*
T0*
_output_shapes

:А»a
transpose_8/permConst*
_output_shapes
:*
dtype0*
valueB"       p
transpose_8	Transposesplit_1:output:3transpose_8/perm:output:0*
T0* 
_output_shapes
:
††\
	Reshape_7Reshapetranspose_8:y:0Const:output:0*
T0*
_output_shapes

:А»\
	Reshape_8Reshapesplit_2:output:0Const:output:0*
T0*
_output_shapes	
:†\
	Reshape_9Reshapesplit_2:output:1Const:output:0*
T0*
_output_shapes	
:†]

Reshape_10Reshapesplit_2:output:2Const:output:0*
T0*
_output_shapes	
:†]

Reshape_11Reshapesplit_2:output:3Const:output:0*
T0*
_output_shapes	
:†]

Reshape_12Reshapesplit_2:output:4Const:output:0*
T0*
_output_shapes	
:†]

Reshape_13Reshapesplit_2:output:5Const:output:0*
T0*
_output_shapes	
:†]

Reshape_14Reshapesplit_2:output:6Const:output:0*
T0*
_output_shapes	
:†]

Reshape_15Reshapesplit_2:output:7Const:output:0*
T0*
_output_shapes	
:†O
concat_1/axisConst*
_output_shapes
: *
dtype0*
value	B : Д

concat_1_0ConcatV2Reshape:output:0Reshape_1:output:0Reshape_2:output:0Reshape_3:output:0Reshape_4:output:0Reshape_5:output:0Reshape_6:output:0Reshape_7:output:0Reshape_8:output:0Reshape_9:output:0Reshape_10:output:0Reshape_11:output:0Reshape_12:output:0Reshape_13:output:0Reshape_14:output:0Reshape_15:output:0concat_1/axis:output:0*
N*
T0Џ
CudnnRNNCudnnRNNtranspose_0:y:0ExpandDims:output:0ExpandDims_1:output:0concat_1_0:output:0*
T0*i
_output_shapesW
U:€€€€€€€€€€€€€€€€€€†:€€€€€€€€€†:€€€€€€€€€†:f
strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB:
€€€€€€€€€_
strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB: _
strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Њ
strided_slice_0StridedSliceCudnnRNN:output:0strided_slice/stack:output:0strided_slice/stack_1:output:0strided_slice/stack_2:output:0*
Index0*
T0*
shrink_axis_maskq
SqueezeSqueezeCudnnRNN:output_h:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 s
	Squeeze_1SqueezeCudnnRNN:output_c:0*
T0*(
_output_shapes
:€€€€€€€€€†*
squeeze_dims
 R
ExpandDims_2/dimConst*
_output_shapes
: *
dtype0*
value	B :Ж
ExpandDims_2
ExpandDimsstrided_slice_0:output:0ExpandDims_2/dim:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *   @a
IdentityIdentitystrided_slice_0:output:0*
T0*(
_output_shapes
:€€€€€€€€€†d

Identity_1IdentityExpandDims_2:output:0*
T0*,
_output_shapes
:€€€€€€€€€†[

Identity_2IdentitySqueeze:output:0*
T0*(
_output_shapes
:€€€€€€€€€†]

Identity_3IdentitySqueeze_1:output:0*
T0*(
_output_shapes
:€€€€€€€€€†I

Identity_4Identityruntime:output:0*
T0*
_output_shapes
: "
concat_1concat_1_0:output:0"'
concat_1_axisconcat_1/axis:output:0"#
concat_axisconcat/axis:output:0"
cudnnrnnCudnnRNN:output_h:0"!

cudnnrnn_0CudnnRNN:output_c:0"

cudnnrnn_1CudnnRNN:output:0"&

cudnnrnn_2CudnnRNN:reserve_space:0"!

expanddimsExpandDims:output:0"%
expanddims_1ExpandDims_1:output:0"
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0"!

identity_3Identity_3:output:0"!

identity_4Identity_4:output:0"
init_cinit_c_0"
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
transpose_6_permtranspose_6/perm:output:0"-
transpose_7_permtranspose_7/perm:output:0"-
transpose_8_permtranspose_8/perm:output:0")
transpose_permtranspose/perm:output:0*(
_construction_contextkEagerRuntime*y
_input_shapesh
f:€€€€€€€€€€€€€€€€€€ :€€€€€€€€€†:€€€€€€€€€†:	 А:
†А:А*=
api_implements+)lstm_d89a24ba-f568-46f6-8273-6da96719f439*
api_preferred_deviceGPU*Y
backward_function_name?=__inference___backward_gpu_lstm_with_fallback_1800916_1801092*
go_backwards( *

time_major( :\ X
4
_output_shapes"
 :€€€€€€€€€€€€€€€€€€ 
 
_user_specified_nameinputs:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_h:PL
(
_output_shapes
:€€€€€€€€€†
 
_user_specified_nameinit_c:GC

_output_shapes
:	 А
 
_user_specified_namekernel:RN
 
_output_shapes
:
†А
*
_user_specified_namerecurrent_kernel:A=

_output_shapes	
:А

_user_specified_namebias"нL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*Љ
serving_default®
M
conv1d_1_input;
 serving_default_conv1d_1_input:0€€€€€€€€€;
dense_10
StatefulPartitionedCall:0€€€€€€€€€tensorflow/serving/predict:ыЙ
џ
layer_with_weights-0
layer-0
layer_with_weights-1
layer-1
layer_with_weights-2
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
Ё
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses

kernel
bias
 _jit_compiled_convolution_op"
_tf_keras_layer
Џ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
ї
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias"
_tf_keras_layer
Q
0
1
'2
(3
)4
%5
&6"
trackable_list_wrapper
Q
0
1
'2
(3
)4
%5
&6"
trackable_list_wrapper
 "
trackable_list_wrapper
 
*non_trainable_variables

+layers
,metrics
-layer_regularization_losses
.layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
п
/trace_0
0trace_12Є
>__inference_model_10_CNN-LSTM_univariate_layer_call_fn_1800084
>__inference_model_10_CNN-LSTM_univariate_layer_call_fn_1800103µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z/trace_0z0trace_1
•
1trace_0
2trace_12о
Y__inference_model_10_CNN-LSTM_univariate_layer_call_and_return_conditional_losses_1799615
Y__inference_model_10_CNN-LSTM_univariate_layer_call_and_return_conditional_losses_1800065µ
Ѓ≤™
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsҐ
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 z1trace_0z2trace_1
‘B—
"__inference__wrapped_model_1798257conv1d_1_input"Ш
С≤Н
FullArgSpec
argsЪ

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
Ь
3
_variables
4_iterations
5_learning_rate
6_index_dict
7
_momentums
8_velocities
9_update_step_xla"
experimentalOptimizer
,
:serving_default"
signature_map
.
0
1"
trackable_list_wrapper
.
0
1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
;non_trainable_variables

<layers
=metrics
>layer_regularization_losses
?layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
д
@trace_02«
*__inference_conv1d_1_layer_call_fn_1800174Ш
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 z@trace_0
€
Atrace_02в
E__inference_conv1d_1_layer_call_and_return_conditional_losses_1800192Ш
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 zAtrace_0
%:# 2conv1d_1/kernel
: 2conv1d_1/bias
™2І§
Ы≤Ч
FullArgSpec
argsЪ
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
annotations™ *
 0
5
'0
(1
)2"
trackable_list_wrapper
5
'0
(1
)2"
trackable_list_wrapper
 "
trackable_list_wrapper
є

Bstates
Cnon_trainable_variables

Dlayers
Emetrics
Flayer_regularization_losses
Glayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
а
Htrace_0
Itrace_1
Jtrace_2
Ktrace_32х
(__inference_lstm_1_layer_call_fn_1800203
(__inference_lstm_1_layer_call_fn_1800214
(__inference_lstm_1_layer_call_fn_1800225
(__inference_lstm_1_layer_call_fn_1800236 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zHtrace_0zItrace_1zJtrace_2zKtrace_3
ћ
Ltrace_0
Mtrace_1
Ntrace_2
Otrace_32б
C__inference_lstm_1_layer_call_and_return_conditional_losses_1800665
C__inference_lstm_1_layer_call_and_return_conditional_losses_1801094
C__inference_lstm_1_layer_call_and_return_conditional_losses_1801523
C__inference_lstm_1_layer_call_and_return_conditional_losses_1801952 
√≤њ
FullArgSpec:
args2Ъ/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsҐ

 
p 

 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 zLtrace_0zMtrace_1zNtrace_2zOtrace_3
"
_generic_user_object
ш
P	variables
Qtrainable_variables
Rregularization_losses
S	keras_api
T__call__
*U&call_and_return_all_conditional_losses
V_random_generator
W
state_size

'kernel
(recurrent_kernel
)bias"
_tf_keras_layer
 "
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
.
%0
&1"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
Xnon_trainable_variables

Ylayers
Zmetrics
[layer_regularization_losses
\layer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
г
]trace_02∆
)__inference_dense_1_layer_call_fn_1801961Ш
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 z]trace_0
ю
^trace_02б
D__inference_dense_1_layer_call_and_return_conditional_losses_1801971Ш
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 z^trace_0
!:	†2dense_1/kernel
:2dense_1/bias
*:(	 А2lstm_1/lstm_cell/kernel
5:3
†А2!lstm_1/lstm_cell/recurrent_kernel
$:"А2lstm_1/lstm_cell/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
'
_0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
ДBБ
>__inference_model_10_CNN-LSTM_univariate_layer_call_fn_1800084conv1d_1_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ДBБ
>__inference_model_10_CNN-LSTM_univariate_layer_call_fn_1800103conv1d_1_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
Y__inference_model_10_CNN-LSTM_univariate_layer_call_and_return_conditional_losses_1799615conv1d_1_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ЯBЬ
Y__inference_model_10_CNN-LSTM_univariate_layer_call_and_return_conditional_losses_1800065conv1d_1_input"ђ
•≤°
FullArgSpec)
args!Ъ
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
О
40
`1
a2
b3
c4
d5
e6
f7
g8
h9
i10
j11
k12
l13
m14"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
Q
`0
b1
d2
f3
h4
j5
l6"
trackable_list_wrapper
Q
a0
c1
e2
g3
i4
k5
m6"
trackable_list_wrapper
µ2≤ѓ
¶≤Ґ
FullArgSpec*
args"Ъ

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 0
яB№
%__inference_signature_wrapper_1800165conv1d_1_input"†
Щ≤Х
FullArgSpec
argsЪ 
varargs
 
varkw
 
defaults
 #

kwonlyargsЪ
jconv1d_1_input
kwonlydefaults
 
annotations™ *
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
‘B—
*__inference_conv1d_1_layer_call_fn_1800174inputs"Ш
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
пBм
E__inference_conv1d_1_layer_call_and_return_conditional_losses_1800192inputs"Ш
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
щBц
(__inference_lstm_1_layer_call_fn_1800203inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
щBц
(__inference_lstm_1_layer_call_fn_1800214inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
чBф
(__inference_lstm_1_layer_call_fn_1800225inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
чBф
(__inference_lstm_1_layer_call_fn_1800236inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ФBС
C__inference_lstm_1_layer_call_and_return_conditional_losses_1800665inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ФBС
C__inference_lstm_1_layer_call_and_return_conditional_losses_1801094inputs_0"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ТBП
C__inference_lstm_1_layer_call_and_return_conditional_losses_1801523inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
ТBП
C__inference_lstm_1_layer_call_and_return_conditional_losses_1801952inputs"љ
ґ≤≤
FullArgSpec:
args2Ъ/
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

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
5
'0
(1
)2"
trackable_list_wrapper
5
'0
(1
)2"
trackable_list_wrapper
 "
trackable_list_wrapper
≠
nnon_trainable_variables

olayers
pmetrics
qlayer_regularization_losses
rlayer_metrics
P	variables
Qtrainable_variables
Rregularization_losses
T__call__
*U&call_and_return_all_conditional_losses
&U"call_and_return_conditional_losses"
_generic_user_object
є2ґ≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
є2ґ≥
ђ≤®
FullArgSpec+
args#Ъ 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsҐ
p 

kwonlyargsЪ 
kwonlydefaults
 
annotations™ *
 
"
_generic_user_object
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
”B–
)__inference_dense_1_layer_call_fn_1801961inputs"Ш
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
оBл
D__inference_dense_1_layer_call_and_return_conditional_losses_1801971inputs"Ш
С≤Н
FullArgSpec
argsЪ

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
annotations™ *
 
N
s	variables
t	keras_api
	utotal
	vcount"
_tf_keras_metric
*:( 2Adam/m/conv1d_1/kernel
*:( 2Adam/v/conv1d_1/kernel
 : 2Adam/m/conv1d_1/bias
 : 2Adam/v/conv1d_1/bias
/:-	 А2Adam/m/lstm_1/lstm_cell/kernel
/:-	 А2Adam/v/lstm_1/lstm_cell/kernel
::8
†А2(Adam/m/lstm_1/lstm_cell/recurrent_kernel
::8
†А2(Adam/v/lstm_1/lstm_cell/recurrent_kernel
):'А2Adam/m/lstm_1/lstm_cell/bias
):'А2Adam/v/lstm_1/lstm_cell/bias
&:$	†2Adam/m/dense_1/kernel
&:$	†2Adam/v/dense_1/kernel
:2Adam/m/dense_1/bias
:2Adam/v/dense_1/bias
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
.
u0
v1"
trackable_list_wrapper
-
s	variables"
_generic_user_object
:  (2total
:  (2countЯ
"__inference__wrapped_model_1798257y'()%&;Ґ8
1Ґ.
,К)
conv1d_1_input€€€€€€€€€
™ "1™.
,
dense_1!К
dense_1€€€€€€€€€і
E__inference_conv1d_1_layer_call_and_return_conditional_losses_1800192k3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "0Ґ-
&К#
tensor_0€€€€€€€€€ 
Ъ О
*__inference_conv1d_1_layer_call_fn_1800174`3Ґ0
)Ґ&
$К!
inputs€€€€€€€€€
™ "%К"
unknown€€€€€€€€€ ђ
D__inference_dense_1_layer_call_and_return_conditional_losses_1801971d%&0Ґ-
&Ґ#
!К
inputs€€€€€€€€€†
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ Ж
)__inference_dense_1_layer_call_fn_1801961Y%&0Ґ-
&Ґ#
!К
inputs€€€€€€€€€†
™ "!К
unknown€€€€€€€€€Ќ
C__inference_lstm_1_layer_call_and_return_conditional_losses_1800665Е'()OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€ 

 
p

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€†
Ъ Ќ
C__inference_lstm_1_layer_call_and_return_conditional_losses_1801094Е'()OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€ 

 
p 

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€†
Ъ Љ
C__inference_lstm_1_layer_call_and_return_conditional_losses_1801523u'()?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€ 

 
p

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€†
Ъ Љ
C__inference_lstm_1_layer_call_and_return_conditional_losses_1801952u'()?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€ 

 
p 

 
™ "-Ґ*
#К 
tensor_0€€€€€€€€€†
Ъ ¶
(__inference_lstm_1_layer_call_fn_1800203z'()OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€ 

 
p

 
™ ""К
unknown€€€€€€€€€†¶
(__inference_lstm_1_layer_call_fn_1800214z'()OҐL
EҐB
4Ъ1
/К,
inputs_0€€€€€€€€€€€€€€€€€€ 

 
p 

 
™ ""К
unknown€€€€€€€€€†Ц
(__inference_lstm_1_layer_call_fn_1800225j'()?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€ 

 
p

 
™ ""К
unknown€€€€€€€€€†Ц
(__inference_lstm_1_layer_call_fn_1800236j'()?Ґ<
5Ґ2
$К!
inputs€€€€€€€€€ 

 
p 

 
™ ""К
unknown€€€€€€€€€†ў
Y__inference_model_10_CNN-LSTM_univariate_layer_call_and_return_conditional_losses_1799615|'()%&CҐ@
9Ґ6
,К)
conv1d_1_input€€€€€€€€€
p

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ў
Y__inference_model_10_CNN-LSTM_univariate_layer_call_and_return_conditional_losses_1800065|'()%&CҐ@
9Ґ6
,К)
conv1d_1_input€€€€€€€€€
p 

 
™ ",Ґ)
"К
tensor_0€€€€€€€€€
Ъ ≥
>__inference_model_10_CNN-LSTM_univariate_layer_call_fn_1800084q'()%&CҐ@
9Ґ6
,К)
conv1d_1_input€€€€€€€€€
p

 
™ "!К
unknown€€€€€€€€€≥
>__inference_model_10_CNN-LSTM_univariate_layer_call_fn_1800103q'()%&CҐ@
9Ґ6
,К)
conv1d_1_input€€€€€€€€€
p 

 
™ "!К
unknown€€€€€€€€€µ
%__inference_signature_wrapper_1800165Л'()%&MҐJ
Ґ 
C™@
>
conv1d_1_input,К)
conv1d_1_input€€€€€€€€€"1™.
,
dense_1!К
dense_1€€€€€€€€€