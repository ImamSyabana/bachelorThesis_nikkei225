щ
иЈ
D
AddV2
x"T
y"T
z"T"
Ttype:
2	
^
AssignVariableOp
resource
value"dtype"
dtypetype"
validate_shapebool( 

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
$
DisableCopyOnRead
resource
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

MergeV2Checkpoints
checkpoint_prefixes
destination_prefix"
delete_old_dirsbool("
allow_missing_filesbool( 
?
Mul
x"T
y"T
z"T"
Ttype:
2	
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
dtypetype
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
list(type)(0
l
SaveV2

prefix
tensor_names
shape_and_slices
tensors2dtypes"
dtypes
list(type)(0
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
output"out_typeэout_type"	
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
С
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
executor_typestring Ј
@
StaticRegexFullMatch	
input

output
"
patternstring
ї
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
А
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleщшelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsintџџџџџџџџџ
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	
А
VarHandleOp
resource"
	containerstring "
shared_namestring "

debug_namestring "
dtypetype"
shapeshape"#
allowed_deviceslist(string)
 

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
"serve*2.15.02v2.15.0-rc1-8-g6887368d6d48н№
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
Є
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
Є
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
Џ
Adam/v/dense_1/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/v/dense_1/kernel/*
dtype0*
shape:	р*&
shared_nameAdam/v/dense_1/kernel

)Adam/v/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/v/dense_1/kernel*
_output_shapes
:	р*
dtype0
Џ
Adam/m/dense_1/kernelVarHandleOp*
_output_shapes
: *&

debug_nameAdam/m/dense_1/kernel/*
dtype0*
shape:	р*&
shared_nameAdam/m/dense_1/kernel

)Adam/m/dense_1/kernel/Read/ReadVariableOpReadVariableOpAdam/m/dense_1/kernel*
_output_shapes
:	р*
dtype0
Р
Adam/v/lstm_3/lstm_cell/biasVarHandleOp*
_output_shapes
: *-

debug_nameAdam/v/lstm_3/lstm_cell/bias/*
dtype0*
shape:*-
shared_nameAdam/v/lstm_3/lstm_cell/bias

0Adam/v/lstm_3/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/v/lstm_3/lstm_cell/bias*
_output_shapes	
:*
dtype0
Р
Adam/m/lstm_3/lstm_cell/biasVarHandleOp*
_output_shapes
: *-

debug_nameAdam/m/lstm_3/lstm_cell/bias/*
dtype0*
shape:*-
shared_nameAdam/m/lstm_3/lstm_cell/bias

0Adam/m/lstm_3/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/m/lstm_3/lstm_cell/bias*
_output_shapes	
:*
dtype0
щ
(Adam/v/lstm_3/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *9

debug_name+)Adam/v/lstm_3/lstm_cell/recurrent_kernel/*
dtype0*
shape:
р*9
shared_name*(Adam/v/lstm_3/lstm_cell/recurrent_kernel
Ї
<Adam/v/lstm_3/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp(Adam/v/lstm_3/lstm_cell/recurrent_kernel* 
_output_shapes
:
р*
dtype0
щ
(Adam/m/lstm_3/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *9

debug_name+)Adam/m/lstm_3/lstm_cell/recurrent_kernel/*
dtype0*
shape:
р*9
shared_name*(Adam/m/lstm_3/lstm_cell/recurrent_kernel
Ї
<Adam/m/lstm_3/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp(Adam/m/lstm_3/lstm_cell/recurrent_kernel* 
_output_shapes
:
р*
dtype0
Ы
Adam/v/lstm_3/lstm_cell/kernelVarHandleOp*
_output_shapes
: */

debug_name!Adam/v/lstm_3/lstm_cell/kernel/*
dtype0*
shape:
Р*/
shared_name Adam/v/lstm_3/lstm_cell/kernel

2Adam/v/lstm_3/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/v/lstm_3/lstm_cell/kernel* 
_output_shapes
:
Р*
dtype0
Ы
Adam/m/lstm_3/lstm_cell/kernelVarHandleOp*
_output_shapes
: */

debug_name!Adam/m/lstm_3/lstm_cell/kernel/*
dtype0*
shape:
Р*/
shared_name Adam/m/lstm_3/lstm_cell/kernel

2Adam/m/lstm_3/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/m/lstm_3/lstm_cell/kernel* 
_output_shapes
:
Р*
dtype0
Р
Adam/v/lstm_2/lstm_cell/biasVarHandleOp*
_output_shapes
: *-

debug_nameAdam/v/lstm_2/lstm_cell/bias/*
dtype0*
shape:*-
shared_nameAdam/v/lstm_2/lstm_cell/bias

0Adam/v/lstm_2/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/v/lstm_2/lstm_cell/bias*
_output_shapes	
:*
dtype0
Р
Adam/m/lstm_2/lstm_cell/biasVarHandleOp*
_output_shapes
: *-

debug_nameAdam/m/lstm_2/lstm_cell/bias/*
dtype0*
shape:*-
shared_nameAdam/m/lstm_2/lstm_cell/bias

0Adam/m/lstm_2/lstm_cell/bias/Read/ReadVariableOpReadVariableOpAdam/m/lstm_2/lstm_cell/bias*
_output_shapes	
:*
dtype0
щ
(Adam/v/lstm_2/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *9

debug_name+)Adam/v/lstm_2/lstm_cell/recurrent_kernel/*
dtype0*
shape:
Р*9
shared_name*(Adam/v/lstm_2/lstm_cell/recurrent_kernel
Ї
<Adam/v/lstm_2/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp(Adam/v/lstm_2/lstm_cell/recurrent_kernel* 
_output_shapes
:
Р*
dtype0
щ
(Adam/m/lstm_2/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *9

debug_name+)Adam/m/lstm_2/lstm_cell/recurrent_kernel/*
dtype0*
shape:
Р*9
shared_name*(Adam/m/lstm_2/lstm_cell/recurrent_kernel
Ї
<Adam/m/lstm_2/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp(Adam/m/lstm_2/lstm_cell/recurrent_kernel* 
_output_shapes
:
Р*
dtype0
Ъ
Adam/v/lstm_2/lstm_cell/kernelVarHandleOp*
_output_shapes
: */

debug_name!Adam/v/lstm_2/lstm_cell/kernel/*
dtype0*
shape:	*/
shared_name Adam/v/lstm_2/lstm_cell/kernel

2Adam/v/lstm_2/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/v/lstm_2/lstm_cell/kernel*
_output_shapes
:	*
dtype0
Ъ
Adam/m/lstm_2/lstm_cell/kernelVarHandleOp*
_output_shapes
: */

debug_name!Adam/m/lstm_2/lstm_cell/kernel/*
dtype0*
shape:	*/
shared_name Adam/m/lstm_2/lstm_cell/kernel

2Adam/m/lstm_2/lstm_cell/kernel/Read/ReadVariableOpReadVariableOpAdam/m/lstm_2/lstm_cell/kernel*
_output_shapes
:	*
dtype0

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

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
Ћ
lstm_3/lstm_cell/biasVarHandleOp*
_output_shapes
: *&

debug_namelstm_3/lstm_cell/bias/*
dtype0*
shape:*&
shared_namelstm_3/lstm_cell/bias
|
)lstm_3/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell/bias*
_output_shapes	
:*
dtype0
д
!lstm_3/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *2

debug_name$"lstm_3/lstm_cell/recurrent_kernel/*
dtype0*
shape:
р*2
shared_name#!lstm_3/lstm_cell/recurrent_kernel

5lstm_3/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp!lstm_3/lstm_cell/recurrent_kernel* 
_output_shapes
:
р*
dtype0
Ж
lstm_3/lstm_cell/kernelVarHandleOp*
_output_shapes
: *(

debug_namelstm_3/lstm_cell/kernel/*
dtype0*
shape:
Р*(
shared_namelstm_3/lstm_cell/kernel

+lstm_3/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm_3/lstm_cell/kernel* 
_output_shapes
:
Р*
dtype0
Ћ
lstm_2/lstm_cell/biasVarHandleOp*
_output_shapes
: *&

debug_namelstm_2/lstm_cell/bias/*
dtype0*
shape:*&
shared_namelstm_2/lstm_cell/bias
|
)lstm_2/lstm_cell/bias/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell/bias*
_output_shapes	
:*
dtype0
д
!lstm_2/lstm_cell/recurrent_kernelVarHandleOp*
_output_shapes
: *2

debug_name$"lstm_2/lstm_cell/recurrent_kernel/*
dtype0*
shape:
Р*2
shared_name#!lstm_2/lstm_cell/recurrent_kernel

5lstm_2/lstm_cell/recurrent_kernel/Read/ReadVariableOpReadVariableOp!lstm_2/lstm_cell/recurrent_kernel* 
_output_shapes
:
Р*
dtype0
Е
lstm_2/lstm_cell/kernelVarHandleOp*
_output_shapes
: *(

debug_namelstm_2/lstm_cell/kernel/*
dtype0*
shape:	*(
shared_namelstm_2/lstm_cell/kernel

+lstm_2/lstm_cell/kernel/Read/ReadVariableOpReadVariableOplstm_2/lstm_cell/kernel*
_output_shapes
:	*
dtype0

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

dense_1/kernelVarHandleOp*
_output_shapes
: *

debug_namedense_1/kernel/*
dtype0*
shape:	р*
shared_namedense_1/kernel
r
"dense_1/kernel/Read/ReadVariableOpReadVariableOpdense_1/kernel*
_output_shapes
:	р*
dtype0

serving_default_lstm_2_inputPlaceholder*+
_output_shapes
:џџџџџџџџџ*
dtype0* 
shape:џџџџџџџџџ

StatefulPartitionedCallStatefulPartitionedCallserving_default_lstm_2_inputlstm_2/lstm_cell/kernel!lstm_2/lstm_cell/recurrent_kernellstm_2/lstm_cell/biaslstm_3/lstm_cell/kernel!lstm_3/lstm_cell/recurrent_kernellstm_3/lstm_cell/biasdense_1/kerneldense_1/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *-
f(R&
$__inference_signature_wrapper_558465

NoOpNoOp
<
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*М;
valueВ;BЏ; BЈ;
С
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
С
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec*
С
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
І
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias*
<
'0
(1
)2
*3
+4
,5
%6
&7*
<
'0
(1
)2
*3
+4
,5
%6
&7*
* 
А
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses*

2trace_0
3trace_1* 

4trace_0
5trace_1* 
* 

6
_variables
7_iterations
8_learning_rate
9_index_dict
:
_momentums
;_velocities
<_update_step_xla*

=serving_default* 

'0
(1
)2*

'0
(1
)2*
* 


>states
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Dtrace_0
Etrace_1
Ftrace_2
Gtrace_3* 
6
Htrace_0
Itrace_1
Jtrace_2
Ktrace_3* 
* 
у
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses
R_random_generator
S
state_size

'kernel
(recurrent_kernel
)bias*
* 

*0
+1
,2*

*0
+1
,2*
* 


Tstates
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Ztrace_0
[trace_1
\trace_2
]trace_3* 
6
^trace_0
_trace_1
`trace_2
atrace_3* 
* 
у
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses
h_random_generator
i
state_size

*kernel
+recurrent_kernel
,bias*
* 

%0
&1*

%0
&1*
* 

jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses*

otrace_0* 

ptrace_0* 
^X
VARIABLE_VALUEdense_1/kernel6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_1/bias4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUElstm_2/lstm_cell/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!lstm_2/lstm_cell/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUElstm_2/lstm_cell/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
WQ
VARIABLE_VALUElstm_3/lstm_cell/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUE!lstm_3/lstm_cell/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
UO
VARIABLE_VALUElstm_3/lstm_cell/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

q0*
* 
* 
* 
* 
* 
* 

70
r1
s2
t3
u4
v5
w6
x7
y8
z9
{10
|11
}12
~13
14
15
16*
SM
VARIABLE_VALUE	iteration0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUElearning_rate3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
* 
=
r0
t1
v2
x3
z4
|5
~6
7*
=
s0
u1
w2
y3
{4
}5
6
7*
* 
* 
* 
* 

0*
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

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
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
*0
+1
,2*

*0
+1
,2*
* 

non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses*

trace_0
trace_1* 

trace_0
trace_1* 
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
	variables
	keras_api

total

count*
ic
VARIABLE_VALUEAdam/m/lstm_2/lstm_cell/kernel1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/lstm_2/lstm_cell/kernel1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE(Adam/m/lstm_2/lstm_cell/recurrent_kernel1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE(Adam/v/lstm_2/lstm_cell/recurrent_kernel1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/m/lstm_2/lstm_cell/bias1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUE*
ga
VARIABLE_VALUEAdam/v/lstm_2/lstm_cell/bias1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/m/lstm_3/lstm_cell/kernel1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUE*
ic
VARIABLE_VALUEAdam/v/lstm_3/lstm_cell/kernel1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE(Adam/m/lstm_3/lstm_cell/recurrent_kernel1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE(Adam/v/lstm_3/lstm_cell/recurrent_kernel2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/m/lstm_3/lstm_cell/bias2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUE*
hb
VARIABLE_VALUEAdam/v/lstm_3/lstm_cell/bias2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/m/dense_1/kernel2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUE*
a[
VARIABLE_VALUEAdam/v/dense_1/kernel2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/m/dense_1/bias2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUE*
_Y
VARIABLE_VALUEAdam/v/dense_1/bias2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUE*
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

0
1*

	variables*
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

StatefulPartitionedCall_1StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/biaslstm_2/lstm_cell/kernel!lstm_2/lstm_cell/recurrent_kernellstm_2/lstm_cell/biaslstm_3/lstm_cell/kernel!lstm_3/lstm_cell/recurrent_kernellstm_3/lstm_cell/bias	iterationlearning_rateAdam/m/lstm_2/lstm_cell/kernelAdam/v/lstm_2/lstm_cell/kernel(Adam/m/lstm_2/lstm_cell/recurrent_kernel(Adam/v/lstm_2/lstm_cell/recurrent_kernelAdam/m/lstm_2/lstm_cell/biasAdam/v/lstm_2/lstm_cell/biasAdam/m/lstm_3/lstm_cell/kernelAdam/v/lstm_3/lstm_cell/kernel(Adam/m/lstm_3/lstm_cell/recurrent_kernel(Adam/v/lstm_3/lstm_cell/recurrent_kernelAdam/m/lstm_3/lstm_cell/biasAdam/v/lstm_3/lstm_cell/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biastotalcountConst*)
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
GPU 2J 8 *(
f#R!
__inference__traced_save_560110

StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_1/kerneldense_1/biaslstm_2/lstm_cell/kernel!lstm_2/lstm_cell/recurrent_kernellstm_2/lstm_cell/biaslstm_3/lstm_cell/kernel!lstm_3/lstm_cell/recurrent_kernellstm_3/lstm_cell/bias	iterationlearning_rateAdam/m/lstm_2/lstm_cell/kernelAdam/v/lstm_2/lstm_cell/kernel(Adam/m/lstm_2/lstm_cell/recurrent_kernel(Adam/v/lstm_2/lstm_cell/recurrent_kernelAdam/m/lstm_2/lstm_cell/biasAdam/v/lstm_2/lstm_cell/biasAdam/m/lstm_3/lstm_cell/kernelAdam/v/lstm_3/lstm_cell/kernel(Adam/m/lstm_3/lstm_cell/recurrent_kernel(Adam/v/lstm_3/lstm_cell/recurrent_kernelAdam/m/lstm_3/lstm_cell/biasAdam/v/lstm_3/lstm_cell/biasAdam/m/dense_1/kernelAdam/v/dense_1/kernelAdam/m/dense_1/biasAdam/v/dense_1/biastotalcount*(
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
GPU 2J 8 *+
f&R$
"__inference__traced_restore_560203и
д
Е
'__inference_lstm_2_layer_call_fn_558498

inputs
unknown:	
	unknown_0:
Р
	unknown_1:	
identityЂStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџР*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_557859t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџР<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:&"
 
_user_specified_name558490:&"
 
_user_specified_name558492:&"
 
_user_specified_name558494
Ф
є
*__inference_lstm_cell_layer_call_fn_559741

inputs
states_0
states_1
unknown:	
	unknown_0:
Р
	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_557080p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџРr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:џџџџџџџџџРr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:џџџџџџџџџР<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџР:џџџџџџџџџР: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџР
"
_user_specified_name
states_0:RN
(
_output_shapes
:џџџџџџџџџР
"
_user_specified_name
states_1:&"
 
_user_specified_name559729:&"
 
_user_specified_name559731:&"
 
_user_specified_name559733
 :
Й
while_body_559475
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
0while_lstm_cell_matmul_readvariableop_resource_0:
РF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
р@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
.while_lstm_cell_matmul_readvariableop_resource:
РD
0while_lstm_cell_matmul_1_readvariableop_resource:
р>
/while_lstm_cell_biasadd_readvariableop_resource:	Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџР*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
Р*
dtype0Д
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
р*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџрw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџрo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџрw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџрl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ъ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџрw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџрЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : 2P
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
:џџџџџџџџџр:.*
(
_output_shapes
:џџџџџџџџџр:GC
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
Рh
§
7model_8_stackedLSTM_univariate_lstm_3_while_body_556927h
dmodel_8_stackedlstm_univariate_lstm_3_while_model_8_stackedlstm_univariate_lstm_3_while_loop_countern
jmodel_8_stackedlstm_univariate_lstm_3_while_model_8_stackedlstm_univariate_lstm_3_while_maximum_iterations;
7model_8_stackedlstm_univariate_lstm_3_while_placeholder=
9model_8_stackedlstm_univariate_lstm_3_while_placeholder_1=
9model_8_stackedlstm_univariate_lstm_3_while_placeholder_2=
9model_8_stackedlstm_univariate_lstm_3_while_placeholder_3g
cmodel_8_stackedlstm_univariate_lstm_3_while_model_8_stackedlstm_univariate_lstm_3_strided_slice_1_0Є
model_8_stackedlstm_univariate_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_8_stackedlstm_univariate_lstm_3_tensorarrayunstack_tensorlistfromtensor_0j
Vmodel_8_stackedlstm_univariate_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0:
Рl
Xmodel_8_stackedlstm_univariate_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0:
рf
Wmodel_8_stackedlstm_univariate_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0:	8
4model_8_stackedlstm_univariate_lstm_3_while_identity:
6model_8_stackedlstm_univariate_lstm_3_while_identity_1:
6model_8_stackedlstm_univariate_lstm_3_while_identity_2:
6model_8_stackedlstm_univariate_lstm_3_while_identity_3:
6model_8_stackedlstm_univariate_lstm_3_while_identity_4:
6model_8_stackedlstm_univariate_lstm_3_while_identity_5e
amodel_8_stackedlstm_univariate_lstm_3_while_model_8_stackedlstm_univariate_lstm_3_strided_slice_1Ђ
model_8_stackedlstm_univariate_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_8_stackedlstm_univariate_lstm_3_tensorarrayunstack_tensorlistfromtensorh
Tmodel_8_stackedlstm_univariate_lstm_3_while_lstm_cell_matmul_readvariableop_resource:
Рj
Vmodel_8_stackedlstm_univariate_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource:
рd
Umodel_8_stackedlstm_univariate_lstm_3_while_lstm_cell_biasadd_readvariableop_resource:	ЂLmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpЂKmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/MatMul/ReadVariableOpЂMmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpЎ
]model_8_stackedLSTM_univariate/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   ц
Omodel_8_stackedLSTM_univariate/lstm_3/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmodel_8_stackedlstm_univariate_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_8_stackedlstm_univariate_lstm_3_tensorarrayunstack_tensorlistfromtensor_07model_8_stackedlstm_univariate_lstm_3_while_placeholderfmodel_8_stackedLSTM_univariate/lstm_3/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџР*
element_dtype0ф
Kmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpVmodel_8_stackedlstm_univariate_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
Р*
dtype0І
<model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/MatMulMatMulVmodel_8_stackedLSTM_univariate/lstm_3/while/TensorArrayV2Read/TensorListGetItem:item:0Smodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш
Mmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpXmodel_8_stackedlstm_univariate_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
р*
dtype0
>model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/MatMul_1MatMul9model_8_stackedlstm_univariate_lstm_3_while_placeholder_2Umodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
9model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/addAddV2Fmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/MatMul:product:0Hmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџс
Lmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpWmodel_8_stackedlstm_univariate_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
=model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/BiasAddBiasAdd=model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/add:z:0Tmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
Emodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :м
;model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/splitSplitNmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/split/split_dim:output:0Fmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*
	num_splitС
=model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/SigmoidSigmoidDmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџрУ
?model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/Sigmoid_1SigmoidDmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџрѓ
9model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/mulMulCmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/Sigmoid_1:y:09model_8_stackedlstm_univariate_lstm_3_while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџрЛ
:model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/ReluReluDmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџр
;model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/mul_1MulAmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/Sigmoid:y:0Hmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрї
;model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/add_1AddV2=model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/mul:z:0?model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџрУ
?model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/Sigmoid_2SigmoidDmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџрИ
<model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/Relu_1Relu?model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџр
;model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/mul_2MulCmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/Sigmoid_2:y:0Jmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџр
Vmodel_8_stackedLSTM_univariate/lstm_3/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
Pmodel_8_stackedLSTM_univariate/lstm_3/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem9model_8_stackedlstm_univariate_lstm_3_while_placeholder_1_model_8_stackedLSTM_univariate/lstm_3/while/TensorArrayV2Write/TensorListSetItem/index:output:0?model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвs
1model_8_stackedLSTM_univariate/lstm_3/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ю
/model_8_stackedLSTM_univariate/lstm_3/while/addAddV27model_8_stackedlstm_univariate_lstm_3_while_placeholder:model_8_stackedLSTM_univariate/lstm_3/while/add/y:output:0*
T0*
_output_shapes
: u
3model_8_stackedLSTM_univariate/lstm_3/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :џ
1model_8_stackedLSTM_univariate/lstm_3/while/add_1AddV2dmodel_8_stackedlstm_univariate_lstm_3_while_model_8_stackedlstm_univariate_lstm_3_while_loop_counter<model_8_stackedLSTM_univariate/lstm_3/while/add_1/y:output:0*
T0*
_output_shapes
: Ы
4model_8_stackedLSTM_univariate/lstm_3/while/IdentityIdentity5model_8_stackedLSTM_univariate/lstm_3/while/add_1:z:01^model_8_stackedLSTM_univariate/lstm_3/while/NoOp*
T0*
_output_shapes
: 
6model_8_stackedLSTM_univariate/lstm_3/while/Identity_1Identityjmodel_8_stackedlstm_univariate_lstm_3_while_model_8_stackedlstm_univariate_lstm_3_while_maximum_iterations1^model_8_stackedLSTM_univariate/lstm_3/while/NoOp*
T0*
_output_shapes
: Ы
6model_8_stackedLSTM_univariate/lstm_3/while/Identity_2Identity3model_8_stackedLSTM_univariate/lstm_3/while/add:z:01^model_8_stackedLSTM_univariate/lstm_3/while/NoOp*
T0*
_output_shapes
: ј
6model_8_stackedLSTM_univariate/lstm_3/while/Identity_3Identity`model_8_stackedLSTM_univariate/lstm_3/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^model_8_stackedLSTM_univariate/lstm_3/while/NoOp*
T0*
_output_shapes
: щ
6model_8_stackedLSTM_univariate/lstm_3/while/Identity_4Identity?model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/mul_2:z:01^model_8_stackedLSTM_univariate/lstm_3/while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџрщ
6model_8_stackedLSTM_univariate/lstm_3/while/Identity_5Identity?model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/add_1:z:01^model_8_stackedLSTM_univariate/lstm_3/while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџрЛ
0model_8_stackedLSTM_univariate/lstm_3/while/NoOpNoOpM^model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpL^model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/MatMul/ReadVariableOpN^model_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "u
4model_8_stackedlstm_univariate_lstm_3_while_identity=model_8_stackedLSTM_univariate/lstm_3/while/Identity:output:0"y
6model_8_stackedlstm_univariate_lstm_3_while_identity_1?model_8_stackedLSTM_univariate/lstm_3/while/Identity_1:output:0"y
6model_8_stackedlstm_univariate_lstm_3_while_identity_2?model_8_stackedLSTM_univariate/lstm_3/while/Identity_2:output:0"y
6model_8_stackedlstm_univariate_lstm_3_while_identity_3?model_8_stackedLSTM_univariate/lstm_3/while/Identity_3:output:0"y
6model_8_stackedlstm_univariate_lstm_3_while_identity_4?model_8_stackedLSTM_univariate/lstm_3/while/Identity_4:output:0"y
6model_8_stackedlstm_univariate_lstm_3_while_identity_5?model_8_stackedLSTM_univariate/lstm_3/while/Identity_5:output:0"А
Umodel_8_stackedlstm_univariate_lstm_3_while_lstm_cell_biasadd_readvariableop_resourceWmodel_8_stackedlstm_univariate_lstm_3_while_lstm_cell_biasadd_readvariableop_resource_0"В
Vmodel_8_stackedlstm_univariate_lstm_3_while_lstm_cell_matmul_1_readvariableop_resourceXmodel_8_stackedlstm_univariate_lstm_3_while_lstm_cell_matmul_1_readvariableop_resource_0"Ў
Tmodel_8_stackedlstm_univariate_lstm_3_while_lstm_cell_matmul_readvariableop_resourceVmodel_8_stackedlstm_univariate_lstm_3_while_lstm_cell_matmul_readvariableop_resource_0"Ш
amodel_8_stackedlstm_univariate_lstm_3_while_model_8_stackedlstm_univariate_lstm_3_strided_slice_1cmodel_8_stackedlstm_univariate_lstm_3_while_model_8_stackedlstm_univariate_lstm_3_strided_slice_1_0"Т
model_8_stackedlstm_univariate_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_8_stackedlstm_univariate_lstm_3_tensorarrayunstack_tensorlistfromtensormodel_8_stackedlstm_univariate_lstm_3_while_tensorarrayv2read_tensorlistgetitem_model_8_stackedlstm_univariate_lstm_3_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : 2
Lmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/BiasAdd/ReadVariableOpLmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/BiasAdd/ReadVariableOp2
Kmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/MatMul/ReadVariableOpKmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/MatMul/ReadVariableOp2
Mmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/MatMul_1/ReadVariableOpMmodel_8_stackedLSTM_univariate/lstm_3/while/lstm_cell/MatMul_1/ReadVariableOp:p l

_output_shapes
: 
R
_user_specified_name:8model_8_stackedLSTM_univariate/lstm_3/while/loop_counter:vr

_output_shapes
: 
X
_user_specified_name@>model_8_stackedLSTM_univariate/lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџр:.*
(
_output_shapes
:џџџџџџџџџр:mi

_output_shapes
: 
O
_user_specified_name75model_8_stackedLSTM_univariate/lstm_3/strided_slice_1:

_output_shapes
: 
g
_user_specified_nameOMmodel_8_stackedLSTM_univariate/lstm_3/TensorArrayUnstack/TensorListFromTensor:($
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
њ	
ѕ
C__inference_dense_1_layer_call_and_return_conditional_losses_559724

inputs1
matmul_readvariableop_resource:	р-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	р*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџр: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџр
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
Ц	
У
while_cond_558853
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_558853___redundant_placeholder04
0while_while_cond_558853___redundant_placeholder14
0while_while_cond_558853___redundant_placeholder24
0while_while_cond_558853___redundant_placeholder3
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
B: : : : :џџџџџџџџџР:џџџџџџџџџР: :::::J F
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
:џџџџџџџџџР:.*
(
_output_shapes
:џџџџџџџџџР:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ЂJ

B__inference_lstm_2_layer_call_and_return_conditional_losses_558652
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	>
*lstm_cell_matmul_1_readvariableop_resource:
Р8
)lstm_cell_biasadd_readvariableop_resource:	
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
B :Рs
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
:џџџџџџџџџРS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Рw
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
:џџџџџџџџџРc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
Р*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџРk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџРr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџРc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџР~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџРk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџР`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџР
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_558568*
condR
while_cond_558567*M
output_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   Ь
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџР*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџР*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџР[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџР
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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
Ѓр
Ѓ
__inference__traced_save_560110
file_prefix8
%read_disablecopyonread_dense_1_kernel:	р3
%read_1_disablecopyonread_dense_1_bias:C
0read_2_disablecopyonread_lstm_2_lstm_cell_kernel:	N
:read_3_disablecopyonread_lstm_2_lstm_cell_recurrent_kernel:
Р=
.read_4_disablecopyonread_lstm_2_lstm_cell_bias:	D
0read_5_disablecopyonread_lstm_3_lstm_cell_kernel:
РN
:read_6_disablecopyonread_lstm_3_lstm_cell_recurrent_kernel:
р=
.read_7_disablecopyonread_lstm_3_lstm_cell_bias:	,
"read_8_disablecopyonread_iteration:	 0
&read_9_disablecopyonread_learning_rate: K
8read_10_disablecopyonread_adam_m_lstm_2_lstm_cell_kernel:	K
8read_11_disablecopyonread_adam_v_lstm_2_lstm_cell_kernel:	V
Bread_12_disablecopyonread_adam_m_lstm_2_lstm_cell_recurrent_kernel:
РV
Bread_13_disablecopyonread_adam_v_lstm_2_lstm_cell_recurrent_kernel:
РE
6read_14_disablecopyonread_adam_m_lstm_2_lstm_cell_bias:	E
6read_15_disablecopyonread_adam_v_lstm_2_lstm_cell_bias:	L
8read_16_disablecopyonread_adam_m_lstm_3_lstm_cell_kernel:
РL
8read_17_disablecopyonread_adam_v_lstm_3_lstm_cell_kernel:
РV
Bread_18_disablecopyonread_adam_m_lstm_3_lstm_cell_recurrent_kernel:
рV
Bread_19_disablecopyonread_adam_v_lstm_3_lstm_cell_recurrent_kernel:
рE
6read_20_disablecopyonread_adam_m_lstm_3_lstm_cell_bias:	E
6read_21_disablecopyonread_adam_v_lstm_3_lstm_cell_bias:	B
/read_22_disablecopyonread_adam_m_dense_1_kernel:	рB
/read_23_disablecopyonread_adam_v_dense_1_kernel:	р;
-read_24_disablecopyonread_adam_m_dense_1_bias:;
-read_25_disablecopyonread_adam_v_dense_1_bias:)
read_26_disablecopyonread_total: )
read_27_disablecopyonread_count: 
savev2_const
identity_57ЂMergeV2CheckpointsЂRead/DisableCopyOnReadЂRead/ReadVariableOpЂRead_1/DisableCopyOnReadЂRead_1/ReadVariableOpЂRead_10/DisableCopyOnReadЂRead_10/ReadVariableOpЂRead_11/DisableCopyOnReadЂRead_11/ReadVariableOpЂRead_12/DisableCopyOnReadЂRead_12/ReadVariableOpЂRead_13/DisableCopyOnReadЂRead_13/ReadVariableOpЂRead_14/DisableCopyOnReadЂRead_14/ReadVariableOpЂRead_15/DisableCopyOnReadЂRead_15/ReadVariableOpЂRead_16/DisableCopyOnReadЂRead_16/ReadVariableOpЂRead_17/DisableCopyOnReadЂRead_17/ReadVariableOpЂRead_18/DisableCopyOnReadЂRead_18/ReadVariableOpЂRead_19/DisableCopyOnReadЂRead_19/ReadVariableOpЂRead_2/DisableCopyOnReadЂRead_2/ReadVariableOpЂRead_20/DisableCopyOnReadЂRead_20/ReadVariableOpЂRead_21/DisableCopyOnReadЂRead_21/ReadVariableOpЂRead_22/DisableCopyOnReadЂRead_22/ReadVariableOpЂRead_23/DisableCopyOnReadЂRead_23/ReadVariableOpЂRead_24/DisableCopyOnReadЂRead_24/ReadVariableOpЂRead_25/DisableCopyOnReadЂRead_25/ReadVariableOpЂRead_26/DisableCopyOnReadЂRead_26/ReadVariableOpЂRead_27/DisableCopyOnReadЂRead_27/ReadVariableOpЂRead_3/DisableCopyOnReadЂRead_3/ReadVariableOpЂRead_4/DisableCopyOnReadЂRead_4/ReadVariableOpЂRead_5/DisableCopyOnReadЂRead_5/ReadVariableOpЂRead_6/DisableCopyOnReadЂRead_6/ReadVariableOpЂRead_7/DisableCopyOnReadЂRead_7/ReadVariableOpЂRead_8/DisableCopyOnReadЂRead_8/ReadVariableOpЂRead_9/DisableCopyOnReadЂRead_9/ReadVariableOpw
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
_temp/part
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
value	B : 
ShardedFilenameShardedFilenameStringJoin:output:0ShardedFilename/shard:output:0num_shards:output:0"/device:CPU:0*
_output_shapes
: w
Read/DisableCopyOnReadDisableCopyOnRead%read_disablecopyonread_dense_1_kernel"/device:CPU:0*
_output_shapes
 Ђ
Read/ReadVariableOpReadVariableOp%read_disablecopyonread_dense_1_kernel^Read/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	р*
dtype0j
IdentityIdentityRead/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	рb

Identity_1IdentityIdentity:output:0"/device:CPU:0*
T0*
_output_shapes
:	рy
Read_1/DisableCopyOnReadDisableCopyOnRead%read_1_disablecopyonread_dense_1_bias"/device:CPU:0*
_output_shapes
 Ё
Read_1/ReadVariableOpReadVariableOp%read_1_disablecopyonread_dense_1_bias^Read_1/DisableCopyOnRead"/device:CPU:0*
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
:
Read_2/DisableCopyOnReadDisableCopyOnRead0read_2_disablecopyonread_lstm_2_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 Б
Read_2/ReadVariableOpReadVariableOp0read_2_disablecopyonread_lstm_2_lstm_cell_kernel^Read_2/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0n

Identity_4IdentityRead_2/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	d

Identity_5IdentityIdentity_4:output:0"/device:CPU:0*
T0*
_output_shapes
:	
Read_3/DisableCopyOnReadDisableCopyOnRead:read_3_disablecopyonread_lstm_2_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 М
Read_3/ReadVariableOpReadVariableOp:read_3_disablecopyonread_lstm_2_lstm_cell_recurrent_kernel^Read_3/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
Р*
dtype0o

Identity_6IdentityRead_3/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
Рe

Identity_7IdentityIdentity_6:output:0"/device:CPU:0*
T0* 
_output_shapes
:
Р
Read_4/DisableCopyOnReadDisableCopyOnRead.read_4_disablecopyonread_lstm_2_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Ћ
Read_4/ReadVariableOpReadVariableOp.read_4_disablecopyonread_lstm_2_lstm_cell_bias^Read_4/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0j

Identity_8IdentityRead_4/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:`

Identity_9IdentityIdentity_8:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_5/DisableCopyOnReadDisableCopyOnRead0read_5_disablecopyonread_lstm_3_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 В
Read_5/ReadVariableOpReadVariableOp0read_5_disablecopyonread_lstm_3_lstm_cell_kernel^Read_5/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
Р*
dtype0p
Identity_10IdentityRead_5/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
Рg
Identity_11IdentityIdentity_10:output:0"/device:CPU:0*
T0* 
_output_shapes
:
Р
Read_6/DisableCopyOnReadDisableCopyOnRead:read_6_disablecopyonread_lstm_3_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 М
Read_6/ReadVariableOpReadVariableOp:read_6_disablecopyonread_lstm_3_lstm_cell_recurrent_kernel^Read_6/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
р*
dtype0p
Identity_12IdentityRead_6/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
рg
Identity_13IdentityIdentity_12:output:0"/device:CPU:0*
T0* 
_output_shapes
:
р
Read_7/DisableCopyOnReadDisableCopyOnRead.read_7_disablecopyonread_lstm_3_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Ћ
Read_7/ReadVariableOpReadVariableOp.read_7_disablecopyonread_lstm_3_lstm_cell_bias^Read_7/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0k
Identity_14IdentityRead_7/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_15IdentityIdentity_14:output:0"/device:CPU:0*
T0*
_output_shapes	
:v
Read_8/DisableCopyOnReadDisableCopyOnRead"read_8_disablecopyonread_iteration"/device:CPU:0*
_output_shapes
 
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
 
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
: 
Read_10/DisableCopyOnReadDisableCopyOnRead8read_10_disablecopyonread_adam_m_lstm_2_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 Л
Read_10/ReadVariableOpReadVariableOp8read_10_disablecopyonread_adam_m_lstm_2_lstm_cell_kernel^Read_10/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0p
Identity_20IdentityRead_10/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	f
Identity_21IdentityIdentity_20:output:0"/device:CPU:0*
T0*
_output_shapes
:	
Read_11/DisableCopyOnReadDisableCopyOnRead8read_11_disablecopyonread_adam_v_lstm_2_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 Л
Read_11/ReadVariableOpReadVariableOp8read_11_disablecopyonread_adam_v_lstm_2_lstm_cell_kernel^Read_11/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	*
dtype0p
Identity_22IdentityRead_11/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	f
Identity_23IdentityIdentity_22:output:0"/device:CPU:0*
T0*
_output_shapes
:	
Read_12/DisableCopyOnReadDisableCopyOnReadBread_12_disablecopyonread_adam_m_lstm_2_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ц
Read_12/ReadVariableOpReadVariableOpBread_12_disablecopyonread_adam_m_lstm_2_lstm_cell_recurrent_kernel^Read_12/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
Р*
dtype0q
Identity_24IdentityRead_12/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
Рg
Identity_25IdentityIdentity_24:output:0"/device:CPU:0*
T0* 
_output_shapes
:
Р
Read_13/DisableCopyOnReadDisableCopyOnReadBread_13_disablecopyonread_adam_v_lstm_2_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ц
Read_13/ReadVariableOpReadVariableOpBread_13_disablecopyonread_adam_v_lstm_2_lstm_cell_recurrent_kernel^Read_13/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
Р*
dtype0q
Identity_26IdentityRead_13/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
Рg
Identity_27IdentityIdentity_26:output:0"/device:CPU:0*
T0* 
_output_shapes
:
Р
Read_14/DisableCopyOnReadDisableCopyOnRead6read_14_disablecopyonread_adam_m_lstm_2_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Е
Read_14/ReadVariableOpReadVariableOp6read_14_disablecopyonread_adam_m_lstm_2_lstm_cell_bias^Read_14/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_28IdentityRead_14/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_29IdentityIdentity_28:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_15/DisableCopyOnReadDisableCopyOnRead6read_15_disablecopyonread_adam_v_lstm_2_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Е
Read_15/ReadVariableOpReadVariableOp6read_15_disablecopyonread_adam_v_lstm_2_lstm_cell_bias^Read_15/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_30IdentityRead_15/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_31IdentityIdentity_30:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_16/DisableCopyOnReadDisableCopyOnRead8read_16_disablecopyonread_adam_m_lstm_3_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 М
Read_16/ReadVariableOpReadVariableOp8read_16_disablecopyonread_adam_m_lstm_3_lstm_cell_kernel^Read_16/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
Р*
dtype0q
Identity_32IdentityRead_16/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
Рg
Identity_33IdentityIdentity_32:output:0"/device:CPU:0*
T0* 
_output_shapes
:
Р
Read_17/DisableCopyOnReadDisableCopyOnRead8read_17_disablecopyonread_adam_v_lstm_3_lstm_cell_kernel"/device:CPU:0*
_output_shapes
 М
Read_17/ReadVariableOpReadVariableOp8read_17_disablecopyonread_adam_v_lstm_3_lstm_cell_kernel^Read_17/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
Р*
dtype0q
Identity_34IdentityRead_17/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
Рg
Identity_35IdentityIdentity_34:output:0"/device:CPU:0*
T0* 
_output_shapes
:
Р
Read_18/DisableCopyOnReadDisableCopyOnReadBread_18_disablecopyonread_adam_m_lstm_3_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ц
Read_18/ReadVariableOpReadVariableOpBread_18_disablecopyonread_adam_m_lstm_3_lstm_cell_recurrent_kernel^Read_18/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
р*
dtype0q
Identity_36IdentityRead_18/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
рg
Identity_37IdentityIdentity_36:output:0"/device:CPU:0*
T0* 
_output_shapes
:
р
Read_19/DisableCopyOnReadDisableCopyOnReadBread_19_disablecopyonread_adam_v_lstm_3_lstm_cell_recurrent_kernel"/device:CPU:0*
_output_shapes
 Ц
Read_19/ReadVariableOpReadVariableOpBread_19_disablecopyonread_adam_v_lstm_3_lstm_cell_recurrent_kernel^Read_19/DisableCopyOnRead"/device:CPU:0* 
_output_shapes
:
р*
dtype0q
Identity_38IdentityRead_19/ReadVariableOp:value:0"/device:CPU:0*
T0* 
_output_shapes
:
рg
Identity_39IdentityIdentity_38:output:0"/device:CPU:0*
T0* 
_output_shapes
:
р
Read_20/DisableCopyOnReadDisableCopyOnRead6read_20_disablecopyonread_adam_m_lstm_3_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Е
Read_20/ReadVariableOpReadVariableOp6read_20_disablecopyonread_adam_m_lstm_3_lstm_cell_bias^Read_20/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_40IdentityRead_20/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_41IdentityIdentity_40:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_21/DisableCopyOnReadDisableCopyOnRead6read_21_disablecopyonread_adam_v_lstm_3_lstm_cell_bias"/device:CPU:0*
_output_shapes
 Е
Read_21/ReadVariableOpReadVariableOp6read_21_disablecopyonread_adam_v_lstm_3_lstm_cell_bias^Read_21/DisableCopyOnRead"/device:CPU:0*
_output_shapes	
:*
dtype0l
Identity_42IdentityRead_21/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes	
:b
Identity_43IdentityIdentity_42:output:0"/device:CPU:0*
T0*
_output_shapes	
:
Read_22/DisableCopyOnReadDisableCopyOnRead/read_22_disablecopyonread_adam_m_dense_1_kernel"/device:CPU:0*
_output_shapes
 В
Read_22/ReadVariableOpReadVariableOp/read_22_disablecopyonread_adam_m_dense_1_kernel^Read_22/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	р*
dtype0p
Identity_44IdentityRead_22/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	рf
Identity_45IdentityIdentity_44:output:0"/device:CPU:0*
T0*
_output_shapes
:	р
Read_23/DisableCopyOnReadDisableCopyOnRead/read_23_disablecopyonread_adam_v_dense_1_kernel"/device:CPU:0*
_output_shapes
 В
Read_23/ReadVariableOpReadVariableOp/read_23_disablecopyonread_adam_v_dense_1_kernel^Read_23/DisableCopyOnRead"/device:CPU:0*
_output_shapes
:	р*
dtype0p
Identity_46IdentityRead_23/ReadVariableOp:value:0"/device:CPU:0*
T0*
_output_shapes
:	рf
Identity_47IdentityIdentity_46:output:0"/device:CPU:0*
T0*
_output_shapes
:	р
Read_24/DisableCopyOnReadDisableCopyOnRead-read_24_disablecopyonread_adam_m_dense_1_bias"/device:CPU:0*
_output_shapes
 Ћ
Read_24/ReadVariableOpReadVariableOp-read_24_disablecopyonread_adam_m_dense_1_bias^Read_24/DisableCopyOnRead"/device:CPU:0*
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
:
Read_25/DisableCopyOnReadDisableCopyOnRead-read_25_disablecopyonread_adam_v_dense_1_bias"/device:CPU:0*
_output_shapes
 Ћ
Read_25/ReadVariableOpReadVariableOp-read_25_disablecopyonread_adam_v_dense_1_bias^Read_25/DisableCopyOnRead"/device:CPU:0*
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
 
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
 
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
: ђ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЇ
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B з
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0Identity_1:output:0Identity_3:output:0Identity_5:output:0Identity_7:output:0Identity_9:output:0Identity_11:output:0Identity_13:output:0Identity_15:output:0Identity_17:output:0Identity_19:output:0Identity_21:output:0Identity_23:output:0Identity_25:output:0Identity_27:output:0Identity_29:output:0Identity_31:output:0Identity_33:output:0Identity_35:output:0Identity_37:output:0Identity_39:output:0Identity_41:output:0Identity_43:output:0Identity_45:output:0Identity_47:output:0Identity_49:output:0Identity_51:output:0Identity_53:output:0Identity_55:output:0savev2_const"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *+
dtypes!
2	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:Г
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
: ы
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
_user_specified_namefile_prefix:.*
(
_user_specified_namedense_1/kernel:,(
&
_user_specified_namedense_1/bias:73
1
_user_specified_namelstm_2/lstm_cell/kernel:A=
;
_user_specified_name#!lstm_2/lstm_cell/recurrent_kernel:51
/
_user_specified_namelstm_2/lstm_cell/bias:73
1
_user_specified_namelstm_3/lstm_cell/kernel:A=
;
_user_specified_name#!lstm_3/lstm_cell/recurrent_kernel:51
/
_user_specified_namelstm_3/lstm_cell/bias:)	%
#
_user_specified_name	iteration:-
)
'
_user_specified_namelearning_rate:>:
8
_user_specified_name Adam/m/lstm_2/lstm_cell/kernel:>:
8
_user_specified_name Adam/v/lstm_2/lstm_cell/kernel:HD
B
_user_specified_name*(Adam/m/lstm_2/lstm_cell/recurrent_kernel:HD
B
_user_specified_name*(Adam/v/lstm_2/lstm_cell/recurrent_kernel:<8
6
_user_specified_nameAdam/m/lstm_2/lstm_cell/bias:<8
6
_user_specified_nameAdam/v/lstm_2/lstm_cell/bias:>:
8
_user_specified_name Adam/m/lstm_3/lstm_cell/kernel:>:
8
_user_specified_name Adam/v/lstm_3/lstm_cell/kernel:HD
B
_user_specified_name*(Adam/m/lstm_3/lstm_cell/recurrent_kernel:HD
B
_user_specified_name*(Adam/v/lstm_3/lstm_cell/recurrent_kernel:<8
6
_user_specified_nameAdam/m/lstm_3/lstm_cell/bias:<8
6
_user_specified_nameAdam/v/lstm_3/lstm_cell/bias:51
/
_user_specified_nameAdam/m/dense_1/kernel:51
/
_user_specified_nameAdam/v/dense_1/kernel:3/
-
_user_specified_nameAdam/m/dense_1/bias:3/
-
_user_specified_nameAdam/v/dense_1/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount:=9

_output_shapes
: 

_user_specified_nameConst
K

B__inference_lstm_3_layer_call_and_return_conditional_losses_559270
inputs_0<
(lstm_cell_matmul_readvariableop_resource:
Р>
*lstm_cell_matmul_1_readvariableop_resource:
р8
)lstm_cell_biasadd_readvariableop_resource:	
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
B :рs
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
:џџџџџџџџџрS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :рw
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
:џџџџџџџџџрc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџРR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџР*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
р*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџрk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџрr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџрc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџр~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџрk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџр`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџр
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџр   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_559185*
condR
while_cond_559184*M
output_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџр   з
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџр*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџр*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџр[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџр
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџР: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџР
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
З9
њ
B__inference_lstm_3_layer_call_and_return_conditional_losses_557658

inputs$
lstm_cell_557574:
Р$
lstm_cell_557576:
р
lstm_cell_557578:	
identityЂ!lstm_cell/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
B :рs
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
:џџџџџџџџџрS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :рw
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
:џџџџџџџџџрc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџРR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџР*
shrink_axis_maskщ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_557574lstm_cell_557576lstm_cell_557578*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_557573n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџр   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_557574lstm_cell_557576lstm_cell_557578*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_557588*
condR
while_cond_557587*M
output_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџр   з
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџр*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџр*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџр[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџрN
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџР: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџР
 
_user_specified_nameinputs:&"
 
_user_specified_name557574:&"
 
_user_specified_name557576:&"
 
_user_specified_name557578
С

E__inference_lstm_cell_layer_call_and_return_conditional_losses_557225

inputs

states
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
Р.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
Р*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:џџџџџџџџџРW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:џџџџџџџџџРV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџРO
ReluRelusplit:output:2*
T0*(
_output_shapes
:џџџџџџџџџР`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџРW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:џџџџџџџџџРL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџРd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџР[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџР[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџРm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџР:џџџџџџџџџР: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:PL
(
_output_shapes
:џџџџџџџџџР
 
_user_specified_namestates:PL
(
_output_shapes
:џџџџџџџџџР
 
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
9
З
while_body_558997
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
Р@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	D
0while_lstm_cell_matmul_1_readvariableop_resource:
Р>
/while_lstm_cell_biasadd_readvariableop_resource:	Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Д
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
Р*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџРw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџРo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџРw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџРl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРТ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџРw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџРЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : 2P
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
:џџџџџџџџџР:.*
(
_output_shapes
:џџџџџџџџџР:GC
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
Ц	
У
while_cond_557093
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_557093___redundant_placeholder04
0while_while_cond_557093___redundant_placeholder14
0while_while_cond_557093___redundant_placeholder24
0while_while_cond_557093___redundant_placeholder3
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
B: : : : :џџџџџџџџџР:џџџџџџџџџР: :::::J F
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
:џџџџџџџџџР:.*
(
_output_shapes
:џџџџџџџџџР:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
K

B__inference_lstm_3_layer_call_and_return_conditional_losses_559415
inputs_0<
(lstm_cell_matmul_readvariableop_resource:
Р>
*lstm_cell_matmul_1_readvariableop_resource:
р8
)lstm_cell_biasadd_readvariableop_resource:	
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
B :рs
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
:џџџџџџџџџрS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :рw
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
:џџџџџџџџџрc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          y
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџРR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџР*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
р*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџрk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџрr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџрc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџр~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџрk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџр`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџр
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџр   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_559330*
condR
while_cond_559329*M
output_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџр   з
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџр*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџр*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџр[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџр
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџР: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџР
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
Ц	
У
while_cond_558246
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_558246___redundant_placeholder04
0while_while_cond_558246___redundant_placeholder14
0while_while_cond_558246___redundant_placeholder24
0while_while_cond_558246___redundant_placeholder3
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
B: : : : :џџџџџџџџџр:џџџџџџџџџр: :::::J F
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
:џџџџџџџџџр:.*
(
_output_shapes
:џџџџџџџџџр:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ь%
в
while_body_557441
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_557465_0:
Р,
while_lstm_cell_557467_0:
р'
while_lstm_cell_557469_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_557465:
Р*
while_lstm_cell_557467:
р%
while_lstm_cell_557469:	Ђ'while/lstm_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџР*
element_dtype0Ї
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_557465_0while_lstm_cell_557467_0while_lstm_cell_557469_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_557426r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџр
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџрR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_557465while_lstm_cell_557465_0"2
while_lstm_cell_557467while_lstm_cell_557467_0"2
while_lstm_cell_557469while_lstm_cell_557469_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : 2R
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
:џџџџџџџџџр:.*
(
_output_shapes
:џџџџџџџџџр:GC
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
 
_user_specified_name557465:&	"
 
_user_specified_name557467:&
"
 
_user_specified_name557469
фI

B__inference_lstm_2_layer_call_and_return_conditional_losses_558180

inputs;
(lstm_cell_matmul_readvariableop_resource:	>
*lstm_cell_matmul_1_readvariableop_resource:
Р8
)lstm_cell_biasadd_readvariableop_resource:	
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
B :Рs
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
:џџџџџџџџџРS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Рw
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
:џџџџџџџџџРc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
Р*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџРk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџРr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџРc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџР~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџРk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџР`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџР
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_558096*
condR
while_cond_558095*M
output_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџР*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџР*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџР[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџР
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
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
9
З
while_body_557775
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
Р@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	D
0while_lstm_cell_matmul_1_readvariableop_resource:
Р>
/while_lstm_cell_biasadd_readvariableop_resource:	Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Д
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
Р*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџРw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџРo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџРw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџРl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРТ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџРw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџРЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : 2P
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
:џџџџџџџџџР:.*
(
_output_shapes
:џџџџџџџџџР:GC
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
9
З
while_body_558854
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
Р@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	D
0while_lstm_cell_matmul_1_readvariableop_resource:
Р>
/while_lstm_cell_biasadd_readvariableop_resource:	Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Д
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
Р*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџРw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџРo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџРw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџРl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРТ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџРw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџРЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : 2P
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
:џџџџџџџџџР:.*
(
_output_shapes
:џџџџџџџџџР:GC
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
№J

B__inference_lstm_3_layer_call_and_return_conditional_losses_558011

inputs<
(lstm_cell_matmul_readvariableop_resource:
Р>
*lstm_cell_matmul_1_readvariableop_resource:
р8
)lstm_cell_biasadd_readvariableop_resource:	
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
B :рs
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
:џџџџџџџџџрS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :рw
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
:џџџџџџџџџрc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџРR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџР*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
р*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџрk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџрr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџрc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџр~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџрk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџр`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџр
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџр   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_557926*
condR
while_cond_557925*M
output_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџр   з
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџр*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџр*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџр[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџр
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџР: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџР
 
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
Ц	
У
while_cond_558095
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_558095___redundant_placeholder04
0while_while_cond_558095___redundant_placeholder14
0while_while_cond_558095___redundant_placeholder24
0while_while_cond_558095___redundant_placeholder3
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
B: : : : :џџџџџџџџџР:џџџџџџџџџР: :::::J F
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
:џџџџџџџџџР:.*
(
_output_shapes
:џџџџџџџџџР:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
 :
Й
while_body_559330
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
0while_lstm_cell_matmul_readvariableop_resource_0:
РF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
р@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
.while_lstm_cell_matmul_readvariableop_resource:
РD
0while_lstm_cell_matmul_1_readvariableop_resource:
р>
/while_lstm_cell_biasadd_readvariableop_resource:	Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџР*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
Р*
dtype0Д
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
р*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџрw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџрo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџрw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџрl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ъ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџрw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџрЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : 2P
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
:џџџџџџџџџр:.*
(
_output_shapes
:џџџџџџџџџр:GC
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
Ч
ѕ
*__inference_lstm_cell_layer_call_fn_559839

inputs
states_0
states_1
unknown:
Р
	unknown_0:
р
	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_557426p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџрr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:џџџџџџџџџрr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:џџџџџџџџџр<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџР:џџџџџџџџџр:џџџџџџџџџр: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџР
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџр
"
_user_specified_name
states_0:RN
(
_output_shapes
:џџџџџџџџџр
"
_user_specified_name
states_1:&"
 
_user_specified_name559827:&"
 
_user_specified_name559829:&"
 
_user_specified_name559831
Ў
т
?__inference_model_8_stackedLSTM_univariate_layer_call_fn_558388
lstm_2_input
unknown:	
	unknown_0:
Р
	unknown_1:	
	unknown_2:
Р
	unknown_3:
р
	unknown_4:	
	unknown_5:	р
	unknown_6:
identityЂStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCalllstm_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *c
f^R\
Z__inference_model_8_stackedLSTM_univariate_layer_call_and_return_conditional_losses_558346o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_2_input:&"
 
_user_specified_name558370:&"
 
_user_specified_name558372:&"
 
_user_specified_name558374:&"
 
_user_specified_name558376:&"
 
_user_specified_name558378:&"
 
_user_specified_name558380:&"
 
_user_specified_name558382:&"
 
_user_specified_name558384
 :
Й
while_body_559185
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
0while_lstm_cell_matmul_readvariableop_resource_0:
РF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
р@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
.while_lstm_cell_matmul_readvariableop_resource:
РD
0while_lstm_cell_matmul_1_readvariableop_resource:
р>
/while_lstm_cell_biasadd_readvariableop_resource:	Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџР*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
Р*
dtype0Д
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
р*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџрw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџрo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџрw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџрl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ъ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџрw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџрЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : 2P
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
:џџџџџџџџџр:.*
(
_output_shapes
:џџџџџџџџџр:GC
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
З9
њ
B__inference_lstm_3_layer_call_and_return_conditional_losses_557511

inputs$
lstm_cell_557427:
Р$
lstm_cell_557429:
р
lstm_cell_557431:	
identityЂ!lstm_cell/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
B :рs
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
:џџџџџџџџџрS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :рw
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
:џџџџџџџџџрc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          w
	transpose	Transposeinputstranspose/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџРR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџР*
shrink_axis_maskщ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_557427lstm_cell_557429lstm_cell_557431*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_557426n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџр   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_557427lstm_cell_557429lstm_cell_557431*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_557441*
condR
while_cond_557440*M
output_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџр   з
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџр*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџр*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџр[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџрN
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџР: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:] Y
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџР
 
_user_specified_nameinputs:&"
 
_user_specified_name557427:&"
 
_user_specified_name557429:&"
 
_user_specified_name557431
Ц	
У
while_cond_557774
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_557774___redundant_placeholder04
0while_while_cond_557774___redundant_placeholder14
0while_while_cond_557774___redundant_placeholder24
0while_while_cond_557774___redundant_placeholder3
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
B: : : : :џџџџџџџџџР:џџџџџџџџџР: :::::J F
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
:џџџџџџџџџР:.*
(
_output_shapes
:џџџџџџџџџР:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ц	
У
while_cond_559619
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_559619___redundant_placeholder04
0while_while_cond_559619___redundant_placeholder14
0while_while_cond_559619___redundant_placeholder24
0while_while_cond_559619___redundant_placeholder3
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
B: : : : :џџџџџџџџџр:џџџџџџџџџр: :::::J F
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
:џџџџџџџџџр:.*
(
_output_shapes
:џџџџџџџџџр:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
ц
П	
7model_8_stackedLSTM_univariate_lstm_3_while_cond_556926h
dmodel_8_stackedlstm_univariate_lstm_3_while_model_8_stackedlstm_univariate_lstm_3_while_loop_countern
jmodel_8_stackedlstm_univariate_lstm_3_while_model_8_stackedlstm_univariate_lstm_3_while_maximum_iterations;
7model_8_stackedlstm_univariate_lstm_3_while_placeholder=
9model_8_stackedlstm_univariate_lstm_3_while_placeholder_1=
9model_8_stackedlstm_univariate_lstm_3_while_placeholder_2=
9model_8_stackedlstm_univariate_lstm_3_while_placeholder_3j
fmodel_8_stackedlstm_univariate_lstm_3_while_less_model_8_stackedlstm_univariate_lstm_3_strided_slice_1
|model_8_stackedlstm_univariate_lstm_3_while_model_8_stackedlstm_univariate_lstm_3_while_cond_556926___redundant_placeholder0
|model_8_stackedlstm_univariate_lstm_3_while_model_8_stackedlstm_univariate_lstm_3_while_cond_556926___redundant_placeholder1
|model_8_stackedlstm_univariate_lstm_3_while_model_8_stackedlstm_univariate_lstm_3_while_cond_556926___redundant_placeholder2
|model_8_stackedlstm_univariate_lstm_3_while_model_8_stackedlstm_univariate_lstm_3_while_cond_556926___redundant_placeholder38
4model_8_stackedlstm_univariate_lstm_3_while_identity
њ
0model_8_stackedLSTM_univariate/lstm_3/while/LessLess7model_8_stackedlstm_univariate_lstm_3_while_placeholderfmodel_8_stackedlstm_univariate_lstm_3_while_less_model_8_stackedlstm_univariate_lstm_3_strided_slice_1*
T0*
_output_shapes
: 
4model_8_stackedLSTM_univariate/lstm_3/while/IdentityIdentity4model_8_stackedLSTM_univariate/lstm_3/while/Less:z:0*
T0
*
_output_shapes
: "u
4model_8_stackedlstm_univariate_lstm_3_while_identity=model_8_stackedLSTM_univariate/lstm_3/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџр:џџџџџџџџџр: :::::p l

_output_shapes
: 
R
_user_specified_name:8model_8_stackedLSTM_univariate/lstm_3/while/loop_counter:vr

_output_shapes
: 
X
_user_specified_name@>model_8_stackedLSTM_univariate/lstm_3/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџр:.*
(
_output_shapes
:џџџџџџџџџр:mi

_output_shapes
: 
O
_user_specified_name75model_8_stackedLSTM_univariate/lstm_3/strided_slice_1:

_output_shapes
:
д
Е
'__inference_lstm_2_layer_call_fn_558509

inputs
unknown:	
	unknown_0:
Р
	unknown_1:	
identityЂStatefulPartitionedCallщ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџР*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_558180t
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџР<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:&"
 
_user_specified_name558501:&"
 
_user_specified_name558503:&"
 
_user_specified_name558505
Ц	
У
while_cond_557440
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_557440___redundant_placeholder04
0while_while_cond_557440___redundant_placeholder14
0while_while_cond_557440___redundant_placeholder24
0while_while_cond_557440___redundant_placeholder3
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
B: : : : :џџџџџџџџџр:џџџџџџџџџр: :::::J F
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
:џџџџџџџџџр:.*
(
_output_shapes
:џџџџџџџџџр:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Э$
а
while_body_557239
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_557263_0:	,
while_lstm_cell_557265_0:
Р'
while_lstm_cell_557267_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_557263:	*
while_lstm_cell_557265:
Р%
while_lstm_cell_557267:	Ђ'while/lstm_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ї
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_557263_0while_lstm_cell_557265_0while_lstm_cell_557267_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_557225й
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџР
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџРR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_557263while_lstm_cell_557263_0"2
while_lstm_cell_557265while_lstm_cell_557265_0"2
while_lstm_cell_557267while_lstm_cell_557267_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : 2R
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
:џџџџџџџџџР:.*
(
_output_shapes
:џџџџџџџџџР:GC
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
 
_user_specified_name557263:&	"
 
_user_specified_name557265:&
"
 
_user_specified_name557267
Ч8
љ
B__inference_lstm_2_layer_call_and_return_conditional_losses_557163

inputs#
lstm_cell_557081:	$
lstm_cell_557083:
Р
lstm_cell_557085:	
identityЂ!lstm_cell/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
B :Рs
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
:џџџџџџџџџРS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Рw
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
:џџџџџџџџџРc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskщ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_557081lstm_cell_557083lstm_cell_557085*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_557080n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_557081lstm_cell_557083lstm_cell_557085*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_557094*
condR
while_cond_557093*M
output_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   Ь
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџР*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџР*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџР[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџРN
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:&"
 
_user_specified_name557081:&"
 
_user_specified_name557083:&"
 
_user_specified_name557085
Ц	
У
while_cond_559474
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_559474___redundant_placeholder04
0while_while_cond_559474___redundant_placeholder14
0while_while_cond_559474___redundant_placeholder24
0while_while_cond_559474___redundant_placeholder3
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
B: : : : :џџџџџџџџџр:џџџџџџџџџр: :::::J F
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
:џџџџџџџџџр:.*
(
_output_shapes
:џџџџџџџџџр:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ч
ѕ
*__inference_lstm_cell_layer_call_fn_559856

inputs
states_0
states_1
unknown:
Р
	unknown_0:
р
	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_557573p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџрr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:џџџџџџџџџрr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:џџџџџџџџџр<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџР:џџџџџџџџџр:џџџџџџџџџр: : : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџР
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџр
"
_user_specified_name
states_0:RN
(
_output_shapes
:џџџџџџџџџр
"
_user_specified_name
states_1:&"
 
_user_specified_name559844:&"
 
_user_specified_name559846:&"
 
_user_specified_name559848
 :
Й
while_body_558247
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
0while_lstm_cell_matmul_readvariableop_resource_0:
РF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
р@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
.while_lstm_cell_matmul_readvariableop_resource:
РD
0while_lstm_cell_matmul_1_readvariableop_resource:
р>
/while_lstm_cell_biasadd_readvariableop_resource:	Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџР*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
Р*
dtype0Д
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
р*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџрw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџрo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџрw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџрl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ъ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџрw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџрЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : 2P
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
:џџџџџџџџџр:.*
(
_output_shapes
:џџџџџџџџџр:GC
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
Э

E__inference_lstm_cell_layer_call_and_return_conditional_losses_559920

inputs
states_0
states_12
matmul_readvariableop_resource:
Р4
 matmul_1_readvariableop_resource:
р.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
р*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:џџџџџџџџџрW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:џџџџџџџџџрV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџрO
ReluRelusplit:output:2*
T0*(
_output_shapes
:џџџџџџџџџр`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџрW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:џџџџџџџџџрL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџрd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџр[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџр[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџрm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџР:џџџџџџџџџр:џџџџџџџџџр: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџР
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџр
"
_user_specified_name
states_0:RN
(
_output_shapes
:џџџџџџџџџр
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
Щ

E__inference_lstm_cell_layer_call_and_return_conditional_losses_559790

inputs
states_0
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
Р.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
Р*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:џџџџџџџџџРW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:џџџџџџџџџРV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџРO
ReluRelusplit:output:2*
T0*(
_output_shapes
:џџџџџџџџџР`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџРW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:џџџџџџџџџРL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџРd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџР[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџР[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџРm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџР:џџџџџџџџџР: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџР
"
_user_specified_name
states_0:RN
(
_output_shapes
:џџџџџџџџџР
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
Ц	
У
while_cond_558567
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_558567___redundant_placeholder04
0while_while_cond_558567___redundant_placeholder14
0while_while_cond_558567___redundant_placeholder24
0while_while_cond_558567___redundant_placeholder3
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
B: : : : :џџџџџџџџџР:џџџџџџџџџР: :::::J F
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
:џџџџџџџџџР:.*
(
_output_shapes
:џџџџџџџџџР:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ц	
У
while_cond_557587
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_557587___redundant_placeholder04
0while_while_cond_557587___redundant_placeholder14
0while_while_cond_557587___redundant_placeholder24
0while_while_cond_557587___redundant_placeholder3
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
B: : : : :џџџџџџџџџр:џџџџџџџџџр: :::::J F
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
:џџџџџџџџџр:.*
(
_output_shapes
:џџџџџџџџџр:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
фI

B__inference_lstm_2_layer_call_and_return_conditional_losses_557859

inputs;
(lstm_cell_matmul_readvariableop_resource:	>
*lstm_cell_matmul_1_readvariableop_resource:
Р8
)lstm_cell_biasadd_readvariableop_resource:	
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
B :Рs
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
:џџџџџџџџџРS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Рw
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
:џџџџџџџџџРc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
Р*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџРk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџРr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџРc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџР~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџРk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџР`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџР
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_557775*
condR
while_cond_557774*M
output_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџР*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџР*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџР[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџР
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
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

џ
"__inference__traced_restore_560203
file_prefix2
assignvariableop_dense_1_kernel:	р-
assignvariableop_1_dense_1_bias:=
*assignvariableop_2_lstm_2_lstm_cell_kernel:	H
4assignvariableop_3_lstm_2_lstm_cell_recurrent_kernel:
Р7
(assignvariableop_4_lstm_2_lstm_cell_bias:	>
*assignvariableop_5_lstm_3_lstm_cell_kernel:
РH
4assignvariableop_6_lstm_3_lstm_cell_recurrent_kernel:
р7
(assignvariableop_7_lstm_3_lstm_cell_bias:	&
assignvariableop_8_iteration:	 *
 assignvariableop_9_learning_rate: E
2assignvariableop_10_adam_m_lstm_2_lstm_cell_kernel:	E
2assignvariableop_11_adam_v_lstm_2_lstm_cell_kernel:	P
<assignvariableop_12_adam_m_lstm_2_lstm_cell_recurrent_kernel:
РP
<assignvariableop_13_adam_v_lstm_2_lstm_cell_recurrent_kernel:
Р?
0assignvariableop_14_adam_m_lstm_2_lstm_cell_bias:	?
0assignvariableop_15_adam_v_lstm_2_lstm_cell_bias:	F
2assignvariableop_16_adam_m_lstm_3_lstm_cell_kernel:
РF
2assignvariableop_17_adam_v_lstm_3_lstm_cell_kernel:
РP
<assignvariableop_18_adam_m_lstm_3_lstm_cell_recurrent_kernel:
рP
<assignvariableop_19_adam_v_lstm_3_lstm_cell_recurrent_kernel:
р?
0assignvariableop_20_adam_m_lstm_3_lstm_cell_bias:	?
0assignvariableop_21_adam_v_lstm_3_lstm_cell_bias:	<
)assignvariableop_22_adam_m_dense_1_kernel:	р<
)assignvariableop_23_adam_v_dense_1_kernel:	р5
'assignvariableop_24_adam_m_dense_1_bias:5
'assignvariableop_25_adam_v_dense_1_bias:#
assignvariableop_26_total: #
assignvariableop_27_count: 
identity_29ЂAssignVariableOpЂAssignVariableOp_1ЂAssignVariableOp_10ЂAssignVariableOp_11ЂAssignVariableOp_12ЂAssignVariableOp_13ЂAssignVariableOp_14ЂAssignVariableOp_15ЂAssignVariableOp_16ЂAssignVariableOp_17ЂAssignVariableOp_18ЂAssignVariableOp_19ЂAssignVariableOp_2ЂAssignVariableOp_20ЂAssignVariableOp_21ЂAssignVariableOp_22ЂAssignVariableOp_23ЂAssignVariableOp_24ЂAssignVariableOp_25ЂAssignVariableOp_26ЂAssignVariableOp_27ЂAssignVariableOp_3ЂAssignVariableOp_4ЂAssignVariableOp_5ЂAssignVariableOp_6ЂAssignVariableOp_7ЂAssignVariableOp_8ЂAssignVariableOp_9ѕ
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
:*
dtype0*
valueBB6layer_with_weights-2/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-2/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB0optimizer/_iterations/.ATTRIBUTES/VARIABLE_VALUEB3optimizer/_learning_rate/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/1/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/2/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/3/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/4/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/5/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/6/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/7/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/8/.ATTRIBUTES/VARIABLE_VALUEB1optimizer/_variables/9/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/10/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/11/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/12/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/13/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/14/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/15/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/_variables/16/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPHЊ
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
:*
dtype0*M
valueDBBB B B B B B B B B B B B B B B B B B B B B B B B B B B B B А
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapesv
t:::::::::::::::::::::::::::::*+
dtypes!
2	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOpAssignVariableOpassignvariableop_dense_1_kernelIdentity:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:Ж
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_1_biasIdentity_1:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_2AssignVariableOp*assignvariableop_2_lstm_2_lstm_cell_kernelIdentity_2:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_3AssignVariableOp4assignvariableop_3_lstm_2_lstm_cell_recurrent_kernelIdentity_3:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_4AssignVariableOp(assignvariableop_4_lstm_2_lstm_cell_biasIdentity_4:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:С
AssignVariableOp_5AssignVariableOp*assignvariableop_5_lstm_3_lstm_cell_kernelIdentity_5:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_6AssignVariableOp4assignvariableop_6_lstm_3_lstm_cell_recurrent_kernelIdentity_6:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:П
AssignVariableOp_7AssignVariableOp(assignvariableop_7_lstm_3_lstm_cell_biasIdentity_7:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:Г
AssignVariableOp_8AssignVariableOpassignvariableop_8_iterationIdentity_8:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:З
AssignVariableOp_9AssignVariableOp assignvariableop_9_learning_rateIdentity_9:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_10AssignVariableOp2assignvariableop_10_adam_m_lstm_2_lstm_cell_kernelIdentity_10:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_11AssignVariableOp2assignvariableop_11_adam_v_lstm_2_lstm_cell_kernelIdentity_11:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_12AssignVariableOp<assignvariableop_12_adam_m_lstm_2_lstm_cell_recurrent_kernelIdentity_12:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_13AssignVariableOp<assignvariableop_13_adam_v_lstm_2_lstm_cell_recurrent_kernelIdentity_13:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_14AssignVariableOp0assignvariableop_14_adam_m_lstm_2_lstm_cell_biasIdentity_14:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_15AssignVariableOp0assignvariableop_15_adam_v_lstm_2_lstm_cell_biasIdentity_15:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_16AssignVariableOp2assignvariableop_16_adam_m_lstm_3_lstm_cell_kernelIdentity_16:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ы
AssignVariableOp_17AssignVariableOp2assignvariableop_17_adam_v_lstm_3_lstm_cell_kernelIdentity_17:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_18AssignVariableOp<assignvariableop_18_adam_m_lstm_3_lstm_cell_recurrent_kernelIdentity_18:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:е
AssignVariableOp_19AssignVariableOp<assignvariableop_19_adam_v_lstm_3_lstm_cell_recurrent_kernelIdentity_19:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_20AssignVariableOp0assignvariableop_20_adam_m_lstm_3_lstm_cell_biasIdentity_20:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Щ
AssignVariableOp_21AssignVariableOp0assignvariableop_21_adam_v_lstm_3_lstm_cell_biasIdentity_21:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_22AssignVariableOp)assignvariableop_22_adam_m_dense_1_kernelIdentity_22:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:Т
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_v_dense_1_kernelIdentity_23:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_m_dense_1_biasIdentity_24:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Р
AssignVariableOp_25AssignVariableOp'assignvariableop_25_adam_v_dense_1_biasIdentity_25:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_26AssignVariableOpassignvariableop_26_totalIdentity_26:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:В
AssignVariableOp_27AssignVariableOpassignvariableop_27_countIdentity_27:output:0"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 *
dtype0Y
NoOpNoOp"/device:CPU:0*&
 _has_manual_control_dependencies(*
_output_shapes
 З
Identity_28Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_3^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_29IdentityIdentity_28:output:0^NoOp_1*
T0*
_output_shapes
: 
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
_user_specified_namefile_prefix:.*
(
_user_specified_namedense_1/kernel:,(
&
_user_specified_namedense_1/bias:73
1
_user_specified_namelstm_2/lstm_cell/kernel:A=
;
_user_specified_name#!lstm_2/lstm_cell/recurrent_kernel:51
/
_user_specified_namelstm_2/lstm_cell/bias:73
1
_user_specified_namelstm_3/lstm_cell/kernel:A=
;
_user_specified_name#!lstm_3/lstm_cell/recurrent_kernel:51
/
_user_specified_namelstm_3/lstm_cell/bias:)	%
#
_user_specified_name	iteration:-
)
'
_user_specified_namelearning_rate:>:
8
_user_specified_name Adam/m/lstm_2/lstm_cell/kernel:>:
8
_user_specified_name Adam/v/lstm_2/lstm_cell/kernel:HD
B
_user_specified_name*(Adam/m/lstm_2/lstm_cell/recurrent_kernel:HD
B
_user_specified_name*(Adam/v/lstm_2/lstm_cell/recurrent_kernel:<8
6
_user_specified_nameAdam/m/lstm_2/lstm_cell/bias:<8
6
_user_specified_nameAdam/v/lstm_2/lstm_cell/bias:>:
8
_user_specified_name Adam/m/lstm_3/lstm_cell/kernel:>:
8
_user_specified_name Adam/v/lstm_3/lstm_cell/kernel:HD
B
_user_specified_name*(Adam/m/lstm_3/lstm_cell/recurrent_kernel:HD
B
_user_specified_name*(Adam/v/lstm_3/lstm_cell/recurrent_kernel:<8
6
_user_specified_nameAdam/m/lstm_3/lstm_cell/bias:<8
6
_user_specified_nameAdam/v/lstm_3/lstm_cell/bias:51
/
_user_specified_nameAdam/m/dense_1/kernel:51
/
_user_specified_nameAdam/v/dense_1/kernel:3/
-
_user_specified_nameAdam/m/dense_1/bias:3/
-
_user_specified_nameAdam/v/dense_1/bias:%!

_user_specified_nametotal:%!

_user_specified_namecount
Ў
т
?__inference_model_8_stackedLSTM_univariate_layer_call_fn_558367
lstm_2_input
unknown:	
	unknown_0:
Р
	unknown_1:	
	unknown_2:
Р
	unknown_3:
р
	unknown_4:	
	unknown_5:	р
	unknown_6:
identityЂStatefulPartitionedCallУ
StatefulPartitionedCallStatefulPartitionedCalllstm_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 *c
f^R\
Z__inference_model_8_stackedLSTM_univariate_layer_call_and_return_conditional_losses_558035o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_2_input:&"
 
_user_specified_name558349:&"
 
_user_specified_name558351:&"
 
_user_specified_name558353:&"
 
_user_specified_name558355:&"
 
_user_specified_name558357:&"
 
_user_specified_name558359:&"
 
_user_specified_name558361:&"
 
_user_specified_name558363
№J

B__inference_lstm_3_layer_call_and_return_conditional_losses_558332

inputs<
(lstm_cell_matmul_readvariableop_resource:
Р>
*lstm_cell_matmul_1_readvariableop_resource:
р8
)lstm_cell_biasadd_readvariableop_resource:	
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
B :рs
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
:џџџџџџџџџрS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :рw
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
:џџџџџџџџџрc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџРR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџР*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
р*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџрk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџрr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџрc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџр~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџрk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџр`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџр
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџр   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_558247*
condR
while_cond_558246*M
output_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџр   з
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџр*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџр*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџр[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџр
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџР: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџР
 
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
к
Ч
$__inference_signature_wrapper_558465
lstm_2_input
unknown:	
	unknown_0:
Р
	unknown_1:	
	unknown_2:
Р
	unknown_3:
р
	unknown_4:	
	unknown_5:	р
	unknown_6:
identityЂStatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllstm_2_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ**
_read_only_resource_inputs

*-
config_proto

CPU

GPU 2J 8 **
f%R#
!__inference__wrapped_model_557018o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_2_input:&"
 
_user_specified_name558447:&"
 
_user_specified_name558449:&"
 
_user_specified_name558451:&"
 
_user_specified_name558453:&"
 
_user_specified_name558455:&"
 
_user_specified_name558457:&"
 
_user_specified_name558459:&"
 
_user_specified_name558461
9
З
while_body_558568
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
Р@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	D
0while_lstm_cell_matmul_1_readvariableop_resource:
Р>
/while_lstm_cell_biasadd_readvariableop_resource:	Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Д
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
Р*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџРw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџРo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџРw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџРl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРТ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџРw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџРЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : 2P
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
:џџџџџџџџџР:.*
(
_output_shapes
:џџџџџџџџџР:GC
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
ЂJ

B__inference_lstm_2_layer_call_and_return_conditional_losses_558795
inputs_0;
(lstm_cell_matmul_readvariableop_resource:	>
*lstm_cell_matmul_1_readvariableop_resource:
Р8
)lstm_cell_biasadd_readvariableop_resource:	
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileK
ShapeShapeinputs_0*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
B :Рs
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
:џџџџџџџџџРS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Рw
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
:џџџџџџџџџРc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
Р*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџРk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџРr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџРc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџР~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџРk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџР`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџР
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_558711*
condR
while_cond_558710*M
output_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   Ь
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџР*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџР*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџР[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџР
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
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
Щ

E__inference_lstm_cell_layer_call_and_return_conditional_losses_559822

inputs
states_0
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
Р.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
Р*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:џџџџџџџџџРW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:џџџџџџџџџРV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџРO
ReluRelusplit:output:2*
T0*(
_output_shapes
:џџџџџџџџџР`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџРW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:џџџџџџџџџРL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџРd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџР[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџР[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџРm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџР:џџџџџџџџџР: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџР
"
_user_specified_name
states_0:RN
(
_output_shapes
:џџџџџџџџџР
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
ь%
в
while_body_557588
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0,
while_lstm_cell_557612_0:
Р,
while_lstm_cell_557614_0:
р'
while_lstm_cell_557616_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor*
while_lstm_cell_557612:
Р*
while_lstm_cell_557614:
р%
while_lstm_cell_557616:	Ђ'while/lstm_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџР*
element_dtype0Ї
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_557612_0while_lstm_cell_557614_0while_lstm_cell_557616_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_557573r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:00while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџр
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџрR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_557612while_lstm_cell_557612_0"2
while_lstm_cell_557614while_lstm_cell_557614_0"2
while_lstm_cell_557616while_lstm_cell_557616_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : 2R
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
:џџџџџџџџџр:.*
(
_output_shapes
:џџџџџџџџџр:GC
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
 
_user_specified_name557612:&	"
 
_user_specified_name557614:&
"
 
_user_specified_name557616
Ф
є
*__inference_lstm_cell_layer_call_fn_559758

inputs
states_0
states_1
unknown:	
	unknown_0:
Р
	unknown_1:	
identity

identity_1

identity_2ЂStatefulPartitionedCallЈ
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_557225p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџРr

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:џџџџџџџџџРr

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:џџџџџџџџџР<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџР:џџџџџџџџџР: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџР
"
_user_specified_name
states_0:RN
(
_output_shapes
:џџџџџџџџџР
"
_user_specified_name
states_1:&"
 
_user_specified_name559746:&"
 
_user_specified_name559748:&"
 
_user_specified_name559750
фI

B__inference_lstm_2_layer_call_and_return_conditional_losses_558938

inputs;
(lstm_cell_matmul_readvariableop_resource:	>
*lstm_cell_matmul_1_readvariableop_resource:
Р8
)lstm_cell_biasadd_readvariableop_resource:	
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
B :Рs
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
:џџџџџџџџџРS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Рw
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
:џџџџџџџџџРc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
Р*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџРk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџРr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџРc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџР~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџРk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџР`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџР
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_558854*
condR
while_cond_558853*M
output_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџР*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџР*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџР[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџР
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
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
9
З
while_body_558096
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
Р@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	D
0while_lstm_cell_matmul_1_readvariableop_resource:
Р>
/while_lstm_cell_biasadd_readvariableop_resource:	Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Д
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
Р*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџРw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџРo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџРw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџРl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРТ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџРw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџРЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : 2P
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
:џџџџџџџџџР:.*
(
_output_shapes
:џџџџџџџџџР:GC
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
Х

E__inference_lstm_cell_layer_call_and_return_conditional_losses_557426

inputs

states
states_12
matmul_readvariableop_resource:
Р4
 matmul_1_readvariableop_resource:
р.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
р*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:џџџџџџџџџрW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:џџџџџџџџџрV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџрO
ReluRelusplit:output:2*
T0*(
_output_shapes
:џџџџџџџџџр`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџрW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:џџџџџџџџџрL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџрd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџр[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџр[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџрm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџР:џџџџџџџџџр:џџџџџџџџџр: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџР
 
_user_specified_nameinputs:PL
(
_output_shapes
:џџџџџџџџџр
 
_user_specified_namestates:PL
(
_output_shapes
:џџџџџџџџџр
 
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
ц
П	
7model_8_stackedLSTM_univariate_lstm_2_while_cond_556786h
dmodel_8_stackedlstm_univariate_lstm_2_while_model_8_stackedlstm_univariate_lstm_2_while_loop_countern
jmodel_8_stackedlstm_univariate_lstm_2_while_model_8_stackedlstm_univariate_lstm_2_while_maximum_iterations;
7model_8_stackedlstm_univariate_lstm_2_while_placeholder=
9model_8_stackedlstm_univariate_lstm_2_while_placeholder_1=
9model_8_stackedlstm_univariate_lstm_2_while_placeholder_2=
9model_8_stackedlstm_univariate_lstm_2_while_placeholder_3j
fmodel_8_stackedlstm_univariate_lstm_2_while_less_model_8_stackedlstm_univariate_lstm_2_strided_slice_1
|model_8_stackedlstm_univariate_lstm_2_while_model_8_stackedlstm_univariate_lstm_2_while_cond_556786___redundant_placeholder0
|model_8_stackedlstm_univariate_lstm_2_while_model_8_stackedlstm_univariate_lstm_2_while_cond_556786___redundant_placeholder1
|model_8_stackedlstm_univariate_lstm_2_while_model_8_stackedlstm_univariate_lstm_2_while_cond_556786___redundant_placeholder2
|model_8_stackedlstm_univariate_lstm_2_while_model_8_stackedlstm_univariate_lstm_2_while_cond_556786___redundant_placeholder38
4model_8_stackedlstm_univariate_lstm_2_while_identity
њ
0model_8_stackedLSTM_univariate/lstm_2/while/LessLess7model_8_stackedlstm_univariate_lstm_2_while_placeholderfmodel_8_stackedlstm_univariate_lstm_2_while_less_model_8_stackedlstm_univariate_lstm_2_strided_slice_1*
T0*
_output_shapes
: 
4model_8_stackedLSTM_univariate/lstm_2/while/IdentityIdentity4model_8_stackedLSTM_univariate/lstm_2/while/Less:z:0*
T0
*
_output_shapes
: "u
4model_8_stackedlstm_univariate_lstm_2_while_identity=model_8_stackedLSTM_univariate/lstm_2/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :џџџџџџџџџР:џџџџџџџџџР: :::::p l

_output_shapes
: 
R
_user_specified_name:8model_8_stackedLSTM_univariate/lstm_2/while/loop_counter:vr

_output_shapes
: 
X
_user_specified_name@>model_8_stackedLSTM_univariate/lstm_2/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџР:.*
(
_output_shapes
:џџџџџџџџџР:mi

_output_shapes
: 
O
_user_specified_name75model_8_stackedLSTM_univariate/lstm_2/strided_slice_1:

_output_shapes
:
Э$
а
while_body_557094
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0+
while_lstm_cell_557118_0:	,
while_lstm_cell_557120_0:
Р'
while_lstm_cell_557122_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor)
while_lstm_cell_557118:	*
while_lstm_cell_557120:
Р%
while_lstm_cell_557122:	Ђ'while/lstm_cell/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0Ї
'while/lstm_cell/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_557118_0while_lstm_cell_557120_0while_lstm_cell_557122_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_557080й
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholder0while/lstm_cell/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: 
while/Identity_4Identity0while/lstm_cell/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџР
while/Identity_5Identity0while/lstm_cell/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџРR

while/NoOpNoOp(^while/lstm_cell/StatefulPartitionedCall*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"2
while_lstm_cell_557118while_lstm_cell_557118_0"2
while_lstm_cell_557120while_lstm_cell_557120_0"2
while_lstm_cell_557122while_lstm_cell_557122_0"0
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : 2R
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
:џџџџџџџџџР:.*
(
_output_shapes
:џџџџџџџџџР:GC
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
 
_user_specified_name557118:&	"
 
_user_specified_name557120:&
"
 
_user_specified_name557122
Ц	
У
while_cond_557238
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_557238___redundant_placeholder04
0while_while_cond_557238___redundant_placeholder14
0while_while_cond_557238___redundant_placeholder24
0while_while_cond_557238___redundant_placeholder3
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
B: : : : :џџџџџџџџџР:џџџџџџџџџР: :::::J F
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
:џџџџџџџџџР:.*
(
_output_shapes
:џџџџџџџџџР:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
№J

B__inference_lstm_3_layer_call_and_return_conditional_losses_559560

inputs<
(lstm_cell_matmul_readvariableop_resource:
Р>
*lstm_cell_matmul_1_readvariableop_resource:
р8
)lstm_cell_biasadd_readvariableop_resource:	
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
B :рs
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
:џџџџџџџџџрS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :рw
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
:џџџџџџџџџрc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџРR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџР*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
р*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџрk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџрr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџрc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџр~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџрk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџр`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџр
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџр   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_559475*
condR
while_cond_559474*M
output_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџр   з
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџр*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџр*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџр[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџр
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџР: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџР
 
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
 :
Й
while_body_557926
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
0while_lstm_cell_matmul_readvariableop_resource_0:
РF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
р@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
.while_lstm_cell_matmul_readvariableop_resource:
РD
0while_lstm_cell_matmul_1_readvariableop_resource:
р>
/while_lstm_cell_biasadd_readvariableop_resource:	Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџР*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
Р*
dtype0Д
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
р*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџрw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџрo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџрw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџрl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ъ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџрw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџрЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : 2P
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
:џџџџџџџџџр:.*
(
_output_shapes
:џџџџџџџџџр:GC
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
№J

B__inference_lstm_3_layer_call_and_return_conditional_losses_559705

inputs<
(lstm_cell_matmul_readvariableop_resource:
Р>
*lstm_cell_matmul_1_readvariableop_resource:
р8
)lstm_cell_biasadd_readvariableop_resource:	
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
B :рs
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
:џџџџџџџџџрS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :рw
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
:џџџџџџџџџрc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          n
	transpose	Transposeinputstranspose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџРR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:ъ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџР*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
р*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџрk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџрr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџрc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџр~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџрk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџр`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџр
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџр   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Х
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_559620*
condR
while_cond_559619*M
output_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџр   з
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџр*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџр*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџр[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџр
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџР: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:T P
,
_output_shapes
:џџџџџџџџџР
 
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
Ц	
У
while_cond_558710
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_558710___redundant_placeholder04
0while_while_cond_558710___redundant_placeholder14
0while_while_cond_558710___redundant_placeholder24
0while_while_cond_558710___redundant_placeholder3
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
B: : : : :џџџџџџџџџР:џџџџџџџџџР: :::::J F
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
:џџџџџџџџџР:.*
(
_output_shapes
:џџџџџџџџџР:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
яћ
к
!__inference__wrapped_model_557018
lstm_2_inputa
Nmodel_8_stackedlstm_univariate_lstm_2_lstm_cell_matmul_readvariableop_resource:	d
Pmodel_8_stackedlstm_univariate_lstm_2_lstm_cell_matmul_1_readvariableop_resource:
Р^
Omodel_8_stackedlstm_univariate_lstm_2_lstm_cell_biasadd_readvariableop_resource:	b
Nmodel_8_stackedlstm_univariate_lstm_3_lstm_cell_matmul_readvariableop_resource:
Рd
Pmodel_8_stackedlstm_univariate_lstm_3_lstm_cell_matmul_1_readvariableop_resource:
р^
Omodel_8_stackedlstm_univariate_lstm_3_lstm_cell_biasadd_readvariableop_resource:	X
Emodel_8_stackedlstm_univariate_dense_1_matmul_readvariableop_resource:	рT
Fmodel_8_stackedlstm_univariate_dense_1_biasadd_readvariableop_resource:
identityЂ=model_8_stackedLSTM_univariate/dense_1/BiasAdd/ReadVariableOpЂ<model_8_stackedLSTM_univariate/dense_1/MatMul/ReadVariableOpЂFmodel_8_stackedLSTM_univariate/lstm_2/lstm_cell/BiasAdd/ReadVariableOpЂEmodel_8_stackedLSTM_univariate/lstm_2/lstm_cell/MatMul/ReadVariableOpЂGmodel_8_stackedLSTM_univariate/lstm_2/lstm_cell/MatMul_1/ReadVariableOpЂ+model_8_stackedLSTM_univariate/lstm_2/whileЂFmodel_8_stackedLSTM_univariate/lstm_3/lstm_cell/BiasAdd/ReadVariableOpЂEmodel_8_stackedLSTM_univariate/lstm_3/lstm_cell/MatMul/ReadVariableOpЂGmodel_8_stackedLSTM_univariate/lstm_3/lstm_cell/MatMul_1/ReadVariableOpЂ+model_8_stackedLSTM_univariate/lstm_3/whileu
+model_8_stackedLSTM_univariate/lstm_2/ShapeShapelstm_2_input*
T0*
_output_shapes
::эЯ
9model_8_stackedLSTM_univariate/lstm_2/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
;model_8_stackedLSTM_univariate/lstm_2/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;model_8_stackedLSTM_univariate/lstm_2/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3model_8_stackedLSTM_univariate/lstm_2/strided_sliceStridedSlice4model_8_stackedLSTM_univariate/lstm_2/Shape:output:0Bmodel_8_stackedLSTM_univariate/lstm_2/strided_slice/stack:output:0Dmodel_8_stackedLSTM_univariate/lstm_2/strided_slice/stack_1:output:0Dmodel_8_stackedLSTM_univariate/lstm_2/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
4model_8_stackedLSTM_univariate/lstm_2/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Рх
2model_8_stackedLSTM_univariate/lstm_2/zeros/packedPack<model_8_stackedLSTM_univariate/lstm_2/strided_slice:output:0=model_8_stackedLSTM_univariate/lstm_2/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:v
1model_8_stackedLSTM_univariate/lstm_2/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    п
+model_8_stackedLSTM_univariate/lstm_2/zerosFill;model_8_stackedLSTM_univariate/lstm_2/zeros/packed:output:0:model_8_stackedLSTM_univariate/lstm_2/zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџРy
6model_8_stackedLSTM_univariate/lstm_2/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Рщ
4model_8_stackedLSTM_univariate/lstm_2/zeros_1/packedPack<model_8_stackedLSTM_univariate/lstm_2/strided_slice:output:0?model_8_stackedLSTM_univariate/lstm_2/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:x
3model_8_stackedLSTM_univariate/lstm_2/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    х
-model_8_stackedLSTM_univariate/lstm_2/zeros_1Fill=model_8_stackedLSTM_univariate/lstm_2/zeros_1/packed:output:0<model_8_stackedLSTM_univariate/lstm_2/zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџР
4model_8_stackedLSTM_univariate/lstm_2/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          П
/model_8_stackedLSTM_univariate/lstm_2/transpose	Transposelstm_2_input=model_8_stackedLSTM_univariate/lstm_2/transpose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџ
-model_8_stackedLSTM_univariate/lstm_2/Shape_1Shape3model_8_stackedLSTM_univariate/lstm_2/transpose:y:0*
T0*
_output_shapes
::эЯ
;model_8_stackedLSTM_univariate/lstm_2/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
=model_8_stackedLSTM_univariate/lstm_2/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=model_8_stackedLSTM_univariate/lstm_2/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
5model_8_stackedLSTM_univariate/lstm_2/strided_slice_1StridedSlice6model_8_stackedLSTM_univariate/lstm_2/Shape_1:output:0Dmodel_8_stackedLSTM_univariate/lstm_2/strided_slice_1/stack:output:0Fmodel_8_stackedLSTM_univariate/lstm_2/strided_slice_1/stack_1:output:0Fmodel_8_stackedLSTM_univariate/lstm_2/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Amodel_8_stackedLSTM_univariate/lstm_2/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџІ
3model_8_stackedLSTM_univariate/lstm_2/TensorArrayV2TensorListReserveJmodel_8_stackedLSTM_univariate/lstm_2/TensorArrayV2/element_shape:output:0>model_8_stackedLSTM_univariate/lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвЌ
[model_8_stackedLSTM_univariate/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   в
Mmodel_8_stackedLSTM_univariate/lstm_2/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor3model_8_stackedLSTM_univariate/lstm_2/transpose:y:0dmodel_8_stackedLSTM_univariate/lstm_2/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
;model_8_stackedLSTM_univariate/lstm_2/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
=model_8_stackedLSTM_univariate/lstm_2/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=model_8_stackedLSTM_univariate/lstm_2/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ї
5model_8_stackedLSTM_univariate/lstm_2/strided_slice_2StridedSlice3model_8_stackedLSTM_univariate/lstm_2/transpose:y:0Dmodel_8_stackedLSTM_univariate/lstm_2/strided_slice_2/stack:output:0Fmodel_8_stackedLSTM_univariate/lstm_2/strided_slice_2/stack_1:output:0Fmodel_8_stackedLSTM_univariate/lstm_2/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskе
Emodel_8_stackedLSTM_univariate/lstm_2/lstm_cell/MatMul/ReadVariableOpReadVariableOpNmodel_8_stackedlstm_univariate_lstm_2_lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
6model_8_stackedLSTM_univariate/lstm_2/lstm_cell/MatMulMatMul>model_8_stackedLSTM_univariate/lstm_2/strided_slice_2:output:0Mmodel_8_stackedLSTM_univariate/lstm_2/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџк
Gmodel_8_stackedLSTM_univariate/lstm_2/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpPmodel_8_stackedlstm_univariate_lstm_2_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
Р*
dtype0ќ
8model_8_stackedLSTM_univariate/lstm_2/lstm_cell/MatMul_1MatMul4model_8_stackedLSTM_univariate/lstm_2/zeros:output:0Omodel_8_stackedLSTM_univariate/lstm_2/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџѕ
3model_8_stackedLSTM_univariate/lstm_2/lstm_cell/addAddV2@model_8_stackedLSTM_univariate/lstm_2/lstm_cell/MatMul:product:0Bmodel_8_stackedLSTM_univariate/lstm_2/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџг
Fmodel_8_stackedLSTM_univariate/lstm_2/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpOmodel_8_stackedlstm_univariate_lstm_2_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ў
7model_8_stackedLSTM_univariate/lstm_2/lstm_cell/BiasAddBiasAdd7model_8_stackedLSTM_univariate/lstm_2/lstm_cell/add:z:0Nmodel_8_stackedLSTM_univariate/lstm_2/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
?model_8_stackedLSTM_univariate/lstm_2/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ъ
5model_8_stackedLSTM_univariate/lstm_2/lstm_cell/splitSplitHmodel_8_stackedLSTM_univariate/lstm_2/lstm_cell/split/split_dim:output:0@model_8_stackedLSTM_univariate/lstm_2/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*
	num_splitЕ
7model_8_stackedLSTM_univariate/lstm_2/lstm_cell/SigmoidSigmoid>model_8_stackedLSTM_univariate/lstm_2/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџРЗ
9model_8_stackedLSTM_univariate/lstm_2/lstm_cell/Sigmoid_1Sigmoid>model_8_stackedLSTM_univariate/lstm_2/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџРф
3model_8_stackedLSTM_univariate/lstm_2/lstm_cell/mulMul=model_8_stackedLSTM_univariate/lstm_2/lstm_cell/Sigmoid_1:y:06model_8_stackedLSTM_univariate/lstm_2/zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџРЏ
4model_8_stackedLSTM_univariate/lstm_2/lstm_cell/ReluRelu>model_8_stackedLSTM_univariate/lstm_2/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџР№
5model_8_stackedLSTM_univariate/lstm_2/lstm_cell/mul_1Mul;model_8_stackedLSTM_univariate/lstm_2/lstm_cell/Sigmoid:y:0Bmodel_8_stackedLSTM_univariate/lstm_2/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРх
5model_8_stackedLSTM_univariate/lstm_2/lstm_cell/add_1AddV27model_8_stackedLSTM_univariate/lstm_2/lstm_cell/mul:z:09model_8_stackedLSTM_univariate/lstm_2/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџРЗ
9model_8_stackedLSTM_univariate/lstm_2/lstm_cell/Sigmoid_2Sigmoid>model_8_stackedLSTM_univariate/lstm_2/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџРЌ
6model_8_stackedLSTM_univariate/lstm_2/lstm_cell/Relu_1Relu9model_8_stackedLSTM_univariate/lstm_2/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџРє
5model_8_stackedLSTM_univariate/lstm_2/lstm_cell/mul_2Mul=model_8_stackedLSTM_univariate/lstm_2/lstm_cell/Sigmoid_2:y:0Dmodel_8_stackedLSTM_univariate/lstm_2/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџР
Cmodel_8_stackedLSTM_univariate/lstm_2/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   Њ
5model_8_stackedLSTM_univariate/lstm_2/TensorArrayV2_1TensorListReserveLmodel_8_stackedLSTM_univariate/lstm_2/TensorArrayV2_1/element_shape:output:0>model_8_stackedLSTM_univariate/lstm_2/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвl
*model_8_stackedLSTM_univariate/lstm_2/timeConst*
_output_shapes
: *
dtype0*
value	B : 
>model_8_stackedLSTM_univariate/lstm_2/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџz
8model_8_stackedLSTM_univariate/lstm_2/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : є	
+model_8_stackedLSTM_univariate/lstm_2/whileWhileAmodel_8_stackedLSTM_univariate/lstm_2/while/loop_counter:output:0Gmodel_8_stackedLSTM_univariate/lstm_2/while/maximum_iterations:output:03model_8_stackedLSTM_univariate/lstm_2/time:output:0>model_8_stackedLSTM_univariate/lstm_2/TensorArrayV2_1:handle:04model_8_stackedLSTM_univariate/lstm_2/zeros:output:06model_8_stackedLSTM_univariate/lstm_2/zeros_1:output:0>model_8_stackedLSTM_univariate/lstm_2/strided_slice_1:output:0]model_8_stackedLSTM_univariate/lstm_2/TensorArrayUnstack/TensorListFromTensor:output_handle:0Nmodel_8_stackedlstm_univariate_lstm_2_lstm_cell_matmul_readvariableop_resourcePmodel_8_stackedlstm_univariate_lstm_2_lstm_cell_matmul_1_readvariableop_resourceOmodel_8_stackedlstm_univariate_lstm_2_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : *%
_read_only_resource_inputs
	
*C
body;R9
7model_8_stackedLSTM_univariate_lstm_2_while_body_556787*C
cond;R9
7model_8_stackedLSTM_univariate_lstm_2_while_cond_556786*M
output_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : *
parallel_iterations Ї
Vmodel_8_stackedLSTM_univariate/lstm_2/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   Е
Hmodel_8_stackedLSTM_univariate/lstm_2/TensorArrayV2Stack/TensorListStackTensorListStack4model_8_stackedLSTM_univariate/lstm_2/while:output:3_model_8_stackedLSTM_univariate/lstm_2/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџР*
element_dtype0
;model_8_stackedLSTM_univariate/lstm_2/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
=model_8_stackedLSTM_univariate/lstm_2/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
=model_8_stackedLSTM_univariate/lstm_2/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ц
5model_8_stackedLSTM_univariate/lstm_2/strided_slice_3StridedSliceQmodel_8_stackedLSTM_univariate/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0Dmodel_8_stackedLSTM_univariate/lstm_2/strided_slice_3/stack:output:0Fmodel_8_stackedLSTM_univariate/lstm_2/strided_slice_3/stack_1:output:0Fmodel_8_stackedLSTM_univariate/lstm_2/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџР*
shrink_axis_mask
6model_8_stackedLSTM_univariate/lstm_2/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
1model_8_stackedLSTM_univariate/lstm_2/transpose_1	TransposeQmodel_8_stackedLSTM_univariate/lstm_2/TensorArrayV2Stack/TensorListStack:tensor:0?model_8_stackedLSTM_univariate/lstm_2/transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџР
-model_8_stackedLSTM_univariate/lstm_2/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
+model_8_stackedLSTM_univariate/lstm_3/ShapeShape5model_8_stackedLSTM_univariate/lstm_2/transpose_1:y:0*
T0*
_output_shapes
::эЯ
9model_8_stackedLSTM_univariate/lstm_3/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
;model_8_stackedLSTM_univariate/lstm_3/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
;model_8_stackedLSTM_univariate/lstm_3/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
3model_8_stackedLSTM_univariate/lstm_3/strided_sliceStridedSlice4model_8_stackedLSTM_univariate/lstm_3/Shape:output:0Bmodel_8_stackedLSTM_univariate/lstm_3/strided_slice/stack:output:0Dmodel_8_stackedLSTM_univariate/lstm_3/strided_slice/stack_1:output:0Dmodel_8_stackedLSTM_univariate/lstm_3/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
4model_8_stackedLSTM_univariate/lstm_3/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :рх
2model_8_stackedLSTM_univariate/lstm_3/zeros/packedPack<model_8_stackedLSTM_univariate/lstm_3/strided_slice:output:0=model_8_stackedLSTM_univariate/lstm_3/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:v
1model_8_stackedLSTM_univariate/lstm_3/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    п
+model_8_stackedLSTM_univariate/lstm_3/zerosFill;model_8_stackedLSTM_univariate/lstm_3/zeros/packed:output:0:model_8_stackedLSTM_univariate/lstm_3/zeros/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџрy
6model_8_stackedLSTM_univariate/lstm_3/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :рщ
4model_8_stackedLSTM_univariate/lstm_3/zeros_1/packedPack<model_8_stackedLSTM_univariate/lstm_3/strided_slice:output:0?model_8_stackedLSTM_univariate/lstm_3/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:x
3model_8_stackedLSTM_univariate/lstm_3/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    х
-model_8_stackedLSTM_univariate/lstm_3/zeros_1Fill=model_8_stackedLSTM_univariate/lstm_3/zeros_1/packed:output:0<model_8_stackedLSTM_univariate/lstm_3/zeros_1/Const:output:0*
T0*(
_output_shapes
:џџџџџџџџџр
4model_8_stackedLSTM_univariate/lstm_3/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          щ
/model_8_stackedLSTM_univariate/lstm_3/transpose	Transpose5model_8_stackedLSTM_univariate/lstm_2/transpose_1:y:0=model_8_stackedLSTM_univariate/lstm_3/transpose/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџР
-model_8_stackedLSTM_univariate/lstm_3/Shape_1Shape3model_8_stackedLSTM_univariate/lstm_3/transpose:y:0*
T0*
_output_shapes
::эЯ
;model_8_stackedLSTM_univariate/lstm_3/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
=model_8_stackedLSTM_univariate/lstm_3/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=model_8_stackedLSTM_univariate/lstm_3/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
5model_8_stackedLSTM_univariate/lstm_3/strided_slice_1StridedSlice6model_8_stackedLSTM_univariate/lstm_3/Shape_1:output:0Dmodel_8_stackedLSTM_univariate/lstm_3/strided_slice_1/stack:output:0Fmodel_8_stackedLSTM_univariate/lstm_3/strided_slice_1/stack_1:output:0Fmodel_8_stackedLSTM_univariate/lstm_3/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Amodel_8_stackedLSTM_univariate/lstm_3/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџІ
3model_8_stackedLSTM_univariate/lstm_3/TensorArrayV2TensorListReserveJmodel_8_stackedLSTM_univariate/lstm_3/TensorArrayV2/element_shape:output:0>model_8_stackedLSTM_univariate/lstm_3/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвЌ
[model_8_stackedLSTM_univariate/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   в
Mmodel_8_stackedLSTM_univariate/lstm_3/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor3model_8_stackedLSTM_univariate/lstm_3/transpose:y:0dmodel_8_stackedLSTM_univariate/lstm_3/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
;model_8_stackedLSTM_univariate/lstm_3/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
=model_8_stackedLSTM_univariate/lstm_3/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
=model_8_stackedLSTM_univariate/lstm_3/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ј
5model_8_stackedLSTM_univariate/lstm_3/strided_slice_2StridedSlice3model_8_stackedLSTM_univariate/lstm_3/transpose:y:0Dmodel_8_stackedLSTM_univariate/lstm_3/strided_slice_2/stack:output:0Fmodel_8_stackedLSTM_univariate/lstm_3/strided_slice_2/stack_1:output:0Fmodel_8_stackedLSTM_univariate/lstm_3/strided_slice_2/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџР*
shrink_axis_maskж
Emodel_8_stackedLSTM_univariate/lstm_3/lstm_cell/MatMul/ReadVariableOpReadVariableOpNmodel_8_stackedlstm_univariate_lstm_3_lstm_cell_matmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0
6model_8_stackedLSTM_univariate/lstm_3/lstm_cell/MatMulMatMul>model_8_stackedLSTM_univariate/lstm_3/strided_slice_2:output:0Mmodel_8_stackedLSTM_univariate/lstm_3/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџк
Gmodel_8_stackedLSTM_univariate/lstm_3/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpPmodel_8_stackedlstm_univariate_lstm_3_lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
р*
dtype0ќ
8model_8_stackedLSTM_univariate/lstm_3/lstm_cell/MatMul_1MatMul4model_8_stackedLSTM_univariate/lstm_3/zeros:output:0Omodel_8_stackedLSTM_univariate/lstm_3/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџѕ
3model_8_stackedLSTM_univariate/lstm_3/lstm_cell/addAddV2@model_8_stackedLSTM_univariate/lstm_3/lstm_cell/MatMul:product:0Bmodel_8_stackedLSTM_univariate/lstm_3/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџг
Fmodel_8_stackedLSTM_univariate/lstm_3/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpOmodel_8_stackedlstm_univariate_lstm_3_lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ў
7model_8_stackedLSTM_univariate/lstm_3/lstm_cell/BiasAddBiasAdd7model_8_stackedLSTM_univariate/lstm_3/lstm_cell/add:z:0Nmodel_8_stackedLSTM_univariate/lstm_3/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
?model_8_stackedLSTM_univariate/lstm_3/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ъ
5model_8_stackedLSTM_univariate/lstm_3/lstm_cell/splitSplitHmodel_8_stackedLSTM_univariate/lstm_3/lstm_cell/split/split_dim:output:0@model_8_stackedLSTM_univariate/lstm_3/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*
	num_splitЕ
7model_8_stackedLSTM_univariate/lstm_3/lstm_cell/SigmoidSigmoid>model_8_stackedLSTM_univariate/lstm_3/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџрЗ
9model_8_stackedLSTM_univariate/lstm_3/lstm_cell/Sigmoid_1Sigmoid>model_8_stackedLSTM_univariate/lstm_3/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџрф
3model_8_stackedLSTM_univariate/lstm_3/lstm_cell/mulMul=model_8_stackedLSTM_univariate/lstm_3/lstm_cell/Sigmoid_1:y:06model_8_stackedLSTM_univariate/lstm_3/zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџрЏ
4model_8_stackedLSTM_univariate/lstm_3/lstm_cell/ReluRelu>model_8_stackedLSTM_univariate/lstm_3/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџр№
5model_8_stackedLSTM_univariate/lstm_3/lstm_cell/mul_1Mul;model_8_stackedLSTM_univariate/lstm_3/lstm_cell/Sigmoid:y:0Bmodel_8_stackedLSTM_univariate/lstm_3/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрх
5model_8_stackedLSTM_univariate/lstm_3/lstm_cell/add_1AddV27model_8_stackedLSTM_univariate/lstm_3/lstm_cell/mul:z:09model_8_stackedLSTM_univariate/lstm_3/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџрЗ
9model_8_stackedLSTM_univariate/lstm_3/lstm_cell/Sigmoid_2Sigmoid>model_8_stackedLSTM_univariate/lstm_3/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџрЌ
6model_8_stackedLSTM_univariate/lstm_3/lstm_cell/Relu_1Relu9model_8_stackedLSTM_univariate/lstm_3/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџрє
5model_8_stackedLSTM_univariate/lstm_3/lstm_cell/mul_2Mul=model_8_stackedLSTM_univariate/lstm_3/lstm_cell/Sigmoid_2:y:0Dmodel_8_stackedLSTM_univariate/lstm_3/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџр
Cmodel_8_stackedLSTM_univariate/lstm_3/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџр   
Bmodel_8_stackedLSTM_univariate/lstm_3/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :З
5model_8_stackedLSTM_univariate/lstm_3/TensorArrayV2_1TensorListReserveLmodel_8_stackedLSTM_univariate/lstm_3/TensorArrayV2_1/element_shape:output:0Kmodel_8_stackedLSTM_univariate/lstm_3/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвl
*model_8_stackedLSTM_univariate/lstm_3/timeConst*
_output_shapes
: *
dtype0*
value	B : 
>model_8_stackedLSTM_univariate/lstm_3/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
џџџџџџџџџz
8model_8_stackedLSTM_univariate/lstm_3/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : є	
+model_8_stackedLSTM_univariate/lstm_3/whileWhileAmodel_8_stackedLSTM_univariate/lstm_3/while/loop_counter:output:0Gmodel_8_stackedLSTM_univariate/lstm_3/while/maximum_iterations:output:03model_8_stackedLSTM_univariate/lstm_3/time:output:0>model_8_stackedLSTM_univariate/lstm_3/TensorArrayV2_1:handle:04model_8_stackedLSTM_univariate/lstm_3/zeros:output:06model_8_stackedLSTM_univariate/lstm_3/zeros_1:output:0>model_8_stackedLSTM_univariate/lstm_3/strided_slice_1:output:0]model_8_stackedLSTM_univariate/lstm_3/TensorArrayUnstack/TensorListFromTensor:output_handle:0Nmodel_8_stackedlstm_univariate_lstm_3_lstm_cell_matmul_readvariableop_resourcePmodel_8_stackedlstm_univariate_lstm_3_lstm_cell_matmul_1_readvariableop_resourceOmodel_8_stackedlstm_univariate_lstm_3_lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : *%
_read_only_resource_inputs
	
*C
body;R9
7model_8_stackedLSTM_univariate_lstm_3_while_body_556927*C
cond;R9
7model_8_stackedLSTM_univariate_lstm_3_while_cond_556926*M
output_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : *
parallel_iterations Ї
Vmodel_8_stackedLSTM_univariate/lstm_3/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџр   Щ
Hmodel_8_stackedLSTM_univariate/lstm_3/TensorArrayV2Stack/TensorListStackTensorListStack4model_8_stackedLSTM_univariate/lstm_3/while:output:3_model_8_stackedLSTM_univariate/lstm_3/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџр*
element_dtype0*
num_elements
;model_8_stackedLSTM_univariate/lstm_3/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџ
=model_8_stackedLSTM_univariate/lstm_3/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
=model_8_stackedLSTM_univariate/lstm_3/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ц
5model_8_stackedLSTM_univariate/lstm_3/strided_slice_3StridedSliceQmodel_8_stackedLSTM_univariate/lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0Dmodel_8_stackedLSTM_univariate/lstm_3/strided_slice_3/stack:output:0Fmodel_8_stackedLSTM_univariate/lstm_3/strided_slice_3/stack_1:output:0Fmodel_8_stackedLSTM_univariate/lstm_3/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџр*
shrink_axis_mask
6model_8_stackedLSTM_univariate/lstm_3/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
1model_8_stackedLSTM_univariate/lstm_3/transpose_1	TransposeQmodel_8_stackedLSTM_univariate/lstm_3/TensorArrayV2Stack/TensorListStack:tensor:0?model_8_stackedLSTM_univariate/lstm_3/transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџр
-model_8_stackedLSTM_univariate/lstm_3/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    У
<model_8_stackedLSTM_univariate/dense_1/MatMul/ReadVariableOpReadVariableOpEmodel_8_stackedlstm_univariate_dense_1_matmul_readvariableop_resource*
_output_shapes
:	р*
dtype0я
-model_8_stackedLSTM_univariate/dense_1/MatMulMatMul>model_8_stackedLSTM_univariate/lstm_3/strided_slice_3:output:0Dmodel_8_stackedLSTM_univariate/dense_1/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџР
=model_8_stackedLSTM_univariate/dense_1/BiasAdd/ReadVariableOpReadVariableOpFmodel_8_stackedlstm_univariate_dense_1_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ы
.model_8_stackedLSTM_univariate/dense_1/BiasAddBiasAdd7model_8_stackedLSTM_univariate/dense_1/MatMul:product:0Emodel_8_stackedLSTM_univariate/dense_1/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ
IdentityIdentity7model_8_stackedLSTM_univariate/dense_1/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџГ
NoOpNoOp>^model_8_stackedLSTM_univariate/dense_1/BiasAdd/ReadVariableOp=^model_8_stackedLSTM_univariate/dense_1/MatMul/ReadVariableOpG^model_8_stackedLSTM_univariate/lstm_2/lstm_cell/BiasAdd/ReadVariableOpF^model_8_stackedLSTM_univariate/lstm_2/lstm_cell/MatMul/ReadVariableOpH^model_8_stackedLSTM_univariate/lstm_2/lstm_cell/MatMul_1/ReadVariableOp,^model_8_stackedLSTM_univariate/lstm_2/whileG^model_8_stackedLSTM_univariate/lstm_3/lstm_cell/BiasAdd/ReadVariableOpF^model_8_stackedLSTM_univariate/lstm_3/lstm_cell/MatMul/ReadVariableOpH^model_8_stackedLSTM_univariate/lstm_3/lstm_cell/MatMul_1/ReadVariableOp,^model_8_stackedLSTM_univariate/lstm_3/while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ: : : : : : : : 2~
=model_8_stackedLSTM_univariate/dense_1/BiasAdd/ReadVariableOp=model_8_stackedLSTM_univariate/dense_1/BiasAdd/ReadVariableOp2|
<model_8_stackedLSTM_univariate/dense_1/MatMul/ReadVariableOp<model_8_stackedLSTM_univariate/dense_1/MatMul/ReadVariableOp2
Fmodel_8_stackedLSTM_univariate/lstm_2/lstm_cell/BiasAdd/ReadVariableOpFmodel_8_stackedLSTM_univariate/lstm_2/lstm_cell/BiasAdd/ReadVariableOp2
Emodel_8_stackedLSTM_univariate/lstm_2/lstm_cell/MatMul/ReadVariableOpEmodel_8_stackedLSTM_univariate/lstm_2/lstm_cell/MatMul/ReadVariableOp2
Gmodel_8_stackedLSTM_univariate/lstm_2/lstm_cell/MatMul_1/ReadVariableOpGmodel_8_stackedLSTM_univariate/lstm_2/lstm_cell/MatMul_1/ReadVariableOp2Z
+model_8_stackedLSTM_univariate/lstm_2/while+model_8_stackedLSTM_univariate/lstm_2/while2
Fmodel_8_stackedLSTM_univariate/lstm_3/lstm_cell/BiasAdd/ReadVariableOpFmodel_8_stackedLSTM_univariate/lstm_3/lstm_cell/BiasAdd/ReadVariableOp2
Emodel_8_stackedLSTM_univariate/lstm_3/lstm_cell/MatMul/ReadVariableOpEmodel_8_stackedLSTM_univariate/lstm_3/lstm_cell/MatMul/ReadVariableOp2
Gmodel_8_stackedLSTM_univariate/lstm_3/lstm_cell/MatMul_1/ReadVariableOpGmodel_8_stackedLSTM_univariate/lstm_3/lstm_cell/MatMul_1/ReadVariableOp2Z
+model_8_stackedLSTM_univariate/lstm_3/while+model_8_stackedLSTM_univariate/lstm_3/while:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_2_input:($
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
 :
Й
while_body_559620
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0D
0while_lstm_cell_matmul_readvariableop_resource_0:
РF
2while_lstm_cell_matmul_1_readvariableop_resource_0:
р@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorB
.while_lstm_cell_matmul_readvariableop_resource:
РD
0while_lstm_cell_matmul_1_readvariableop_resource:
р>
/while_lstm_cell_biasadd_readvariableop_resource:	Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   Ї
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*(
_output_shapes
:џџџџџџџџџР*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0* 
_output_shapes
:
Р*
dtype0Д
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
р*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџрw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџрo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџрw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџрl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџр
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрr
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ъ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџрw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџрЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџр:џџџџџџџџџр: : : : : 2P
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
:џџџџџџџџџр:.*
(
_output_shapes
:џџџџџџџџџр:GC
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
ў
З
'__inference_lstm_2_layer_call_fn_558487
inputs_0
unknown:	
	unknown_0:
Р
	unknown_1:	
identityЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџР*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_557308}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџР<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:&"
 
_user_specified_name558479:&"
 
_user_specified_name558481:&"
 
_user_specified_name558483
ў
З
'__inference_lstm_2_layer_call_fn_558476
inputs_0
unknown:	
	unknown_0:
Р
	unknown_1:	
identityЂStatefulPartitionedCallє
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџР*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_557163}
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџР<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
"
_user_specified_name
inputs_0:&"
 
_user_specified_name558468:&"
 
_user_specified_name558470:&"
 
_user_specified_name558472
Я
Ж
'__inference_lstm_3_layer_call_fn_559125

inputs
unknown:
Р
	unknown_0:
р
	unknown_1:	
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџр*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_558332p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџр<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџР: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџР
 
_user_specified_nameinputs:&"
 
_user_specified_name559117:&"
 
_user_specified_name559119:&"
 
_user_specified_name559121
Ц	
У
while_cond_559184
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_559184___redundant_placeholder04
0while_while_cond_559184___redundant_placeholder14
0while_while_cond_559184___redundant_placeholder24
0while_while_cond_559184___redundant_placeholder3
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
B: : : : :џџџџџџџџџр:џџџџџџџџџр: :::::J F
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
:џџџџџџџџџр:.*
(
_output_shapes
:џџџџџџџџџр:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Я
Ж
'__inference_lstm_3_layer_call_fn_559114

inputs
unknown:
Р
	unknown_0:
р
	unknown_1:	
identityЂStatefulPartitionedCallх
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџр*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_558011p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџр<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*1
_input_shapes 
:џџџџџџџџџР: : : 22
StatefulPartitionedCallStatefulPartitionedCall:T P
,
_output_shapes
:џџџџџџџџџР
 
_user_specified_nameinputs:&"
 
_user_specified_name559106:&"
 
_user_specified_name559108:&"
 
_user_specified_name559110
љf
ћ
7model_8_stackedLSTM_univariate_lstm_2_while_body_556787h
dmodel_8_stackedlstm_univariate_lstm_2_while_model_8_stackedlstm_univariate_lstm_2_while_loop_countern
jmodel_8_stackedlstm_univariate_lstm_2_while_model_8_stackedlstm_univariate_lstm_2_while_maximum_iterations;
7model_8_stackedlstm_univariate_lstm_2_while_placeholder=
9model_8_stackedlstm_univariate_lstm_2_while_placeholder_1=
9model_8_stackedlstm_univariate_lstm_2_while_placeholder_2=
9model_8_stackedlstm_univariate_lstm_2_while_placeholder_3g
cmodel_8_stackedlstm_univariate_lstm_2_while_model_8_stackedlstm_univariate_lstm_2_strided_slice_1_0Є
model_8_stackedlstm_univariate_lstm_2_while_tensorarrayv2read_tensorlistgetitem_model_8_stackedlstm_univariate_lstm_2_tensorarrayunstack_tensorlistfromtensor_0i
Vmodel_8_stackedlstm_univariate_lstm_2_while_lstm_cell_matmul_readvariableop_resource_0:	l
Xmodel_8_stackedlstm_univariate_lstm_2_while_lstm_cell_matmul_1_readvariableop_resource_0:
Рf
Wmodel_8_stackedlstm_univariate_lstm_2_while_lstm_cell_biasadd_readvariableop_resource_0:	8
4model_8_stackedlstm_univariate_lstm_2_while_identity:
6model_8_stackedlstm_univariate_lstm_2_while_identity_1:
6model_8_stackedlstm_univariate_lstm_2_while_identity_2:
6model_8_stackedlstm_univariate_lstm_2_while_identity_3:
6model_8_stackedlstm_univariate_lstm_2_while_identity_4:
6model_8_stackedlstm_univariate_lstm_2_while_identity_5e
amodel_8_stackedlstm_univariate_lstm_2_while_model_8_stackedlstm_univariate_lstm_2_strided_slice_1Ђ
model_8_stackedlstm_univariate_lstm_2_while_tensorarrayv2read_tensorlistgetitem_model_8_stackedlstm_univariate_lstm_2_tensorarrayunstack_tensorlistfromtensorg
Tmodel_8_stackedlstm_univariate_lstm_2_while_lstm_cell_matmul_readvariableop_resource:	j
Vmodel_8_stackedlstm_univariate_lstm_2_while_lstm_cell_matmul_1_readvariableop_resource:
Рd
Umodel_8_stackedlstm_univariate_lstm_2_while_lstm_cell_biasadd_readvariableop_resource:	ЂLmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/BiasAdd/ReadVariableOpЂKmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/MatMul/ReadVariableOpЂMmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/MatMul_1/ReadVariableOpЎ
]model_8_stackedLSTM_univariate/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   х
Omodel_8_stackedLSTM_univariate/lstm_2/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemmodel_8_stackedlstm_univariate_lstm_2_while_tensorarrayv2read_tensorlistgetitem_model_8_stackedlstm_univariate_lstm_2_tensorarrayunstack_tensorlistfromtensor_07model_8_stackedlstm_univariate_lstm_2_while_placeholderfmodel_8_stackedLSTM_univariate/lstm_2/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0у
Kmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/MatMul/ReadVariableOpReadVariableOpVmodel_8_stackedlstm_univariate_lstm_2_while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0І
<model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/MatMulMatMulVmodel_8_stackedLSTM_univariate/lstm_2/while/TensorArrayV2Read/TensorListGetItem:item:0Smodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџш
Mmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOpXmodel_8_stackedlstm_univariate_lstm_2_while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
Р*
dtype0
>model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/MatMul_1MatMul9model_8_stackedlstm_univariate_lstm_2_while_placeholder_2Umodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
9model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/addAddV2Fmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/MatMul:product:0Hmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџс
Lmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOpWmodel_8_stackedlstm_univariate_lstm_2_while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
=model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/BiasAddBiasAdd=model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/add:z:0Tmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
Emodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :м
;model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/splitSplitNmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/split/split_dim:output:0Fmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*
	num_splitС
=model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/SigmoidSigmoidDmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџРУ
?model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/Sigmoid_1SigmoidDmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџРѓ
9model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/mulMulCmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/Sigmoid_1:y:09model_8_stackedlstm_univariate_lstm_2_while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџРЛ
:model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/ReluReluDmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџР
;model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/mul_1MulAmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/Sigmoid:y:0Hmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРї
;model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/add_1AddV2=model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/mul:z:0?model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџРУ
?model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/Sigmoid_2SigmoidDmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџРИ
<model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/Relu_1Relu?model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџР
;model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/mul_2MulCmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/Sigmoid_2:y:0Jmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРк
Pmodel_8_stackedLSTM_univariate/lstm_2/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem9model_8_stackedlstm_univariate_lstm_2_while_placeholder_17model_8_stackedlstm_univariate_lstm_2_while_placeholder?model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвs
1model_8_stackedLSTM_univariate/lstm_2/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ю
/model_8_stackedLSTM_univariate/lstm_2/while/addAddV27model_8_stackedlstm_univariate_lstm_2_while_placeholder:model_8_stackedLSTM_univariate/lstm_2/while/add/y:output:0*
T0*
_output_shapes
: u
3model_8_stackedLSTM_univariate/lstm_2/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :џ
1model_8_stackedLSTM_univariate/lstm_2/while/add_1AddV2dmodel_8_stackedlstm_univariate_lstm_2_while_model_8_stackedlstm_univariate_lstm_2_while_loop_counter<model_8_stackedLSTM_univariate/lstm_2/while/add_1/y:output:0*
T0*
_output_shapes
: Ы
4model_8_stackedLSTM_univariate/lstm_2/while/IdentityIdentity5model_8_stackedLSTM_univariate/lstm_2/while/add_1:z:01^model_8_stackedLSTM_univariate/lstm_2/while/NoOp*
T0*
_output_shapes
: 
6model_8_stackedLSTM_univariate/lstm_2/while/Identity_1Identityjmodel_8_stackedlstm_univariate_lstm_2_while_model_8_stackedlstm_univariate_lstm_2_while_maximum_iterations1^model_8_stackedLSTM_univariate/lstm_2/while/NoOp*
T0*
_output_shapes
: Ы
6model_8_stackedLSTM_univariate/lstm_2/while/Identity_2Identity3model_8_stackedLSTM_univariate/lstm_2/while/add:z:01^model_8_stackedLSTM_univariate/lstm_2/while/NoOp*
T0*
_output_shapes
: ј
6model_8_stackedLSTM_univariate/lstm_2/while/Identity_3Identity`model_8_stackedLSTM_univariate/lstm_2/while/TensorArrayV2Write/TensorListSetItem:output_handle:01^model_8_stackedLSTM_univariate/lstm_2/while/NoOp*
T0*
_output_shapes
: щ
6model_8_stackedLSTM_univariate/lstm_2/while/Identity_4Identity?model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/mul_2:z:01^model_8_stackedLSTM_univariate/lstm_2/while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџРщ
6model_8_stackedLSTM_univariate/lstm_2/while/Identity_5Identity?model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/add_1:z:01^model_8_stackedLSTM_univariate/lstm_2/while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџРЛ
0model_8_stackedLSTM_univariate/lstm_2/while/NoOpNoOpM^model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/BiasAdd/ReadVariableOpL^model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/MatMul/ReadVariableOpN^model_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/MatMul_1/ReadVariableOp*
_output_shapes
 "u
4model_8_stackedlstm_univariate_lstm_2_while_identity=model_8_stackedLSTM_univariate/lstm_2/while/Identity:output:0"y
6model_8_stackedlstm_univariate_lstm_2_while_identity_1?model_8_stackedLSTM_univariate/lstm_2/while/Identity_1:output:0"y
6model_8_stackedlstm_univariate_lstm_2_while_identity_2?model_8_stackedLSTM_univariate/lstm_2/while/Identity_2:output:0"y
6model_8_stackedlstm_univariate_lstm_2_while_identity_3?model_8_stackedLSTM_univariate/lstm_2/while/Identity_3:output:0"y
6model_8_stackedlstm_univariate_lstm_2_while_identity_4?model_8_stackedLSTM_univariate/lstm_2/while/Identity_4:output:0"y
6model_8_stackedlstm_univariate_lstm_2_while_identity_5?model_8_stackedLSTM_univariate/lstm_2/while/Identity_5:output:0"А
Umodel_8_stackedlstm_univariate_lstm_2_while_lstm_cell_biasadd_readvariableop_resourceWmodel_8_stackedlstm_univariate_lstm_2_while_lstm_cell_biasadd_readvariableop_resource_0"В
Vmodel_8_stackedlstm_univariate_lstm_2_while_lstm_cell_matmul_1_readvariableop_resourceXmodel_8_stackedlstm_univariate_lstm_2_while_lstm_cell_matmul_1_readvariableop_resource_0"Ў
Tmodel_8_stackedlstm_univariate_lstm_2_while_lstm_cell_matmul_readvariableop_resourceVmodel_8_stackedlstm_univariate_lstm_2_while_lstm_cell_matmul_readvariableop_resource_0"Ш
amodel_8_stackedlstm_univariate_lstm_2_while_model_8_stackedlstm_univariate_lstm_2_strided_slice_1cmodel_8_stackedlstm_univariate_lstm_2_while_model_8_stackedlstm_univariate_lstm_2_strided_slice_1_0"Т
model_8_stackedlstm_univariate_lstm_2_while_tensorarrayv2read_tensorlistgetitem_model_8_stackedlstm_univariate_lstm_2_tensorarrayunstack_tensorlistfromtensormodel_8_stackedlstm_univariate_lstm_2_while_tensorarrayv2read_tensorlistgetitem_model_8_stackedlstm_univariate_lstm_2_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : 2
Lmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/BiasAdd/ReadVariableOpLmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/BiasAdd/ReadVariableOp2
Kmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/MatMul/ReadVariableOpKmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/MatMul/ReadVariableOp2
Mmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/MatMul_1/ReadVariableOpMmodel_8_stackedLSTM_univariate/lstm_2/while/lstm_cell/MatMul_1/ReadVariableOp:p l

_output_shapes
: 
R
_user_specified_name:8model_8_stackedLSTM_univariate/lstm_2/while/loop_counter:vr

_output_shapes
: 
X
_user_specified_name@>model_8_stackedLSTM_univariate/lstm_2/while/maximum_iterations:

_output_shapes
: :

_output_shapes
: :.*
(
_output_shapes
:џџџџџџџџџР:.*
(
_output_shapes
:џџџџџџџџџР:mi

_output_shapes
: 
O
_user_specified_name75model_8_stackedLSTM_univariate/lstm_2/strided_slice_1:

_output_shapes
: 
g
_user_specified_nameOMmodel_8_stackedLSTM_univariate/lstm_2/TensorArrayUnstack/TensorListFromTensor:($
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
фI

B__inference_lstm_2_layer_call_and_return_conditional_losses_559081

inputs;
(lstm_cell_matmul_readvariableop_resource:	>
*lstm_cell_matmul_1_readvariableop_resource:
Р8
)lstm_cell_biasadd_readvariableop_resource:	
identityЂ lstm_cell/BiasAdd/ReadVariableOpЂlstm_cell/MatMul/ReadVariableOpЂ!lstm_cell/MatMul_1/ReadVariableOpЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
B :Рs
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
:џџџџџџџџџРS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Рw
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
:џџџџџџџџџРc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          m
	transpose	Transposeinputstranspose/perm:output:0*
T0*+
_output_shapes
:џџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_mask
lstm_cell/MatMul/ReadVariableOpReadVariableOp(lstm_cell_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell/MatMulMatMulstrided_slice_2:output:0'lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
!lstm_cell/MatMul_1/ReadVariableOpReadVariableOp*lstm_cell_matmul_1_readvariableop_resource* 
_output_shapes
:
Р*
dtype0
lstm_cell/MatMul_1MatMulzeros:output:0)lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
lstm_cell/addAddV2lstm_cell/MatMul:product:0lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
 lstm_cell/BiasAdd/ReadVariableOpReadVariableOp)lstm_cell_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell/BiasAddBiasAddlstm_cell/add:z:0(lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ[
lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :и
lstm_cell/splitSplit"lstm_cell/split/split_dim:output:0lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*
	num_spliti
lstm_cell/SigmoidSigmoidlstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџРk
lstm_cell/Sigmoid_1Sigmoidlstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџРr
lstm_cell/mulMullstm_cell/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:џџџџџџџџџРc
lstm_cell/ReluRelulstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџР~
lstm_cell/mul_1Mullstm_cell/Sigmoid:y:0lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРs
lstm_cell/add_1AddV2lstm_cell/mul:z:0lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџРk
lstm_cell/Sigmoid_2Sigmoidlstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџР`
lstm_cell/Relu_1Relulstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџР
lstm_cell/mul_2Mullstm_cell/Sigmoid_2:y:0lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРn
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : р
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0(lstm_cell_matmul_readvariableop_resource*lstm_cell_matmul_1_readvariableop_resource)lstm_cell_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_558997*
condR
while_cond_558996*M
output_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   У
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:џџџџџџџџџР*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџР*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:џџџџџџџџџР[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    c
IdentityIdentitytranspose_1:y:0^NoOp*
T0*,
_output_shapes
:џџџџџџџџџР
NoOpNoOp!^lstm_cell/BiasAdd/ReadVariableOp ^lstm_cell/MatMul/ReadVariableOp"^lstm_cell/MatMul_1/ReadVariableOp^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*0
_input_shapes
:џџџџџџџџџ: : : 2D
 lstm_cell/BiasAdd/ReadVariableOp lstm_cell/BiasAdd/ReadVariableOp2B
lstm_cell/MatMul/ReadVariableOplstm_cell/MatMul/ReadVariableOp2F
!lstm_cell/MatMul_1/ReadVariableOp!lstm_cell/MatMul_1/ReadVariableOp2
whilewhile:S O
+
_output_shapes
:џџџџџџџџџ
 
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
Ц	
У
while_cond_559329
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_559329___redundant_placeholder04
0while_while_cond_559329___redundant_placeholder14
0while_while_cond_559329___redundant_placeholder24
0while_while_cond_559329___redundant_placeholder3
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
B: : : : :џџџџџџџџџр:џџџџџџџџџр: :::::J F
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
:џџџџџџџџџр:.*
(
_output_shapes
:џџџџџџџџџр:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:

ы
Z__inference_model_8_stackedLSTM_univariate_layer_call_and_return_conditional_losses_558035
lstm_2_input 
lstm_2_557860:	!
lstm_2_557862:
Р
lstm_2_557864:	!
lstm_3_558012:
Р!
lstm_3_558014:
р
lstm_3_558016:	!
dense_1_558029:	р
dense_1_558031:
identityЂdense_1/StatefulPartitionedCallЂlstm_2/StatefulPartitionedCallЂlstm_3/StatefulPartitionedCall
lstm_2/StatefulPartitionedCallStatefulPartitionedCalllstm_2_inputlstm_2_557860lstm_2_557862lstm_2_557864*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџР*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_557859
lstm_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0lstm_3_558012lstm_3_558014lstm_3_558016*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџр*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_558011
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0dense_1_558029dense_1_558031*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_558028w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp ^dense_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ: : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_2_input:&"
 
_user_specified_name557860:&"
 
_user_specified_name557862:&"
 
_user_specified_name557864:&"
 
_user_specified_name558012:&"
 
_user_specified_name558014:&"
 
_user_specified_name558016:&"
 
_user_specified_name558029:&"
 
_user_specified_name558031
Ц	
У
while_cond_558996
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_558996___redundant_placeholder04
0while_while_cond_558996___redundant_placeholder14
0while_while_cond_558996___redundant_placeholder24
0while_while_cond_558996___redundant_placeholder3
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
B: : : : :џџџџџџџџџР:џџџџџџџџџР: :::::J F
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
:џџџџџџџџџР:.*
(
_output_shapes
:џџџџџџџџџР:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
С

E__inference_lstm_cell_layer_call_and_return_conditional_losses_557080

inputs

states
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
Р.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
Р*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:џџџџџџџџџРW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:џџџџџџџџџРV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџРO
ReluRelusplit:output:2*
T0*(
_output_shapes
:џџџџџџџџџР`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџРW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:џџџџџџџџџРL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџРd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџР[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџР[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџРm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:џџџџџџџџџ:џџџџџџџџџР:џџџџџџџџџР: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:џџџџџџџџџ
 
_user_specified_nameinputs:PL
(
_output_shapes
:џџџџџџџџџР
 
_user_specified_namestates:PL
(
_output_shapes
:џџџџџџџџџР
 
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
Ц	
У
while_cond_557925
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_557925___redundant_placeholder04
0while_while_cond_557925___redundant_placeholder14
0while_while_cond_557925___redundant_placeholder24
0while_while_cond_557925___redundant_placeholder3
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
B: : : : :џџџџџџџџџр:џџџџџџџџџр: :::::J F
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
:џџџџџџџџџр:.*
(
_output_shapes
:џџџџџџџџџр:GC

_output_shapes
: 
)
_user_specified_namestrided_slice_1:

_output_shapes
:
Ч8
љ
B__inference_lstm_2_layer_call_and_return_conditional_losses_557308

inputs#
lstm_cell_557226:	$
lstm_cell_557228:
Р
lstm_cell_557230:	
identityЂ!lstm_cell/StatefulPartitionedCallЂwhileI
ShapeShapeinputs*
T0*
_output_shapes
::эЯ]
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
valueB:б
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
B :Рs
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
:џџџџџџџџџРS
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Рw
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
:џџџџџџџџџРc
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџR
Shape_1Shapetranspose:y:0*
T0*
_output_shapes
::эЯ_
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
valueB:л
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
џџџџџџџџџД
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   р
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшв_
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
valueB:щ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:џџџџџџџџџ*
shrink_axis_maskщ
!lstm_cell/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_557226lstm_cell_557228lstm_cell_557230*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *N
fIRG
E__inference_lstm_cell_layer_call_and_return_conditional_losses_557225n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   И
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:щшвF
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
џџџџџџџџџT
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_557226lstm_cell_557228lstm_cell_557230*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : *%
_read_only_resource_inputs
	
*
bodyR
while_body_557239*
condR
while_cond_557238*M
output_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџР   Ь
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџР*
element_dtype0h
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
џџџџџџџџџa
strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: a
strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
strided_slice_3StridedSlice+TensorArrayV2Stack/TensorListStack:tensor:0strided_slice_3/stack:output:0 strided_slice_3/stack_1:output:0 strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:џџџџџџџџџР*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"           
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџР[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    l
IdentityIdentitytranspose_1:y:0^NoOp*
T0*5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџРN
NoOpNoOp"^lstm_cell/StatefulPartitionedCall^while*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:џџџџџџџџџџџџџџџџџџ: : : 2F
!lstm_cell/StatefulPartitionedCall!lstm_cell/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :џџџџџџџџџџџџџџџџџџ
 
_user_specified_nameinputs:&"
 
_user_specified_name557226:&"
 
_user_specified_name557228:&"
 
_user_specified_name557230
њ	
ѕ
C__inference_dense_1_layer_call_and_return_conditional_losses_558028

inputs1
matmul_readvariableop_resource:	р-
biasadd_readvariableop_resource:
identityЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	р*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџr
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:џџџџџџџџџ_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџS
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџр: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџр
 
_user_specified_nameinputs:($
"
_user_specified_name
resource:($
"
_user_specified_name
resource
я

(__inference_dense_1_layer_call_fn_559714

inputs
unknown:	р
	unknown_0:
identityЂStatefulPartitionedCallи
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_558028o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:џџџџџџџџџр: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:џџџџџџџџџр
 
_user_specified_nameinputs:&"
 
_user_specified_name559708:&"
 
_user_specified_name559710
Э

E__inference_lstm_cell_layer_call_and_return_conditional_losses_559888

inputs
states_0
states_12
matmul_readvariableop_resource:
Р4
 matmul_1_readvariableop_resource:
р.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
р*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:џџџџџџџџџрW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:џџџџџџџџџрV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџрO
ReluRelusplit:output:2*
T0*(
_output_shapes
:џџџџџџџџџр`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџрW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:џџџџџџџџџрL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџрd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџр[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџр[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџрm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџР:џџџџџџџџџр:џџџџџџџџџр: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџР
 
_user_specified_nameinputs:RN
(
_output_shapes
:џџџџџџџџџр
"
_user_specified_name
states_0:RN
(
_output_shapes
:џџџџџџџџџр
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
9
З
while_body_558711
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0C
0while_lstm_cell_matmul_readvariableop_resource_0:	F
2while_lstm_cell_matmul_1_readvariableop_resource_0:
Р@
1while_lstm_cell_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorA
.while_lstm_cell_matmul_readvariableop_resource:	D
0while_lstm_cell_matmul_1_readvariableop_resource:
Р>
/while_lstm_cell_biasadd_readvariableop_resource:	Ђ&while/lstm_cell/BiasAdd/ReadVariableOpЂ%while/lstm_cell/MatMul/ReadVariableOpЂ'while/lstm_cell/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"џџџџ   І
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:џџџџџџџџџ*
element_dtype0
%while/lstm_cell/MatMul/ReadVariableOpReadVariableOp0while_lstm_cell_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0Д
while/lstm_cell/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:0-while/lstm_cell/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
'while/lstm_cell/MatMul_1/ReadVariableOpReadVariableOp2while_lstm_cell_matmul_1_readvariableop_resource_0* 
_output_shapes
:
Р*
dtype0
while/lstm_cell/MatMul_1MatMulwhile_placeholder_2/while/lstm_cell/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџ
while/lstm_cell/addAddV2 while/lstm_cell/MatMul:product:0"while/lstm_cell/MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџ
&while/lstm_cell/BiasAdd/ReadVariableOpReadVariableOp1while_lstm_cell_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
while/lstm_cell/BiasAddBiasAddwhile/lstm_cell/add:z:0.while/lstm_cell/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџa
while/lstm_cell/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ъ
while/lstm_cell/splitSplit(while/lstm_cell/split/split_dim:output:0 while/lstm_cell/BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР:џџџџџџџџџР*
	num_splitu
while/lstm_cell/SigmoidSigmoidwhile/lstm_cell/split:output:0*
T0*(
_output_shapes
:џџџџџџџџџРw
while/lstm_cell/Sigmoid_1Sigmoidwhile/lstm_cell/split:output:1*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/mulMulwhile/lstm_cell/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:џџџџџџџџџРo
while/lstm_cell/ReluReluwhile/lstm_cell/split:output:2*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/mul_1Mulwhile/lstm_cell/Sigmoid:y:0"while/lstm_cell/Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/add_1AddV2while/lstm_cell/mul:z:0while/lstm_cell/mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџРw
while/lstm_cell/Sigmoid_2Sigmoidwhile/lstm_cell/split:output:3*
T0*(
_output_shapes
:џџџџџџџџџРl
while/lstm_cell/Relu_1Reluwhile/lstm_cell/add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџР
while/lstm_cell/mul_2Mulwhile/lstm_cell/Sigmoid_2:y:0$while/lstm_cell/Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџРТ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_1while_placeholderwhile/lstm_cell/mul_2:z:0*
_output_shapes
: *
element_dtype0:щшвM
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
: 
while/Identity_3Identity:while/TensorArrayV2Write/TensorListSetItem:output_handle:0^while/NoOp*
T0*
_output_shapes
: w
while/Identity_4Identitywhile/lstm_cell/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџРw
while/Identity_5Identitywhile/lstm_cell/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:џџџџџџџџџРЃ

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
while_strided_slice_1while_strided_slice_1_0"Ј
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :џџџџџџџџџР:џџџџџџџџџР: : : : : 2P
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
:џџџџџџџџџР:.*
(
_output_shapes
:џџџџџџџџџР:GC
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
Х

E__inference_lstm_cell_layer_call_and_return_conditional_losses_557573

inputs

states
states_12
matmul_readvariableop_resource:
Р4
 matmul_1_readvariableop_resource:
р.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2ЂBiasAdd/ReadVariableOpЂMatMul/ReadVariableOpЂMatMul_1/ReadVariableOpv
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource* 
_output_shapes
:
Р*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџz
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
р*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџe
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:џџџџџџџџџs
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:џџџџџџџџџQ
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :К
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр:џџџџџџџџџр*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:џџџџџџџџџрW
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:џџџџџџџџџрV
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:џџџџџџџџџрO
ReluRelusplit:output:2*
T0*(
_output_shapes
:џџџџџџџџџр`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрU
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџрW
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:џџџџџџџџџрL
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:џџџџџџџџџрd
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:џџџџџџџџџрY
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџр[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџр[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџрm
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B:џџџџџџџџџР:џџџџџџџџџр:џџџџџџџџџр: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:P L
(
_output_shapes
:џџџџџџџџџР
 
_user_specified_nameinputs:PL
(
_output_shapes
:џџџџџџџџџр
 
_user_specified_namestates:PL
(
_output_shapes
:џџџџџџџџџр
 
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
ч
И
'__inference_lstm_3_layer_call_fn_559092
inputs_0
unknown:
Р
	unknown_0:
р
	unknown_1:	
identityЂStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџр*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_557511p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџр<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџР: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџР
"
_user_specified_name
inputs_0:&"
 
_user_specified_name559084:&"
 
_user_specified_name559086:&"
 
_user_specified_name559088

ы
Z__inference_model_8_stackedLSTM_univariate_layer_call_and_return_conditional_losses_558346
lstm_2_input 
lstm_2_558181:	!
lstm_2_558183:
Р
lstm_2_558185:	!
lstm_3_558333:
Р!
lstm_3_558335:
р
lstm_3_558337:	!
dense_1_558340:	р
dense_1_558342:
identityЂdense_1/StatefulPartitionedCallЂlstm_2/StatefulPartitionedCallЂlstm_3/StatefulPartitionedCall
lstm_2/StatefulPartitionedCallStatefulPartitionedCalllstm_2_inputlstm_2_558181lstm_2_558183lstm_2_558185*
Tin
2*
Tout
2*
_collective_manager_ids
 *,
_output_shapes
:џџџџџџџџџР*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_2_layer_call_and_return_conditional_losses_558180
lstm_3/StatefulPartitionedCallStatefulPartitionedCall'lstm_2/StatefulPartitionedCall:output:0lstm_3_558333lstm_3_558335lstm_3_558337*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџр*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_558332
dense_1/StatefulPartitionedCallStatefulPartitionedCall'lstm_3/StatefulPartitionedCall:output:0dense_1_558340dense_1_558342*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:џџџџџџџџџ*$
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *L
fGRE
C__inference_dense_1_layer_call_and_return_conditional_losses_558028w
IdentityIdentity(dense_1/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:џџџџџџџџџ
NoOpNoOp ^dense_1/StatefulPartitionedCall^lstm_2/StatefulPartitionedCall^lstm_3/StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџ: : : : : : : : 2B
dense_1/StatefulPartitionedCalldense_1/StatefulPartitionedCall2@
lstm_2/StatefulPartitionedCalllstm_2/StatefulPartitionedCall2@
lstm_3/StatefulPartitionedCalllstm_3/StatefulPartitionedCall:Y U
+
_output_shapes
:џџџџџџџџџ
&
_user_specified_namelstm_2_input:&"
 
_user_specified_name558181:&"
 
_user_specified_name558183:&"
 
_user_specified_name558185:&"
 
_user_specified_name558333:&"
 
_user_specified_name558335:&"
 
_user_specified_name558337:&"
 
_user_specified_name558340:&"
 
_user_specified_name558342
ч
И
'__inference_lstm_3_layer_call_fn_559103
inputs_0
unknown:
Р
	unknown_0:
р
	unknown_1:	
identityЂStatefulPartitionedCallч
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:џџџџџџџџџр*%
_read_only_resource_inputs
*-
config_proto

CPU

GPU 2J 8 *K
fFRD
B__inference_lstm_3_layer_call_and_return_conditional_losses_557658p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:џџџџџџџџџр<
NoOpNoOp^StatefulPartitionedCall*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*:
_input_shapes)
':џџџџџџџџџџџџџџџџџџР: : : 22
StatefulPartitionedCallStatefulPartitionedCall:_ [
5
_output_shapes#
!:џџџџџџџџџџџџџџџџџџР
"
_user_specified_name
inputs_0:&"
 
_user_specified_name559095:&"
 
_user_specified_name559097:&"
 
_user_specified_name559099"эL
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*И
serving_defaultЄ
I
lstm_2_input9
serving_default_lstm_2_input:0џџџџџџџџџ;
dense_10
StatefulPartitionedCall:0џџџџџџџџџtensorflow/serving/predict:мл
л
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
к
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
_random_generator
cell

state_spec"
_tf_keras_rnn_layer
к
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
Л
	variables
 trainable_variables
!regularization_losses
"	keras_api
#__call__
*$&call_and_return_all_conditional_losses

%kernel
&bias"
_tf_keras_layer
X
'0
(1
)2
*3
+4
,5
%6
&7"
trackable_list_wrapper
X
'0
(1
)2
*3
+4
,5
%6
&7"
trackable_list_wrapper
 "
trackable_list_wrapper
Ъ
-non_trainable_variables

.layers
/metrics
0layer_regularization_losses
1layer_metrics
	variables
trainable_variables
regularization_losses
__call__

_default_save_signature
*	&call_and_return_all_conditional_losses
&	"call_and_return_conditional_losses"
_generic_user_object
ё
2trace_0
3trace_12К
?__inference_model_8_stackedLSTM_univariate_layer_call_fn_558367
?__inference_model_8_stackedLSTM_univariate_layer_call_fn_558388Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z2trace_0z3trace_1
Ї
4trace_0
5trace_12№
Z__inference_model_8_stackedLSTM_univariate_layer_call_and_return_conditional_losses_558035
Z__inference_model_8_stackedLSTM_univariate_layer_call_and_return_conditional_losses_558346Е
ЎВЊ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaultsЂ
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z4trace_0z5trace_1
бBЮ
!__inference__wrapped_model_557018lstm_2_input"
В
FullArgSpec
args

jargs_0
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 

6
_variables
7_iterations
8_learning_rate
9_index_dict
:
_momentums
;_velocities
<_update_step_xla"
experimentalOptimizer
,
=serving_default"
signature_map
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
Й

>states
?non_trainable_variables

@layers
Ametrics
Blayer_regularization_losses
Clayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
м
Dtrace_0
Etrace_1
Ftrace_2
Gtrace_32ё
'__inference_lstm_2_layer_call_fn_558476
'__inference_lstm_2_layer_call_fn_558487
'__inference_lstm_2_layer_call_fn_558498
'__inference_lstm_2_layer_call_fn_558509Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zDtrace_0zEtrace_1zFtrace_2zGtrace_3
Ш
Htrace_0
Itrace_1
Jtrace_2
Ktrace_32н
B__inference_lstm_2_layer_call_and_return_conditional_losses_558652
B__inference_lstm_2_layer_call_and_return_conditional_losses_558795
B__inference_lstm_2_layer_call_and_return_conditional_losses_558938
B__inference_lstm_2_layer_call_and_return_conditional_losses_559081Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zHtrace_0zItrace_1zJtrace_2zKtrace_3
"
_generic_user_object
ј
L	variables
Mtrainable_variables
Nregularization_losses
O	keras_api
P__call__
*Q&call_and_return_all_conditional_losses
R_random_generator
S
state_size

'kernel
(recurrent_kernel
)bias"
_tf_keras_layer
 "
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
 "
trackable_list_wrapper
Й

Tstates
Unon_trainable_variables

Vlayers
Wmetrics
Xlayer_regularization_losses
Ylayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
м
Ztrace_0
[trace_1
\trace_2
]trace_32ё
'__inference_lstm_3_layer_call_fn_559092
'__inference_lstm_3_layer_call_fn_559103
'__inference_lstm_3_layer_call_fn_559114
'__inference_lstm_3_layer_call_fn_559125Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zZtrace_0z[trace_1z\trace_2z]trace_3
Ш
^trace_0
_trace_1
`trace_2
atrace_32н
B__inference_lstm_3_layer_call_and_return_conditional_losses_559270
B__inference_lstm_3_layer_call_and_return_conditional_losses_559415
B__inference_lstm_3_layer_call_and_return_conditional_losses_559560
B__inference_lstm_3_layer_call_and_return_conditional_losses_559705Ъ
УВП
FullArgSpec:
args2/
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaultsЂ

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 z^trace_0z_trace_1z`trace_2zatrace_3
"
_generic_user_object
ј
b	variables
ctrainable_variables
dregularization_losses
e	keras_api
f__call__
*g&call_and_return_all_conditional_losses
h_random_generator
i
state_size

*kernel
+recurrent_kernel
,bias"
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
­
jnon_trainable_variables

klayers
lmetrics
mlayer_regularization_losses
nlayer_metrics
	variables
 trainable_variables
!regularization_losses
#__call__
*$&call_and_return_all_conditional_losses
&$"call_and_return_conditional_losses"
_generic_user_object
т
otrace_02Х
(__inference_dense_1_layer_call_fn_559714
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zotrace_0
§
ptrace_02р
C__inference_dense_1_layer_call_and_return_conditional_losses_559724
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 zptrace_0
!:	р2dense_1/kernel
:2dense_1/bias
*:(	2lstm_2/lstm_cell/kernel
5:3
Р2!lstm_2/lstm_cell/recurrent_kernel
$:"2lstm_2/lstm_cell/bias
+:)
Р2lstm_3/lstm_cell/kernel
5:3
р2!lstm_3/lstm_cell/recurrent_kernel
$:"2lstm_3/lstm_cell/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
'
q0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
?__inference_model_8_stackedLSTM_univariate_layer_call_fn_558367lstm_2_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
?__inference_model_8_stackedLSTM_univariate_layer_call_fn_558388lstm_2_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
Z__inference_model_8_stackedLSTM_univariate_layer_call_and_return_conditional_losses_558035lstm_2_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
Z__inference_model_8_stackedLSTM_univariate_layer_call_and_return_conditional_losses_558346lstm_2_input"Ќ
ЅВЁ
FullArgSpec)
args!
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
 
70
r1
s2
t3
u4
v5
w6
x7
y8
z9
{10
|11
}12
~13
14
15
16"
trackable_list_wrapper
:	 2	iteration
: 2learning_rate
 "
trackable_dict_wrapper
Y
r0
t1
v2
x3
z4
|5
~6
7"
trackable_list_wrapper
Y
s0
u1
w2
y3
{4
}5
6
7"
trackable_list_wrapper
Е2ВЏ
ІВЂ
FullArgSpec*
args"

jgradient

jvariable
jkey
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 0
кBз
$__inference_signature_wrapper_558465lstm_2_input"
В
FullArgSpec
args 
varargs
 
varkw
 
defaults
 !

kwonlyargs
jlstm_2_input
kwonlydefaults
 
annotationsЊ *
 
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
јBѕ
'__inference_lstm_2_layer_call_fn_558476inputs_0"Н
ЖВВ
FullArgSpec:
args2/
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
'__inference_lstm_2_layer_call_fn_558487inputs_0"Н
ЖВВ
FullArgSpec:
args2/
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
іBѓ
'__inference_lstm_2_layer_call_fn_558498inputs"Н
ЖВВ
FullArgSpec:
args2/
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
іBѓ
'__inference_lstm_2_layer_call_fn_558509inputs"Н
ЖВВ
FullArgSpec:
args2/
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
B__inference_lstm_2_layer_call_and_return_conditional_losses_558652inputs_0"Н
ЖВВ
FullArgSpec:
args2/
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
B__inference_lstm_2_layer_call_and_return_conditional_losses_558795inputs_0"Н
ЖВВ
FullArgSpec:
args2/
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
B__inference_lstm_2_layer_call_and_return_conditional_losses_558938inputs"Н
ЖВВ
FullArgSpec:
args2/
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
B__inference_lstm_2_layer_call_and_return_conditional_losses_559081inputs"Н
ЖВВ
FullArgSpec:
args2/
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
L	variables
Mtrainable_variables
Nregularization_losses
P__call__
*Q&call_and_return_all_conditional_losses
&Q"call_and_return_conditional_losses"
_generic_user_object
Щ
trace_0
trace_12
*__inference_lstm_cell_layer_call_fn_559741
*__inference_lstm_cell_layer_call_fn_559758Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
џ
trace_0
trace_12Ф
E__inference_lstm_cell_layer_call_and_return_conditional_losses_559790
E__inference_lstm_cell_layer_call_and_return_conditional_losses_559822Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
"
_generic_user_object
 "
trackable_list_wrapper
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
јBѕ
'__inference_lstm_3_layer_call_fn_559092inputs_0"Н
ЖВВ
FullArgSpec:
args2/
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
јBѕ
'__inference_lstm_3_layer_call_fn_559103inputs_0"Н
ЖВВ
FullArgSpec:
args2/
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
іBѓ
'__inference_lstm_3_layer_call_fn_559114inputs"Н
ЖВВ
FullArgSpec:
args2/
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
іBѓ
'__inference_lstm_3_layer_call_fn_559125inputs"Н
ЖВВ
FullArgSpec:
args2/
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
B__inference_lstm_3_layer_call_and_return_conditional_losses_559270inputs_0"Н
ЖВВ
FullArgSpec:
args2/
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
B__inference_lstm_3_layer_call_and_return_conditional_losses_559415inputs_0"Н
ЖВВ
FullArgSpec:
args2/
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
B__inference_lstm_3_layer_call_and_return_conditional_losses_559560inputs"Н
ЖВВ
FullArgSpec:
args2/
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
B__inference_lstm_3_layer_call_and_return_conditional_losses_559705inputs"Н
ЖВВ
FullArgSpec:
args2/
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

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
5
*0
+1
,2"
trackable_list_wrapper
5
*0
+1
,2"
trackable_list_wrapper
 "
trackable_list_wrapper
В
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
b	variables
ctrainable_variables
dregularization_losses
f__call__
*g&call_and_return_all_conditional_losses
&g"call_and_return_conditional_losses"
_generic_user_object
Щ
trace_0
trace_12
*__inference_lstm_cell_layer_call_fn_559839
*__inference_lstm_cell_layer_call_fn_559856Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
џ
trace_0
trace_12Ф
E__inference_lstm_cell_layer_call_and_return_conditional_losses_559888
E__inference_lstm_cell_layer_call_and_return_conditional_losses_559920Г
ЌВЈ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaultsЂ
p 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 ztrace_0ztrace_1
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
вBЯ
(__inference_dense_1_layer_call_fn_559714inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
эBъ
C__inference_dense_1_layer_call_and_return_conditional_losses_559724inputs"
В
FullArgSpec
args

jinputs
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
R
	variables
	keras_api

total

count"
_tf_keras_metric
/:-	2Adam/m/lstm_2/lstm_cell/kernel
/:-	2Adam/v/lstm_2/lstm_cell/kernel
::8
Р2(Adam/m/lstm_2/lstm_cell/recurrent_kernel
::8
Р2(Adam/v/lstm_2/lstm_cell/recurrent_kernel
):'2Adam/m/lstm_2/lstm_cell/bias
):'2Adam/v/lstm_2/lstm_cell/bias
0:.
Р2Adam/m/lstm_3/lstm_cell/kernel
0:.
Р2Adam/v/lstm_3/lstm_cell/kernel
::8
р2(Adam/m/lstm_3/lstm_cell/recurrent_kernel
::8
р2(Adam/v/lstm_3/lstm_cell/recurrent_kernel
):'2Adam/m/lstm_3/lstm_cell/bias
):'2Adam/v/lstm_3/lstm_cell/bias
&:$	р2Adam/m/dense_1/kernel
&:$	р2Adam/v/dense_1/kernel
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
ўBћ
*__inference_lstm_cell_layer_call_fn_559741inputsstates_0states_1"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
*__inference_lstm_cell_layer_call_fn_559758inputsstates_0states_1"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
E__inference_lstm_cell_layer_call_and_return_conditional_losses_559790inputsstates_0states_1"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
E__inference_lstm_cell_layer_call_and_return_conditional_losses_559822inputsstates_0states_1"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
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
ўBћ
*__inference_lstm_cell_layer_call_fn_559839inputsstates_0states_1"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
ўBћ
*__inference_lstm_cell_layer_call_fn_559856inputsstates_0states_1"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
E__inference_lstm_cell_layer_call_and_return_conditional_losses_559888inputsstates_0states_1"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
B
E__inference_lstm_cell_layer_call_and_return_conditional_losses_559920inputsstates_0states_1"Ў
ЇВЃ
FullArgSpec+
args# 
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsЊ *
 
0
0
1"
trackable_list_wrapper
.
	variables"
_generic_user_object
:  (2total
:  (2count
!__inference__wrapped_model_557018x'()*+,%&9Ђ6
/Ђ,
*'
lstm_2_inputџџџџџџџџџ
Њ "1Њ.
,
dense_1!
dense_1џџџџџџџџџЋ
C__inference_dense_1_layer_call_and_return_conditional_losses_559724d%&0Ђ-
&Ђ#
!
inputsџџџџџџџџџр
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 
(__inference_dense_1_layer_call_fn_559714Y%&0Ђ-
&Ђ#
!
inputsџџџџџџџџџр
Њ "!
unknownџџџџџџџџџй
B__inference_lstm_2_layer_call_and_return_conditional_losses_558652'()OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ ":Ђ7
0-
tensor_0џџџџџџџџџџџџџџџџџџР
 й
B__inference_lstm_2_layer_call_and_return_conditional_losses_558795'()OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ ":Ђ7
0-
tensor_0џџџџџџџџџџџџџџџџџџР
 П
B__inference_lstm_2_layer_call_and_return_conditional_losses_558938y'()?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ "1Ђ.
'$
tensor_0џџџџџџџџџР
 П
B__inference_lstm_2_layer_call_and_return_conditional_losses_559081y'()?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ "1Ђ.
'$
tensor_0џџџџџџџџџР
 Г
'__inference_lstm_2_layer_call_fn_558476'()OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p

 
Њ "/,
unknownџџџџџџџџџџџџџџџџџџРГ
'__inference_lstm_2_layer_call_fn_558487'()OЂL
EЂB
41
/,
inputs_0џџџџџџџџџџџџџџџџџџ

 
p 

 
Њ "/,
unknownџџџџџџџџџџџџџџџџџџР
'__inference_lstm_2_layer_call_fn_558498n'()?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p

 
Њ "&#
unknownџџџџџџџџџР
'__inference_lstm_2_layer_call_fn_558509n'()?Ђ<
5Ђ2
$!
inputsџџџџџџџџџ

 
p 

 
Њ "&#
unknownџџџџџџџџџРЭ
B__inference_lstm_3_layer_call_and_return_conditional_losses_559270*+,PЂM
FЂC
52
0-
inputs_0џџџџџџџџџџџџџџџџџџР

 
p

 
Њ "-Ђ*
# 
tensor_0џџџџџџџџџр
 Э
B__inference_lstm_3_layer_call_and_return_conditional_losses_559415*+,PЂM
FЂC
52
0-
inputs_0џџџџџџџџџџџџџџџџџџР

 
p 

 
Њ "-Ђ*
# 
tensor_0џџџџџџџџџр
 М
B__inference_lstm_3_layer_call_and_return_conditional_losses_559560v*+,@Ђ=
6Ђ3
%"
inputsџџџџџџџџџР

 
p

 
Њ "-Ђ*
# 
tensor_0џџџџџџџџџр
 М
B__inference_lstm_3_layer_call_and_return_conditional_losses_559705v*+,@Ђ=
6Ђ3
%"
inputsџџџџџџџџџР

 
p 

 
Њ "-Ђ*
# 
tensor_0џџџџџџџџџр
 І
'__inference_lstm_3_layer_call_fn_559092{*+,PЂM
FЂC
52
0-
inputs_0џџџџџџџџџџџџџџџџџџР

 
p

 
Њ ""
unknownџџџџџџџџџрІ
'__inference_lstm_3_layer_call_fn_559103{*+,PЂM
FЂC
52
0-
inputs_0џџџџџџџџџџџџџџџџџџР

 
p 

 
Њ ""
unknownџџџџџџџџџр
'__inference_lstm_3_layer_call_fn_559114k*+,@Ђ=
6Ђ3
%"
inputsџџџџџџџџџР

 
p

 
Њ ""
unknownџџџџџџџџџр
'__inference_lstm_3_layer_call_fn_559125k*+,@Ђ=
6Ђ3
%"
inputsџџџџџџџџџР

 
p 

 
Њ ""
unknownџџџџџџџџџрф
E__inference_lstm_cell_layer_call_and_return_conditional_losses_559790'()Ђ
xЂu
 
inputsџџџџџџџџџ
MЂJ
# 
states_0џџџџџџџџџР
# 
states_1џџџџџџџџџР
p
Њ "Ђ
Ђ~
%"

tensor_0_0џџџџџџџџџР
UR
'$
tensor_0_1_0џџџџџџџџџР
'$
tensor_0_1_1џџџџџџџџџР
 ф
E__inference_lstm_cell_layer_call_and_return_conditional_losses_559822'()Ђ
xЂu
 
inputsџџџџџџџџџ
MЂJ
# 
states_0џџџџџџџџџР
# 
states_1џџџџџџџџџР
p 
Њ "Ђ
Ђ~
%"

tensor_0_0џџџџџџџџџР
UR
'$
tensor_0_1_0џџџџџџџџџР
'$
tensor_0_1_1џџџџџџџџџР
 ц
E__inference_lstm_cell_layer_call_and_return_conditional_losses_559888*+,Ђ
yЂv
!
inputsџџџџџџџџџР
MЂJ
# 
states_0џџџџџџџџџр
# 
states_1џџџџџџџџџр
p
Њ "Ђ
Ђ~
%"

tensor_0_0џџџџџџџџџр
UR
'$
tensor_0_1_0џџџџџџџџџр
'$
tensor_0_1_1џџџџџџџџџр
 ц
E__inference_lstm_cell_layer_call_and_return_conditional_losses_559920*+,Ђ
yЂv
!
inputsџџџџџџџџџР
MЂJ
# 
states_0џџџџџџџџџр
# 
states_1џџџџџџџџџр
p 
Њ "Ђ
Ђ~
%"

tensor_0_0џџџџџџџџџр
UR
'$
tensor_0_1_0џџџџџџџџџр
'$
tensor_0_1_1џџџџџџџџџр
 Ж
*__inference_lstm_cell_layer_call_fn_559741'()Ђ
xЂu
 
inputsџџџџџџџџџ
MЂJ
# 
states_0џџџџџџџџџР
# 
states_1џџџџџџџџџР
p
Њ "{Ђx
# 
tensor_0џџџџџџџџџР
QN
%"

tensor_1_0џџџџџџџџџР
%"

tensor_1_1џџџџџџџџџРЖ
*__inference_lstm_cell_layer_call_fn_559758'()Ђ
xЂu
 
inputsџџџџџџџџџ
MЂJ
# 
states_0џџџџџџџџџР
# 
states_1џџџџџџџџџР
p 
Њ "{Ђx
# 
tensor_0џџџџџџџџџР
QN
%"

tensor_1_0џџџџџџџџџР
%"

tensor_1_1џџџџџџџџџРИ
*__inference_lstm_cell_layer_call_fn_559839*+,Ђ
yЂv
!
inputsџџџџџџџџџР
MЂJ
# 
states_0џџџџџџџџџр
# 
states_1џџџџџџџџџр
p
Њ "{Ђx
# 
tensor_0џџџџџџџџџр
QN
%"

tensor_1_0џџџџџџџџџр
%"

tensor_1_1џџџџџџџџџрИ
*__inference_lstm_cell_layer_call_fn_559856*+,Ђ
yЂv
!
inputsџџџџџџџџџР
MЂJ
# 
states_0џџџџџџџџџр
# 
states_1џџџџџџџџџр
p 
Њ "{Ђx
# 
tensor_0џџџџџџџџџр
QN
%"

tensor_1_0џџџџџџџџџр
%"

tensor_1_1џџџџџџџџџрй
Z__inference_model_8_stackedLSTM_univariate_layer_call_and_return_conditional_losses_558035{'()*+,%&AЂ>
7Ђ4
*'
lstm_2_inputџџџџџџџџџ
p

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 й
Z__inference_model_8_stackedLSTM_univariate_layer_call_and_return_conditional_losses_558346{'()*+,%&AЂ>
7Ђ4
*'
lstm_2_inputџџџџџџџџџ
p 

 
Њ ",Ђ)
"
tensor_0џџџџџџџџџ
 Г
?__inference_model_8_stackedLSTM_univariate_layer_call_fn_558367p'()*+,%&AЂ>
7Ђ4
*'
lstm_2_inputџџџџџџџџџ
p

 
Њ "!
unknownџџџџџџџџџГ
?__inference_model_8_stackedLSTM_univariate_layer_call_fn_558388p'()*+,%&AЂ>
7Ђ4
*'
lstm_2_inputџџџџџџџџџ
p 

 
Њ "!
unknownџџџџџџџџџБ
$__inference_signature_wrapper_558465'()*+,%&IЂF
Ђ 
?Њ<
:
lstm_2_input*'
lstm_2_inputџџџџџџџџџ"1Њ.
,
dense_1!
dense_1џџџџџџџџџ