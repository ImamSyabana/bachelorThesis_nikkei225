ø9
²
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
q
MatMul
a"T
b"T
product"T"
transpose_abool( "
transpose_bbool( "
Ttype:

2	
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
list(type)(0
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
Į
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
executor_typestring Ø
@
StaticRegexFullMatch	
input

output
"
patternstring
÷
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
°
TensorListFromTensor
tensor"element_dtype
element_shape"
shape_type/
output_handleéčelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListReserve
element_shape"
shape_type
num_elements(
handleéčelement_dtype"
element_dtypetype"

shape_typetype:
2	

TensorListStack
input_handle
element_shape
tensor"element_dtype"
element_dtypetype" 
num_elementsint’’’’’’’’’
P
	Transpose
x"T
perm"Tperm
y"T"	
Ttype"
Tpermtype0:
2	

VarHandleOp
resource"
	containerstring "
shared_namestring "
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
"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8¢Ų6
Ļ
;Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*L
shared_name=;Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/bias/v
Č
OAdam/bidirectional_17/backward_lstm_17/lstm_cell_110/bias/v/Read/ReadVariableOpReadVariableOp;Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/bias/v*
_output_shapes	
:*
dtype0
ģ
GAdam/bidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*X
shared_nameIGAdam/bidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel/v
å
[Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel/v/Read/ReadVariableOpReadVariableOpGAdam/bidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel/v* 
_output_shapes
:
*
dtype0
×
=Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*N
shared_name?=Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/kernel/v
Š
QAdam/bidirectional_17/backward_lstm_17/lstm_cell_110/kernel/v/Read/ReadVariableOpReadVariableOp=Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/kernel/v*
_output_shapes
:	*
dtype0
Ķ
:Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*K
shared_name<:Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/bias/v
Ę
NAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/bias/v/Read/ReadVariableOpReadVariableOp:Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/bias/v*
_output_shapes	
:*
dtype0
ź
FAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*W
shared_nameHFAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel/v
ć
ZAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel/v/Read/ReadVariableOpReadVariableOpFAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel/v* 
_output_shapes
:
*
dtype0
Õ
<Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*M
shared_name><Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/kernel/v
Ī
PAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/kernel/v/Read/ReadVariableOpReadVariableOp<Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/kernel/v*
_output_shapes
:	*
dtype0

Adam/dense_17/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_17/bias/v
y
(Adam/dense_17/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/v*
_output_shapes
:*
dtype0

Adam/dense_17/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/dense_17/kernel/v

*Adam/dense_17/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/v*
_output_shapes
:	*
dtype0
Ļ
;Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*L
shared_name=;Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/bias/m
Č
OAdam/bidirectional_17/backward_lstm_17/lstm_cell_110/bias/m/Read/ReadVariableOpReadVariableOp;Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/bias/m*
_output_shapes	
:*
dtype0
ģ
GAdam/bidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*X
shared_nameIGAdam/bidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel/m
å
[Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel/m/Read/ReadVariableOpReadVariableOpGAdam/bidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel/m* 
_output_shapes
:
*
dtype0
×
=Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*N
shared_name?=Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/kernel/m
Š
QAdam/bidirectional_17/backward_lstm_17/lstm_cell_110/kernel/m/Read/ReadVariableOpReadVariableOp=Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/kernel/m*
_output_shapes
:	*
dtype0
Ķ
:Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*K
shared_name<:Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/bias/m
Ę
NAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/bias/m/Read/ReadVariableOpReadVariableOp:Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/bias/m*
_output_shapes	
:*
dtype0
ź
FAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*W
shared_nameHFAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel/m
ć
ZAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel/m/Read/ReadVariableOpReadVariableOpFAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel/m* 
_output_shapes
:
*
dtype0
Õ
<Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*M
shared_name><Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/kernel/m
Ī
PAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/kernel/m/Read/ReadVariableOpReadVariableOp<Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/kernel/m*
_output_shapes
:	*
dtype0

Adam/dense_17/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_17/bias/m
y
(Adam/dense_17/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/bias/m*
_output_shapes
:*
dtype0

Adam/dense_17/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/dense_17/kernel/m

*Adam/dense_17/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_17/kernel/m*
_output_shapes
:	*
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
x
Adam/learning_rateVarHandleOp*
_output_shapes
: *
dtype0*
shape: *#
shared_nameAdam/learning_rate
q
&Adam/learning_rate/Read/ReadVariableOpReadVariableOpAdam/learning_rate*
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
Į
4bidirectional_17/backward_lstm_17/lstm_cell_110/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*E
shared_name64bidirectional_17/backward_lstm_17/lstm_cell_110/bias
ŗ
Hbidirectional_17/backward_lstm_17/lstm_cell_110/bias/Read/ReadVariableOpReadVariableOp4bidirectional_17/backward_lstm_17/lstm_cell_110/bias*
_output_shapes	
:*
dtype0
Ž
@bidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*Q
shared_nameB@bidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel
×
Tbidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel/Read/ReadVariableOpReadVariableOp@bidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel* 
_output_shapes
:
*
dtype0
É
6bidirectional_17/backward_lstm_17/lstm_cell_110/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*G
shared_name86bidirectional_17/backward_lstm_17/lstm_cell_110/kernel
Ā
Jbidirectional_17/backward_lstm_17/lstm_cell_110/kernel/Read/ReadVariableOpReadVariableOp6bidirectional_17/backward_lstm_17/lstm_cell_110/kernel*
_output_shapes
:	*
dtype0
æ
3bidirectional_17/forward_lstm_17/lstm_cell_109/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*D
shared_name53bidirectional_17/forward_lstm_17/lstm_cell_109/bias
ø
Gbidirectional_17/forward_lstm_17/lstm_cell_109/bias/Read/ReadVariableOpReadVariableOp3bidirectional_17/forward_lstm_17/lstm_cell_109/bias*
_output_shapes	
:*
dtype0
Ü
?bidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*P
shared_nameA?bidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel
Õ
Sbidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel/Read/ReadVariableOpReadVariableOp?bidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel* 
_output_shapes
:
*
dtype0
Ē
5bidirectional_17/forward_lstm_17/lstm_cell_109/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*F
shared_name75bidirectional_17/forward_lstm_17/lstm_cell_109/kernel
Ą
Ibidirectional_17/forward_lstm_17/lstm_cell_109/kernel/Read/ReadVariableOpReadVariableOp5bidirectional_17/forward_lstm_17/lstm_cell_109/kernel*
_output_shapes
:	*
dtype0
r
dense_17/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_17/bias
k
!dense_17/bias/Read/ReadVariableOpReadVariableOpdense_17/bias*
_output_shapes
:*
dtype0
{
dense_17/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	* 
shared_namedense_17/kernel
t
#dense_17/kernel/Read/ReadVariableOpReadVariableOpdense_17/kernel*
_output_shapes
:	*
dtype0

serving_default_lambda_17_inputPlaceholder*'
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
Ė
StatefulPartitionedCallStatefulPartitionedCallserving_default_lambda_17_input5bidirectional_17/forward_lstm_17/lstm_cell_109/kernel?bidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel3bidirectional_17/forward_lstm_17/lstm_cell_109/bias6bidirectional_17/backward_lstm_17/lstm_cell_110/kernel@bidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel4bidirectional_17/backward_lstm_17/lstm_cell_110/biasdense_17/kerneldense_17/bias*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *.
f)R'
%__inference_signature_wrapper_2301348

NoOpNoOp
N
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*ĻM
valueÅMBĀM B»M
§
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

	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses* 
·
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
forward_layer
backward_layer*
¦
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
°
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
6
.trace_0
/trace_1
0trace_2
1trace_3* 
6
2trace_0
3trace_1
4trace_2
5trace_3* 
* 
ä
6iter

7beta_1

8beta_2
	9decay
:learning_rate!m®"mÆ#m°$m±%m²&m³'m“(mµ!v¶"v·#vø$v¹%vŗ&v»'v¼(v½*

;serving_default* 
* 
* 
* 

<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses* 

Atrace_0
Btrace_1* 

Ctrace_0
Dtrace_1* 
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

Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*
6
Jtrace_0
Ktrace_1
Ltrace_2
Mtrace_3* 
6
Ntrace_0
Otrace_1
Ptrace_2
Qtrace_3* 
Į
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses
X_random_generator
Ycell
Z
state_spec*
Į
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses
a_random_generator
bcell
c
state_spec*

!0
"1*

!0
"1*
* 

dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses*

itrace_0* 

jtrace_0* 
_Y
VARIABLE_VALUEdense_17/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_17/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5bidirectional_17/forward_lstm_17/lstm_cell_109/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE?bidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE3bidirectional_17/forward_lstm_17/lstm_cell_109/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
vp
VARIABLE_VALUE6bidirectional_17/backward_lstm_17/lstm_cell_110/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
z
VARIABLE_VALUE@bidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE4bidirectional_17/backward_lstm_17/lstm_cell_110/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
* 

0
1
2*

k0*
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
^X
VARIABLE_VALUEAdam/learning_rate2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUE*
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


lstates
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses*
6
rtrace_0
strace_1
ttrace_2
utrace_3* 
6
vtrace_0
wtrace_1
xtrace_2
ytrace_3* 
* 
å
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
_random_generator

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
„
states
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses*
:
trace_0
trace_1
trace_2
trace_3* 
:
trace_0
trace_1
trace_2
trace_3* 
* 
ė
	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator

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
	variables
	keras_api

total

count*
* 
* 

Y0*
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

non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses*

”trace_0
¢trace_1* 

£trace_0
¤trace_1* 
* 
* 
* 
* 

b0*
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

„non_trainable_variables
¦layers
§metrics
 Ølayer_regularization_losses
©layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses*

Ŗtrace_0
«trace_1* 

¬trace_0
­trace_1* 
* 
* 

0
1*

	variables*
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
|
VARIABLE_VALUEAdam/dense_17/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_17/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUEFAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE:Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE=Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¤
VARIABLE_VALUEGAdam/bidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE;Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_17/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_17/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUEFAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE:Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE=Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¤
VARIABLE_VALUEGAdam/bidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE;Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
ä
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_17/kernel/Read/ReadVariableOp!dense_17/bias/Read/ReadVariableOpIbidirectional_17/forward_lstm_17/lstm_cell_109/kernel/Read/ReadVariableOpSbidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel/Read/ReadVariableOpGbidirectional_17/forward_lstm_17/lstm_cell_109/bias/Read/ReadVariableOpJbidirectional_17/backward_lstm_17/lstm_cell_110/kernel/Read/ReadVariableOpTbidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel/Read/ReadVariableOpHbidirectional_17/backward_lstm_17/lstm_cell_110/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_17/kernel/m/Read/ReadVariableOp(Adam/dense_17/bias/m/Read/ReadVariableOpPAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/kernel/m/Read/ReadVariableOpZAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel/m/Read/ReadVariableOpNAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/bias/m/Read/ReadVariableOpQAdam/bidirectional_17/backward_lstm_17/lstm_cell_110/kernel/m/Read/ReadVariableOp[Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel/m/Read/ReadVariableOpOAdam/bidirectional_17/backward_lstm_17/lstm_cell_110/bias/m/Read/ReadVariableOp*Adam/dense_17/kernel/v/Read/ReadVariableOp(Adam/dense_17/bias/v/Read/ReadVariableOpPAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/kernel/v/Read/ReadVariableOpZAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel/v/Read/ReadVariableOpNAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/bias/v/Read/ReadVariableOpQAdam/bidirectional_17/backward_lstm_17/lstm_cell_110/kernel/v/Read/ReadVariableOp[Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel/v/Read/ReadVariableOpOAdam/bidirectional_17/backward_lstm_17/lstm_cell_110/bias/v/Read/ReadVariableOpConst*,
Tin%
#2!	*
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
GPU2*0J 8 *)
f$R"
 __inference__traced_save_2304823
ó
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_17/kerneldense_17/bias5bidirectional_17/forward_lstm_17/lstm_cell_109/kernel?bidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel3bidirectional_17/forward_lstm_17/lstm_cell_109/bias6bidirectional_17/backward_lstm_17/lstm_cell_110/kernel@bidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel4bidirectional_17/backward_lstm_17/lstm_cell_110/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_17/kernel/mAdam/dense_17/bias/m<Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/kernel/mFAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel/m:Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/bias/m=Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/kernel/mGAdam/bidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel/m;Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/bias/mAdam/dense_17/kernel/vAdam/dense_17/bias/v<Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/kernel/vFAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel/v:Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/bias/v=Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/kernel/vGAdam/bidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel/v;Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/bias/v*+
Tin$
"2 *
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
GPU2*0J 8 *,
f'R%
#__inference__traced_restore_2304926ī5
¾
Č
while_cond_2300350
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2300350___redundant_placeholder05
1while_while_cond_2300350___redundant_placeholder15
1while_while_cond_2300350___redundant_placeholder25
1while_while_cond_2300350___redundant_placeholder3
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
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
ö

a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_2301688

inputs`
Mbidirectional_17_forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource:	c
Obidirectional_17_forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource:
]
Nbidirectional_17_forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource:	a
Nbidirectional_17_backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource:	d
Pbidirectional_17_backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource:
^
Obidirectional_17_backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource:	:
'dense_17_matmul_readvariableop_resource:	6
(dense_17_biasadd_readvariableop_resource:
identity¢Fbidirectional_17/backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp¢Ebidirectional_17/backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp¢Gbidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp¢'bidirectional_17/backward_lstm_17/while¢Ebidirectional_17/forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp¢Dbidirectional_17/forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp¢Fbidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp¢&bidirectional_17/forward_lstm_17/while¢dense_17/BiasAdd/ReadVariableOp¢dense_17/MatMul/ReadVariableOpc
lambda_17/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
lambda_17/ExpandDims
ExpandDimsinputs!lambda_17/ExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’s
&bidirectional_17/forward_lstm_17/ShapeShapelambda_17/ExpandDims:output:0*
T0*
_output_shapes
:~
4bidirectional_17/forward_lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6bidirectional_17/forward_lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6bidirectional_17/forward_lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ö
.bidirectional_17/forward_lstm_17/strided_sliceStridedSlice/bidirectional_17/forward_lstm_17/Shape:output:0=bidirectional_17/forward_lstm_17/strided_slice/stack:output:0?bidirectional_17/forward_lstm_17/strided_slice/stack_1:output:0?bidirectional_17/forward_lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
/bidirectional_17/forward_lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ö
-bidirectional_17/forward_lstm_17/zeros/packedPack7bidirectional_17/forward_lstm_17/strided_slice:output:08bidirectional_17/forward_lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:q
,bidirectional_17/forward_lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Š
&bidirectional_17/forward_lstm_17/zerosFill6bidirectional_17/forward_lstm_17/zeros/packed:output:05bidirectional_17/forward_lstm_17/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’t
1bidirectional_17/forward_lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ś
/bidirectional_17/forward_lstm_17/zeros_1/packedPack7bidirectional_17/forward_lstm_17/strided_slice:output:0:bidirectional_17/forward_lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:s
.bidirectional_17/forward_lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ö
(bidirectional_17/forward_lstm_17/zeros_1Fill8bidirectional_17/forward_lstm_17/zeros_1/packed:output:07bidirectional_17/forward_lstm_17/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’
/bidirectional_17/forward_lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ę
*bidirectional_17/forward_lstm_17/transpose	Transposelambda_17/ExpandDims:output:08bidirectional_17/forward_lstm_17/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’
(bidirectional_17/forward_lstm_17/Shape_1Shape.bidirectional_17/forward_lstm_17/transpose:y:0*
T0*
_output_shapes
:
6bidirectional_17/forward_lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8bidirectional_17/forward_lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8bidirectional_17/forward_lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
0bidirectional_17/forward_lstm_17/strided_slice_1StridedSlice1bidirectional_17/forward_lstm_17/Shape_1:output:0?bidirectional_17/forward_lstm_17/strided_slice_1/stack:output:0Abidirectional_17/forward_lstm_17/strided_slice_1/stack_1:output:0Abidirectional_17/forward_lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
<bidirectional_17/forward_lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
.bidirectional_17/forward_lstm_17/TensorArrayV2TensorListReserveEbidirectional_17/forward_lstm_17/TensorArrayV2/element_shape:output:09bidirectional_17/forward_lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ§
Vbidirectional_17/forward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ć
Hbidirectional_17/forward_lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor.bidirectional_17/forward_lstm_17/transpose:y:0_bidirectional_17/forward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
6bidirectional_17/forward_lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8bidirectional_17/forward_lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8bidirectional_17/forward_lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
0bidirectional_17/forward_lstm_17/strided_slice_2StridedSlice.bidirectional_17/forward_lstm_17/transpose:y:0?bidirectional_17/forward_lstm_17/strided_slice_2/stack:output:0Abidirectional_17/forward_lstm_17/strided_slice_2/stack_1:output:0Abidirectional_17/forward_lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_maskÓ
Dbidirectional_17/forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOpReadVariableOpMbidirectional_17_forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ū
5bidirectional_17/forward_lstm_17/lstm_cell_109/MatMulMatMul9bidirectional_17/forward_lstm_17/strided_slice_2:output:0Lbidirectional_17/forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ų
Fbidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOpObidirectional_17_forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0õ
7bidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1MatMul/bidirectional_17/forward_lstm_17/zeros:output:0Nbidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ņ
2bidirectional_17/forward_lstm_17/lstm_cell_109/addAddV2?bidirectional_17/forward_lstm_17/lstm_cell_109/MatMul:product:0Abidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Ń
Ebidirectional_17/forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOpNbidirectional_17_forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ū
6bidirectional_17/forward_lstm_17/lstm_cell_109/BiasAddBiasAdd6bidirectional_17/forward_lstm_17/lstm_cell_109/add:z:0Mbidirectional_17/forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
>bidirectional_17/forward_lstm_17/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ē
4bidirectional_17/forward_lstm_17/lstm_cell_109/splitSplitGbidirectional_17/forward_lstm_17/lstm_cell_109/split/split_dim:output:0?bidirectional_17/forward_lstm_17/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split³
6bidirectional_17/forward_lstm_17/lstm_cell_109/SigmoidSigmoid=bidirectional_17/forward_lstm_17/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’µ
8bidirectional_17/forward_lstm_17/lstm_cell_109/Sigmoid_1Sigmoid=bidirectional_17/forward_lstm_17/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ż
2bidirectional_17/forward_lstm_17/lstm_cell_109/mulMul<bidirectional_17/forward_lstm_17/lstm_cell_109/Sigmoid_1:y:01bidirectional_17/forward_lstm_17/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’­
3bidirectional_17/forward_lstm_17/lstm_cell_109/ReluRelu=bidirectional_17/forward_lstm_17/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ķ
4bidirectional_17/forward_lstm_17/lstm_cell_109/mul_1Mul:bidirectional_17/forward_lstm_17/lstm_cell_109/Sigmoid:y:0Abidirectional_17/forward_lstm_17/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’ā
4bidirectional_17/forward_lstm_17/lstm_cell_109/add_1AddV26bidirectional_17/forward_lstm_17/lstm_cell_109/mul:z:08bidirectional_17/forward_lstm_17/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’µ
8bidirectional_17/forward_lstm_17/lstm_cell_109/Sigmoid_2Sigmoid=bidirectional_17/forward_lstm_17/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
5bidirectional_17/forward_lstm_17/lstm_cell_109/Relu_1Relu8bidirectional_17/forward_lstm_17/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ń
4bidirectional_17/forward_lstm_17/lstm_cell_109/mul_2Mul<bidirectional_17/forward_lstm_17/lstm_cell_109/Sigmoid_2:y:0Cbidirectional_17/forward_lstm_17/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
>bidirectional_17/forward_lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
=bidirectional_17/forward_lstm_17/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ø
0bidirectional_17/forward_lstm_17/TensorArrayV2_1TensorListReserveGbidirectional_17/forward_lstm_17/TensorArrayV2_1/element_shape:output:0Fbidirectional_17/forward_lstm_17/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅg
%bidirectional_17/forward_lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : 
9bidirectional_17/forward_lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’u
3bidirectional_17/forward_lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ł	
&bidirectional_17/forward_lstm_17/whileWhile<bidirectional_17/forward_lstm_17/while/loop_counter:output:0Bbidirectional_17/forward_lstm_17/while/maximum_iterations:output:0.bidirectional_17/forward_lstm_17/time:output:09bidirectional_17/forward_lstm_17/TensorArrayV2_1:handle:0/bidirectional_17/forward_lstm_17/zeros:output:01bidirectional_17/forward_lstm_17/zeros_1:output:09bidirectional_17/forward_lstm_17/strided_slice_1:output:0Xbidirectional_17/forward_lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:0Mbidirectional_17_forward_lstm_17_lstm_cell_109_matmul_readvariableop_resourceObidirectional_17_forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resourceNbidirectional_17_forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *?
body7R5
3bidirectional_17_forward_lstm_17_while_body_2301452*?
cond7R5
3bidirectional_17_forward_lstm_17_while_cond_2301451*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations ¢
Qbidirectional_17/forward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ŗ
Cbidirectional_17/forward_lstm_17/TensorArrayV2Stack/TensorListStackTensorListStack/bidirectional_17/forward_lstm_17/while:output:3Zbidirectional_17/forward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elements
6bidirectional_17/forward_lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
8bidirectional_17/forward_lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
8bidirectional_17/forward_lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:­
0bidirectional_17/forward_lstm_17/strided_slice_3StridedSliceLbidirectional_17/forward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0?bidirectional_17/forward_lstm_17/strided_slice_3/stack:output:0Abidirectional_17/forward_lstm_17/strided_slice_3/stack_1:output:0Abidirectional_17/forward_lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
1bidirectional_17/forward_lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ś
,bidirectional_17/forward_lstm_17/transpose_1	TransposeLbidirectional_17/forward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0:bidirectional_17/forward_lstm_17/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’|
(bidirectional_17/forward_lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
'bidirectional_17/backward_lstm_17/ShapeShapelambda_17/ExpandDims:output:0*
T0*
_output_shapes
:
5bidirectional_17/backward_lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
7bidirectional_17/backward_lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7bidirectional_17/backward_lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ū
/bidirectional_17/backward_lstm_17/strided_sliceStridedSlice0bidirectional_17/backward_lstm_17/Shape:output:0>bidirectional_17/backward_lstm_17/strided_slice/stack:output:0@bidirectional_17/backward_lstm_17/strided_slice/stack_1:output:0@bidirectional_17/backward_lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
0bidirectional_17/backward_lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ł
.bidirectional_17/backward_lstm_17/zeros/packedPack8bidirectional_17/backward_lstm_17/strided_slice:output:09bidirectional_17/backward_lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:r
-bidirectional_17/backward_lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ó
'bidirectional_17/backward_lstm_17/zerosFill7bidirectional_17/backward_lstm_17/zeros/packed:output:06bidirectional_17/backward_lstm_17/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’u
2bidirectional_17/backward_lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ż
0bidirectional_17/backward_lstm_17/zeros_1/packedPack8bidirectional_17/backward_lstm_17/strided_slice:output:0;bidirectional_17/backward_lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:t
/bidirectional_17/backward_lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ł
)bidirectional_17/backward_lstm_17/zeros_1Fill9bidirectional_17/backward_lstm_17/zeros_1/packed:output:08bidirectional_17/backward_lstm_17/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’
0bidirectional_17/backward_lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Č
+bidirectional_17/backward_lstm_17/transpose	Transposelambda_17/ExpandDims:output:09bidirectional_17/backward_lstm_17/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’
)bidirectional_17/backward_lstm_17/Shape_1Shape/bidirectional_17/backward_lstm_17/transpose:y:0*
T0*
_output_shapes
:
7bidirectional_17/backward_lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9bidirectional_17/backward_lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9bidirectional_17/backward_lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1bidirectional_17/backward_lstm_17/strided_slice_1StridedSlice2bidirectional_17/backward_lstm_17/Shape_1:output:0@bidirectional_17/backward_lstm_17/strided_slice_1/stack:output:0Bbidirectional_17/backward_lstm_17/strided_slice_1/stack_1:output:0Bbidirectional_17/backward_lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
=bidirectional_17/backward_lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
/bidirectional_17/backward_lstm_17/TensorArrayV2TensorListReserveFbidirectional_17/backward_lstm_17/TensorArrayV2/element_shape:output:0:bidirectional_17/backward_lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅz
0bidirectional_17/backward_lstm_17/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Ś
+bidirectional_17/backward_lstm_17/ReverseV2	ReverseV2/bidirectional_17/backward_lstm_17/transpose:y:09bidirectional_17/backward_lstm_17/ReverseV2/axis:output:0*
T0*+
_output_shapes
:’’’’’’’’’Ø
Wbidirectional_17/backward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ė
Ibidirectional_17/backward_lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor4bidirectional_17/backward_lstm_17/ReverseV2:output:0`bidirectional_17/backward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
7bidirectional_17/backward_lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9bidirectional_17/backward_lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9bidirectional_17/backward_lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1bidirectional_17/backward_lstm_17/strided_slice_2StridedSlice/bidirectional_17/backward_lstm_17/transpose:y:0@bidirectional_17/backward_lstm_17/strided_slice_2/stack:output:0Bbidirectional_17/backward_lstm_17/strided_slice_2/stack_1:output:0Bbidirectional_17/backward_lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_maskÕ
Ebidirectional_17/backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOpReadVariableOpNbidirectional_17_backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ž
6bidirectional_17/backward_lstm_17/lstm_cell_110/MatMulMatMul:bidirectional_17/backward_lstm_17/strided_slice_2:output:0Mbidirectional_17/backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ś
Gbidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOpPbidirectional_17_backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0ų
8bidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1MatMul0bidirectional_17/backward_lstm_17/zeros:output:0Obidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’õ
3bidirectional_17/backward_lstm_17/lstm_cell_110/addAddV2@bidirectional_17/backward_lstm_17/lstm_cell_110/MatMul:product:0Bbidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Ó
Fbidirectional_17/backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOpObidirectional_17_backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ž
7bidirectional_17/backward_lstm_17/lstm_cell_110/BiasAddBiasAdd7bidirectional_17/backward_lstm_17/lstm_cell_110/add:z:0Nbidirectional_17/backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
?bidirectional_17/backward_lstm_17/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ź
5bidirectional_17/backward_lstm_17/lstm_cell_110/splitSplitHbidirectional_17/backward_lstm_17/lstm_cell_110/split/split_dim:output:0@bidirectional_17/backward_lstm_17/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitµ
7bidirectional_17/backward_lstm_17/lstm_cell_110/SigmoidSigmoid>bidirectional_17/backward_lstm_17/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’·
9bidirectional_17/backward_lstm_17/lstm_cell_110/Sigmoid_1Sigmoid>bidirectional_17/backward_lstm_17/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’ą
3bidirectional_17/backward_lstm_17/lstm_cell_110/mulMul=bidirectional_17/backward_lstm_17/lstm_cell_110/Sigmoid_1:y:02bidirectional_17/backward_lstm_17/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
4bidirectional_17/backward_lstm_17/lstm_cell_110/ReluRelu>bidirectional_17/backward_lstm_17/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’š
5bidirectional_17/backward_lstm_17/lstm_cell_110/mul_1Mul;bidirectional_17/backward_lstm_17/lstm_cell_110/Sigmoid:y:0Bbidirectional_17/backward_lstm_17/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’å
5bidirectional_17/backward_lstm_17/lstm_cell_110/add_1AddV27bidirectional_17/backward_lstm_17/lstm_cell_110/mul:z:09bidirectional_17/backward_lstm_17/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’·
9bidirectional_17/backward_lstm_17/lstm_cell_110/Sigmoid_2Sigmoid>bidirectional_17/backward_lstm_17/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’¬
6bidirectional_17/backward_lstm_17/lstm_cell_110/Relu_1Relu9bidirectional_17/backward_lstm_17/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ō
5bidirectional_17/backward_lstm_17/lstm_cell_110/mul_2Mul=bidirectional_17/backward_lstm_17/lstm_cell_110/Sigmoid_2:y:0Dbidirectional_17/backward_lstm_17/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
?bidirectional_17/backward_lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
>bidirectional_17/backward_lstm_17/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :«
1bidirectional_17/backward_lstm_17/TensorArrayV2_1TensorListReserveHbidirectional_17/backward_lstm_17/TensorArrayV2_1/element_shape:output:0Gbidirectional_17/backward_lstm_17/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅh
&bidirectional_17/backward_lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : 
:bidirectional_17/backward_lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’v
4bidirectional_17/backward_lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ē	
'bidirectional_17/backward_lstm_17/whileWhile=bidirectional_17/backward_lstm_17/while/loop_counter:output:0Cbidirectional_17/backward_lstm_17/while/maximum_iterations:output:0/bidirectional_17/backward_lstm_17/time:output:0:bidirectional_17/backward_lstm_17/TensorArrayV2_1:handle:00bidirectional_17/backward_lstm_17/zeros:output:02bidirectional_17/backward_lstm_17/zeros_1:output:0:bidirectional_17/backward_lstm_17/strided_slice_1:output:0Ybidirectional_17/backward_lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:0Nbidirectional_17_backward_lstm_17_lstm_cell_110_matmul_readvariableop_resourcePbidirectional_17_backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resourceObidirectional_17_backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *@
body8R6
4bidirectional_17_backward_lstm_17_while_body_2301595*@
cond8R6
4bidirectional_17_backward_lstm_17_while_cond_2301594*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations £
Rbidirectional_17/backward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ½
Dbidirectional_17/backward_lstm_17/TensorArrayV2Stack/TensorListStackTensorListStack0bidirectional_17/backward_lstm_17/while:output:3[bidirectional_17/backward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elements
7bidirectional_17/backward_lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
9bidirectional_17/backward_lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
9bidirectional_17/backward_lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:²
1bidirectional_17/backward_lstm_17/strided_slice_3StridedSliceMbidirectional_17/backward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0@bidirectional_17/backward_lstm_17/strided_slice_3/stack:output:0Bbidirectional_17/backward_lstm_17/strided_slice_3/stack_1:output:0Bbidirectional_17/backward_lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
2bidirectional_17/backward_lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ż
-bidirectional_17/backward_lstm_17/transpose_1	TransposeMbidirectional_17/backward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0;bidirectional_17/backward_lstm_17/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’}
)bidirectional_17/backward_lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ^
bidirectional_17/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ż
bidirectional_17/concatConcatV29bidirectional_17/forward_lstm_17/strided_slice_3:output:0:bidirectional_17/backward_lstm_17/strided_slice_3:output:0%bidirectional_17/concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_17/MatMulMatMul bidirectional_17/concat:output:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’h
IdentityIdentitydense_17/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
NoOpNoOpG^bidirectional_17/backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOpF^bidirectional_17/backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOpH^bidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp(^bidirectional_17/backward_lstm_17/whileF^bidirectional_17/forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOpE^bidirectional_17/forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOpG^bidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp'^bidirectional_17/forward_lstm_17/while ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 2
Fbidirectional_17/backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOpFbidirectional_17/backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp2
Ebidirectional_17/backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOpEbidirectional_17/backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp2
Gbidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOpGbidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp2R
'bidirectional_17/backward_lstm_17/while'bidirectional_17/backward_lstm_17/while2
Ebidirectional_17/forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOpEbidirectional_17/forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp2
Dbidirectional_17/forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOpDbidirectional_17/forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp2
Fbidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOpFbidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp2P
&bidirectional_17/forward_lstm_17/while&bidirectional_17/forward_lstm_17/while2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
²N
¬
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2300083

inputs?
,lstm_cell_110_matmul_readvariableop_resource:	B
.lstm_cell_110_matmul_1_readvariableop_resource:
<
-lstm_cell_110_biasadd_readvariableop_resource:	
identity¢$lstm_cell_110/BiasAdd/ReadVariableOp¢#lstm_cell_110/MatMul/ReadVariableOp¢%lstm_cell_110/MatMul_1/ReadVariableOp¢while;
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
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
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’å
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:ņ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
shrink_axis_mask
#lstm_cell_110/MatMul/ReadVariableOpReadVariableOp,lstm_cell_110_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_110/MatMulMatMulstrided_slice_2:output:0+lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
%lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_110_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_110/MatMul_1MatMulzeros:output:0-lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/addAddV2lstm_cell_110/MatMul:product:0 lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_110_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_110/BiasAddBiasAddlstm_cell_110/add:z:0,lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’_
lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_110/splitSplit&lstm_cell_110/split/split_dim:output:0lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitq
lstm_cell_110/SigmoidSigmoidlstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_110/Sigmoid_1Sigmoidlstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’z
lstm_cell_110/mulMullstm_cell_110/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell_110/ReluRelulstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/mul_1Mullstm_cell_110/Sigmoid:y:0 lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/add_1AddV2lstm_cell_110/mul:z:0lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_110/Sigmoid_2Sigmoidlstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’h
lstm_cell_110/Relu_1Relulstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/mul_2Mullstm_cell_110/Sigmoid_2:y:0"lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_110_matmul_readvariableop_resource.lstm_cell_110_matmul_1_readvariableop_resource-lstm_cell_110_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2299998*
condR
while_cond_2299997*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
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
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ć
NoOpNoOp%^lstm_cell_110/BiasAdd/ReadVariableOp$^lstm_cell_110/MatMul/ReadVariableOp&^lstm_cell_110/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2L
$lstm_cell_110/BiasAdd/ReadVariableOp$lstm_cell_110/BiasAdd/ReadVariableOp2J
#lstm_cell_110/MatMul/ReadVariableOp#lstm_cell_110/MatMul/ReadVariableOp2N
%lstm_cell_110/MatMul_1/ReadVariableOp%lstm_cell_110/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
³
æ
1__inference_forward_lstm_17_layer_call_fn_2303299

inputs
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallņ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2300436p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
æ	

2__inference_bidirectional_17_layer_call_fn_2302042
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2300467p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0


ā
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_2301369

inputs
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:	
	unknown_3:

	unknown_4:	
	unknown_5:	
	unknown_6:
identity¢StatefulPartitionedCallĒ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *j
feRc
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_2300817o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ē
¤
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_2301319
lambda_17_input+
bidirectional_17_2301300:	,
bidirectional_17_2301302:
'
bidirectional_17_2301304:	+
bidirectional_17_2301306:	,
bidirectional_17_2301308:
'
bidirectional_17_2301310:	#
dense_17_2301313:	
dense_17_2301315:
identity¢(bidirectional_17/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCallĖ
lambda_17/PartitionedCallPartitionedCalllambda_17_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_lambda_17_layer_call_and_return_conditional_losses_2301184£
(bidirectional_17/StatefulPartitionedCallStatefulPartitionedCall"lambda_17/PartitionedCall:output:0bidirectional_17_2301300bidirectional_17_2301302bidirectional_17_2301304bidirectional_17_2301306bidirectional_17_2301308bidirectional_17_2301310*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2301155”
 dense_17/StatefulPartitionedCallStatefulPartitionedCall1bidirectional_17/StatefulPartitionedCall:output:0dense_17_2301313dense_17_2301315*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_17_layer_call_and_return_conditional_losses_2300810x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
NoOpNoOp)^bidirectional_17/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 2T
(bidirectional_17/StatefulPartitionedCall(bidirectional_17/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall:X T
'
_output_shapes
:’’’’’’’’’
)
_user_specified_namelambda_17_input
Ć	
Ź
%__inference_signature_wrapper_2301348
lambda_17_input
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:	
	unknown_3:

	unknown_4:	
	unknown_5:	
	unknown_6:
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllambda_17_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *+
f&R$
"__inference__wrapped_model_2299066o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:’’’’’’’’’
)
_user_specified_namelambda_17_input
¹$
ó
while_body_2299341
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_109_2299365_0:	1
while_lstm_cell_109_2299367_0:
,
while_lstm_cell_109_2299369_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_109_2299365:	/
while_lstm_cell_109_2299367:
*
while_lstm_cell_109_2299369:	¢+while/lstm_cell_109/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0Ā
+while/lstm_cell_109/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_109_2299365_0while_lstm_cell_109_2299367_0while_lstm_cell_109_2299369_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_lstm_cell_109_layer_call_and_return_conditional_losses_2299281r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:04while/lstm_cell_109/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: 
while/Identity_4Identity4while/lstm_cell_109/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
while/Identity_5Identity4while/lstm_cell_109/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z

while/NoOpNoOp,^while/lstm_cell_109/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_109_2299365while_lstm_cell_109_2299365_0"<
while_lstm_cell_109_2299367while_lstm_cell_109_2299367_0"<
while_lstm_cell_109_2299369while_lstm_cell_109_2299369_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2Z
+while/lstm_cell_109/StatefulPartitionedCall+while/lstm_cell_109/StatefulPartitionedCall: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
śĄ
Ó
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2300786

inputsO
<forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource:	R
>forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource:
L
=forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource:	P
=backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource:	S
?backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource:
M
>backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource:	
identity¢5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp¢4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp¢6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp¢backward_lstm_17/while¢4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp¢3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp¢5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp¢forward_lstm_17/whileK
forward_lstm_17/ShapeShapeinputs*
T0*
_output_shapes
:m
#forward_lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_17/strided_sliceStridedSliceforward_lstm_17/Shape:output:0,forward_lstm_17/strided_slice/stack:output:0.forward_lstm_17/strided_slice/stack_1:output:0.forward_lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
forward_lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :£
forward_lstm_17/zeros/packedPack&forward_lstm_17/strided_slice:output:0'forward_lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_17/zerosFill%forward_lstm_17/zeros/packed:output:0$forward_lstm_17/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
 forward_lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :§
forward_lstm_17/zeros_1/packedPack&forward_lstm_17/strided_slice:output:0)forward_lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
forward_lstm_17/zeros_1Fill'forward_lstm_17/zeros_1/packed:output:0&forward_lstm_17/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
forward_lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm_17/transpose	Transposeinputs'forward_lstm_17/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d
forward_lstm_17/Shape_1Shapeforward_lstm_17/transpose:y:0*
T0*
_output_shapes
:o
%forward_lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
forward_lstm_17/strided_slice_1StridedSlice forward_lstm_17/Shape_1:output:0.forward_lstm_17/strided_slice_1/stack:output:00forward_lstm_17/strided_slice_1/stack_1:output:00forward_lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ä
forward_lstm_17/TensorArrayV2TensorListReserve4forward_lstm_17/TensorArrayV2/element_shape:output:0(forward_lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Eforward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
7forward_lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_17/transpose:y:0Nforward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅo
%forward_lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¹
forward_lstm_17/strided_slice_2StridedSliceforward_lstm_17/transpose:y:0.forward_lstm_17/strided_slice_2/stack:output:00forward_lstm_17/strided_slice_2/stack_1:output:00forward_lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask±
3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOpReadVariableOp<forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Č
$forward_lstm_17/lstm_cell_109/MatMulMatMul(forward_lstm_17/strided_slice_2:output:0;forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¶
5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOp>forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ā
&forward_lstm_17/lstm_cell_109/MatMul_1MatMulforward_lstm_17/zeros:output:0=forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’æ
!forward_lstm_17/lstm_cell_109/addAddV2.forward_lstm_17/lstm_cell_109/MatMul:product:00forward_lstm_17/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOp=forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Č
%forward_lstm_17/lstm_cell_109/BiasAddBiasAdd%forward_lstm_17/lstm_cell_109/add:z:0<forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’o
-forward_lstm_17/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
#forward_lstm_17/lstm_cell_109/splitSplit6forward_lstm_17/lstm_cell_109/split/split_dim:output:0.forward_lstm_17/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
%forward_lstm_17/lstm_cell_109/SigmoidSigmoid,forward_lstm_17/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
'forward_lstm_17/lstm_cell_109/Sigmoid_1Sigmoid,forward_lstm_17/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
!forward_lstm_17/lstm_cell_109/mulMul+forward_lstm_17/lstm_cell_109/Sigmoid_1:y:0 forward_lstm_17/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
"forward_lstm_17/lstm_cell_109/ReluRelu,forward_lstm_17/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ŗ
#forward_lstm_17/lstm_cell_109/mul_1Mul)forward_lstm_17/lstm_cell_109/Sigmoid:y:00forward_lstm_17/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
#forward_lstm_17/lstm_cell_109/add_1AddV2%forward_lstm_17/lstm_cell_109/mul:z:0'forward_lstm_17/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
'forward_lstm_17/lstm_cell_109/Sigmoid_2Sigmoid,forward_lstm_17/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
$forward_lstm_17/lstm_cell_109/Relu_1Relu'forward_lstm_17/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’¾
#forward_lstm_17/lstm_cell_109/mul_2Mul+forward_lstm_17/lstm_cell_109/Sigmoid_2:y:02forward_lstm_17/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’~
-forward_lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   n
,forward_lstm_17/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :õ
forward_lstm_17/TensorArrayV2_1TensorListReserve6forward_lstm_17/TensorArrayV2_1/element_shape:output:05forward_lstm_17/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅV
forward_lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’d
"forward_lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ė
forward_lstm_17/whileWhile+forward_lstm_17/while/loop_counter:output:01forward_lstm_17/while/maximum_iterations:output:0forward_lstm_17/time:output:0(forward_lstm_17/TensorArrayV2_1:handle:0forward_lstm_17/zeros:output:0 forward_lstm_17/zeros_1:output:0(forward_lstm_17/strided_slice_1:output:0Gforward_lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:0<forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource>forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource=forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *.
body&R$
"forward_lstm_17_while_body_2300556*.
cond&R$
"forward_lstm_17_while_cond_2300555*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
@forward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
2forward_lstm_17/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_17/while:output:3Iforward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsx
%forward_lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’q
'forward_lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ų
forward_lstm_17/strided_slice_3StridedSlice;forward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_17/strided_slice_3/stack:output:00forward_lstm_17/strided_slice_3/stack_1:output:00forward_lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_masku
 forward_lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ē
forward_lstm_17/transpose_1	Transpose;forward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_17/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’k
forward_lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    L
backward_lstm_17/ShapeShapeinputs*
T0*
_output_shapes
:n
$backward_lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
backward_lstm_17/strided_sliceStridedSlicebackward_lstm_17/Shape:output:0-backward_lstm_17/strided_slice/stack:output:0/backward_lstm_17/strided_slice/stack_1:output:0/backward_lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
backward_lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :¦
backward_lstm_17/zeros/packedPack'backward_lstm_17/strided_slice:output:0(backward_lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
backward_lstm_17/zerosFill&backward_lstm_17/zeros/packed:output:0%backward_lstm_17/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’d
!backward_lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ŗ
backward_lstm_17/zeros_1/packedPack'backward_lstm_17/strided_slice:output:0*backward_lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¦
backward_lstm_17/zeros_1Fill(backward_lstm_17/zeros_1/packed:output:0'backward_lstm_17/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’t
backward_lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
backward_lstm_17/transpose	Transposeinputs(backward_lstm_17/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’f
backward_lstm_17/Shape_1Shapebackward_lstm_17/transpose:y:0*
T0*
_output_shapes
:p
&backward_lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 backward_lstm_17/strided_slice_1StridedSlice!backward_lstm_17/Shape_1:output:0/backward_lstm_17/strided_slice_1/stack:output:01backward_lstm_17/strided_slice_1/stack_1:output:01backward_lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ē
backward_lstm_17/TensorArrayV2TensorListReserve5backward_lstm_17/TensorArrayV2/element_shape:output:0)backward_lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅi
backward_lstm_17/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: §
backward_lstm_17/ReverseV2	ReverseV2backward_lstm_17/transpose:y:0(backward_lstm_17/ReverseV2/axis:output:0*
T0*+
_output_shapes
:’’’’’’’’’
Fbackward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
8backward_lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_17/ReverseV2:output:0Obackward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅp
&backward_lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¾
 backward_lstm_17/strided_slice_2StridedSlicebackward_lstm_17/transpose:y:0/backward_lstm_17/strided_slice_2/stack:output:01backward_lstm_17/strided_slice_2/stack_1:output:01backward_lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask³
4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOpReadVariableOp=backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ė
%backward_lstm_17/lstm_cell_110/MatMulMatMul)backward_lstm_17/strided_slice_2:output:0<backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ø
6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOp?backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Å
'backward_lstm_17/lstm_cell_110/MatMul_1MatMulbackward_lstm_17/zeros:output:0>backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
"backward_lstm_17/lstm_cell_110/addAddV2/backward_lstm_17/lstm_cell_110/MatMul:product:01backward_lstm_17/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’±
5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOp>backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ė
&backward_lstm_17/lstm_cell_110/BiasAddBiasAdd&backward_lstm_17/lstm_cell_110/add:z:0=backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’p
.backward_lstm_17/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$backward_lstm_17/lstm_cell_110/splitSplit7backward_lstm_17/lstm_cell_110/split/split_dim:output:0/backward_lstm_17/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
&backward_lstm_17/lstm_cell_110/SigmoidSigmoid-backward_lstm_17/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
(backward_lstm_17/lstm_cell_110/Sigmoid_1Sigmoid-backward_lstm_17/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’­
"backward_lstm_17/lstm_cell_110/mulMul,backward_lstm_17/lstm_cell_110/Sigmoid_1:y:0!backward_lstm_17/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
#backward_lstm_17/lstm_cell_110/ReluRelu-backward_lstm_17/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’½
$backward_lstm_17/lstm_cell_110/mul_1Mul*backward_lstm_17/lstm_cell_110/Sigmoid:y:01backward_lstm_17/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’²
$backward_lstm_17/lstm_cell_110/add_1AddV2&backward_lstm_17/lstm_cell_110/mul:z:0(backward_lstm_17/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
(backward_lstm_17/lstm_cell_110/Sigmoid_2Sigmoid-backward_lstm_17/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
%backward_lstm_17/lstm_cell_110/Relu_1Relu(backward_lstm_17/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Į
$backward_lstm_17/lstm_cell_110/mul_2Mul,backward_lstm_17/lstm_cell_110/Sigmoid_2:y:03backward_lstm_17/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
.backward_lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   o
-backward_lstm_17/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ų
 backward_lstm_17/TensorArrayV2_1TensorListReserve7backward_lstm_17/TensorArrayV2_1/element_shape:output:06backward_lstm_17/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅW
backward_lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’e
#backward_lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ł
backward_lstm_17/whileWhile,backward_lstm_17/while/loop_counter:output:02backward_lstm_17/while/maximum_iterations:output:0backward_lstm_17/time:output:0)backward_lstm_17/TensorArrayV2_1:handle:0backward_lstm_17/zeros:output:0!backward_lstm_17/zeros_1:output:0)backward_lstm_17/strided_slice_1:output:0Hbackward_lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:0=backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource?backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource>backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( */
body'R%
#backward_lstm_17_while_body_2300699*/
cond'R%
#backward_lstm_17_while_cond_2300698*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
Abackward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
3backward_lstm_17/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_17/while:output:3Jbackward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsy
&backward_lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’r
(backward_lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ż
 backward_lstm_17/strided_slice_3StridedSlice<backward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_17/strided_slice_3/stack:output:01backward_lstm_17/strided_slice_3/stack_1:output:01backward_lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maskv
!backward_lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ź
backward_lstm_17/transpose_1	Transpose<backward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_17/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’l
backward_lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¹
concatConcatV2(forward_lstm_17/strided_slice_3:output:0)backward_lstm_17/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ä
NoOpNoOp6^backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp5^backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp7^backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp^backward_lstm_17/while5^forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp4^forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp6^forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp^forward_lstm_17/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : 2n
5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp2l
4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp2p
6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp20
backward_lstm_17/whilebackward_lstm_17/while2l
4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp2j
3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp2n
5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp2.
forward_lstm_17/whileforward_lstm_17/while:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
­L
­
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2303589
inputs_0?
,lstm_cell_109_matmul_readvariableop_resource:	B
.lstm_cell_109_matmul_1_readvariableop_resource:
<
-lstm_cell_109_biasadd_readvariableop_resource:	
identity¢$lstm_cell_109/BiasAdd/ReadVariableOp¢#lstm_cell_109/MatMul/ReadVariableOp¢%lstm_cell_109/MatMul_1/ReadVariableOp¢while=
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
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
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
#lstm_cell_109/MatMul/ReadVariableOpReadVariableOp,lstm_cell_109_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_109/MatMulMatMulstrided_slice_2:output:0+lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
%lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_109_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_109/MatMul_1MatMulzeros:output:0-lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/addAddV2lstm_cell_109/MatMul:product:0 lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_109_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_109/BiasAddBiasAddlstm_cell_109/add:z:0,lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’_
lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_109/splitSplit&lstm_cell_109/split/split_dim:output:0lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitq
lstm_cell_109/SigmoidSigmoidlstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_109/Sigmoid_1Sigmoidlstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’z
lstm_cell_109/mulMullstm_cell_109/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell_109/ReluRelulstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/mul_1Mullstm_cell_109/Sigmoid:y:0 lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/add_1AddV2lstm_cell_109/mul:z:0lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_109/Sigmoid_2Sigmoidlstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’h
lstm_cell_109/Relu_1Relulstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/mul_2Mullstm_cell_109/Sigmoid_2:y:0"lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_109_matmul_readvariableop_resource.lstm_cell_109_matmul_1_readvariableop_resource-lstm_cell_109_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2303504*
condR
while_cond_2303503*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
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
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ć
NoOpNoOp%^lstm_cell_109/BiasAdd/ReadVariableOp$^lstm_cell_109/MatMul/ReadVariableOp&^lstm_cell_109/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2L
$lstm_cell_109/BiasAdd/ReadVariableOp$lstm_cell_109/BiasAdd/ReadVariableOp2J
#lstm_cell_109/MatMul/ReadVariableOp#lstm_cell_109/MatMul/ReadVariableOp2N
%lstm_cell_109/MatMul_1/ReadVariableOp%lstm_cell_109/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
¹$
ó
while_body_2299699
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_110_2299723_0:	1
while_lstm_cell_110_2299725_0:
,
while_lstm_cell_110_2299727_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_110_2299723:	/
while_lstm_cell_110_2299725:
*
while_lstm_cell_110_2299727:	¢+while/lstm_cell_110/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0Ā
+while/lstm_cell_110/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_110_2299723_0while_lstm_cell_110_2299725_0while_lstm_cell_110_2299727_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_lstm_cell_110_layer_call_and_return_conditional_losses_2299637r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:04while/lstm_cell_110/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: 
while/Identity_4Identity4while/lstm_cell_110/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
while/Identity_5Identity4while/lstm_cell_110/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z

while/NoOpNoOp,^while/lstm_cell_110/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_110_2299723while_lstm_cell_110_2299723_0"<
while_lstm_cell_110_2299725while_lstm_cell_110_2299725_0"<
while_lstm_cell_110_2299727while_lstm_cell_110_2299727_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2Z
+while/lstm_cell_110/StatefulPartitionedCall+while/lstm_cell_110/StatefulPartitionedCall: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
ķ

J__inference_lstm_cell_109_layer_call_and_return_conditional_losses_2299281

inputs

states
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ŗ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:’’’’’’’’’V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:’’’’’’’’’O
ReluRelusplit:output:2*
T0*(
_output_shapes
:’’’’’’’’’`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:’’’’’’’’’L
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’d
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:PL
(
_output_shapes
:’’’’’’’’’
 
_user_specified_namestates:PL
(
_output_shapes
:’’’’’’’’’
 
_user_specified_namestates
:
Ü
while_body_2299844
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_109_matmul_readvariableop_resource_0:	J
6while_lstm_cell_109_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_109_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_109_matmul_readvariableop_resource:	H
4while_lstm_cell_109_matmul_1_readvariableop_resource:
B
3while_lstm_cell_109_biasadd_readvariableop_resource:	¢*while/lstm_cell_109/BiasAdd/ReadVariableOp¢)while/lstm_cell_109/MatMul/ReadVariableOp¢+while/lstm_cell_109/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
)while/lstm_cell_109/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_109_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_109/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¤
+while/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_109_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_109/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’”
while/lstm_cell_109/addAddV2$while/lstm_cell_109/MatMul:product:0&while/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
*while/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_109_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ŗ
while/lstm_cell_109/BiasAddBiasAddwhile/lstm_cell_109/add:z:02while/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
#while/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_109/splitSplit,while/lstm_cell_109/split/split_dim:output:0$while/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split}
while/lstm_cell_109/SigmoidSigmoid"while/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/Sigmoid_1Sigmoid"while/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/mulMul!while/lstm_cell_109/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell_109/ReluRelu"while/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/mul_1Mulwhile/lstm_cell_109/Sigmoid:y:0&while/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/add_1AddV2while/lstm_cell_109/mul:z:0while/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/Sigmoid_2Sigmoid"while/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’t
while/lstm_cell_109/Relu_1Reluwhile/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ 
while/lstm_cell_109/mul_2Mul!while/lstm_cell_109/Sigmoid_2:y:0(while/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ī
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_109/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: {
while/Identity_4Identitywhile/lstm_cell_109/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’{
while/Identity_5Identitywhile/lstm_cell_109/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ó

while/NoOpNoOp+^while/lstm_cell_109/BiasAdd/ReadVariableOp*^while/lstm_cell_109/MatMul/ReadVariableOp,^while/lstm_cell_109/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_109_biasadd_readvariableop_resource5while_lstm_cell_109_biasadd_readvariableop_resource_0"n
4while_lstm_cell_109_matmul_1_readvariableop_resource6while_lstm_cell_109_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_109_matmul_readvariableop_resource4while_lstm_cell_109_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2X
*while/lstm_cell_109/BiasAdd/ReadVariableOp*while/lstm_cell_109/BiasAdd/ReadVariableOp2V
)while/lstm_cell_109/MatMul/ReadVariableOp)while/lstm_cell_109/MatMul/ReadVariableOp2Z
+while/lstm_cell_109/MatMul_1/ReadVariableOp+while/lstm_cell_109/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
M
Ü
"forward_lstm_17_while_body_2300925<
8forward_lstm_17_while_forward_lstm_17_while_loop_counterB
>forward_lstm_17_while_forward_lstm_17_while_maximum_iterations%
!forward_lstm_17_while_placeholder'
#forward_lstm_17_while_placeholder_1'
#forward_lstm_17_while_placeholder_2'
#forward_lstm_17_while_placeholder_3;
7forward_lstm_17_while_forward_lstm_17_strided_slice_1_0w
sforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0W
Dforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0:	Z
Fforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0:
T
Eforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0:	"
forward_lstm_17_while_identity$
 forward_lstm_17_while_identity_1$
 forward_lstm_17_while_identity_2$
 forward_lstm_17_while_identity_3$
 forward_lstm_17_while_identity_4$
 forward_lstm_17_while_identity_59
5forward_lstm_17_while_forward_lstm_17_strided_slice_1u
qforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensorU
Bforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource:	X
Dforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource:
R
Cforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource:	¢:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp¢9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp¢;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp
Gforward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ö
9forward_lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_17_while_placeholderPforward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0æ
9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOpReadVariableOpDforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ģ
*forward_lstm_17/while/lstm_cell_109/MatMulMatMul@forward_lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:0Aforward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ä
;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOpFforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ó
,forward_lstm_17/while/lstm_cell_109/MatMul_1MatMul#forward_lstm_17_while_placeholder_2Cforward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ń
'forward_lstm_17/while/lstm_cell_109/addAddV24forward_lstm_17/while/lstm_cell_109/MatMul:product:06forward_lstm_17/while/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’½
:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOpEforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ś
+forward_lstm_17/while/lstm_cell_109/BiasAddBiasAdd+forward_lstm_17/while/lstm_cell_109/add:z:0Bforward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’u
3forward_lstm_17/while/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¦
)forward_lstm_17/while/lstm_cell_109/splitSplit<forward_lstm_17/while/lstm_cell_109/split/split_dim:output:04forward_lstm_17/while/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
+forward_lstm_17/while/lstm_cell_109/SigmoidSigmoid2forward_lstm_17/while/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
-forward_lstm_17/while/lstm_cell_109/Sigmoid_1Sigmoid2forward_lstm_17/while/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’¹
'forward_lstm_17/while/lstm_cell_109/mulMul1forward_lstm_17/while/lstm_cell_109/Sigmoid_1:y:0#forward_lstm_17_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
(forward_lstm_17/while/lstm_cell_109/ReluRelu2forward_lstm_17/while/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ģ
)forward_lstm_17/while/lstm_cell_109/mul_1Mul/forward_lstm_17/while/lstm_cell_109/Sigmoid:y:06forward_lstm_17/while/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Į
)forward_lstm_17/while/lstm_cell_109/add_1AddV2+forward_lstm_17/while/lstm_cell_109/mul:z:0-forward_lstm_17/while/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
-forward_lstm_17/while/lstm_cell_109/Sigmoid_2Sigmoid2forward_lstm_17/while/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
*forward_lstm_17/while/lstm_cell_109/Relu_1Relu-forward_lstm_17/while/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Š
)forward_lstm_17/while/lstm_cell_109/mul_2Mul1forward_lstm_17/while/lstm_cell_109/Sigmoid_2:y:08forward_lstm_17/while/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
@forward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ®
:forward_lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_17_while_placeholder_1Iforward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/index:output:0-forward_lstm_17/while/lstm_cell_109/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ]
forward_lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_17/while/addAddV2!forward_lstm_17_while_placeholder$forward_lstm_17/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :§
forward_lstm_17/while/add_1AddV28forward_lstm_17_while_forward_lstm_17_while_loop_counter&forward_lstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_17/while/IdentityIdentityforward_lstm_17/while/add_1:z:0^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: Ŗ
 forward_lstm_17/while/Identity_1Identity>forward_lstm_17_while_forward_lstm_17_while_maximum_iterations^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: 
 forward_lstm_17/while/Identity_2Identityforward_lstm_17/while/add:z:0^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: ¶
 forward_lstm_17/while/Identity_3IdentityJforward_lstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: «
 forward_lstm_17/while/Identity_4Identity-forward_lstm_17/while/lstm_cell_109/mul_2:z:0^forward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’«
 forward_lstm_17/while/Identity_5Identity-forward_lstm_17/while/lstm_cell_109/add_1:z:0^forward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
forward_lstm_17/while/NoOpNoOp;^forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp:^forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp<^forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "p
5forward_lstm_17_while_forward_lstm_17_strided_slice_17forward_lstm_17_while_forward_lstm_17_strided_slice_1_0"I
forward_lstm_17_while_identity'forward_lstm_17/while/Identity:output:0"M
 forward_lstm_17_while_identity_1)forward_lstm_17/while/Identity_1:output:0"M
 forward_lstm_17_while_identity_2)forward_lstm_17/while/Identity_2:output:0"M
 forward_lstm_17_while_identity_3)forward_lstm_17/while/Identity_3:output:0"M
 forward_lstm_17_while_identity_4)forward_lstm_17/while/Identity_4:output:0"M
 forward_lstm_17_while_identity_5)forward_lstm_17/while/Identity_5:output:0"
Cforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resourceEforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0"
Dforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resourceFforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0"
Bforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resourceDforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0"č
qforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensorsforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2x
:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp2v
9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp2z
;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
²N
¬
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2300269

inputs?
,lstm_cell_110_matmul_readvariableop_resource:	B
.lstm_cell_110_matmul_1_readvariableop_resource:
<
-lstm_cell_110_biasadd_readvariableop_resource:	
identity¢$lstm_cell_110/BiasAdd/ReadVariableOp¢#lstm_cell_110/MatMul/ReadVariableOp¢%lstm_cell_110/MatMul_1/ReadVariableOp¢while;
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
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
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’å
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:ņ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
shrink_axis_mask
#lstm_cell_110/MatMul/ReadVariableOpReadVariableOp,lstm_cell_110_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_110/MatMulMatMulstrided_slice_2:output:0+lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
%lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_110_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_110/MatMul_1MatMulzeros:output:0-lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/addAddV2lstm_cell_110/MatMul:product:0 lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_110_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_110/BiasAddBiasAddlstm_cell_110/add:z:0,lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’_
lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_110/splitSplit&lstm_cell_110/split/split_dim:output:0lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitq
lstm_cell_110/SigmoidSigmoidlstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_110/Sigmoid_1Sigmoidlstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’z
lstm_cell_110/mulMullstm_cell_110/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell_110/ReluRelulstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/mul_1Mullstm_cell_110/Sigmoid:y:0 lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/add_1AddV2lstm_cell_110/mul:z:0lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_110/Sigmoid_2Sigmoidlstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’h
lstm_cell_110/Relu_1Relulstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/mul_2Mullstm_cell_110/Sigmoid_2:y:0"lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_110_matmul_readvariableop_resource.lstm_cell_110_matmul_1_readvariableop_resource-lstm_cell_110_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2300184*
condR
while_cond_2300183*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
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
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ć
NoOpNoOp%^lstm_cell_110/BiasAdd/ReadVariableOp$^lstm_cell_110/MatMul/ReadVariableOp&^lstm_cell_110/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2L
$lstm_cell_110/BiasAdd/ReadVariableOp$lstm_cell_110/BiasAdd/ReadVariableOp2J
#lstm_cell_110/MatMul/ReadVariableOp#lstm_cell_110/MatMul/ReadVariableOp2N
%lstm_cell_110/MatMul_1/ReadVariableOp%lstm_cell_110/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
Ģ	
÷
E__inference_dense_17_layer_call_and_return_conditional_losses_2300810

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
¬

a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_2301233

inputs+
bidirectional_17_2301214:	,
bidirectional_17_2301216:
'
bidirectional_17_2301218:	+
bidirectional_17_2301220:	,
bidirectional_17_2301222:
'
bidirectional_17_2301224:	#
dense_17_2301227:	
dense_17_2301229:
identity¢(bidirectional_17/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCallĀ
lambda_17/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_lambda_17_layer_call_and_return_conditional_losses_2301184£
(bidirectional_17/StatefulPartitionedCallStatefulPartitionedCall"lambda_17/PartitionedCall:output:0bidirectional_17_2301214bidirectional_17_2301216bidirectional_17_2301218bidirectional_17_2301220bidirectional_17_2301222bidirectional_17_2301224*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2301155”
 dense_17/StatefulPartitionedCallStatefulPartitionedCall1bidirectional_17/StatefulPartitionedCall:output:0dense_17_2301227dense_17_2301229*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_17_layer_call_and_return_conditional_losses_2300810x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
NoOpNoOp)^bidirectional_17/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 2T
(bidirectional_17/StatefulPartitionedCall(bidirectional_17/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
õ

J__inference_lstm_cell_109_layer_call_and_return_conditional_losses_2304609

inputs
states_0
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ŗ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:’’’’’’’’’V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:’’’’’’’’’O
ReluRelusplit:output:2*
T0*(
_output_shapes
:’’’’’’’’’`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:’’’’’’’’’L
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’d
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/0:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/1


#backward_lstm_17_while_cond_2302568>
:backward_lstm_17_while_backward_lstm_17_while_loop_counterD
@backward_lstm_17_while_backward_lstm_17_while_maximum_iterations&
"backward_lstm_17_while_placeholder(
$backward_lstm_17_while_placeholder_1(
$backward_lstm_17_while_placeholder_2(
$backward_lstm_17_while_placeholder_3@
<backward_lstm_17_while_less_backward_lstm_17_strided_slice_1W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2302568___redundant_placeholder0W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2302568___redundant_placeholder1W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2302568___redundant_placeholder2W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2302568___redundant_placeholder3#
backward_lstm_17_while_identity
¦
backward_lstm_17/while/LessLess"backward_lstm_17_while_placeholder<backward_lstm_17_while_less_backward_lstm_17_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_17/while/IdentityIdentitybackward_lstm_17/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_17_while_identity(backward_lstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
N
ü
#backward_lstm_17_while_body_2300699>
:backward_lstm_17_while_backward_lstm_17_while_loop_counterD
@backward_lstm_17_while_backward_lstm_17_while_maximum_iterations&
"backward_lstm_17_while_placeholder(
$backward_lstm_17_while_placeholder_1(
$backward_lstm_17_while_placeholder_2(
$backward_lstm_17_while_placeholder_3=
9backward_lstm_17_while_backward_lstm_17_strided_slice_1_0y
ubackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0X
Ebackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0:	[
Gbackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0:
U
Fbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0:	#
backward_lstm_17_while_identity%
!backward_lstm_17_while_identity_1%
!backward_lstm_17_while_identity_2%
!backward_lstm_17_while_identity_3%
!backward_lstm_17_while_identity_4%
!backward_lstm_17_while_identity_5;
7backward_lstm_17_while_backward_lstm_17_strided_slice_1w
sbackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensorV
Cbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource:	Y
Ebackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource:
S
Dbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource:	¢;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp¢:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp¢<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp
Hbackward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ū
:backward_lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_17_while_placeholderQbackward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0Į
:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOpReadVariableOpEbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ļ
+backward_lstm_17/while/lstm_cell_110/MatMulMatMulAbackward_lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:0Bbackward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ę
<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOpGbackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ö
-backward_lstm_17/while/lstm_cell_110/MatMul_1MatMul$backward_lstm_17_while_placeholder_2Dbackward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ō
(backward_lstm_17/while/lstm_cell_110/addAddV25backward_lstm_17/while/lstm_cell_110/MatMul:product:07backward_lstm_17/while/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’æ
;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOpFbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ż
,backward_lstm_17/while/lstm_cell_110/BiasAddBiasAdd,backward_lstm_17/while/lstm_cell_110/add:z:0Cbackward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’v
4backward_lstm_17/while/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
*backward_lstm_17/while/lstm_cell_110/splitSplit=backward_lstm_17/while/lstm_cell_110/split/split_dim:output:05backward_lstm_17/while/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
,backward_lstm_17/while/lstm_cell_110/SigmoidSigmoid3backward_lstm_17/while/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’”
.backward_lstm_17/while/lstm_cell_110/Sigmoid_1Sigmoid3backward_lstm_17/while/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’¼
(backward_lstm_17/while/lstm_cell_110/mulMul2backward_lstm_17/while/lstm_cell_110/Sigmoid_1:y:0$backward_lstm_17_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
)backward_lstm_17/while/lstm_cell_110/ReluRelu3backward_lstm_17/while/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ļ
*backward_lstm_17/while/lstm_cell_110/mul_1Mul0backward_lstm_17/while/lstm_cell_110/Sigmoid:y:07backward_lstm_17/while/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Ä
*backward_lstm_17/while/lstm_cell_110/add_1AddV2,backward_lstm_17/while/lstm_cell_110/mul:z:0.backward_lstm_17/while/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’”
.backward_lstm_17/while/lstm_cell_110/Sigmoid_2Sigmoid3backward_lstm_17/while/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
+backward_lstm_17/while/lstm_cell_110/Relu_1Relu.backward_lstm_17/while/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ó
*backward_lstm_17/while/lstm_cell_110/mul_2Mul2backward_lstm_17/while/lstm_cell_110/Sigmoid_2:y:09backward_lstm_17/while/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Abackward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ²
;backward_lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_17_while_placeholder_1Jbackward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/index:output:0.backward_lstm_17/while/lstm_cell_110/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ^
backward_lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_17/while/addAddV2"backward_lstm_17_while_placeholder%backward_lstm_17/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :«
backward_lstm_17/while/add_1AddV2:backward_lstm_17_while_backward_lstm_17_while_loop_counter'backward_lstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_17/while/IdentityIdentity backward_lstm_17/while/add_1:z:0^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: ®
!backward_lstm_17/while/Identity_1Identity@backward_lstm_17_while_backward_lstm_17_while_maximum_iterations^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: 
!backward_lstm_17/while/Identity_2Identitybackward_lstm_17/while/add:z:0^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: ¹
!backward_lstm_17/while/Identity_3IdentityKbackward_lstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: ®
!backward_lstm_17/while/Identity_4Identity.backward_lstm_17/while/lstm_cell_110/mul_2:z:0^backward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’®
!backward_lstm_17/while/Identity_5Identity.backward_lstm_17/while/lstm_cell_110/add_1:z:0^backward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
backward_lstm_17/while/NoOpNoOp<^backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp;^backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp=^backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "t
7backward_lstm_17_while_backward_lstm_17_strided_slice_19backward_lstm_17_while_backward_lstm_17_strided_slice_1_0"K
backward_lstm_17_while_identity(backward_lstm_17/while/Identity:output:0"O
!backward_lstm_17_while_identity_1*backward_lstm_17/while/Identity_1:output:0"O
!backward_lstm_17_while_identity_2*backward_lstm_17/while/Identity_2:output:0"O
!backward_lstm_17_while_identity_3*backward_lstm_17/while/Identity_3:output:0"O
!backward_lstm_17_while_identity_4*backward_lstm_17/while/Identity_4:output:0"O
!backward_lstm_17_while_identity_5*backward_lstm_17/while/Identity_5:output:0"
Dbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resourceFbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0"
Ebackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resourceGbackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0"
Cbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resourceEbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0"ģ
sbackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensorubackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2z
;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp2x
:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp2|
<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
¾
Č
while_cond_2299698
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2299698___redundant_placeholder05
1while_while_cond_2299698___redundant_placeholder15
1while_while_cond_2299698___redundant_placeholder25
1while_while_cond_2299698___redundant_placeholder3
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
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
’

"forward_lstm_17_while_cond_2303005<
8forward_lstm_17_while_forward_lstm_17_while_loop_counterB
>forward_lstm_17_while_forward_lstm_17_while_maximum_iterations%
!forward_lstm_17_while_placeholder'
#forward_lstm_17_while_placeholder_1'
#forward_lstm_17_while_placeholder_2'
#forward_lstm_17_while_placeholder_3>
:forward_lstm_17_while_less_forward_lstm_17_strided_slice_1U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2303005___redundant_placeholder0U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2303005___redundant_placeholder1U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2303005___redundant_placeholder2U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2303005___redundant_placeholder3"
forward_lstm_17_while_identity
¢
forward_lstm_17/while/LessLess!forward_lstm_17_while_placeholder:forward_lstm_17_while_less_forward_lstm_17_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_17/while/IdentityIdentityforward_lstm_17/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_17_while_identity'forward_lstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
ÉL
«
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2303879

inputs?
,lstm_cell_109_matmul_readvariableop_resource:	B
.lstm_cell_109_matmul_1_readvariableop_resource:
<
-lstm_cell_109_biasadd_readvariableop_resource:	
identity¢$lstm_cell_109/BiasAdd/ReadVariableOp¢#lstm_cell_109/MatMul/ReadVariableOp¢%lstm_cell_109/MatMul_1/ReadVariableOp¢while;
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
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
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:ņ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
shrink_axis_mask
#lstm_cell_109/MatMul/ReadVariableOpReadVariableOp,lstm_cell_109_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_109/MatMulMatMulstrided_slice_2:output:0+lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
%lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_109_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_109/MatMul_1MatMulzeros:output:0-lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/addAddV2lstm_cell_109/MatMul:product:0 lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_109_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_109/BiasAddBiasAddlstm_cell_109/add:z:0,lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’_
lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_109/splitSplit&lstm_cell_109/split/split_dim:output:0lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitq
lstm_cell_109/SigmoidSigmoidlstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_109/Sigmoid_1Sigmoidlstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’z
lstm_cell_109/mulMullstm_cell_109/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell_109/ReluRelulstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/mul_1Mullstm_cell_109/Sigmoid:y:0 lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/add_1AddV2lstm_cell_109/mul:z:0lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_109/Sigmoid_2Sigmoidlstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’h
lstm_cell_109/Relu_1Relulstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/mul_2Mullstm_cell_109/Sigmoid_2:y:0"lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_109_matmul_readvariableop_resource.lstm_cell_109_matmul_1_readvariableop_resource-lstm_cell_109_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2303794*
condR
while_cond_2303793*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
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
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ć
NoOpNoOp%^lstm_cell_109/BiasAdd/ReadVariableOp$^lstm_cell_109/MatMul/ReadVariableOp&^lstm_cell_109/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2L
$lstm_cell_109/BiasAdd/ReadVariableOp$lstm_cell_109/BiasAdd/ReadVariableOp2J
#lstm_cell_109/MatMul/ReadVariableOp#lstm_cell_109/MatMul/ReadVariableOp2N
%lstm_cell_109/MatMul_1/ReadVariableOp%lstm_cell_109/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
ī
Ę
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2300094

inputs*
forward_lstm_17_2299930:	+
forward_lstm_17_2299932:
&
forward_lstm_17_2299934:	+
backward_lstm_17_2300084:	,
backward_lstm_17_2300086:
'
backward_lstm_17_2300088:	
identity¢(backward_lstm_17/StatefulPartitionedCall¢'forward_lstm_17/StatefulPartitionedCall®
'forward_lstm_17/StatefulPartitionedCallStatefulPartitionedCallinputsforward_lstm_17_2299930forward_lstm_17_2299932forward_lstm_17_2299934*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2299929³
(backward_lstm_17/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_lstm_17_2300084backward_lstm_17_2300086backward_lstm_17_2300088*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2300083M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :É
concatConcatV20forward_lstm_17/StatefulPartitionedCall:output:01backward_lstm_17/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp)^backward_lstm_17/StatefulPartitionedCall(^forward_lstm_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : : : : 2T
(backward_lstm_17/StatefulPartitionedCall(backward_lstm_17/StatefulPartitionedCall2R
'forward_lstm_17/StatefulPartitionedCall'forward_lstm_17/StatefulPartitionedCall:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
Ü
Ü
3bidirectional_17_forward_lstm_17_while_cond_2301451^
Zbidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_while_loop_counterd
`bidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_while_maximum_iterations6
2bidirectional_17_forward_lstm_17_while_placeholder8
4bidirectional_17_forward_lstm_17_while_placeholder_18
4bidirectional_17_forward_lstm_17_while_placeholder_28
4bidirectional_17_forward_lstm_17_while_placeholder_3`
\bidirectional_17_forward_lstm_17_while_less_bidirectional_17_forward_lstm_17_strided_slice_1w
sbidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_while_cond_2301451___redundant_placeholder0w
sbidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_while_cond_2301451___redundant_placeholder1w
sbidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_while_cond_2301451___redundant_placeholder2w
sbidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_while_cond_2301451___redundant_placeholder33
/bidirectional_17_forward_lstm_17_while_identity
ę
+bidirectional_17/forward_lstm_17/while/LessLess2bidirectional_17_forward_lstm_17_while_placeholder\bidirectional_17_forward_lstm_17_while_less_bidirectional_17_forward_lstm_17_strided_slice_1*
T0*
_output_shapes
: 
/bidirectional_17/forward_lstm_17/while/IdentityIdentity/bidirectional_17/forward_lstm_17/while/Less:z:0*
T0
*
_output_shapes
: "k
/bidirectional_17_forward_lstm_17_while_identity8bidirectional_17/forward_lstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
M
Ü
"forward_lstm_17_while_body_2302426<
8forward_lstm_17_while_forward_lstm_17_while_loop_counterB
>forward_lstm_17_while_forward_lstm_17_while_maximum_iterations%
!forward_lstm_17_while_placeholder'
#forward_lstm_17_while_placeholder_1'
#forward_lstm_17_while_placeholder_2'
#forward_lstm_17_while_placeholder_3;
7forward_lstm_17_while_forward_lstm_17_strided_slice_1_0w
sforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0W
Dforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0:	Z
Fforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0:
T
Eforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0:	"
forward_lstm_17_while_identity$
 forward_lstm_17_while_identity_1$
 forward_lstm_17_while_identity_2$
 forward_lstm_17_while_identity_3$
 forward_lstm_17_while_identity_4$
 forward_lstm_17_while_identity_59
5forward_lstm_17_while_forward_lstm_17_strided_slice_1u
qforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensorU
Bforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource:	X
Dforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource:
R
Cforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource:	¢:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp¢9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp¢;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp
Gforward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’’
9forward_lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_17_while_placeholderPforward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0æ
9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOpReadVariableOpDforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ģ
*forward_lstm_17/while/lstm_cell_109/MatMulMatMul@forward_lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:0Aforward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ä
;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOpFforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ó
,forward_lstm_17/while/lstm_cell_109/MatMul_1MatMul#forward_lstm_17_while_placeholder_2Cforward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ń
'forward_lstm_17/while/lstm_cell_109/addAddV24forward_lstm_17/while/lstm_cell_109/MatMul:product:06forward_lstm_17/while/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’½
:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOpEforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ś
+forward_lstm_17/while/lstm_cell_109/BiasAddBiasAdd+forward_lstm_17/while/lstm_cell_109/add:z:0Bforward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’u
3forward_lstm_17/while/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¦
)forward_lstm_17/while/lstm_cell_109/splitSplit<forward_lstm_17/while/lstm_cell_109/split/split_dim:output:04forward_lstm_17/while/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
+forward_lstm_17/while/lstm_cell_109/SigmoidSigmoid2forward_lstm_17/while/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
-forward_lstm_17/while/lstm_cell_109/Sigmoid_1Sigmoid2forward_lstm_17/while/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’¹
'forward_lstm_17/while/lstm_cell_109/mulMul1forward_lstm_17/while/lstm_cell_109/Sigmoid_1:y:0#forward_lstm_17_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
(forward_lstm_17/while/lstm_cell_109/ReluRelu2forward_lstm_17/while/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ģ
)forward_lstm_17/while/lstm_cell_109/mul_1Mul/forward_lstm_17/while/lstm_cell_109/Sigmoid:y:06forward_lstm_17/while/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Į
)forward_lstm_17/while/lstm_cell_109/add_1AddV2+forward_lstm_17/while/lstm_cell_109/mul:z:0-forward_lstm_17/while/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
-forward_lstm_17/while/lstm_cell_109/Sigmoid_2Sigmoid2forward_lstm_17/while/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
*forward_lstm_17/while/lstm_cell_109/Relu_1Relu-forward_lstm_17/while/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Š
)forward_lstm_17/while/lstm_cell_109/mul_2Mul1forward_lstm_17/while/lstm_cell_109/Sigmoid_2:y:08forward_lstm_17/while/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
@forward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ®
:forward_lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_17_while_placeholder_1Iforward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/index:output:0-forward_lstm_17/while/lstm_cell_109/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ]
forward_lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_17/while/addAddV2!forward_lstm_17_while_placeholder$forward_lstm_17/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :§
forward_lstm_17/while/add_1AddV28forward_lstm_17_while_forward_lstm_17_while_loop_counter&forward_lstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_17/while/IdentityIdentityforward_lstm_17/while/add_1:z:0^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: Ŗ
 forward_lstm_17/while/Identity_1Identity>forward_lstm_17_while_forward_lstm_17_while_maximum_iterations^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: 
 forward_lstm_17/while/Identity_2Identityforward_lstm_17/while/add:z:0^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: ¶
 forward_lstm_17/while/Identity_3IdentityJforward_lstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: «
 forward_lstm_17/while/Identity_4Identity-forward_lstm_17/while/lstm_cell_109/mul_2:z:0^forward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’«
 forward_lstm_17/while/Identity_5Identity-forward_lstm_17/while/lstm_cell_109/add_1:z:0^forward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
forward_lstm_17/while/NoOpNoOp;^forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp:^forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp<^forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "p
5forward_lstm_17_while_forward_lstm_17_strided_slice_17forward_lstm_17_while_forward_lstm_17_strided_slice_1_0"I
forward_lstm_17_while_identity'forward_lstm_17/while/Identity:output:0"M
 forward_lstm_17_while_identity_1)forward_lstm_17/while/Identity_1:output:0"M
 forward_lstm_17_while_identity_2)forward_lstm_17/while/Identity_2:output:0"M
 forward_lstm_17_while_identity_3)forward_lstm_17/while/Identity_3:output:0"M
 forward_lstm_17_while_identity_4)forward_lstm_17/while/Identity_4:output:0"M
 forward_lstm_17_while_identity_5)forward_lstm_17/while/Identity_5:output:0"
Cforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resourceEforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0"
Dforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resourceFforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0"
Bforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resourceDforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0"č
qforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensorsforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2x
:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp2v
9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp2z
;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
a

3bidirectional_17_forward_lstm_17_while_body_2301750^
Zbidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_while_loop_counterd
`bidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_while_maximum_iterations6
2bidirectional_17_forward_lstm_17_while_placeholder8
4bidirectional_17_forward_lstm_17_while_placeholder_18
4bidirectional_17_forward_lstm_17_while_placeholder_28
4bidirectional_17_forward_lstm_17_while_placeholder_3]
Ybidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_strided_slice_1_0
bidirectional_17_forward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_bidirectional_17_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0h
Ubidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0:	k
Wbidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0:
e
Vbidirectional_17_forward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0:	3
/bidirectional_17_forward_lstm_17_while_identity5
1bidirectional_17_forward_lstm_17_while_identity_15
1bidirectional_17_forward_lstm_17_while_identity_25
1bidirectional_17_forward_lstm_17_while_identity_35
1bidirectional_17_forward_lstm_17_while_identity_45
1bidirectional_17_forward_lstm_17_while_identity_5[
Wbidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_strided_slice_1
bidirectional_17_forward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_bidirectional_17_forward_lstm_17_tensorarrayunstack_tensorlistfromtensorf
Sbidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource:	i
Ubidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource:
c
Tbidirectional_17_forward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource:	¢Kbidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp¢Jbidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp¢Lbidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp©
Xbidirectional_17/forward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ģ
Jbidirectional_17/forward_lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_17_forward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_bidirectional_17_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_02bidirectional_17_forward_lstm_17_while_placeholderabidirectional_17/forward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0į
Jbidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOpReadVariableOpUbidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0
;bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMulMatMulQbidirectional_17/forward_lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:0Rbidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ę
Lbidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOpWbidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
=bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1MatMul4bidirectional_17_forward_lstm_17_while_placeholder_2Tbidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
8bidirectional_17/forward_lstm_17/while/lstm_cell_109/addAddV2Ebidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul:product:0Gbidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’ß
Kbidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOpVbidirectional_17_forward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
<bidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAddBiasAdd<bidirectional_17/forward_lstm_17/while/lstm_cell_109/add:z:0Sbidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
Dbidirectional_17/forward_lstm_17/while/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ł
:bidirectional_17/forward_lstm_17/while/lstm_cell_109/splitSplitMbidirectional_17/forward_lstm_17/while/lstm_cell_109/split/split_dim:output:0Ebidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitæ
<bidirectional_17/forward_lstm_17/while/lstm_cell_109/SigmoidSigmoidCbidirectional_17/forward_lstm_17/while/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’Į
>bidirectional_17/forward_lstm_17/while/lstm_cell_109/Sigmoid_1SigmoidCbidirectional_17/forward_lstm_17/while/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’ģ
8bidirectional_17/forward_lstm_17/while/lstm_cell_109/mulMulBbidirectional_17/forward_lstm_17/while/lstm_cell_109/Sigmoid_1:y:04bidirectional_17_forward_lstm_17_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’¹
9bidirectional_17/forward_lstm_17/while/lstm_cell_109/ReluReluCbidirectional_17/forward_lstm_17/while/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’’
:bidirectional_17/forward_lstm_17/while/lstm_cell_109/mul_1Mul@bidirectional_17/forward_lstm_17/while/lstm_cell_109/Sigmoid:y:0Gbidirectional_17/forward_lstm_17/while/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’ō
:bidirectional_17/forward_lstm_17/while/lstm_cell_109/add_1AddV2<bidirectional_17/forward_lstm_17/while/lstm_cell_109/mul:z:0>bidirectional_17/forward_lstm_17/while/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Į
>bidirectional_17/forward_lstm_17/while/lstm_cell_109/Sigmoid_2SigmoidCbidirectional_17/forward_lstm_17/while/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’¶
;bidirectional_17/forward_lstm_17/while/lstm_cell_109/Relu_1Relu>bidirectional_17/forward_lstm_17/while/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
:bidirectional_17/forward_lstm_17/while/lstm_cell_109/mul_2MulBbidirectional_17/forward_lstm_17/while/lstm_cell_109/Sigmoid_2:y:0Ibidirectional_17/forward_lstm_17/while/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Qbidirectional_17/forward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ņ
Kbidirectional_17/forward_lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem4bidirectional_17_forward_lstm_17_while_placeholder_1Zbidirectional_17/forward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/index:output:0>bidirectional_17/forward_lstm_17/while/lstm_cell_109/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅn
,bidirectional_17/forward_lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :æ
*bidirectional_17/forward_lstm_17/while/addAddV22bidirectional_17_forward_lstm_17_while_placeholder5bidirectional_17/forward_lstm_17/while/add/y:output:0*
T0*
_output_shapes
: p
.bidirectional_17/forward_lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ė
,bidirectional_17/forward_lstm_17/while/add_1AddV2Zbidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_while_loop_counter7bidirectional_17/forward_lstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: ¼
/bidirectional_17/forward_lstm_17/while/IdentityIdentity0bidirectional_17/forward_lstm_17/while/add_1:z:0,^bidirectional_17/forward_lstm_17/while/NoOp*
T0*
_output_shapes
: ī
1bidirectional_17/forward_lstm_17/while/Identity_1Identity`bidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_while_maximum_iterations,^bidirectional_17/forward_lstm_17/while/NoOp*
T0*
_output_shapes
: ¼
1bidirectional_17/forward_lstm_17/while/Identity_2Identity.bidirectional_17/forward_lstm_17/while/add:z:0,^bidirectional_17/forward_lstm_17/while/NoOp*
T0*
_output_shapes
: é
1bidirectional_17/forward_lstm_17/while/Identity_3Identity[bidirectional_17/forward_lstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^bidirectional_17/forward_lstm_17/while/NoOp*
T0*
_output_shapes
: Ž
1bidirectional_17/forward_lstm_17/while/Identity_4Identity>bidirectional_17/forward_lstm_17/while/lstm_cell_109/mul_2:z:0,^bidirectional_17/forward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ž
1bidirectional_17/forward_lstm_17/while/Identity_5Identity>bidirectional_17/forward_lstm_17/while/lstm_cell_109/add_1:z:0,^bidirectional_17/forward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’×
+bidirectional_17/forward_lstm_17/while/NoOpNoOpL^bidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOpK^bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOpM^bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "“
Wbidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_strided_slice_1Ybidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_strided_slice_1_0"k
/bidirectional_17_forward_lstm_17_while_identity8bidirectional_17/forward_lstm_17/while/Identity:output:0"o
1bidirectional_17_forward_lstm_17_while_identity_1:bidirectional_17/forward_lstm_17/while/Identity_1:output:0"o
1bidirectional_17_forward_lstm_17_while_identity_2:bidirectional_17/forward_lstm_17/while/Identity_2:output:0"o
1bidirectional_17_forward_lstm_17_while_identity_3:bidirectional_17/forward_lstm_17/while/Identity_3:output:0"o
1bidirectional_17_forward_lstm_17_while_identity_4:bidirectional_17/forward_lstm_17/while/Identity_4:output:0"o
1bidirectional_17_forward_lstm_17_while_identity_5:bidirectional_17/forward_lstm_17/while/Identity_5:output:0"®
Tbidirectional_17_forward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resourceVbidirectional_17_forward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0"°
Ubidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resourceWbidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0"¬
Sbidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resourceUbidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0"®
bidirectional_17_forward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_bidirectional_17_forward_lstm_17_tensorarrayunstack_tensorlistfromtensorbidirectional_17_forward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_bidirectional_17_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2
Kbidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOpKbidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp2
Jbidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOpJbidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp2
Lbidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOpLbidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
a

3bidirectional_17_forward_lstm_17_while_body_2301452^
Zbidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_while_loop_counterd
`bidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_while_maximum_iterations6
2bidirectional_17_forward_lstm_17_while_placeholder8
4bidirectional_17_forward_lstm_17_while_placeholder_18
4bidirectional_17_forward_lstm_17_while_placeholder_28
4bidirectional_17_forward_lstm_17_while_placeholder_3]
Ybidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_strided_slice_1_0
bidirectional_17_forward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_bidirectional_17_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0h
Ubidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0:	k
Wbidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0:
e
Vbidirectional_17_forward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0:	3
/bidirectional_17_forward_lstm_17_while_identity5
1bidirectional_17_forward_lstm_17_while_identity_15
1bidirectional_17_forward_lstm_17_while_identity_25
1bidirectional_17_forward_lstm_17_while_identity_35
1bidirectional_17_forward_lstm_17_while_identity_45
1bidirectional_17_forward_lstm_17_while_identity_5[
Wbidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_strided_slice_1
bidirectional_17_forward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_bidirectional_17_forward_lstm_17_tensorarrayunstack_tensorlistfromtensorf
Sbidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource:	i
Ubidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource:
c
Tbidirectional_17_forward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource:	¢Kbidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp¢Jbidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp¢Lbidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp©
Xbidirectional_17/forward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ģ
Jbidirectional_17/forward_lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_17_forward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_bidirectional_17_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_02bidirectional_17_forward_lstm_17_while_placeholderabidirectional_17/forward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0į
Jbidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOpReadVariableOpUbidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0
;bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMulMatMulQbidirectional_17/forward_lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:0Rbidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ę
Lbidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOpWbidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
=bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1MatMul4bidirectional_17_forward_lstm_17_while_placeholder_2Tbidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
8bidirectional_17/forward_lstm_17/while/lstm_cell_109/addAddV2Ebidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul:product:0Gbidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’ß
Kbidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOpVbidirectional_17_forward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
<bidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAddBiasAdd<bidirectional_17/forward_lstm_17/while/lstm_cell_109/add:z:0Sbidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
Dbidirectional_17/forward_lstm_17/while/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ł
:bidirectional_17/forward_lstm_17/while/lstm_cell_109/splitSplitMbidirectional_17/forward_lstm_17/while/lstm_cell_109/split/split_dim:output:0Ebidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitæ
<bidirectional_17/forward_lstm_17/while/lstm_cell_109/SigmoidSigmoidCbidirectional_17/forward_lstm_17/while/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’Į
>bidirectional_17/forward_lstm_17/while/lstm_cell_109/Sigmoid_1SigmoidCbidirectional_17/forward_lstm_17/while/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’ģ
8bidirectional_17/forward_lstm_17/while/lstm_cell_109/mulMulBbidirectional_17/forward_lstm_17/while/lstm_cell_109/Sigmoid_1:y:04bidirectional_17_forward_lstm_17_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’¹
9bidirectional_17/forward_lstm_17/while/lstm_cell_109/ReluReluCbidirectional_17/forward_lstm_17/while/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’’
:bidirectional_17/forward_lstm_17/while/lstm_cell_109/mul_1Mul@bidirectional_17/forward_lstm_17/while/lstm_cell_109/Sigmoid:y:0Gbidirectional_17/forward_lstm_17/while/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’ō
:bidirectional_17/forward_lstm_17/while/lstm_cell_109/add_1AddV2<bidirectional_17/forward_lstm_17/while/lstm_cell_109/mul:z:0>bidirectional_17/forward_lstm_17/while/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Į
>bidirectional_17/forward_lstm_17/while/lstm_cell_109/Sigmoid_2SigmoidCbidirectional_17/forward_lstm_17/while/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’¶
;bidirectional_17/forward_lstm_17/while/lstm_cell_109/Relu_1Relu>bidirectional_17/forward_lstm_17/while/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
:bidirectional_17/forward_lstm_17/while/lstm_cell_109/mul_2MulBbidirectional_17/forward_lstm_17/while/lstm_cell_109/Sigmoid_2:y:0Ibidirectional_17/forward_lstm_17/while/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Qbidirectional_17/forward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ņ
Kbidirectional_17/forward_lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem4bidirectional_17_forward_lstm_17_while_placeholder_1Zbidirectional_17/forward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/index:output:0>bidirectional_17/forward_lstm_17/while/lstm_cell_109/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅn
,bidirectional_17/forward_lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :æ
*bidirectional_17/forward_lstm_17/while/addAddV22bidirectional_17_forward_lstm_17_while_placeholder5bidirectional_17/forward_lstm_17/while/add/y:output:0*
T0*
_output_shapes
: p
.bidirectional_17/forward_lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ė
,bidirectional_17/forward_lstm_17/while/add_1AddV2Zbidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_while_loop_counter7bidirectional_17/forward_lstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: ¼
/bidirectional_17/forward_lstm_17/while/IdentityIdentity0bidirectional_17/forward_lstm_17/while/add_1:z:0,^bidirectional_17/forward_lstm_17/while/NoOp*
T0*
_output_shapes
: ī
1bidirectional_17/forward_lstm_17/while/Identity_1Identity`bidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_while_maximum_iterations,^bidirectional_17/forward_lstm_17/while/NoOp*
T0*
_output_shapes
: ¼
1bidirectional_17/forward_lstm_17/while/Identity_2Identity.bidirectional_17/forward_lstm_17/while/add:z:0,^bidirectional_17/forward_lstm_17/while/NoOp*
T0*
_output_shapes
: é
1bidirectional_17/forward_lstm_17/while/Identity_3Identity[bidirectional_17/forward_lstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^bidirectional_17/forward_lstm_17/while/NoOp*
T0*
_output_shapes
: Ž
1bidirectional_17/forward_lstm_17/while/Identity_4Identity>bidirectional_17/forward_lstm_17/while/lstm_cell_109/mul_2:z:0,^bidirectional_17/forward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ž
1bidirectional_17/forward_lstm_17/while/Identity_5Identity>bidirectional_17/forward_lstm_17/while/lstm_cell_109/add_1:z:0,^bidirectional_17/forward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’×
+bidirectional_17/forward_lstm_17/while/NoOpNoOpL^bidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOpK^bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOpM^bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "“
Wbidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_strided_slice_1Ybidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_strided_slice_1_0"k
/bidirectional_17_forward_lstm_17_while_identity8bidirectional_17/forward_lstm_17/while/Identity:output:0"o
1bidirectional_17_forward_lstm_17_while_identity_1:bidirectional_17/forward_lstm_17/while/Identity_1:output:0"o
1bidirectional_17_forward_lstm_17_while_identity_2:bidirectional_17/forward_lstm_17/while/Identity_2:output:0"o
1bidirectional_17_forward_lstm_17_while_identity_3:bidirectional_17/forward_lstm_17/while/Identity_3:output:0"o
1bidirectional_17_forward_lstm_17_while_identity_4:bidirectional_17/forward_lstm_17/while/Identity_4:output:0"o
1bidirectional_17_forward_lstm_17_while_identity_5:bidirectional_17/forward_lstm_17/while/Identity_5:output:0"®
Tbidirectional_17_forward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resourceVbidirectional_17_forward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0"°
Ubidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resourceWbidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0"¬
Sbidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resourceUbidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0"®
bidirectional_17_forward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_bidirectional_17_forward_lstm_17_tensorarrayunstack_tensorlistfromtensorbidirectional_17_forward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_bidirectional_17_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2
Kbidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOpKbidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp2
Jbidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOpJbidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp2
Lbidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOpLbidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
Ó
b
F__inference_lambda_17_layer_call_and_return_conditional_losses_2300495

inputs
identityY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:’’’’’’’’’:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ēM
č
 __inference__traced_save_2304823
file_prefix.
*savev2_dense_17_kernel_read_readvariableop,
(savev2_dense_17_bias_read_readvariableopT
Psavev2_bidirectional_17_forward_lstm_17_lstm_cell_109_kernel_read_readvariableop^
Zsavev2_bidirectional_17_forward_lstm_17_lstm_cell_109_recurrent_kernel_read_readvariableopR
Nsavev2_bidirectional_17_forward_lstm_17_lstm_cell_109_bias_read_readvariableopU
Qsavev2_bidirectional_17_backward_lstm_17_lstm_cell_110_kernel_read_readvariableop_
[savev2_bidirectional_17_backward_lstm_17_lstm_cell_110_recurrent_kernel_read_readvariableopS
Osavev2_bidirectional_17_backward_lstm_17_lstm_cell_110_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_17_kernel_m_read_readvariableop3
/savev2_adam_dense_17_bias_m_read_readvariableop[
Wsavev2_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_kernel_m_read_readvariableope
asavev2_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_recurrent_kernel_m_read_readvariableopY
Usavev2_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_bias_m_read_readvariableop\
Xsavev2_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_kernel_m_read_readvariableopf
bsavev2_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_recurrent_kernel_m_read_readvariableopZ
Vsavev2_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_bias_m_read_readvariableop5
1savev2_adam_dense_17_kernel_v_read_readvariableop3
/savev2_adam_dense_17_bias_v_read_readvariableop[
Wsavev2_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_kernel_v_read_readvariableope
asavev2_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_recurrent_kernel_v_read_readvariableopY
Usavev2_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_bias_v_read_readvariableop\
Xsavev2_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_kernel_v_read_readvariableopf
bsavev2_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_recurrent_kernel_v_read_readvariableopZ
Vsavev2_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_bias_v_read_readvariableop
savev2_const

identity_1¢MergeV2Checkpointsw
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
: µ
SaveV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ž
valueŌBŃ B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH­
SaveV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Ī
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_17_kernel_read_readvariableop(savev2_dense_17_bias_read_readvariableopPsavev2_bidirectional_17_forward_lstm_17_lstm_cell_109_kernel_read_readvariableopZsavev2_bidirectional_17_forward_lstm_17_lstm_cell_109_recurrent_kernel_read_readvariableopNsavev2_bidirectional_17_forward_lstm_17_lstm_cell_109_bias_read_readvariableopQsavev2_bidirectional_17_backward_lstm_17_lstm_cell_110_kernel_read_readvariableop[savev2_bidirectional_17_backward_lstm_17_lstm_cell_110_recurrent_kernel_read_readvariableopOsavev2_bidirectional_17_backward_lstm_17_lstm_cell_110_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_17_kernel_m_read_readvariableop/savev2_adam_dense_17_bias_m_read_readvariableopWsavev2_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_kernel_m_read_readvariableopasavev2_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_recurrent_kernel_m_read_readvariableopUsavev2_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_bias_m_read_readvariableopXsavev2_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_kernel_m_read_readvariableopbsavev2_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_recurrent_kernel_m_read_readvariableopVsavev2_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_bias_m_read_readvariableop1savev2_adam_dense_17_kernel_v_read_readvariableop/savev2_adam_dense_17_bias_v_read_readvariableopWsavev2_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_kernel_v_read_readvariableopasavev2_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_recurrent_kernel_v_read_readvariableopUsavev2_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_bias_v_read_readvariableopXsavev2_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_kernel_v_read_readvariableopbsavev2_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_recurrent_kernel_v_read_readvariableopVsavev2_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
_output_shapes
 *.
dtypes$
"2 	
&MergeV2Checkpoints/checkpoint_prefixesPackShardedFilename:filename:0^SaveV2"/device:CPU:0*
N*
T0*
_output_shapes
:
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

identity_1Identity_1:output:0*
_input_shapesü
ł: :	::	:
::	:
:: : : : : : : :	::	:
::	:
::	::	:
::	:
:: 2(
MergeV2CheckpointsMergeV2Checkpoints:C ?

_output_shapes
: 
%
_user_specified_namefile_prefix:%!

_output_shapes
:	: 

_output_shapes
::%!

_output_shapes
:	:&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	:&"
 
_output_shapes
:
:!

_output_shapes	
::	

_output_shapes
: :


_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :

_output_shapes
: :%!

_output_shapes
:	: 

_output_shapes
::%!

_output_shapes
:	:&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	:&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	: 

_output_shapes
::%!

_output_shapes
:	:&"
 
_output_shapes
:
:!

_output_shapes	
::%!

_output_shapes
:	:&"
 
_output_shapes
:
:!

_output_shapes	
:: 

_output_shapes
: 
	

2__inference_bidirectional_17_layer_call_fn_2302076

inputs
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2301155p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ķ

J__inference_lstm_cell_109_layer_call_and_return_conditional_losses_2299133

inputs

states
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ŗ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:’’’’’’’’’V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:’’’’’’’’’O
ReluRelusplit:output:2*
T0*(
_output_shapes
:’’’’’’’’’`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:’’’’’’’’’L
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’d
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:PL
(
_output_shapes
:’’’’’’’’’
 
_user_specified_namestates:PL
(
_output_shapes
:’’’’’’’’’
 
_user_specified_namestates
ö

a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_2301986

inputs`
Mbidirectional_17_forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource:	c
Obidirectional_17_forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource:
]
Nbidirectional_17_forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource:	a
Nbidirectional_17_backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource:	d
Pbidirectional_17_backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource:
^
Obidirectional_17_backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource:	:
'dense_17_matmul_readvariableop_resource:	6
(dense_17_biasadd_readvariableop_resource:
identity¢Fbidirectional_17/backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp¢Ebidirectional_17/backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp¢Gbidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp¢'bidirectional_17/backward_lstm_17/while¢Ebidirectional_17/forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp¢Dbidirectional_17/forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp¢Fbidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp¢&bidirectional_17/forward_lstm_17/while¢dense_17/BiasAdd/ReadVariableOp¢dense_17/MatMul/ReadVariableOpc
lambda_17/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
lambda_17/ExpandDims
ExpandDimsinputs!lambda_17/ExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’s
&bidirectional_17/forward_lstm_17/ShapeShapelambda_17/ExpandDims:output:0*
T0*
_output_shapes
:~
4bidirectional_17/forward_lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6bidirectional_17/forward_lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6bidirectional_17/forward_lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ö
.bidirectional_17/forward_lstm_17/strided_sliceStridedSlice/bidirectional_17/forward_lstm_17/Shape:output:0=bidirectional_17/forward_lstm_17/strided_slice/stack:output:0?bidirectional_17/forward_lstm_17/strided_slice/stack_1:output:0?bidirectional_17/forward_lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
/bidirectional_17/forward_lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ö
-bidirectional_17/forward_lstm_17/zeros/packedPack7bidirectional_17/forward_lstm_17/strided_slice:output:08bidirectional_17/forward_lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:q
,bidirectional_17/forward_lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Š
&bidirectional_17/forward_lstm_17/zerosFill6bidirectional_17/forward_lstm_17/zeros/packed:output:05bidirectional_17/forward_lstm_17/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’t
1bidirectional_17/forward_lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ś
/bidirectional_17/forward_lstm_17/zeros_1/packedPack7bidirectional_17/forward_lstm_17/strided_slice:output:0:bidirectional_17/forward_lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:s
.bidirectional_17/forward_lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ö
(bidirectional_17/forward_lstm_17/zeros_1Fill8bidirectional_17/forward_lstm_17/zeros_1/packed:output:07bidirectional_17/forward_lstm_17/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’
/bidirectional_17/forward_lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ę
*bidirectional_17/forward_lstm_17/transpose	Transposelambda_17/ExpandDims:output:08bidirectional_17/forward_lstm_17/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’
(bidirectional_17/forward_lstm_17/Shape_1Shape.bidirectional_17/forward_lstm_17/transpose:y:0*
T0*
_output_shapes
:
6bidirectional_17/forward_lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8bidirectional_17/forward_lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8bidirectional_17/forward_lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
0bidirectional_17/forward_lstm_17/strided_slice_1StridedSlice1bidirectional_17/forward_lstm_17/Shape_1:output:0?bidirectional_17/forward_lstm_17/strided_slice_1/stack:output:0Abidirectional_17/forward_lstm_17/strided_slice_1/stack_1:output:0Abidirectional_17/forward_lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
<bidirectional_17/forward_lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
.bidirectional_17/forward_lstm_17/TensorArrayV2TensorListReserveEbidirectional_17/forward_lstm_17/TensorArrayV2/element_shape:output:09bidirectional_17/forward_lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ§
Vbidirectional_17/forward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ć
Hbidirectional_17/forward_lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor.bidirectional_17/forward_lstm_17/transpose:y:0_bidirectional_17/forward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
6bidirectional_17/forward_lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8bidirectional_17/forward_lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8bidirectional_17/forward_lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
0bidirectional_17/forward_lstm_17/strided_slice_2StridedSlice.bidirectional_17/forward_lstm_17/transpose:y:0?bidirectional_17/forward_lstm_17/strided_slice_2/stack:output:0Abidirectional_17/forward_lstm_17/strided_slice_2/stack_1:output:0Abidirectional_17/forward_lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_maskÓ
Dbidirectional_17/forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOpReadVariableOpMbidirectional_17_forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ū
5bidirectional_17/forward_lstm_17/lstm_cell_109/MatMulMatMul9bidirectional_17/forward_lstm_17/strided_slice_2:output:0Lbidirectional_17/forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ų
Fbidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOpObidirectional_17_forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0õ
7bidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1MatMul/bidirectional_17/forward_lstm_17/zeros:output:0Nbidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ņ
2bidirectional_17/forward_lstm_17/lstm_cell_109/addAddV2?bidirectional_17/forward_lstm_17/lstm_cell_109/MatMul:product:0Abidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Ń
Ebidirectional_17/forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOpNbidirectional_17_forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ū
6bidirectional_17/forward_lstm_17/lstm_cell_109/BiasAddBiasAdd6bidirectional_17/forward_lstm_17/lstm_cell_109/add:z:0Mbidirectional_17/forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
>bidirectional_17/forward_lstm_17/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ē
4bidirectional_17/forward_lstm_17/lstm_cell_109/splitSplitGbidirectional_17/forward_lstm_17/lstm_cell_109/split/split_dim:output:0?bidirectional_17/forward_lstm_17/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split³
6bidirectional_17/forward_lstm_17/lstm_cell_109/SigmoidSigmoid=bidirectional_17/forward_lstm_17/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’µ
8bidirectional_17/forward_lstm_17/lstm_cell_109/Sigmoid_1Sigmoid=bidirectional_17/forward_lstm_17/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ż
2bidirectional_17/forward_lstm_17/lstm_cell_109/mulMul<bidirectional_17/forward_lstm_17/lstm_cell_109/Sigmoid_1:y:01bidirectional_17/forward_lstm_17/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’­
3bidirectional_17/forward_lstm_17/lstm_cell_109/ReluRelu=bidirectional_17/forward_lstm_17/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ķ
4bidirectional_17/forward_lstm_17/lstm_cell_109/mul_1Mul:bidirectional_17/forward_lstm_17/lstm_cell_109/Sigmoid:y:0Abidirectional_17/forward_lstm_17/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’ā
4bidirectional_17/forward_lstm_17/lstm_cell_109/add_1AddV26bidirectional_17/forward_lstm_17/lstm_cell_109/mul:z:08bidirectional_17/forward_lstm_17/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’µ
8bidirectional_17/forward_lstm_17/lstm_cell_109/Sigmoid_2Sigmoid=bidirectional_17/forward_lstm_17/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
5bidirectional_17/forward_lstm_17/lstm_cell_109/Relu_1Relu8bidirectional_17/forward_lstm_17/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ń
4bidirectional_17/forward_lstm_17/lstm_cell_109/mul_2Mul<bidirectional_17/forward_lstm_17/lstm_cell_109/Sigmoid_2:y:0Cbidirectional_17/forward_lstm_17/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
>bidirectional_17/forward_lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
=bidirectional_17/forward_lstm_17/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ø
0bidirectional_17/forward_lstm_17/TensorArrayV2_1TensorListReserveGbidirectional_17/forward_lstm_17/TensorArrayV2_1/element_shape:output:0Fbidirectional_17/forward_lstm_17/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅg
%bidirectional_17/forward_lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : 
9bidirectional_17/forward_lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’u
3bidirectional_17/forward_lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ł	
&bidirectional_17/forward_lstm_17/whileWhile<bidirectional_17/forward_lstm_17/while/loop_counter:output:0Bbidirectional_17/forward_lstm_17/while/maximum_iterations:output:0.bidirectional_17/forward_lstm_17/time:output:09bidirectional_17/forward_lstm_17/TensorArrayV2_1:handle:0/bidirectional_17/forward_lstm_17/zeros:output:01bidirectional_17/forward_lstm_17/zeros_1:output:09bidirectional_17/forward_lstm_17/strided_slice_1:output:0Xbidirectional_17/forward_lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:0Mbidirectional_17_forward_lstm_17_lstm_cell_109_matmul_readvariableop_resourceObidirectional_17_forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resourceNbidirectional_17_forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *?
body7R5
3bidirectional_17_forward_lstm_17_while_body_2301750*?
cond7R5
3bidirectional_17_forward_lstm_17_while_cond_2301749*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations ¢
Qbidirectional_17/forward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ŗ
Cbidirectional_17/forward_lstm_17/TensorArrayV2Stack/TensorListStackTensorListStack/bidirectional_17/forward_lstm_17/while:output:3Zbidirectional_17/forward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elements
6bidirectional_17/forward_lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
8bidirectional_17/forward_lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
8bidirectional_17/forward_lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:­
0bidirectional_17/forward_lstm_17/strided_slice_3StridedSliceLbidirectional_17/forward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0?bidirectional_17/forward_lstm_17/strided_slice_3/stack:output:0Abidirectional_17/forward_lstm_17/strided_slice_3/stack_1:output:0Abidirectional_17/forward_lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
1bidirectional_17/forward_lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ś
,bidirectional_17/forward_lstm_17/transpose_1	TransposeLbidirectional_17/forward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0:bidirectional_17/forward_lstm_17/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’|
(bidirectional_17/forward_lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
'bidirectional_17/backward_lstm_17/ShapeShapelambda_17/ExpandDims:output:0*
T0*
_output_shapes
:
5bidirectional_17/backward_lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
7bidirectional_17/backward_lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7bidirectional_17/backward_lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ū
/bidirectional_17/backward_lstm_17/strided_sliceStridedSlice0bidirectional_17/backward_lstm_17/Shape:output:0>bidirectional_17/backward_lstm_17/strided_slice/stack:output:0@bidirectional_17/backward_lstm_17/strided_slice/stack_1:output:0@bidirectional_17/backward_lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
0bidirectional_17/backward_lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ł
.bidirectional_17/backward_lstm_17/zeros/packedPack8bidirectional_17/backward_lstm_17/strided_slice:output:09bidirectional_17/backward_lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:r
-bidirectional_17/backward_lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ó
'bidirectional_17/backward_lstm_17/zerosFill7bidirectional_17/backward_lstm_17/zeros/packed:output:06bidirectional_17/backward_lstm_17/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’u
2bidirectional_17/backward_lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ż
0bidirectional_17/backward_lstm_17/zeros_1/packedPack8bidirectional_17/backward_lstm_17/strided_slice:output:0;bidirectional_17/backward_lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:t
/bidirectional_17/backward_lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ł
)bidirectional_17/backward_lstm_17/zeros_1Fill9bidirectional_17/backward_lstm_17/zeros_1/packed:output:08bidirectional_17/backward_lstm_17/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’
0bidirectional_17/backward_lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Č
+bidirectional_17/backward_lstm_17/transpose	Transposelambda_17/ExpandDims:output:09bidirectional_17/backward_lstm_17/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’
)bidirectional_17/backward_lstm_17/Shape_1Shape/bidirectional_17/backward_lstm_17/transpose:y:0*
T0*
_output_shapes
:
7bidirectional_17/backward_lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9bidirectional_17/backward_lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9bidirectional_17/backward_lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1bidirectional_17/backward_lstm_17/strided_slice_1StridedSlice2bidirectional_17/backward_lstm_17/Shape_1:output:0@bidirectional_17/backward_lstm_17/strided_slice_1/stack:output:0Bbidirectional_17/backward_lstm_17/strided_slice_1/stack_1:output:0Bbidirectional_17/backward_lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
=bidirectional_17/backward_lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
/bidirectional_17/backward_lstm_17/TensorArrayV2TensorListReserveFbidirectional_17/backward_lstm_17/TensorArrayV2/element_shape:output:0:bidirectional_17/backward_lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅz
0bidirectional_17/backward_lstm_17/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Ś
+bidirectional_17/backward_lstm_17/ReverseV2	ReverseV2/bidirectional_17/backward_lstm_17/transpose:y:09bidirectional_17/backward_lstm_17/ReverseV2/axis:output:0*
T0*+
_output_shapes
:’’’’’’’’’Ø
Wbidirectional_17/backward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ė
Ibidirectional_17/backward_lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor4bidirectional_17/backward_lstm_17/ReverseV2:output:0`bidirectional_17/backward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
7bidirectional_17/backward_lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9bidirectional_17/backward_lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9bidirectional_17/backward_lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1bidirectional_17/backward_lstm_17/strided_slice_2StridedSlice/bidirectional_17/backward_lstm_17/transpose:y:0@bidirectional_17/backward_lstm_17/strided_slice_2/stack:output:0Bbidirectional_17/backward_lstm_17/strided_slice_2/stack_1:output:0Bbidirectional_17/backward_lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_maskÕ
Ebidirectional_17/backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOpReadVariableOpNbidirectional_17_backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ž
6bidirectional_17/backward_lstm_17/lstm_cell_110/MatMulMatMul:bidirectional_17/backward_lstm_17/strided_slice_2:output:0Mbidirectional_17/backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ś
Gbidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOpPbidirectional_17_backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0ų
8bidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1MatMul0bidirectional_17/backward_lstm_17/zeros:output:0Obidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’õ
3bidirectional_17/backward_lstm_17/lstm_cell_110/addAddV2@bidirectional_17/backward_lstm_17/lstm_cell_110/MatMul:product:0Bbidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Ó
Fbidirectional_17/backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOpObidirectional_17_backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ž
7bidirectional_17/backward_lstm_17/lstm_cell_110/BiasAddBiasAdd7bidirectional_17/backward_lstm_17/lstm_cell_110/add:z:0Nbidirectional_17/backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
?bidirectional_17/backward_lstm_17/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ź
5bidirectional_17/backward_lstm_17/lstm_cell_110/splitSplitHbidirectional_17/backward_lstm_17/lstm_cell_110/split/split_dim:output:0@bidirectional_17/backward_lstm_17/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitµ
7bidirectional_17/backward_lstm_17/lstm_cell_110/SigmoidSigmoid>bidirectional_17/backward_lstm_17/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’·
9bidirectional_17/backward_lstm_17/lstm_cell_110/Sigmoid_1Sigmoid>bidirectional_17/backward_lstm_17/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’ą
3bidirectional_17/backward_lstm_17/lstm_cell_110/mulMul=bidirectional_17/backward_lstm_17/lstm_cell_110/Sigmoid_1:y:02bidirectional_17/backward_lstm_17/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
4bidirectional_17/backward_lstm_17/lstm_cell_110/ReluRelu>bidirectional_17/backward_lstm_17/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’š
5bidirectional_17/backward_lstm_17/lstm_cell_110/mul_1Mul;bidirectional_17/backward_lstm_17/lstm_cell_110/Sigmoid:y:0Bbidirectional_17/backward_lstm_17/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’å
5bidirectional_17/backward_lstm_17/lstm_cell_110/add_1AddV27bidirectional_17/backward_lstm_17/lstm_cell_110/mul:z:09bidirectional_17/backward_lstm_17/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’·
9bidirectional_17/backward_lstm_17/lstm_cell_110/Sigmoid_2Sigmoid>bidirectional_17/backward_lstm_17/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’¬
6bidirectional_17/backward_lstm_17/lstm_cell_110/Relu_1Relu9bidirectional_17/backward_lstm_17/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ō
5bidirectional_17/backward_lstm_17/lstm_cell_110/mul_2Mul=bidirectional_17/backward_lstm_17/lstm_cell_110/Sigmoid_2:y:0Dbidirectional_17/backward_lstm_17/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
?bidirectional_17/backward_lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
>bidirectional_17/backward_lstm_17/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :«
1bidirectional_17/backward_lstm_17/TensorArrayV2_1TensorListReserveHbidirectional_17/backward_lstm_17/TensorArrayV2_1/element_shape:output:0Gbidirectional_17/backward_lstm_17/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅh
&bidirectional_17/backward_lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : 
:bidirectional_17/backward_lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’v
4bidirectional_17/backward_lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ē	
'bidirectional_17/backward_lstm_17/whileWhile=bidirectional_17/backward_lstm_17/while/loop_counter:output:0Cbidirectional_17/backward_lstm_17/while/maximum_iterations:output:0/bidirectional_17/backward_lstm_17/time:output:0:bidirectional_17/backward_lstm_17/TensorArrayV2_1:handle:00bidirectional_17/backward_lstm_17/zeros:output:02bidirectional_17/backward_lstm_17/zeros_1:output:0:bidirectional_17/backward_lstm_17/strided_slice_1:output:0Ybidirectional_17/backward_lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:0Nbidirectional_17_backward_lstm_17_lstm_cell_110_matmul_readvariableop_resourcePbidirectional_17_backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resourceObidirectional_17_backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *@
body8R6
4bidirectional_17_backward_lstm_17_while_body_2301893*@
cond8R6
4bidirectional_17_backward_lstm_17_while_cond_2301892*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations £
Rbidirectional_17/backward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ½
Dbidirectional_17/backward_lstm_17/TensorArrayV2Stack/TensorListStackTensorListStack0bidirectional_17/backward_lstm_17/while:output:3[bidirectional_17/backward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elements
7bidirectional_17/backward_lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
9bidirectional_17/backward_lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
9bidirectional_17/backward_lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:²
1bidirectional_17/backward_lstm_17/strided_slice_3StridedSliceMbidirectional_17/backward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0@bidirectional_17/backward_lstm_17/strided_slice_3/stack:output:0Bbidirectional_17/backward_lstm_17/strided_slice_3/stack_1:output:0Bbidirectional_17/backward_lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
2bidirectional_17/backward_lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ż
-bidirectional_17/backward_lstm_17/transpose_1	TransposeMbidirectional_17/backward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0;bidirectional_17/backward_lstm_17/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’}
)bidirectional_17/backward_lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ^
bidirectional_17/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ż
bidirectional_17/concatConcatV29bidirectional_17/forward_lstm_17/strided_slice_3:output:0:bidirectional_17/backward_lstm_17/strided_slice_3:output:0%bidirectional_17/concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’
dense_17/MatMul/ReadVariableOpReadVariableOp'dense_17_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_17/MatMulMatMul bidirectional_17/concat:output:0&dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
dense_17/BiasAdd/ReadVariableOpReadVariableOp(dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_17/BiasAddBiasAdddense_17/MatMul:product:0'dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’h
IdentityIdentitydense_17/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
NoOpNoOpG^bidirectional_17/backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOpF^bidirectional_17/backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOpH^bidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp(^bidirectional_17/backward_lstm_17/whileF^bidirectional_17/forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOpE^bidirectional_17/forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOpG^bidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp'^bidirectional_17/forward_lstm_17/while ^dense_17/BiasAdd/ReadVariableOp^dense_17/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 2
Fbidirectional_17/backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOpFbidirectional_17/backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp2
Ebidirectional_17/backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOpEbidirectional_17/backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp2
Gbidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOpGbidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp2R
'bidirectional_17/backward_lstm_17/while'bidirectional_17/backward_lstm_17/while2
Ebidirectional_17/forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOpEbidirectional_17/forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp2
Dbidirectional_17/forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOpDbidirectional_17/forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp2
Fbidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOpFbidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp2P
&bidirectional_17/forward_lstm_17/while&bidirectional_17/forward_lstm_17/while2B
dense_17/BiasAdd/ReadVariableOpdense_17/BiasAdd/ReadVariableOp2@
dense_17/MatMul/ReadVariableOpdense_17/MatMul/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
¾
Č
while_cond_2304278
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2304278___redundant_placeholder05
1while_while_cond_2304278___redundant_placeholder15
1while_while_cond_2304278___redundant_placeholder25
1while_while_cond_2304278___redundant_placeholder3
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
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
Ź

*__inference_dense_17_layer_call_fn_2303245

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallŻ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_17_layer_call_and_return_conditional_losses_2300810o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 22
StatefulPartitionedCallStatefulPartitionedCall:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
³
æ
1__inference_forward_lstm_17_layer_call_fn_2303288

inputs
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallņ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2299929p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
­L
­
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2303444
inputs_0?
,lstm_cell_109_matmul_readvariableop_resource:	B
.lstm_cell_109_matmul_1_readvariableop_resource:
<
-lstm_cell_109_biasadd_readvariableop_resource:	
identity¢$lstm_cell_109/BiasAdd/ReadVariableOp¢#lstm_cell_109/MatMul/ReadVariableOp¢%lstm_cell_109/MatMul_1/ReadVariableOp¢while=
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
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
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
#lstm_cell_109/MatMul/ReadVariableOpReadVariableOp,lstm_cell_109_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_109/MatMulMatMulstrided_slice_2:output:0+lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
%lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_109_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_109/MatMul_1MatMulzeros:output:0-lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/addAddV2lstm_cell_109/MatMul:product:0 lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_109_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_109/BiasAddBiasAddlstm_cell_109/add:z:0,lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’_
lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_109/splitSplit&lstm_cell_109/split/split_dim:output:0lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitq
lstm_cell_109/SigmoidSigmoidlstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_109/Sigmoid_1Sigmoidlstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’z
lstm_cell_109/mulMullstm_cell_109/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell_109/ReluRelulstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/mul_1Mullstm_cell_109/Sigmoid:y:0 lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/add_1AddV2lstm_cell_109/mul:z:0lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_109/Sigmoid_2Sigmoidlstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’h
lstm_cell_109/Relu_1Relulstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/mul_2Mullstm_cell_109/Sigmoid_2:y:0"lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_109_matmul_readvariableop_resource.lstm_cell_109_matmul_1_readvariableop_resource-lstm_cell_109_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2303359*
condR
while_cond_2303358*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
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
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ć
NoOpNoOp%^lstm_cell_109/BiasAdd/ReadVariableOp$^lstm_cell_109/MatMul/ReadVariableOp&^lstm_cell_109/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2L
$lstm_cell_109/BiasAdd/ReadVariableOp$lstm_cell_109/BiasAdd/ReadVariableOp2J
#lstm_cell_109/MatMul/ReadVariableOp#lstm_cell_109/MatMul/ReadVariableOp2N
%lstm_cell_109/MatMul_1/ReadVariableOp%lstm_cell_109/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
N
ü
#backward_lstm_17_while_body_2302859>
:backward_lstm_17_while_backward_lstm_17_while_loop_counterD
@backward_lstm_17_while_backward_lstm_17_while_maximum_iterations&
"backward_lstm_17_while_placeholder(
$backward_lstm_17_while_placeholder_1(
$backward_lstm_17_while_placeholder_2(
$backward_lstm_17_while_placeholder_3=
9backward_lstm_17_while_backward_lstm_17_strided_slice_1_0y
ubackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0X
Ebackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0:	[
Gbackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0:
U
Fbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0:	#
backward_lstm_17_while_identity%
!backward_lstm_17_while_identity_1%
!backward_lstm_17_while_identity_2%
!backward_lstm_17_while_identity_3%
!backward_lstm_17_while_identity_4%
!backward_lstm_17_while_identity_5;
7backward_lstm_17_while_backward_lstm_17_strided_slice_1w
sbackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensorV
Cbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource:	Y
Ebackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource:
S
Dbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource:	¢;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp¢:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp¢<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp
Hbackward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ū
:backward_lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_17_while_placeholderQbackward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0Į
:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOpReadVariableOpEbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ļ
+backward_lstm_17/while/lstm_cell_110/MatMulMatMulAbackward_lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:0Bbackward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ę
<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOpGbackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ö
-backward_lstm_17/while/lstm_cell_110/MatMul_1MatMul$backward_lstm_17_while_placeholder_2Dbackward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ō
(backward_lstm_17/while/lstm_cell_110/addAddV25backward_lstm_17/while/lstm_cell_110/MatMul:product:07backward_lstm_17/while/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’æ
;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOpFbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ż
,backward_lstm_17/while/lstm_cell_110/BiasAddBiasAdd,backward_lstm_17/while/lstm_cell_110/add:z:0Cbackward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’v
4backward_lstm_17/while/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
*backward_lstm_17/while/lstm_cell_110/splitSplit=backward_lstm_17/while/lstm_cell_110/split/split_dim:output:05backward_lstm_17/while/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
,backward_lstm_17/while/lstm_cell_110/SigmoidSigmoid3backward_lstm_17/while/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’”
.backward_lstm_17/while/lstm_cell_110/Sigmoid_1Sigmoid3backward_lstm_17/while/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’¼
(backward_lstm_17/while/lstm_cell_110/mulMul2backward_lstm_17/while/lstm_cell_110/Sigmoid_1:y:0$backward_lstm_17_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
)backward_lstm_17/while/lstm_cell_110/ReluRelu3backward_lstm_17/while/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ļ
*backward_lstm_17/while/lstm_cell_110/mul_1Mul0backward_lstm_17/while/lstm_cell_110/Sigmoid:y:07backward_lstm_17/while/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Ä
*backward_lstm_17/while/lstm_cell_110/add_1AddV2,backward_lstm_17/while/lstm_cell_110/mul:z:0.backward_lstm_17/while/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’”
.backward_lstm_17/while/lstm_cell_110/Sigmoid_2Sigmoid3backward_lstm_17/while/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
+backward_lstm_17/while/lstm_cell_110/Relu_1Relu.backward_lstm_17/while/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ó
*backward_lstm_17/while/lstm_cell_110/mul_2Mul2backward_lstm_17/while/lstm_cell_110/Sigmoid_2:y:09backward_lstm_17/while/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Abackward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ²
;backward_lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_17_while_placeholder_1Jbackward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/index:output:0.backward_lstm_17/while/lstm_cell_110/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ^
backward_lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_17/while/addAddV2"backward_lstm_17_while_placeholder%backward_lstm_17/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :«
backward_lstm_17/while/add_1AddV2:backward_lstm_17_while_backward_lstm_17_while_loop_counter'backward_lstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_17/while/IdentityIdentity backward_lstm_17/while/add_1:z:0^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: ®
!backward_lstm_17/while/Identity_1Identity@backward_lstm_17_while_backward_lstm_17_while_maximum_iterations^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: 
!backward_lstm_17/while/Identity_2Identitybackward_lstm_17/while/add:z:0^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: ¹
!backward_lstm_17/while/Identity_3IdentityKbackward_lstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: ®
!backward_lstm_17/while/Identity_4Identity.backward_lstm_17/while/lstm_cell_110/mul_2:z:0^backward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’®
!backward_lstm_17/while/Identity_5Identity.backward_lstm_17/while/lstm_cell_110/add_1:z:0^backward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
backward_lstm_17/while/NoOpNoOp<^backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp;^backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp=^backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "t
7backward_lstm_17_while_backward_lstm_17_strided_slice_19backward_lstm_17_while_backward_lstm_17_strided_slice_1_0"K
backward_lstm_17_while_identity(backward_lstm_17/while/Identity:output:0"O
!backward_lstm_17_while_identity_1*backward_lstm_17/while/Identity_1:output:0"O
!backward_lstm_17_while_identity_2*backward_lstm_17/while/Identity_2:output:0"O
!backward_lstm_17_while_identity_3*backward_lstm_17/while/Identity_3:output:0"O
!backward_lstm_17_while_identity_4*backward_lstm_17/while/Identity_4:output:0"O
!backward_lstm_17_while_identity_5*backward_lstm_17/while/Identity_5:output:0"
Dbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resourceFbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0"
Ebackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resourceGbackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0"
Cbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resourceEbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0"ģ
sbackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensorubackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2z
;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp2x
:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp2|
<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
æ	

2__inference_bidirectional_17_layer_call_fn_2302025
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2300094p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:g c
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0

®
Xmodel_9_bidirectionalLSTM_univariate_bidirectional_17_forward_lstm_17_while_body_2298830©
¤model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_loop_counterÆ
Ŗmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_maximum_iterations[
Wmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_placeholder]
Ymodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_placeholder_1]
Ymodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_placeholder_2]
Ymodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_placeholder_3Ø
£model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_strided_slice_1_0ä
ßmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0
zmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0:	
|model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0:

{model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0:	X
Tmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_identityZ
Vmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_identity_1Z
Vmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_identity_2Z
Vmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_identity_3Z
Vmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_identity_4Z
Vmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_identity_5¦
”model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_strided_slice_1ā
Żmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor
xmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource:	
zmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource:

ymodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource:	¢pmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp¢omodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp¢qmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOpĪ
}model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
omodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemßmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0Wmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_placeholdermodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0«
omodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOpReadVariableOpzmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0
`model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMulMatMulvmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:0wmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’°
qmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOp|model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0õ
bmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1MatMulYmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_placeholder_2ymodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ó
]model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/addAddV2jmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul:product:0lmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’©
pmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOp{model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ü
amodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAddBiasAddamodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/add:z:0xmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’«
imodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Č
_model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/splitSplitrmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/split/split_dim:output:0jmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
amodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/SigmoidSigmoidhmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
cmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/Sigmoid_1Sigmoidhmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ū
]model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/mulMulgmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/Sigmoid_1:y:0Ymodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
^model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/ReluReluhmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ī
_model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/mul_1Mulemodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/Sigmoid:y:0lmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’ć
_model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/add_1AddV2amodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/mul:z:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
cmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/Sigmoid_2Sigmoidhmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
`model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/Relu_1Relucmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ņ
_model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/mul_2Mulgmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/Sigmoid_2:y:0nmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’ø
vmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
pmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemYmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_placeholder_1model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/index:output:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :®
Omodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/addAddV2Wmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_placeholderZmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/add/y:output:0*
T0*
_output_shapes
: 
Smodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/add_1AddV2¤model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_loop_counter\model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: «
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/IdentityIdentityUmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/add_1:z:0Q^model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/NoOp*
T0*
_output_shapes
: 
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/Identity_1IdentityŖmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_maximum_iterationsQ^model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/NoOp*
T0*
_output_shapes
: «
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/Identity_2IdentitySmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/add:z:0Q^model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/NoOp*
T0*
_output_shapes
: Ł
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/Identity_3Identitymodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0Q^model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/NoOp*
T0*
_output_shapes
: Ķ
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/Identity_4Identitycmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/mul_2:z:0Q^model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ķ
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/Identity_5Identitycmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/add_1:z:0Q^model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’ė
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/NoOpNoOpq^model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOpp^model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOpr^model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "µ
Tmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_identity]model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/Identity:output:0"¹
Vmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_identity_1_model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/Identity_1:output:0"¹
Vmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_identity_2_model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/Identity_2:output:0"¹
Vmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_identity_3_model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/Identity_3:output:0"¹
Vmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_identity_4_model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/Identity_4:output:0"¹
Vmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_identity_5_model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/Identity_5:output:0"ų
ymodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource{model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0"ś
zmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource|model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0"ö
xmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resourcezmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0"Ź
”model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_strided_slice_1£model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_strided_slice_1_0"Ā
Żmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_tensorarrayunstack_tensorlistfromtensorßmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2ä
pmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOppmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp2ā
omodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOpomodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp2ę
qmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOpqmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
Ó
b
F__inference_lambda_17_layer_call_and_return_conditional_losses_2302002

inputs
identityY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:’’’’’’’’’:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ż
ł
/__inference_lstm_cell_110_layer_call_fn_2304643

inputs
states_0
states_1
unknown:	
	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_lstm_cell_110_layer_call_and_return_conditional_losses_2299637p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:’’’’’’’’’r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/0:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/1
:
Ü
while_body_2304279
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_110_matmul_readvariableop_resource_0:	J
6while_lstm_cell_110_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_110_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_110_matmul_readvariableop_resource:	H
4while_lstm_cell_110_matmul_1_readvariableop_resource:
B
3while_lstm_cell_110_biasadd_readvariableop_resource:	¢*while/lstm_cell_110/BiasAdd/ReadVariableOp¢)while/lstm_cell_110/MatMul/ReadVariableOp¢+while/lstm_cell_110/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
)while/lstm_cell_110/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_110_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_110/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¤
+while/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_110_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_110/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’”
while/lstm_cell_110/addAddV2$while/lstm_cell_110/MatMul:product:0&while/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
*while/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_110_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ŗ
while/lstm_cell_110/BiasAddBiasAddwhile/lstm_cell_110/add:z:02while/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
#while/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_110/splitSplit,while/lstm_cell_110/split/split_dim:output:0$while/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split}
while/lstm_cell_110/SigmoidSigmoid"while/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/Sigmoid_1Sigmoid"while/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/mulMul!while/lstm_cell_110/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell_110/ReluRelu"while/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/mul_1Mulwhile/lstm_cell_110/Sigmoid:y:0&while/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/add_1AddV2while/lstm_cell_110/mul:z:0while/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/Sigmoid_2Sigmoid"while/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’t
while/lstm_cell_110/Relu_1Reluwhile/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ 
while/lstm_cell_110/mul_2Mul!while/lstm_cell_110/Sigmoid_2:y:0(while/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ī
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_110/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: {
while/Identity_4Identitywhile/lstm_cell_110/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’{
while/Identity_5Identitywhile/lstm_cell_110/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ó

while/NoOpNoOp+^while/lstm_cell_110/BiasAdd/ReadVariableOp*^while/lstm_cell_110/MatMul/ReadVariableOp,^while/lstm_cell_110/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_110_biasadd_readvariableop_resource5while_lstm_cell_110_biasadd_readvariableop_resource_0"n
4while_lstm_cell_110_matmul_1_readvariableop_resource6while_lstm_cell_110_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_110_matmul_readvariableop_resource4while_lstm_cell_110_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2X
*while/lstm_cell_110/BiasAdd/ReadVariableOp*while/lstm_cell_110/BiasAdd/ReadVariableOp2V
)while/lstm_cell_110/MatMul/ReadVariableOp)while/lstm_cell_110/MatMul/ReadVariableOp2Z
+while/lstm_cell_110/MatMul_1/ReadVariableOp+while/lstm_cell_110/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
Ē
¤
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_2301296
lambda_17_input+
bidirectional_17_2301277:	,
bidirectional_17_2301279:
'
bidirectional_17_2301281:	+
bidirectional_17_2301283:	,
bidirectional_17_2301285:
'
bidirectional_17_2301287:	#
dense_17_2301290:	
dense_17_2301292:
identity¢(bidirectional_17/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCallĖ
lambda_17/PartitionedCallPartitionedCalllambda_17_input*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_lambda_17_layer_call_and_return_conditional_losses_2300495£
(bidirectional_17/StatefulPartitionedCallStatefulPartitionedCall"lambda_17/PartitionedCall:output:0bidirectional_17_2301277bidirectional_17_2301279bidirectional_17_2301281bidirectional_17_2301283bidirectional_17_2301285bidirectional_17_2301287*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2300786”
 dense_17/StatefulPartitionedCallStatefulPartitionedCall1bidirectional_17/StatefulPartitionedCall:output:0dense_17_2301290dense_17_2301292*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_17_layer_call_and_return_conditional_losses_2300810x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
NoOpNoOp)^bidirectional_17/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 2T
(bidirectional_17/StatefulPartitionedCall(bidirectional_17/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall:X T
'
_output_shapes
:’’’’’’’’’
)
_user_specified_namelambda_17_input
¾
Č
while_cond_2303984
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2303984___redundant_placeholder05
1while_while_cond_2303984___redundant_placeholder15
1while_while_cond_2303984___redundant_placeholder25
1while_while_cond_2303984___redundant_placeholder3
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
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
¾
Č
while_cond_2299340
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2299340___redundant_placeholder05
1while_while_cond_2299340___redundant_placeholder15
1while_while_cond_2299340___redundant_placeholder25
1while_while_cond_2299340___redundant_placeholder3
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
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
M
Ü
"forward_lstm_17_while_body_2302136<
8forward_lstm_17_while_forward_lstm_17_while_loop_counterB
>forward_lstm_17_while_forward_lstm_17_while_maximum_iterations%
!forward_lstm_17_while_placeholder'
#forward_lstm_17_while_placeholder_1'
#forward_lstm_17_while_placeholder_2'
#forward_lstm_17_while_placeholder_3;
7forward_lstm_17_while_forward_lstm_17_strided_slice_1_0w
sforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0W
Dforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0:	Z
Fforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0:
T
Eforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0:	"
forward_lstm_17_while_identity$
 forward_lstm_17_while_identity_1$
 forward_lstm_17_while_identity_2$
 forward_lstm_17_while_identity_3$
 forward_lstm_17_while_identity_4$
 forward_lstm_17_while_identity_59
5forward_lstm_17_while_forward_lstm_17_strided_slice_1u
qforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensorU
Bforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource:	X
Dforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource:
R
Cforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource:	¢:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp¢9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp¢;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp
Gforward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’’
9forward_lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_17_while_placeholderPforward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0æ
9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOpReadVariableOpDforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ģ
*forward_lstm_17/while/lstm_cell_109/MatMulMatMul@forward_lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:0Aforward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ä
;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOpFforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ó
,forward_lstm_17/while/lstm_cell_109/MatMul_1MatMul#forward_lstm_17_while_placeholder_2Cforward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ń
'forward_lstm_17/while/lstm_cell_109/addAddV24forward_lstm_17/while/lstm_cell_109/MatMul:product:06forward_lstm_17/while/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’½
:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOpEforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ś
+forward_lstm_17/while/lstm_cell_109/BiasAddBiasAdd+forward_lstm_17/while/lstm_cell_109/add:z:0Bforward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’u
3forward_lstm_17/while/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¦
)forward_lstm_17/while/lstm_cell_109/splitSplit<forward_lstm_17/while/lstm_cell_109/split/split_dim:output:04forward_lstm_17/while/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
+forward_lstm_17/while/lstm_cell_109/SigmoidSigmoid2forward_lstm_17/while/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
-forward_lstm_17/while/lstm_cell_109/Sigmoid_1Sigmoid2forward_lstm_17/while/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’¹
'forward_lstm_17/while/lstm_cell_109/mulMul1forward_lstm_17/while/lstm_cell_109/Sigmoid_1:y:0#forward_lstm_17_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
(forward_lstm_17/while/lstm_cell_109/ReluRelu2forward_lstm_17/while/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ģ
)forward_lstm_17/while/lstm_cell_109/mul_1Mul/forward_lstm_17/while/lstm_cell_109/Sigmoid:y:06forward_lstm_17/while/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Į
)forward_lstm_17/while/lstm_cell_109/add_1AddV2+forward_lstm_17/while/lstm_cell_109/mul:z:0-forward_lstm_17/while/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
-forward_lstm_17/while/lstm_cell_109/Sigmoid_2Sigmoid2forward_lstm_17/while/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
*forward_lstm_17/while/lstm_cell_109/Relu_1Relu-forward_lstm_17/while/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Š
)forward_lstm_17/while/lstm_cell_109/mul_2Mul1forward_lstm_17/while/lstm_cell_109/Sigmoid_2:y:08forward_lstm_17/while/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
@forward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ®
:forward_lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_17_while_placeholder_1Iforward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/index:output:0-forward_lstm_17/while/lstm_cell_109/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ]
forward_lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_17/while/addAddV2!forward_lstm_17_while_placeholder$forward_lstm_17/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :§
forward_lstm_17/while/add_1AddV28forward_lstm_17_while_forward_lstm_17_while_loop_counter&forward_lstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_17/while/IdentityIdentityforward_lstm_17/while/add_1:z:0^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: Ŗ
 forward_lstm_17/while/Identity_1Identity>forward_lstm_17_while_forward_lstm_17_while_maximum_iterations^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: 
 forward_lstm_17/while/Identity_2Identityforward_lstm_17/while/add:z:0^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: ¶
 forward_lstm_17/while/Identity_3IdentityJforward_lstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: «
 forward_lstm_17/while/Identity_4Identity-forward_lstm_17/while/lstm_cell_109/mul_2:z:0^forward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’«
 forward_lstm_17/while/Identity_5Identity-forward_lstm_17/while/lstm_cell_109/add_1:z:0^forward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
forward_lstm_17/while/NoOpNoOp;^forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp:^forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp<^forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "p
5forward_lstm_17_while_forward_lstm_17_strided_slice_17forward_lstm_17_while_forward_lstm_17_strided_slice_1_0"I
forward_lstm_17_while_identity'forward_lstm_17/while/Identity:output:0"M
 forward_lstm_17_while_identity_1)forward_lstm_17/while/Identity_1:output:0"M
 forward_lstm_17_while_identity_2)forward_lstm_17/while/Identity_2:output:0"M
 forward_lstm_17_while_identity_3)forward_lstm_17/while/Identity_3:output:0"M
 forward_lstm_17_while_identity_4)forward_lstm_17/while/Identity_4:output:0"M
 forward_lstm_17_while_identity_5)forward_lstm_17/while/Identity_5:output:0"
Cforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resourceEforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0"
Dforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resourceFforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0"
Bforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resourceDforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0"č
qforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensorsforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2x
:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp2v
9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp2z
;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
M
Ü
"forward_lstm_17_while_body_2300556<
8forward_lstm_17_while_forward_lstm_17_while_loop_counterB
>forward_lstm_17_while_forward_lstm_17_while_maximum_iterations%
!forward_lstm_17_while_placeholder'
#forward_lstm_17_while_placeholder_1'
#forward_lstm_17_while_placeholder_2'
#forward_lstm_17_while_placeholder_3;
7forward_lstm_17_while_forward_lstm_17_strided_slice_1_0w
sforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0W
Dforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0:	Z
Fforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0:
T
Eforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0:	"
forward_lstm_17_while_identity$
 forward_lstm_17_while_identity_1$
 forward_lstm_17_while_identity_2$
 forward_lstm_17_while_identity_3$
 forward_lstm_17_while_identity_4$
 forward_lstm_17_while_identity_59
5forward_lstm_17_while_forward_lstm_17_strided_slice_1u
qforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensorU
Bforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource:	X
Dforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource:
R
Cforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource:	¢:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp¢9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp¢;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp
Gforward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ö
9forward_lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_17_while_placeholderPforward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0æ
9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOpReadVariableOpDforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ģ
*forward_lstm_17/while/lstm_cell_109/MatMulMatMul@forward_lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:0Aforward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ä
;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOpFforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ó
,forward_lstm_17/while/lstm_cell_109/MatMul_1MatMul#forward_lstm_17_while_placeholder_2Cforward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ń
'forward_lstm_17/while/lstm_cell_109/addAddV24forward_lstm_17/while/lstm_cell_109/MatMul:product:06forward_lstm_17/while/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’½
:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOpEforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ś
+forward_lstm_17/while/lstm_cell_109/BiasAddBiasAdd+forward_lstm_17/while/lstm_cell_109/add:z:0Bforward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’u
3forward_lstm_17/while/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¦
)forward_lstm_17/while/lstm_cell_109/splitSplit<forward_lstm_17/while/lstm_cell_109/split/split_dim:output:04forward_lstm_17/while/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
+forward_lstm_17/while/lstm_cell_109/SigmoidSigmoid2forward_lstm_17/while/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
-forward_lstm_17/while/lstm_cell_109/Sigmoid_1Sigmoid2forward_lstm_17/while/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’¹
'forward_lstm_17/while/lstm_cell_109/mulMul1forward_lstm_17/while/lstm_cell_109/Sigmoid_1:y:0#forward_lstm_17_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
(forward_lstm_17/while/lstm_cell_109/ReluRelu2forward_lstm_17/while/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ģ
)forward_lstm_17/while/lstm_cell_109/mul_1Mul/forward_lstm_17/while/lstm_cell_109/Sigmoid:y:06forward_lstm_17/while/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Į
)forward_lstm_17/while/lstm_cell_109/add_1AddV2+forward_lstm_17/while/lstm_cell_109/mul:z:0-forward_lstm_17/while/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
-forward_lstm_17/while/lstm_cell_109/Sigmoid_2Sigmoid2forward_lstm_17/while/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
*forward_lstm_17/while/lstm_cell_109/Relu_1Relu-forward_lstm_17/while/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Š
)forward_lstm_17/while/lstm_cell_109/mul_2Mul1forward_lstm_17/while/lstm_cell_109/Sigmoid_2:y:08forward_lstm_17/while/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
@forward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ®
:forward_lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_17_while_placeholder_1Iforward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/index:output:0-forward_lstm_17/while/lstm_cell_109/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ]
forward_lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_17/while/addAddV2!forward_lstm_17_while_placeholder$forward_lstm_17/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :§
forward_lstm_17/while/add_1AddV28forward_lstm_17_while_forward_lstm_17_while_loop_counter&forward_lstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_17/while/IdentityIdentityforward_lstm_17/while/add_1:z:0^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: Ŗ
 forward_lstm_17/while/Identity_1Identity>forward_lstm_17_while_forward_lstm_17_while_maximum_iterations^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: 
 forward_lstm_17/while/Identity_2Identityforward_lstm_17/while/add:z:0^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: ¶
 forward_lstm_17/while/Identity_3IdentityJforward_lstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: «
 forward_lstm_17/while/Identity_4Identity-forward_lstm_17/while/lstm_cell_109/mul_2:z:0^forward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’«
 forward_lstm_17/while/Identity_5Identity-forward_lstm_17/while/lstm_cell_109/add_1:z:0^forward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
forward_lstm_17/while/NoOpNoOp;^forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp:^forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp<^forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "p
5forward_lstm_17_while_forward_lstm_17_strided_slice_17forward_lstm_17_while_forward_lstm_17_strided_slice_1_0"I
forward_lstm_17_while_identity'forward_lstm_17/while/Identity:output:0"M
 forward_lstm_17_while_identity_1)forward_lstm_17/while/Identity_1:output:0"M
 forward_lstm_17_while_identity_2)forward_lstm_17/while/Identity_2:output:0"M
 forward_lstm_17_while_identity_3)forward_lstm_17/while/Identity_3:output:0"M
 forward_lstm_17_while_identity_4)forward_lstm_17/while/Identity_4:output:0"M
 forward_lstm_17_while_identity_5)forward_lstm_17/while/Identity_5:output:0"
Cforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resourceEforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0"
Dforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resourceFforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0"
Bforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resourceDforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0"č
qforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensorsforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2x
:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp2v
9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp2z
;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
ų
š
4bidirectional_17_backward_lstm_17_while_cond_2301594`
\bidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_while_loop_counterf
bbidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_while_maximum_iterations7
3bidirectional_17_backward_lstm_17_while_placeholder9
5bidirectional_17_backward_lstm_17_while_placeholder_19
5bidirectional_17_backward_lstm_17_while_placeholder_29
5bidirectional_17_backward_lstm_17_while_placeholder_3b
^bidirectional_17_backward_lstm_17_while_less_bidirectional_17_backward_lstm_17_strided_slice_1y
ubidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_while_cond_2301594___redundant_placeholder0y
ubidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_while_cond_2301594___redundant_placeholder1y
ubidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_while_cond_2301594___redundant_placeholder2y
ubidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_while_cond_2301594___redundant_placeholder34
0bidirectional_17_backward_lstm_17_while_identity
ź
,bidirectional_17/backward_lstm_17/while/LessLess3bidirectional_17_backward_lstm_17_while_placeholder^bidirectional_17_backward_lstm_17_while_less_bidirectional_17_backward_lstm_17_strided_slice_1*
T0*
_output_shapes
: 
0bidirectional_17/backward_lstm_17/while/IdentityIdentity0bidirectional_17/backward_lstm_17/while/Less:z:0*
T0
*
_output_shapes
: "m
0bidirectional_17_backward_lstm_17_while_identity9bidirectional_17/backward_lstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
­b
 
4bidirectional_17_backward_lstm_17_while_body_2301595`
\bidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_while_loop_counterf
bbidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_while_maximum_iterations7
3bidirectional_17_backward_lstm_17_while_placeholder9
5bidirectional_17_backward_lstm_17_while_placeholder_19
5bidirectional_17_backward_lstm_17_while_placeholder_29
5bidirectional_17_backward_lstm_17_while_placeholder_3_
[bidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_strided_slice_1_0
bidirectional_17_backward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_bidirectional_17_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0i
Vbidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0:	l
Xbidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0:
f
Wbidirectional_17_backward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0:	4
0bidirectional_17_backward_lstm_17_while_identity6
2bidirectional_17_backward_lstm_17_while_identity_16
2bidirectional_17_backward_lstm_17_while_identity_26
2bidirectional_17_backward_lstm_17_while_identity_36
2bidirectional_17_backward_lstm_17_while_identity_46
2bidirectional_17_backward_lstm_17_while_identity_5]
Ybidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_strided_slice_1
bidirectional_17_backward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_bidirectional_17_backward_lstm_17_tensorarrayunstack_tensorlistfromtensorg
Tbidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource:	j
Vbidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource:
d
Ubidirectional_17_backward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource:	¢Lbidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp¢Kbidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp¢Mbidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOpŖ
Ybidirectional_17/backward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ń
Kbidirectional_17/backward_lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_17_backward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_bidirectional_17_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_03bidirectional_17_backward_lstm_17_while_placeholderbbidirectional_17/backward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0ć
Kbidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOpReadVariableOpVbidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¢
<bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMulMatMulRbidirectional_17/backward_lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:0Sbidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’č
Mbidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOpXbidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
>bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1MatMul5bidirectional_17_backward_lstm_17_while_placeholder_2Ubidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
9bidirectional_17/backward_lstm_17/while/lstm_cell_110/addAddV2Fbidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul:product:0Hbidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’į
Lbidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOpWbidirectional_17_backward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
=bidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAddBiasAdd=bidirectional_17/backward_lstm_17/while/lstm_cell_110/add:z:0Tbidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
Ebidirectional_17/backward_lstm_17/while/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ü
;bidirectional_17/backward_lstm_17/while/lstm_cell_110/splitSplitNbidirectional_17/backward_lstm_17/while/lstm_cell_110/split/split_dim:output:0Fbidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitĮ
=bidirectional_17/backward_lstm_17/while/lstm_cell_110/SigmoidSigmoidDbidirectional_17/backward_lstm_17/while/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’Ć
?bidirectional_17/backward_lstm_17/while/lstm_cell_110/Sigmoid_1SigmoidDbidirectional_17/backward_lstm_17/while/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’ļ
9bidirectional_17/backward_lstm_17/while/lstm_cell_110/mulMulCbidirectional_17/backward_lstm_17/while/lstm_cell_110/Sigmoid_1:y:05bidirectional_17_backward_lstm_17_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’»
:bidirectional_17/backward_lstm_17/while/lstm_cell_110/ReluReluDbidirectional_17/backward_lstm_17/while/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
;bidirectional_17/backward_lstm_17/while/lstm_cell_110/mul_1MulAbidirectional_17/backward_lstm_17/while/lstm_cell_110/Sigmoid:y:0Hbidirectional_17/backward_lstm_17/while/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’÷
;bidirectional_17/backward_lstm_17/while/lstm_cell_110/add_1AddV2=bidirectional_17/backward_lstm_17/while/lstm_cell_110/mul:z:0?bidirectional_17/backward_lstm_17/while/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ć
?bidirectional_17/backward_lstm_17/while/lstm_cell_110/Sigmoid_2SigmoidDbidirectional_17/backward_lstm_17/while/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’ø
<bidirectional_17/backward_lstm_17/while/lstm_cell_110/Relu_1Relu?bidirectional_17/backward_lstm_17/while/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
;bidirectional_17/backward_lstm_17/while/lstm_cell_110/mul_2MulCbidirectional_17/backward_lstm_17/while/lstm_cell_110/Sigmoid_2:y:0Jbidirectional_17/backward_lstm_17/while/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Rbidirectional_17/backward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ö
Lbidirectional_17/backward_lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem5bidirectional_17_backward_lstm_17_while_placeholder_1[bidirectional_17/backward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/index:output:0?bidirectional_17/backward_lstm_17/while/lstm_cell_110/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅo
-bidirectional_17/backward_lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ā
+bidirectional_17/backward_lstm_17/while/addAddV23bidirectional_17_backward_lstm_17_while_placeholder6bidirectional_17/backward_lstm_17/while/add/y:output:0*
T0*
_output_shapes
: q
/bidirectional_17/backward_lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ļ
-bidirectional_17/backward_lstm_17/while/add_1AddV2\bidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_while_loop_counter8bidirectional_17/backward_lstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: æ
0bidirectional_17/backward_lstm_17/while/IdentityIdentity1bidirectional_17/backward_lstm_17/while/add_1:z:0-^bidirectional_17/backward_lstm_17/while/NoOp*
T0*
_output_shapes
: ņ
2bidirectional_17/backward_lstm_17/while/Identity_1Identitybbidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_while_maximum_iterations-^bidirectional_17/backward_lstm_17/while/NoOp*
T0*
_output_shapes
: æ
2bidirectional_17/backward_lstm_17/while/Identity_2Identity/bidirectional_17/backward_lstm_17/while/add:z:0-^bidirectional_17/backward_lstm_17/while/NoOp*
T0*
_output_shapes
: ģ
2bidirectional_17/backward_lstm_17/while/Identity_3Identity\bidirectional_17/backward_lstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^bidirectional_17/backward_lstm_17/while/NoOp*
T0*
_output_shapes
: į
2bidirectional_17/backward_lstm_17/while/Identity_4Identity?bidirectional_17/backward_lstm_17/while/lstm_cell_110/mul_2:z:0-^bidirectional_17/backward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’į
2bidirectional_17/backward_lstm_17/while/Identity_5Identity?bidirectional_17/backward_lstm_17/while/lstm_cell_110/add_1:z:0-^bidirectional_17/backward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ū
,bidirectional_17/backward_lstm_17/while/NoOpNoOpM^bidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOpL^bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOpN^bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "ø
Ybidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_strided_slice_1[bidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_strided_slice_1_0"m
0bidirectional_17_backward_lstm_17_while_identity9bidirectional_17/backward_lstm_17/while/Identity:output:0"q
2bidirectional_17_backward_lstm_17_while_identity_1;bidirectional_17/backward_lstm_17/while/Identity_1:output:0"q
2bidirectional_17_backward_lstm_17_while_identity_2;bidirectional_17/backward_lstm_17/while/Identity_2:output:0"q
2bidirectional_17_backward_lstm_17_while_identity_3;bidirectional_17/backward_lstm_17/while/Identity_3:output:0"q
2bidirectional_17_backward_lstm_17_while_identity_4;bidirectional_17/backward_lstm_17/while/Identity_4:output:0"q
2bidirectional_17_backward_lstm_17_while_identity_5;bidirectional_17/backward_lstm_17/while/Identity_5:output:0"°
Ubidirectional_17_backward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resourceWbidirectional_17_backward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0"²
Vbidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resourceXbidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0"®
Tbidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resourceVbidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0"²
bidirectional_17_backward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_bidirectional_17_backward_lstm_17_tensorarrayunstack_tensorlistfromtensorbidirectional_17_backward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_bidirectional_17_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2
Lbidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOpLbidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp2
Kbidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOpKbidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp2
Mbidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOpMbidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
:
Ü
while_body_2303504
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_109_matmul_readvariableop_resource_0:	J
6while_lstm_cell_109_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_109_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_109_matmul_readvariableop_resource:	H
4while_lstm_cell_109_matmul_1_readvariableop_resource:
B
3while_lstm_cell_109_biasadd_readvariableop_resource:	¢*while/lstm_cell_109/BiasAdd/ReadVariableOp¢)while/lstm_cell_109/MatMul/ReadVariableOp¢+while/lstm_cell_109/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0
)while/lstm_cell_109/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_109_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_109/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¤
+while/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_109_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_109/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’”
while/lstm_cell_109/addAddV2$while/lstm_cell_109/MatMul:product:0&while/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
*while/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_109_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ŗ
while/lstm_cell_109/BiasAddBiasAddwhile/lstm_cell_109/add:z:02while/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
#while/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_109/splitSplit,while/lstm_cell_109/split/split_dim:output:0$while/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split}
while/lstm_cell_109/SigmoidSigmoid"while/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/Sigmoid_1Sigmoid"while/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/mulMul!while/lstm_cell_109/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell_109/ReluRelu"while/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/mul_1Mulwhile/lstm_cell_109/Sigmoid:y:0&while/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/add_1AddV2while/lstm_cell_109/mul:z:0while/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/Sigmoid_2Sigmoid"while/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’t
while/lstm_cell_109/Relu_1Reluwhile/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ 
while/lstm_cell_109/mul_2Mul!while/lstm_cell_109/Sigmoid_2:y:0(while/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ī
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_109/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: {
while/Identity_4Identitywhile/lstm_cell_109/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’{
while/Identity_5Identitywhile/lstm_cell_109/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ó

while/NoOpNoOp+^while/lstm_cell_109/BiasAdd/ReadVariableOp*^while/lstm_cell_109/MatMul/ReadVariableOp,^while/lstm_cell_109/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_109_biasadd_readvariableop_resource5while_lstm_cell_109_biasadd_readvariableop_resource_0"n
4while_lstm_cell_109_matmul_1_readvariableop_resource6while_lstm_cell_109_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_109_matmul_readvariableop_resource4while_lstm_cell_109_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2X
*while/lstm_cell_109/BiasAdd/ReadVariableOp*while/lstm_cell_109/BiasAdd/ReadVariableOp2V
)while/lstm_cell_109/MatMul/ReadVariableOp)while/lstm_cell_109/MatMul/ReadVariableOp2Z
+while/lstm_cell_109/MatMul_1/ReadVariableOp+while/lstm_cell_109/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
:
Ü
while_body_2300184
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_110_matmul_readvariableop_resource_0:	J
6while_lstm_cell_110_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_110_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_110_matmul_readvariableop_resource:	H
4while_lstm_cell_110_matmul_1_readvariableop_resource:
B
3while_lstm_cell_110_biasadd_readvariableop_resource:	¢*while/lstm_cell_110/BiasAdd/ReadVariableOp¢)while/lstm_cell_110/MatMul/ReadVariableOp¢+while/lstm_cell_110/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
)while/lstm_cell_110/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_110_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_110/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¤
+while/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_110_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_110/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’”
while/lstm_cell_110/addAddV2$while/lstm_cell_110/MatMul:product:0&while/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
*while/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_110_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ŗ
while/lstm_cell_110/BiasAddBiasAddwhile/lstm_cell_110/add:z:02while/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
#while/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_110/splitSplit,while/lstm_cell_110/split/split_dim:output:0$while/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split}
while/lstm_cell_110/SigmoidSigmoid"while/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/Sigmoid_1Sigmoid"while/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/mulMul!while/lstm_cell_110/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell_110/ReluRelu"while/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/mul_1Mulwhile/lstm_cell_110/Sigmoid:y:0&while/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/add_1AddV2while/lstm_cell_110/mul:z:0while/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/Sigmoid_2Sigmoid"while/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’t
while/lstm_cell_110/Relu_1Reluwhile/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ 
while/lstm_cell_110/mul_2Mul!while/lstm_cell_110/Sigmoid_2:y:0(while/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ī
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_110/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: {
while/Identity_4Identitywhile/lstm_cell_110/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’{
while/Identity_5Identitywhile/lstm_cell_110/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ó

while/NoOpNoOp+^while/lstm_cell_110/BiasAdd/ReadVariableOp*^while/lstm_cell_110/MatMul/ReadVariableOp,^while/lstm_cell_110/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_110_biasadd_readvariableop_resource5while_lstm_cell_110_biasadd_readvariableop_resource_0"n
4while_lstm_cell_110_matmul_1_readvariableop_resource6while_lstm_cell_110_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_110_matmul_readvariableop_resource4while_lstm_cell_110_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2X
*while/lstm_cell_110/BiasAdd/ReadVariableOp*while/lstm_cell_110/BiasAdd/ReadVariableOp2V
)while/lstm_cell_110/MatMul/ReadVariableOp)while/lstm_cell_110/MatMul/ReadVariableOp2Z
+while/lstm_cell_110/MatMul_1/ReadVariableOp+while/lstm_cell_110/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
;

M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2299769

inputs(
lstm_cell_110_2299685:	)
lstm_cell_110_2299687:
$
lstm_cell_110_2299689:	
identity¢%lstm_cell_110/StatefulPartitionedCall¢while;
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
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
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   å
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
%lstm_cell_110/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_110_2299685lstm_cell_110_2299687lstm_cell_110_2299689*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_lstm_cell_110_layer_call_and_return_conditional_losses_2299637n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ć
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_110_2299685lstm_cell_110_2299687lstm_cell_110_2299689*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2299699*
condR
while_cond_2299698*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
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
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’v
NoOpNoOp&^lstm_cell_110/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2N
%lstm_cell_110/StatefulPartitionedCall%lstm_cell_110/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs


#backward_lstm_17_while_cond_2300698>
:backward_lstm_17_while_backward_lstm_17_while_loop_counterD
@backward_lstm_17_while_backward_lstm_17_while_maximum_iterations&
"backward_lstm_17_while_placeholder(
$backward_lstm_17_while_placeholder_1(
$backward_lstm_17_while_placeholder_2(
$backward_lstm_17_while_placeholder_3@
<backward_lstm_17_while_less_backward_lstm_17_strided_slice_1W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2300698___redundant_placeholder0W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2300698___redundant_placeholder1W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2300698___redundant_placeholder2W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2300698___redundant_placeholder3#
backward_lstm_17_while_identity
¦
backward_lstm_17/while/LessLess"backward_lstm_17_while_placeholder<backward_lstm_17_while_less_backward_lstm_17_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_17/while/IdentityIdentitybackward_lstm_17/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_17_while_identity(backward_lstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:

ā
Ymodel_9_bidirectionalLSTM_univariate_bidirectional_17_backward_lstm_17_while_cond_2298972«
¦model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_loop_counter±
¬model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_maximum_iterations\
Xmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_placeholder^
Zmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_placeholder_1^
Zmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_placeholder_2^
Zmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_placeholder_3­
Ømodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_less_model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_strided_slice_1Ä
æmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_cond_2298972___redundant_placeholder0Ä
æmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_cond_2298972___redundant_placeholder1Ä
æmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_cond_2298972___redundant_placeholder2Ä
æmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_cond_2298972___redundant_placeholder3Y
Umodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_identity
’
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/LessLessXmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_placeholderØmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_less_model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_strided_slice_1*
T0*
_output_shapes
: Ł
Umodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/IdentityIdentityUmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/Less:z:0*
T0
*
_output_shapes
: "·
Umodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_identity^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:

ļ
#__inference__traced_restore_2304926
file_prefix3
 assignvariableop_dense_17_kernel:	.
 assignvariableop_1_dense_17_bias:[
Hassignvariableop_2_bidirectional_17_forward_lstm_17_lstm_cell_109_kernel:	f
Rassignvariableop_3_bidirectional_17_forward_lstm_17_lstm_cell_109_recurrent_kernel:
U
Fassignvariableop_4_bidirectional_17_forward_lstm_17_lstm_cell_109_bias:	\
Iassignvariableop_5_bidirectional_17_backward_lstm_17_lstm_cell_110_kernel:	g
Sassignvariableop_6_bidirectional_17_backward_lstm_17_lstm_cell_110_recurrent_kernel:
V
Gassignvariableop_7_bidirectional_17_backward_lstm_17_lstm_cell_110_bias:	&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: =
*assignvariableop_15_adam_dense_17_kernel_m:	6
(assignvariableop_16_adam_dense_17_bias_m:c
Passignvariableop_17_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_kernel_m:	n
Zassignvariableop_18_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_recurrent_kernel_m:
]
Nassignvariableop_19_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_bias_m:	d
Qassignvariableop_20_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_kernel_m:	o
[assignvariableop_21_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_recurrent_kernel_m:
^
Oassignvariableop_22_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_bias_m:	=
*assignvariableop_23_adam_dense_17_kernel_v:	6
(assignvariableop_24_adam_dense_17_bias_v:c
Passignvariableop_25_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_kernel_v:	n
Zassignvariableop_26_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_recurrent_kernel_v:
]
Nassignvariableop_27_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_bias_v:	d
Qassignvariableop_28_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_kernel_v:	o
[assignvariableop_29_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_recurrent_kernel_v:
^
Oassignvariableop_30_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_bias_v:	
identity_32¢AssignVariableOp¢AssignVariableOp_1¢AssignVariableOp_10¢AssignVariableOp_11¢AssignVariableOp_12¢AssignVariableOp_13¢AssignVariableOp_14¢AssignVariableOp_15¢AssignVariableOp_16¢AssignVariableOp_17¢AssignVariableOp_18¢AssignVariableOp_19¢AssignVariableOp_2¢AssignVariableOp_20¢AssignVariableOp_21¢AssignVariableOp_22¢AssignVariableOp_23¢AssignVariableOp_24¢AssignVariableOp_25¢AssignVariableOp_26¢AssignVariableOp_27¢AssignVariableOp_28¢AssignVariableOp_29¢AssignVariableOp_3¢AssignVariableOp_30¢AssignVariableOp_4¢AssignVariableOp_5¢AssignVariableOp_6¢AssignVariableOp_7¢AssignVariableOp_8¢AssignVariableOp_9ø
RestoreV2/tensor_namesConst"/device:CPU:0*
_output_shapes
: *
dtype0*Ž
valueŌBŃ B6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUEB4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUEB&variables/0/.ATTRIBUTES/VARIABLE_VALUEB&variables/1/.ATTRIBUTES/VARIABLE_VALUEB&variables/2/.ATTRIBUTES/VARIABLE_VALUEB&variables/3/.ATTRIBUTES/VARIABLE_VALUEB&variables/4/.ATTRIBUTES/VARIABLE_VALUEB&variables/5/.ATTRIBUTES/VARIABLE_VALUEB)optimizer/iter/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_1/.ATTRIBUTES/VARIABLE_VALUEB+optimizer/beta_2/.ATTRIBUTES/VARIABLE_VALUEB*optimizer/decay/.ATTRIBUTES/VARIABLE_VALUEB2optimizer/learning_rate/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/total/.ATTRIBUTES/VARIABLE_VALUEB4keras_api/metrics/0/count/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUEBRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEBBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUEB_CHECKPOINTABLE_OBJECT_GRAPH°
RestoreV2/shape_and_slicesConst"/device:CPU:0*
_output_shapes
: *
dtype0*S
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B Į
	RestoreV2	RestoreV2file_prefixRestoreV2/tensor_names:output:0#RestoreV2/shape_and_slices:output:0"/device:CPU:0*
_output_shapes
::::::::::::::::::::::::::::::::*.
dtypes$
"2 	[
IdentityIdentityRestoreV2:tensors:0"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOpAssignVariableOp assignvariableop_dense_17_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_17_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_2AssignVariableOpHassignvariableop_2_bidirectional_17_forward_lstm_17_lstm_cell_109_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Į
AssignVariableOp_3AssignVariableOpRassignvariableop_3_bidirectional_17_forward_lstm_17_lstm_cell_109_recurrent_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_4AssignVariableOpFassignvariableop_4_bidirectional_17_forward_lstm_17_lstm_cell_109_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:ø
AssignVariableOp_5AssignVariableOpIassignvariableop_5_bidirectional_17_backward_lstm_17_lstm_cell_110_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Ā
AssignVariableOp_6AssignVariableOpSassignvariableop_6_bidirectional_17_backward_lstm_17_lstm_cell_110_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_7AssignVariableOpGassignvariableop_7_bidirectional_17_backward_lstm_17_lstm_cell_110_biasIdentity_7:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_8IdentityRestoreV2:tensors:8"/device:CPU:0*
T0	*
_output_shapes
:
AssignVariableOp_8AssignVariableOpassignvariableop_8_adam_iterIdentity_8:output:0"/device:CPU:0*
_output_shapes
 *
dtype0	]

Identity_9IdentityRestoreV2:tensors:9"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_9AssignVariableOpassignvariableop_9_adam_beta_1Identity_9:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_10IdentityRestoreV2:tensors:10"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_10AssignVariableOpassignvariableop_10_adam_beta_2Identity_10:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_11IdentityRestoreV2:tensors:11"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_11AssignVariableOpassignvariableop_11_adam_decayIdentity_11:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_12IdentityRestoreV2:tensors:12"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_12AssignVariableOp&assignvariableop_12_adam_learning_rateIdentity_12:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_13IdentityRestoreV2:tensors:13"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_13AssignVariableOpassignvariableop_13_totalIdentity_13:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_14IdentityRestoreV2:tensors:14"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_14AssignVariableOpassignvariableop_14_countIdentity_14:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_15IdentityRestoreV2:tensors:15"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_dense_17_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_dense_17_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Į
AssignVariableOp_17AssignVariableOpPassignvariableop_17_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ė
AssignVariableOp_18AssignVariableOpZassignvariableop_18_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_recurrent_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:æ
AssignVariableOp_19AssignVariableOpNassignvariableop_19_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Ā
AssignVariableOp_20AssignVariableOpQassignvariableop_20_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ģ
AssignVariableOp_21AssignVariableOp[assignvariableop_21_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:Ą
AssignVariableOp_22AssignVariableOpOassignvariableop_22_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_17_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_17_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Į
AssignVariableOp_25AssignVariableOpPassignvariableop_25_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ė
AssignVariableOp_26AssignVariableOpZassignvariableop_26_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:æ
AssignVariableOp_27AssignVariableOpNassignvariableop_27_adam_bidirectional_17_forward_lstm_17_lstm_cell_109_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Ā
AssignVariableOp_28AssignVariableOpQassignvariableop_28_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ģ
AssignVariableOp_29AssignVariableOp[assignvariableop_29_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_recurrent_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:Ą
AssignVariableOp_30AssignVariableOpOassignvariableop_30_adam_bidirectional_17_backward_lstm_17_lstm_cell_110_bias_vIdentity_30:output:0"/device:CPU:0*
_output_shapes
 *
dtype01
NoOpNoOp"/device:CPU:0*
_output_shapes
 ł
Identity_31Identityfile_prefix^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9^NoOp"/device:CPU:0*
T0*
_output_shapes
: W
Identity_32IdentityIdentity_31:output:0^NoOp_1*
T0*
_output_shapes
: ę
NoOp_1NoOp^AssignVariableOp^AssignVariableOp_1^AssignVariableOp_10^AssignVariableOp_11^AssignVariableOp_12^AssignVariableOp_13^AssignVariableOp_14^AssignVariableOp_15^AssignVariableOp_16^AssignVariableOp_17^AssignVariableOp_18^AssignVariableOp_19^AssignVariableOp_2^AssignVariableOp_20^AssignVariableOp_21^AssignVariableOp_22^AssignVariableOp_23^AssignVariableOp_24^AssignVariableOp_25^AssignVariableOp_26^AssignVariableOp_27^AssignVariableOp_28^AssignVariableOp_29^AssignVariableOp_3^AssignVariableOp_30^AssignVariableOp_4^AssignVariableOp_5^AssignVariableOp_6^AssignVariableOp_7^AssignVariableOp_8^AssignVariableOp_9*"
_acd_function_control_output(*
_output_shapes
 "#
identity_32Identity_32:output:0*S
_input_shapesB
@: : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : : 2$
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
AssignVariableOp_30AssignVariableOp_302(
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
_user_specified_namefile_prefix
śĄ
Ó
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2301155

inputsO
<forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource:	R
>forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource:
L
=forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource:	P
=backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource:	S
?backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource:
M
>backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource:	
identity¢5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp¢4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp¢6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp¢backward_lstm_17/while¢4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp¢3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp¢5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp¢forward_lstm_17/whileK
forward_lstm_17/ShapeShapeinputs*
T0*
_output_shapes
:m
#forward_lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_17/strided_sliceStridedSliceforward_lstm_17/Shape:output:0,forward_lstm_17/strided_slice/stack:output:0.forward_lstm_17/strided_slice/stack_1:output:0.forward_lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
forward_lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :£
forward_lstm_17/zeros/packedPack&forward_lstm_17/strided_slice:output:0'forward_lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_17/zerosFill%forward_lstm_17/zeros/packed:output:0$forward_lstm_17/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
 forward_lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :§
forward_lstm_17/zeros_1/packedPack&forward_lstm_17/strided_slice:output:0)forward_lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
forward_lstm_17/zeros_1Fill'forward_lstm_17/zeros_1/packed:output:0&forward_lstm_17/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
forward_lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm_17/transpose	Transposeinputs'forward_lstm_17/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d
forward_lstm_17/Shape_1Shapeforward_lstm_17/transpose:y:0*
T0*
_output_shapes
:o
%forward_lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
forward_lstm_17/strided_slice_1StridedSlice forward_lstm_17/Shape_1:output:0.forward_lstm_17/strided_slice_1/stack:output:00forward_lstm_17/strided_slice_1/stack_1:output:00forward_lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ä
forward_lstm_17/TensorArrayV2TensorListReserve4forward_lstm_17/TensorArrayV2/element_shape:output:0(forward_lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Eforward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
7forward_lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_17/transpose:y:0Nforward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅo
%forward_lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¹
forward_lstm_17/strided_slice_2StridedSliceforward_lstm_17/transpose:y:0.forward_lstm_17/strided_slice_2/stack:output:00forward_lstm_17/strided_slice_2/stack_1:output:00forward_lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask±
3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOpReadVariableOp<forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Č
$forward_lstm_17/lstm_cell_109/MatMulMatMul(forward_lstm_17/strided_slice_2:output:0;forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¶
5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOp>forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ā
&forward_lstm_17/lstm_cell_109/MatMul_1MatMulforward_lstm_17/zeros:output:0=forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’æ
!forward_lstm_17/lstm_cell_109/addAddV2.forward_lstm_17/lstm_cell_109/MatMul:product:00forward_lstm_17/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOp=forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Č
%forward_lstm_17/lstm_cell_109/BiasAddBiasAdd%forward_lstm_17/lstm_cell_109/add:z:0<forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’o
-forward_lstm_17/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
#forward_lstm_17/lstm_cell_109/splitSplit6forward_lstm_17/lstm_cell_109/split/split_dim:output:0.forward_lstm_17/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
%forward_lstm_17/lstm_cell_109/SigmoidSigmoid,forward_lstm_17/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
'forward_lstm_17/lstm_cell_109/Sigmoid_1Sigmoid,forward_lstm_17/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
!forward_lstm_17/lstm_cell_109/mulMul+forward_lstm_17/lstm_cell_109/Sigmoid_1:y:0 forward_lstm_17/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
"forward_lstm_17/lstm_cell_109/ReluRelu,forward_lstm_17/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ŗ
#forward_lstm_17/lstm_cell_109/mul_1Mul)forward_lstm_17/lstm_cell_109/Sigmoid:y:00forward_lstm_17/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
#forward_lstm_17/lstm_cell_109/add_1AddV2%forward_lstm_17/lstm_cell_109/mul:z:0'forward_lstm_17/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
'forward_lstm_17/lstm_cell_109/Sigmoid_2Sigmoid,forward_lstm_17/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
$forward_lstm_17/lstm_cell_109/Relu_1Relu'forward_lstm_17/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’¾
#forward_lstm_17/lstm_cell_109/mul_2Mul+forward_lstm_17/lstm_cell_109/Sigmoid_2:y:02forward_lstm_17/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’~
-forward_lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   n
,forward_lstm_17/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :õ
forward_lstm_17/TensorArrayV2_1TensorListReserve6forward_lstm_17/TensorArrayV2_1/element_shape:output:05forward_lstm_17/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅV
forward_lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’d
"forward_lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ė
forward_lstm_17/whileWhile+forward_lstm_17/while/loop_counter:output:01forward_lstm_17/while/maximum_iterations:output:0forward_lstm_17/time:output:0(forward_lstm_17/TensorArrayV2_1:handle:0forward_lstm_17/zeros:output:0 forward_lstm_17/zeros_1:output:0(forward_lstm_17/strided_slice_1:output:0Gforward_lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:0<forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource>forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource=forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *.
body&R$
"forward_lstm_17_while_body_2300925*.
cond&R$
"forward_lstm_17_while_cond_2300924*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
@forward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
2forward_lstm_17/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_17/while:output:3Iforward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsx
%forward_lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’q
'forward_lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ų
forward_lstm_17/strided_slice_3StridedSlice;forward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_17/strided_slice_3/stack:output:00forward_lstm_17/strided_slice_3/stack_1:output:00forward_lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_masku
 forward_lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ē
forward_lstm_17/transpose_1	Transpose;forward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_17/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’k
forward_lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    L
backward_lstm_17/ShapeShapeinputs*
T0*
_output_shapes
:n
$backward_lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
backward_lstm_17/strided_sliceStridedSlicebackward_lstm_17/Shape:output:0-backward_lstm_17/strided_slice/stack:output:0/backward_lstm_17/strided_slice/stack_1:output:0/backward_lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
backward_lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :¦
backward_lstm_17/zeros/packedPack'backward_lstm_17/strided_slice:output:0(backward_lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
backward_lstm_17/zerosFill&backward_lstm_17/zeros/packed:output:0%backward_lstm_17/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’d
!backward_lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ŗ
backward_lstm_17/zeros_1/packedPack'backward_lstm_17/strided_slice:output:0*backward_lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¦
backward_lstm_17/zeros_1Fill(backward_lstm_17/zeros_1/packed:output:0'backward_lstm_17/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’t
backward_lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
backward_lstm_17/transpose	Transposeinputs(backward_lstm_17/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’f
backward_lstm_17/Shape_1Shapebackward_lstm_17/transpose:y:0*
T0*
_output_shapes
:p
&backward_lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 backward_lstm_17/strided_slice_1StridedSlice!backward_lstm_17/Shape_1:output:0/backward_lstm_17/strided_slice_1/stack:output:01backward_lstm_17/strided_slice_1/stack_1:output:01backward_lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ē
backward_lstm_17/TensorArrayV2TensorListReserve5backward_lstm_17/TensorArrayV2/element_shape:output:0)backward_lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅi
backward_lstm_17/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: §
backward_lstm_17/ReverseV2	ReverseV2backward_lstm_17/transpose:y:0(backward_lstm_17/ReverseV2/axis:output:0*
T0*+
_output_shapes
:’’’’’’’’’
Fbackward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
8backward_lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_17/ReverseV2:output:0Obackward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅp
&backward_lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¾
 backward_lstm_17/strided_slice_2StridedSlicebackward_lstm_17/transpose:y:0/backward_lstm_17/strided_slice_2/stack:output:01backward_lstm_17/strided_slice_2/stack_1:output:01backward_lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask³
4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOpReadVariableOp=backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ė
%backward_lstm_17/lstm_cell_110/MatMulMatMul)backward_lstm_17/strided_slice_2:output:0<backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ø
6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOp?backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Å
'backward_lstm_17/lstm_cell_110/MatMul_1MatMulbackward_lstm_17/zeros:output:0>backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
"backward_lstm_17/lstm_cell_110/addAddV2/backward_lstm_17/lstm_cell_110/MatMul:product:01backward_lstm_17/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’±
5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOp>backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ė
&backward_lstm_17/lstm_cell_110/BiasAddBiasAdd&backward_lstm_17/lstm_cell_110/add:z:0=backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’p
.backward_lstm_17/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$backward_lstm_17/lstm_cell_110/splitSplit7backward_lstm_17/lstm_cell_110/split/split_dim:output:0/backward_lstm_17/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
&backward_lstm_17/lstm_cell_110/SigmoidSigmoid-backward_lstm_17/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
(backward_lstm_17/lstm_cell_110/Sigmoid_1Sigmoid-backward_lstm_17/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’­
"backward_lstm_17/lstm_cell_110/mulMul,backward_lstm_17/lstm_cell_110/Sigmoid_1:y:0!backward_lstm_17/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
#backward_lstm_17/lstm_cell_110/ReluRelu-backward_lstm_17/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’½
$backward_lstm_17/lstm_cell_110/mul_1Mul*backward_lstm_17/lstm_cell_110/Sigmoid:y:01backward_lstm_17/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’²
$backward_lstm_17/lstm_cell_110/add_1AddV2&backward_lstm_17/lstm_cell_110/mul:z:0(backward_lstm_17/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
(backward_lstm_17/lstm_cell_110/Sigmoid_2Sigmoid-backward_lstm_17/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
%backward_lstm_17/lstm_cell_110/Relu_1Relu(backward_lstm_17/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Į
$backward_lstm_17/lstm_cell_110/mul_2Mul,backward_lstm_17/lstm_cell_110/Sigmoid_2:y:03backward_lstm_17/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
.backward_lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   o
-backward_lstm_17/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ų
 backward_lstm_17/TensorArrayV2_1TensorListReserve7backward_lstm_17/TensorArrayV2_1/element_shape:output:06backward_lstm_17/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅW
backward_lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’e
#backward_lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ł
backward_lstm_17/whileWhile,backward_lstm_17/while/loop_counter:output:02backward_lstm_17/while/maximum_iterations:output:0backward_lstm_17/time:output:0)backward_lstm_17/TensorArrayV2_1:handle:0backward_lstm_17/zeros:output:0!backward_lstm_17/zeros_1:output:0)backward_lstm_17/strided_slice_1:output:0Hbackward_lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:0=backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource?backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource>backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( */
body'R%
#backward_lstm_17_while_body_2301068*/
cond'R%
#backward_lstm_17_while_cond_2301067*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
Abackward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
3backward_lstm_17/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_17/while:output:3Jbackward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsy
&backward_lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’r
(backward_lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ż
 backward_lstm_17/strided_slice_3StridedSlice<backward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_17/strided_slice_3/stack:output:01backward_lstm_17/strided_slice_3/stack_1:output:01backward_lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maskv
!backward_lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ź
backward_lstm_17/transpose_1	Transpose<backward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_17/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’l
backward_lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¹
concatConcatV2(forward_lstm_17/strided_slice_3:output:0)backward_lstm_17/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ä
NoOpNoOp6^backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp5^backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp7^backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp^backward_lstm_17/while5^forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp4^forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp6^forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp^forward_lstm_17/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : 2n
5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp2l
4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp2p
6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp20
backward_lstm_17/whilebackward_lstm_17/while2l
4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp2j
3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp2n
5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp2.
forward_lstm_17/whileforward_lstm_17/while:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
śĄ
Ó
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2302946

inputsO
<forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource:	R
>forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource:
L
=forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource:	P
=backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource:	S
?backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource:
M
>backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource:	
identity¢5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp¢4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp¢6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp¢backward_lstm_17/while¢4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp¢3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp¢5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp¢forward_lstm_17/whileK
forward_lstm_17/ShapeShapeinputs*
T0*
_output_shapes
:m
#forward_lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_17/strided_sliceStridedSliceforward_lstm_17/Shape:output:0,forward_lstm_17/strided_slice/stack:output:0.forward_lstm_17/strided_slice/stack_1:output:0.forward_lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
forward_lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :£
forward_lstm_17/zeros/packedPack&forward_lstm_17/strided_slice:output:0'forward_lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_17/zerosFill%forward_lstm_17/zeros/packed:output:0$forward_lstm_17/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
 forward_lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :§
forward_lstm_17/zeros_1/packedPack&forward_lstm_17/strided_slice:output:0)forward_lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
forward_lstm_17/zeros_1Fill'forward_lstm_17/zeros_1/packed:output:0&forward_lstm_17/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
forward_lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm_17/transpose	Transposeinputs'forward_lstm_17/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d
forward_lstm_17/Shape_1Shapeforward_lstm_17/transpose:y:0*
T0*
_output_shapes
:o
%forward_lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
forward_lstm_17/strided_slice_1StridedSlice forward_lstm_17/Shape_1:output:0.forward_lstm_17/strided_slice_1/stack:output:00forward_lstm_17/strided_slice_1/stack_1:output:00forward_lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ä
forward_lstm_17/TensorArrayV2TensorListReserve4forward_lstm_17/TensorArrayV2/element_shape:output:0(forward_lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Eforward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
7forward_lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_17/transpose:y:0Nforward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅo
%forward_lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¹
forward_lstm_17/strided_slice_2StridedSliceforward_lstm_17/transpose:y:0.forward_lstm_17/strided_slice_2/stack:output:00forward_lstm_17/strided_slice_2/stack_1:output:00forward_lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask±
3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOpReadVariableOp<forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Č
$forward_lstm_17/lstm_cell_109/MatMulMatMul(forward_lstm_17/strided_slice_2:output:0;forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¶
5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOp>forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ā
&forward_lstm_17/lstm_cell_109/MatMul_1MatMulforward_lstm_17/zeros:output:0=forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’æ
!forward_lstm_17/lstm_cell_109/addAddV2.forward_lstm_17/lstm_cell_109/MatMul:product:00forward_lstm_17/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOp=forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Č
%forward_lstm_17/lstm_cell_109/BiasAddBiasAdd%forward_lstm_17/lstm_cell_109/add:z:0<forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’o
-forward_lstm_17/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
#forward_lstm_17/lstm_cell_109/splitSplit6forward_lstm_17/lstm_cell_109/split/split_dim:output:0.forward_lstm_17/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
%forward_lstm_17/lstm_cell_109/SigmoidSigmoid,forward_lstm_17/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
'forward_lstm_17/lstm_cell_109/Sigmoid_1Sigmoid,forward_lstm_17/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
!forward_lstm_17/lstm_cell_109/mulMul+forward_lstm_17/lstm_cell_109/Sigmoid_1:y:0 forward_lstm_17/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
"forward_lstm_17/lstm_cell_109/ReluRelu,forward_lstm_17/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ŗ
#forward_lstm_17/lstm_cell_109/mul_1Mul)forward_lstm_17/lstm_cell_109/Sigmoid:y:00forward_lstm_17/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
#forward_lstm_17/lstm_cell_109/add_1AddV2%forward_lstm_17/lstm_cell_109/mul:z:0'forward_lstm_17/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
'forward_lstm_17/lstm_cell_109/Sigmoid_2Sigmoid,forward_lstm_17/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
$forward_lstm_17/lstm_cell_109/Relu_1Relu'forward_lstm_17/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’¾
#forward_lstm_17/lstm_cell_109/mul_2Mul+forward_lstm_17/lstm_cell_109/Sigmoid_2:y:02forward_lstm_17/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’~
-forward_lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   n
,forward_lstm_17/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :õ
forward_lstm_17/TensorArrayV2_1TensorListReserve6forward_lstm_17/TensorArrayV2_1/element_shape:output:05forward_lstm_17/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅV
forward_lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’d
"forward_lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ė
forward_lstm_17/whileWhile+forward_lstm_17/while/loop_counter:output:01forward_lstm_17/while/maximum_iterations:output:0forward_lstm_17/time:output:0(forward_lstm_17/TensorArrayV2_1:handle:0forward_lstm_17/zeros:output:0 forward_lstm_17/zeros_1:output:0(forward_lstm_17/strided_slice_1:output:0Gforward_lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:0<forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource>forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource=forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *.
body&R$
"forward_lstm_17_while_body_2302716*.
cond&R$
"forward_lstm_17_while_cond_2302715*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
@forward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
2forward_lstm_17/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_17/while:output:3Iforward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsx
%forward_lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’q
'forward_lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ų
forward_lstm_17/strided_slice_3StridedSlice;forward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_17/strided_slice_3/stack:output:00forward_lstm_17/strided_slice_3/stack_1:output:00forward_lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_masku
 forward_lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ē
forward_lstm_17/transpose_1	Transpose;forward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_17/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’k
forward_lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    L
backward_lstm_17/ShapeShapeinputs*
T0*
_output_shapes
:n
$backward_lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
backward_lstm_17/strided_sliceStridedSlicebackward_lstm_17/Shape:output:0-backward_lstm_17/strided_slice/stack:output:0/backward_lstm_17/strided_slice/stack_1:output:0/backward_lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
backward_lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :¦
backward_lstm_17/zeros/packedPack'backward_lstm_17/strided_slice:output:0(backward_lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
backward_lstm_17/zerosFill&backward_lstm_17/zeros/packed:output:0%backward_lstm_17/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’d
!backward_lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ŗ
backward_lstm_17/zeros_1/packedPack'backward_lstm_17/strided_slice:output:0*backward_lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¦
backward_lstm_17/zeros_1Fill(backward_lstm_17/zeros_1/packed:output:0'backward_lstm_17/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’t
backward_lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
backward_lstm_17/transpose	Transposeinputs(backward_lstm_17/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’f
backward_lstm_17/Shape_1Shapebackward_lstm_17/transpose:y:0*
T0*
_output_shapes
:p
&backward_lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 backward_lstm_17/strided_slice_1StridedSlice!backward_lstm_17/Shape_1:output:0/backward_lstm_17/strided_slice_1/stack:output:01backward_lstm_17/strided_slice_1/stack_1:output:01backward_lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ē
backward_lstm_17/TensorArrayV2TensorListReserve5backward_lstm_17/TensorArrayV2/element_shape:output:0)backward_lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅi
backward_lstm_17/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: §
backward_lstm_17/ReverseV2	ReverseV2backward_lstm_17/transpose:y:0(backward_lstm_17/ReverseV2/axis:output:0*
T0*+
_output_shapes
:’’’’’’’’’
Fbackward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
8backward_lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_17/ReverseV2:output:0Obackward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅp
&backward_lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¾
 backward_lstm_17/strided_slice_2StridedSlicebackward_lstm_17/transpose:y:0/backward_lstm_17/strided_slice_2/stack:output:01backward_lstm_17/strided_slice_2/stack_1:output:01backward_lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask³
4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOpReadVariableOp=backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ė
%backward_lstm_17/lstm_cell_110/MatMulMatMul)backward_lstm_17/strided_slice_2:output:0<backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ø
6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOp?backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Å
'backward_lstm_17/lstm_cell_110/MatMul_1MatMulbackward_lstm_17/zeros:output:0>backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
"backward_lstm_17/lstm_cell_110/addAddV2/backward_lstm_17/lstm_cell_110/MatMul:product:01backward_lstm_17/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’±
5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOp>backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ė
&backward_lstm_17/lstm_cell_110/BiasAddBiasAdd&backward_lstm_17/lstm_cell_110/add:z:0=backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’p
.backward_lstm_17/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$backward_lstm_17/lstm_cell_110/splitSplit7backward_lstm_17/lstm_cell_110/split/split_dim:output:0/backward_lstm_17/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
&backward_lstm_17/lstm_cell_110/SigmoidSigmoid-backward_lstm_17/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
(backward_lstm_17/lstm_cell_110/Sigmoid_1Sigmoid-backward_lstm_17/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’­
"backward_lstm_17/lstm_cell_110/mulMul,backward_lstm_17/lstm_cell_110/Sigmoid_1:y:0!backward_lstm_17/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
#backward_lstm_17/lstm_cell_110/ReluRelu-backward_lstm_17/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’½
$backward_lstm_17/lstm_cell_110/mul_1Mul*backward_lstm_17/lstm_cell_110/Sigmoid:y:01backward_lstm_17/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’²
$backward_lstm_17/lstm_cell_110/add_1AddV2&backward_lstm_17/lstm_cell_110/mul:z:0(backward_lstm_17/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
(backward_lstm_17/lstm_cell_110/Sigmoid_2Sigmoid-backward_lstm_17/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
%backward_lstm_17/lstm_cell_110/Relu_1Relu(backward_lstm_17/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Į
$backward_lstm_17/lstm_cell_110/mul_2Mul,backward_lstm_17/lstm_cell_110/Sigmoid_2:y:03backward_lstm_17/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
.backward_lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   o
-backward_lstm_17/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ų
 backward_lstm_17/TensorArrayV2_1TensorListReserve7backward_lstm_17/TensorArrayV2_1/element_shape:output:06backward_lstm_17/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅW
backward_lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’e
#backward_lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ł
backward_lstm_17/whileWhile,backward_lstm_17/while/loop_counter:output:02backward_lstm_17/while/maximum_iterations:output:0backward_lstm_17/time:output:0)backward_lstm_17/TensorArrayV2_1:handle:0backward_lstm_17/zeros:output:0!backward_lstm_17/zeros_1:output:0)backward_lstm_17/strided_slice_1:output:0Hbackward_lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:0=backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource?backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource>backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( */
body'R%
#backward_lstm_17_while_body_2302859*/
cond'R%
#backward_lstm_17_while_cond_2302858*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
Abackward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
3backward_lstm_17/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_17/while:output:3Jbackward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsy
&backward_lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’r
(backward_lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ż
 backward_lstm_17/strided_slice_3StridedSlice<backward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_17/strided_slice_3/stack:output:01backward_lstm_17/strided_slice_3/stack_1:output:01backward_lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maskv
!backward_lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ź
backward_lstm_17/transpose_1	Transpose<backward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_17/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’l
backward_lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¹
concatConcatV2(forward_lstm_17/strided_slice_3:output:0)backward_lstm_17/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ä
NoOpNoOp6^backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp5^backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp7^backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp^backward_lstm_17/while5^forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp4^forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp6^forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp^forward_lstm_17/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : 2n
5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp2l
4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp2p
6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp20
backward_lstm_17/whilebackward_lstm_17/while2l
4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp2j
3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp2n
5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp2.
forward_lstm_17/whileforward_lstm_17/while:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ų
Ī
Xmodel_9_bidirectionalLSTM_univariate_bidirectional_17_forward_lstm_17_while_cond_2298829©
¤model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_loop_counterÆ
Ŗmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_maximum_iterations[
Wmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_placeholder]
Ymodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_placeholder_1]
Ymodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_placeholder_2]
Ymodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_placeholder_3«
¦model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_less_model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_strided_slice_1Ā
½model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_cond_2298829___redundant_placeholder0Ā
½model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_cond_2298829___redundant_placeholder1Ā
½model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_cond_2298829___redundant_placeholder2Ā
½model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_cond_2298829___redundant_placeholder3X
Tmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_identity
ū
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/LessLessWmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_placeholder¦model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_less_model_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_strided_slice_1*
T0*
_output_shapes
: ×
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/IdentityIdentityTmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/Less:z:0*
T0
*
_output_shapes
: "µ
Tmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_while_identity]model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
µ
Ą
2__inference_backward_lstm_17_layer_call_fn_2303923

inputs
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2300269p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
¬

a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_2300817

inputs+
bidirectional_17_2300787:	,
bidirectional_17_2300789:
'
bidirectional_17_2300791:	+
bidirectional_17_2300793:	,
bidirectional_17_2300795:
'
bidirectional_17_2300797:	#
dense_17_2300811:	
dense_17_2300813:
identity¢(bidirectional_17/StatefulPartitionedCall¢ dense_17/StatefulPartitionedCallĀ
lambda_17/PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_lambda_17_layer_call_and_return_conditional_losses_2300495£
(bidirectional_17/StatefulPartitionedCallStatefulPartitionedCall"lambda_17/PartitionedCall:output:0bidirectional_17_2300787bidirectional_17_2300789bidirectional_17_2300791bidirectional_17_2300793bidirectional_17_2300795bidirectional_17_2300797*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2300786”
 dense_17/StatefulPartitionedCallStatefulPartitionedCall1bidirectional_17/StatefulPartitionedCall:output:0dense_17_2300811dense_17_2300813*
Tin
2*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’*$
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *N
fIRG
E__inference_dense_17_layer_call_and_return_conditional_losses_2300810x
IdentityIdentity)dense_17/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
NoOpNoOp)^bidirectional_17/StatefulPartitionedCall!^dense_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 2T
(bidirectional_17/StatefulPartitionedCall(bidirectional_17/StatefulPartitionedCall2D
 dense_17/StatefulPartitionedCall dense_17/StatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
§
Į
1__inference_forward_lstm_17_layer_call_fn_2303266
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallō
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2299218p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
¹$
ó
while_body_2299148
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_109_2299172_0:	1
while_lstm_cell_109_2299174_0:
,
while_lstm_cell_109_2299176_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_109_2299172:	/
while_lstm_cell_109_2299174:
*
while_lstm_cell_109_2299176:	¢+while/lstm_cell_109/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0Ā
+while/lstm_cell_109/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_109_2299172_0while_lstm_cell_109_2299174_0while_lstm_cell_109_2299176_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_lstm_cell_109_layer_call_and_return_conditional_losses_2299133r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:04while/lstm_cell_109/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: 
while/Identity_4Identity4while/lstm_cell_109/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
while/Identity_5Identity4while/lstm_cell_109/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z

while/NoOpNoOp,^while/lstm_cell_109/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_109_2299172while_lstm_cell_109_2299172_0"<
while_lstm_cell_109_2299174while_lstm_cell_109_2299174_0"<
while_lstm_cell_109_2299176while_lstm_cell_109_2299176_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2Z
+while/lstm_cell_109/StatefulPartitionedCall+while/lstm_cell_109/StatefulPartitionedCall: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
“9

L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2299218

inputs(
lstm_cell_109_2299134:	)
lstm_cell_109_2299136:
$
lstm_cell_109_2299138:	
identity¢%lstm_cell_109/StatefulPartitionedCall¢while;
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
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
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
%lstm_cell_109/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_109_2299134lstm_cell_109_2299136lstm_cell_109_2299138*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_lstm_cell_109_layer_call_and_return_conditional_losses_2299133n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ć
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_109_2299134lstm_cell_109_2299136lstm_cell_109_2299138*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2299148*
condR
while_cond_2299147*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
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
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’v
NoOpNoOp&^lstm_cell_109/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2N
%lstm_cell_109/StatefulPartitionedCall%lstm_cell_109/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
ņĮ
Õ
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2302656
inputs_0O
<forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource:	R
>forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource:
L
=forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource:	P
=backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource:	S
?backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource:
M
>backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource:	
identity¢5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp¢4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp¢6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp¢backward_lstm_17/while¢4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp¢3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp¢5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp¢forward_lstm_17/whileM
forward_lstm_17/ShapeShapeinputs_0*
T0*
_output_shapes
:m
#forward_lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_17/strided_sliceStridedSliceforward_lstm_17/Shape:output:0,forward_lstm_17/strided_slice/stack:output:0.forward_lstm_17/strided_slice/stack_1:output:0.forward_lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
forward_lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :£
forward_lstm_17/zeros/packedPack&forward_lstm_17/strided_slice:output:0'forward_lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_17/zerosFill%forward_lstm_17/zeros/packed:output:0$forward_lstm_17/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
 forward_lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :§
forward_lstm_17/zeros_1/packedPack&forward_lstm_17/strided_slice:output:0)forward_lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
forward_lstm_17/zeros_1Fill'forward_lstm_17/zeros_1/packed:output:0&forward_lstm_17/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
forward_lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ”
forward_lstm_17/transpose	Transposeinputs_0'forward_lstm_17/transpose/perm:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’d
forward_lstm_17/Shape_1Shapeforward_lstm_17/transpose:y:0*
T0*
_output_shapes
:o
%forward_lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
forward_lstm_17/strided_slice_1StridedSlice forward_lstm_17/Shape_1:output:0.forward_lstm_17/strided_slice_1/stack:output:00forward_lstm_17/strided_slice_1/stack_1:output:00forward_lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ä
forward_lstm_17/TensorArrayV2TensorListReserve4forward_lstm_17/TensorArrayV2/element_shape:output:0(forward_lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Eforward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’
7forward_lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_17/transpose:y:0Nforward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅo
%forward_lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ā
forward_lstm_17/strided_slice_2StridedSliceforward_lstm_17/transpose:y:0.forward_lstm_17/strided_slice_2/stack:output:00forward_lstm_17/strided_slice_2/stack_1:output:00forward_lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
shrink_axis_mask±
3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOpReadVariableOp<forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Č
$forward_lstm_17/lstm_cell_109/MatMulMatMul(forward_lstm_17/strided_slice_2:output:0;forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¶
5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOp>forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ā
&forward_lstm_17/lstm_cell_109/MatMul_1MatMulforward_lstm_17/zeros:output:0=forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’æ
!forward_lstm_17/lstm_cell_109/addAddV2.forward_lstm_17/lstm_cell_109/MatMul:product:00forward_lstm_17/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOp=forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Č
%forward_lstm_17/lstm_cell_109/BiasAddBiasAdd%forward_lstm_17/lstm_cell_109/add:z:0<forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’o
-forward_lstm_17/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
#forward_lstm_17/lstm_cell_109/splitSplit6forward_lstm_17/lstm_cell_109/split/split_dim:output:0.forward_lstm_17/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
%forward_lstm_17/lstm_cell_109/SigmoidSigmoid,forward_lstm_17/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
'forward_lstm_17/lstm_cell_109/Sigmoid_1Sigmoid,forward_lstm_17/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
!forward_lstm_17/lstm_cell_109/mulMul+forward_lstm_17/lstm_cell_109/Sigmoid_1:y:0 forward_lstm_17/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
"forward_lstm_17/lstm_cell_109/ReluRelu,forward_lstm_17/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ŗ
#forward_lstm_17/lstm_cell_109/mul_1Mul)forward_lstm_17/lstm_cell_109/Sigmoid:y:00forward_lstm_17/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
#forward_lstm_17/lstm_cell_109/add_1AddV2%forward_lstm_17/lstm_cell_109/mul:z:0'forward_lstm_17/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
'forward_lstm_17/lstm_cell_109/Sigmoid_2Sigmoid,forward_lstm_17/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
$forward_lstm_17/lstm_cell_109/Relu_1Relu'forward_lstm_17/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’¾
#forward_lstm_17/lstm_cell_109/mul_2Mul+forward_lstm_17/lstm_cell_109/Sigmoid_2:y:02forward_lstm_17/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’~
-forward_lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   n
,forward_lstm_17/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :õ
forward_lstm_17/TensorArrayV2_1TensorListReserve6forward_lstm_17/TensorArrayV2_1/element_shape:output:05forward_lstm_17/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅV
forward_lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’d
"forward_lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ė
forward_lstm_17/whileWhile+forward_lstm_17/while/loop_counter:output:01forward_lstm_17/while/maximum_iterations:output:0forward_lstm_17/time:output:0(forward_lstm_17/TensorArrayV2_1:handle:0forward_lstm_17/zeros:output:0 forward_lstm_17/zeros_1:output:0(forward_lstm_17/strided_slice_1:output:0Gforward_lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:0<forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource>forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource=forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *.
body&R$
"forward_lstm_17_while_body_2302426*.
cond&R$
"forward_lstm_17_while_cond_2302425*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
@forward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
2forward_lstm_17/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_17/while:output:3Iforward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsx
%forward_lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’q
'forward_lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ų
forward_lstm_17/strided_slice_3StridedSlice;forward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_17/strided_slice_3/stack:output:00forward_lstm_17/strided_slice_3/stack_1:output:00forward_lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_masku
 forward_lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ē
forward_lstm_17/transpose_1	Transpose;forward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_17/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’k
forward_lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    N
backward_lstm_17/ShapeShapeinputs_0*
T0*
_output_shapes
:n
$backward_lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
backward_lstm_17/strided_sliceStridedSlicebackward_lstm_17/Shape:output:0-backward_lstm_17/strided_slice/stack:output:0/backward_lstm_17/strided_slice/stack_1:output:0/backward_lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
backward_lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :¦
backward_lstm_17/zeros/packedPack'backward_lstm_17/strided_slice:output:0(backward_lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
backward_lstm_17/zerosFill&backward_lstm_17/zeros/packed:output:0%backward_lstm_17/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’d
!backward_lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ŗ
backward_lstm_17/zeros_1/packedPack'backward_lstm_17/strided_slice:output:0*backward_lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¦
backward_lstm_17/zeros_1Fill(backward_lstm_17/zeros_1/packed:output:0'backward_lstm_17/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’t
backward_lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          £
backward_lstm_17/transpose	Transposeinputs_0(backward_lstm_17/transpose/perm:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’f
backward_lstm_17/Shape_1Shapebackward_lstm_17/transpose:y:0*
T0*
_output_shapes
:p
&backward_lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 backward_lstm_17/strided_slice_1StridedSlice!backward_lstm_17/Shape_1:output:0/backward_lstm_17/strided_slice_1/stack:output:01backward_lstm_17/strided_slice_1/stack_1:output:01backward_lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ē
backward_lstm_17/TensorArrayV2TensorListReserve5backward_lstm_17/TensorArrayV2/element_shape:output:0)backward_lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅi
backward_lstm_17/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ¹
backward_lstm_17/ReverseV2	ReverseV2backward_lstm_17/transpose:y:0(backward_lstm_17/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
Fbackward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’
8backward_lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_17/ReverseV2:output:0Obackward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅp
&backward_lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ē
 backward_lstm_17/strided_slice_2StridedSlicebackward_lstm_17/transpose:y:0/backward_lstm_17/strided_slice_2/stack:output:01backward_lstm_17/strided_slice_2/stack_1:output:01backward_lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
shrink_axis_mask³
4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOpReadVariableOp=backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ė
%backward_lstm_17/lstm_cell_110/MatMulMatMul)backward_lstm_17/strided_slice_2:output:0<backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ø
6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOp?backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Å
'backward_lstm_17/lstm_cell_110/MatMul_1MatMulbackward_lstm_17/zeros:output:0>backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
"backward_lstm_17/lstm_cell_110/addAddV2/backward_lstm_17/lstm_cell_110/MatMul:product:01backward_lstm_17/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’±
5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOp>backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ė
&backward_lstm_17/lstm_cell_110/BiasAddBiasAdd&backward_lstm_17/lstm_cell_110/add:z:0=backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’p
.backward_lstm_17/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$backward_lstm_17/lstm_cell_110/splitSplit7backward_lstm_17/lstm_cell_110/split/split_dim:output:0/backward_lstm_17/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
&backward_lstm_17/lstm_cell_110/SigmoidSigmoid-backward_lstm_17/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
(backward_lstm_17/lstm_cell_110/Sigmoid_1Sigmoid-backward_lstm_17/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’­
"backward_lstm_17/lstm_cell_110/mulMul,backward_lstm_17/lstm_cell_110/Sigmoid_1:y:0!backward_lstm_17/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
#backward_lstm_17/lstm_cell_110/ReluRelu-backward_lstm_17/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’½
$backward_lstm_17/lstm_cell_110/mul_1Mul*backward_lstm_17/lstm_cell_110/Sigmoid:y:01backward_lstm_17/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’²
$backward_lstm_17/lstm_cell_110/add_1AddV2&backward_lstm_17/lstm_cell_110/mul:z:0(backward_lstm_17/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
(backward_lstm_17/lstm_cell_110/Sigmoid_2Sigmoid-backward_lstm_17/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
%backward_lstm_17/lstm_cell_110/Relu_1Relu(backward_lstm_17/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Į
$backward_lstm_17/lstm_cell_110/mul_2Mul,backward_lstm_17/lstm_cell_110/Sigmoid_2:y:03backward_lstm_17/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
.backward_lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   o
-backward_lstm_17/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ų
 backward_lstm_17/TensorArrayV2_1TensorListReserve7backward_lstm_17/TensorArrayV2_1/element_shape:output:06backward_lstm_17/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅW
backward_lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’e
#backward_lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ł
backward_lstm_17/whileWhile,backward_lstm_17/while/loop_counter:output:02backward_lstm_17/while/maximum_iterations:output:0backward_lstm_17/time:output:0)backward_lstm_17/TensorArrayV2_1:handle:0backward_lstm_17/zeros:output:0!backward_lstm_17/zeros_1:output:0)backward_lstm_17/strided_slice_1:output:0Hbackward_lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:0=backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource?backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource>backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( */
body'R%
#backward_lstm_17_while_body_2302569*/
cond'R%
#backward_lstm_17_while_cond_2302568*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
Abackward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
3backward_lstm_17/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_17/while:output:3Jbackward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsy
&backward_lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’r
(backward_lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ż
 backward_lstm_17/strided_slice_3StridedSlice<backward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_17/strided_slice_3/stack:output:01backward_lstm_17/strided_slice_3/stack_1:output:01backward_lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maskv
!backward_lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ź
backward_lstm_17/transpose_1	Transpose<backward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_17/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’l
backward_lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¹
concatConcatV2(forward_lstm_17/strided_slice_3:output:0)backward_lstm_17/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ä
NoOpNoOp6^backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp5^backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp7^backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp^backward_lstm_17/while5^forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp4^forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp6^forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp^forward_lstm_17/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : : : : 2n
5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp2l
4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp2p
6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp20
backward_lstm_17/whilebackward_lstm_17/while2l
4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp2j
3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp2n
5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp2.
forward_lstm_17/whileforward_lstm_17/while:g c
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
¬
G
+__inference_lambda_17_layer_call_fn_2301996

inputs
identityø
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_lambda_17_layer_call_and_return_conditional_losses_2301184d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:’’’’’’’’’:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
:
Ü
while_body_2303649
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_109_matmul_readvariableop_resource_0:	J
6while_lstm_cell_109_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_109_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_109_matmul_readvariableop_resource:	H
4while_lstm_cell_109_matmul_1_readvariableop_resource:
B
3while_lstm_cell_109_biasadd_readvariableop_resource:	¢*while/lstm_cell_109/BiasAdd/ReadVariableOp¢)while/lstm_cell_109/MatMul/ReadVariableOp¢+while/lstm_cell_109/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
)while/lstm_cell_109/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_109_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_109/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¤
+while/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_109_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_109/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’”
while/lstm_cell_109/addAddV2$while/lstm_cell_109/MatMul:product:0&while/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
*while/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_109_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ŗ
while/lstm_cell_109/BiasAddBiasAddwhile/lstm_cell_109/add:z:02while/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
#while/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_109/splitSplit,while/lstm_cell_109/split/split_dim:output:0$while/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split}
while/lstm_cell_109/SigmoidSigmoid"while/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/Sigmoid_1Sigmoid"while/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/mulMul!while/lstm_cell_109/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell_109/ReluRelu"while/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/mul_1Mulwhile/lstm_cell_109/Sigmoid:y:0&while/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/add_1AddV2while/lstm_cell_109/mul:z:0while/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/Sigmoid_2Sigmoid"while/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’t
while/lstm_cell_109/Relu_1Reluwhile/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ 
while/lstm_cell_109/mul_2Mul!while/lstm_cell_109/Sigmoid_2:y:0(while/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ī
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_109/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: {
while/Identity_4Identitywhile/lstm_cell_109/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’{
while/Identity_5Identitywhile/lstm_cell_109/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ó

while/NoOpNoOp+^while/lstm_cell_109/BiasAdd/ReadVariableOp*^while/lstm_cell_109/MatMul/ReadVariableOp,^while/lstm_cell_109/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_109_biasadd_readvariableop_resource5while_lstm_cell_109_biasadd_readvariableop_resource_0"n
4while_lstm_cell_109_matmul_1_readvariableop_resource6while_lstm_cell_109_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_109_matmul_readvariableop_resource4while_lstm_cell_109_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2X
*while/lstm_cell_109/BiasAdd/ReadVariableOp*while/lstm_cell_109/BiasAdd/ReadVariableOp2V
)while/lstm_cell_109/MatMul/ReadVariableOp)while/lstm_cell_109/MatMul/ReadVariableOp2Z
+while/lstm_cell_109/MatMul_1/ReadVariableOp+while/lstm_cell_109/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
£N
ü
#backward_lstm_17_while_body_2302569>
:backward_lstm_17_while_backward_lstm_17_while_loop_counterD
@backward_lstm_17_while_backward_lstm_17_while_maximum_iterations&
"backward_lstm_17_while_placeholder(
$backward_lstm_17_while_placeholder_1(
$backward_lstm_17_while_placeholder_2(
$backward_lstm_17_while_placeholder_3=
9backward_lstm_17_while_backward_lstm_17_strided_slice_1_0y
ubackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0X
Ebackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0:	[
Gbackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0:
U
Fbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0:	#
backward_lstm_17_while_identity%
!backward_lstm_17_while_identity_1%
!backward_lstm_17_while_identity_2%
!backward_lstm_17_while_identity_3%
!backward_lstm_17_while_identity_4%
!backward_lstm_17_while_identity_5;
7backward_lstm_17_while_backward_lstm_17_strided_slice_1w
sbackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensorV
Cbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource:	Y
Ebackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource:
S
Dbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource:	¢;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp¢:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp¢<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp
Hbackward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’
:backward_lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_17_while_placeholderQbackward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0Į
:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOpReadVariableOpEbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ļ
+backward_lstm_17/while/lstm_cell_110/MatMulMatMulAbackward_lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:0Bbackward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ę
<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOpGbackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ö
-backward_lstm_17/while/lstm_cell_110/MatMul_1MatMul$backward_lstm_17_while_placeholder_2Dbackward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ō
(backward_lstm_17/while/lstm_cell_110/addAddV25backward_lstm_17/while/lstm_cell_110/MatMul:product:07backward_lstm_17/while/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’æ
;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOpFbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ż
,backward_lstm_17/while/lstm_cell_110/BiasAddBiasAdd,backward_lstm_17/while/lstm_cell_110/add:z:0Cbackward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’v
4backward_lstm_17/while/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
*backward_lstm_17/while/lstm_cell_110/splitSplit=backward_lstm_17/while/lstm_cell_110/split/split_dim:output:05backward_lstm_17/while/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
,backward_lstm_17/while/lstm_cell_110/SigmoidSigmoid3backward_lstm_17/while/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’”
.backward_lstm_17/while/lstm_cell_110/Sigmoid_1Sigmoid3backward_lstm_17/while/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’¼
(backward_lstm_17/while/lstm_cell_110/mulMul2backward_lstm_17/while/lstm_cell_110/Sigmoid_1:y:0$backward_lstm_17_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
)backward_lstm_17/while/lstm_cell_110/ReluRelu3backward_lstm_17/while/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ļ
*backward_lstm_17/while/lstm_cell_110/mul_1Mul0backward_lstm_17/while/lstm_cell_110/Sigmoid:y:07backward_lstm_17/while/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Ä
*backward_lstm_17/while/lstm_cell_110/add_1AddV2,backward_lstm_17/while/lstm_cell_110/mul:z:0.backward_lstm_17/while/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’”
.backward_lstm_17/while/lstm_cell_110/Sigmoid_2Sigmoid3backward_lstm_17/while/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
+backward_lstm_17/while/lstm_cell_110/Relu_1Relu.backward_lstm_17/while/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ó
*backward_lstm_17/while/lstm_cell_110/mul_2Mul2backward_lstm_17/while/lstm_cell_110/Sigmoid_2:y:09backward_lstm_17/while/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Abackward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ²
;backward_lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_17_while_placeholder_1Jbackward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/index:output:0.backward_lstm_17/while/lstm_cell_110/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ^
backward_lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_17/while/addAddV2"backward_lstm_17_while_placeholder%backward_lstm_17/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :«
backward_lstm_17/while/add_1AddV2:backward_lstm_17_while_backward_lstm_17_while_loop_counter'backward_lstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_17/while/IdentityIdentity backward_lstm_17/while/add_1:z:0^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: ®
!backward_lstm_17/while/Identity_1Identity@backward_lstm_17_while_backward_lstm_17_while_maximum_iterations^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: 
!backward_lstm_17/while/Identity_2Identitybackward_lstm_17/while/add:z:0^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: ¹
!backward_lstm_17/while/Identity_3IdentityKbackward_lstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: ®
!backward_lstm_17/while/Identity_4Identity.backward_lstm_17/while/lstm_cell_110/mul_2:z:0^backward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’®
!backward_lstm_17/while/Identity_5Identity.backward_lstm_17/while/lstm_cell_110/add_1:z:0^backward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
backward_lstm_17/while/NoOpNoOp<^backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp;^backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp=^backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "t
7backward_lstm_17_while_backward_lstm_17_strided_slice_19backward_lstm_17_while_backward_lstm_17_strided_slice_1_0"K
backward_lstm_17_while_identity(backward_lstm_17/while/Identity:output:0"O
!backward_lstm_17_while_identity_1*backward_lstm_17/while/Identity_1:output:0"O
!backward_lstm_17_while_identity_2*backward_lstm_17/while/Identity_2:output:0"O
!backward_lstm_17_while_identity_3*backward_lstm_17/while/Identity_3:output:0"O
!backward_lstm_17_while_identity_4*backward_lstm_17/while/Identity_4:output:0"O
!backward_lstm_17_while_identity_5*backward_lstm_17/while/Identity_5:output:0"
Dbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resourceFbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0"
Ebackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resourceGbackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0"
Cbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resourceEbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0"ģ
sbackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensorubackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2z
;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp2x
:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp2|
<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
:
Ü
while_body_2300351
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_109_matmul_readvariableop_resource_0:	J
6while_lstm_cell_109_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_109_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_109_matmul_readvariableop_resource:	H
4while_lstm_cell_109_matmul_1_readvariableop_resource:
B
3while_lstm_cell_109_biasadd_readvariableop_resource:	¢*while/lstm_cell_109/BiasAdd/ReadVariableOp¢)while/lstm_cell_109/MatMul/ReadVariableOp¢+while/lstm_cell_109/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
)while/lstm_cell_109/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_109_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_109/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¤
+while/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_109_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_109/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’”
while/lstm_cell_109/addAddV2$while/lstm_cell_109/MatMul:product:0&while/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
*while/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_109_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ŗ
while/lstm_cell_109/BiasAddBiasAddwhile/lstm_cell_109/add:z:02while/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
#while/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_109/splitSplit,while/lstm_cell_109/split/split_dim:output:0$while/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split}
while/lstm_cell_109/SigmoidSigmoid"while/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/Sigmoid_1Sigmoid"while/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/mulMul!while/lstm_cell_109/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell_109/ReluRelu"while/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/mul_1Mulwhile/lstm_cell_109/Sigmoid:y:0&while/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/add_1AddV2while/lstm_cell_109/mul:z:0while/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/Sigmoid_2Sigmoid"while/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’t
while/lstm_cell_109/Relu_1Reluwhile/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ 
while/lstm_cell_109/mul_2Mul!while/lstm_cell_109/Sigmoid_2:y:0(while/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ī
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_109/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: {
while/Identity_4Identitywhile/lstm_cell_109/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’{
while/Identity_5Identitywhile/lstm_cell_109/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ó

while/NoOpNoOp+^while/lstm_cell_109/BiasAdd/ReadVariableOp*^while/lstm_cell_109/MatMul/ReadVariableOp,^while/lstm_cell_109/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_109_biasadd_readvariableop_resource5while_lstm_cell_109_biasadd_readvariableop_resource_0"n
4while_lstm_cell_109_matmul_1_readvariableop_resource6while_lstm_cell_109_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_109_matmul_readvariableop_resource4while_lstm_cell_109_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2X
*while/lstm_cell_109/BiasAdd/ReadVariableOp*while/lstm_cell_109/BiasAdd/ReadVariableOp2V
)while/lstm_cell_109/MatMul/ReadVariableOp)while/lstm_cell_109/MatMul/ReadVariableOp2Z
+while/lstm_cell_109/MatMul_1/ReadVariableOp+while/lstm_cell_109/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
:
Ü
while_body_2304426
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_110_matmul_readvariableop_resource_0:	J
6while_lstm_cell_110_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_110_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_110_matmul_readvariableop_resource:	H
4while_lstm_cell_110_matmul_1_readvariableop_resource:
B
3while_lstm_cell_110_biasadd_readvariableop_resource:	¢*while/lstm_cell_110/BiasAdd/ReadVariableOp¢)while/lstm_cell_110/MatMul/ReadVariableOp¢+while/lstm_cell_110/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
)while/lstm_cell_110/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_110_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_110/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¤
+while/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_110_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_110/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’”
while/lstm_cell_110/addAddV2$while/lstm_cell_110/MatMul:product:0&while/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
*while/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_110_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ŗ
while/lstm_cell_110/BiasAddBiasAddwhile/lstm_cell_110/add:z:02while/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
#while/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_110/splitSplit,while/lstm_cell_110/split/split_dim:output:0$while/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split}
while/lstm_cell_110/SigmoidSigmoid"while/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/Sigmoid_1Sigmoid"while/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/mulMul!while/lstm_cell_110/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell_110/ReluRelu"while/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/mul_1Mulwhile/lstm_cell_110/Sigmoid:y:0&while/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/add_1AddV2while/lstm_cell_110/mul:z:0while/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/Sigmoid_2Sigmoid"while/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’t
while/lstm_cell_110/Relu_1Reluwhile/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ 
while/lstm_cell_110/mul_2Mul!while/lstm_cell_110/Sigmoid_2:y:0(while/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ī
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_110/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: {
while/Identity_4Identitywhile/lstm_cell_110/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’{
while/Identity_5Identitywhile/lstm_cell_110/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ó

while/NoOpNoOp+^while/lstm_cell_110/BiasAdd/ReadVariableOp*^while/lstm_cell_110/MatMul/ReadVariableOp,^while/lstm_cell_110/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_110_biasadd_readvariableop_resource5while_lstm_cell_110_biasadd_readvariableop_resource_0"n
4while_lstm_cell_110_matmul_1_readvariableop_resource6while_lstm_cell_110_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_110_matmul_readvariableop_resource4while_lstm_cell_110_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2X
*while/lstm_cell_110/BiasAdd/ReadVariableOp*while/lstm_cell_110/BiasAdd/ReadVariableOp2V
)while/lstm_cell_110/MatMul/ReadVariableOp)while/lstm_cell_110/MatMul/ReadVariableOp2Z
+while/lstm_cell_110/MatMul_1/ReadVariableOp+while/lstm_cell_110/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
õ

J__inference_lstm_cell_110_layer_call_and_return_conditional_losses_2304707

inputs
states_0
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ŗ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:’’’’’’’’’V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:’’’’’’’’’O
ReluRelusplit:output:2*
T0*(
_output_shapes
:’’’’’’’’’`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:’’’’’’’’’L
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’d
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/0:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/1
ż
ł
/__inference_lstm_cell_109_layer_call_fn_2304545

inputs
states_0
states_1
unknown:	
	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_lstm_cell_109_layer_call_and_return_conditional_losses_2299281p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:’’’’’’’’’r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/0:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/1
:
Ü
while_body_2299998
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_110_matmul_readvariableop_resource_0:	J
6while_lstm_cell_110_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_110_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_110_matmul_readvariableop_resource:	H
4while_lstm_cell_110_matmul_1_readvariableop_resource:
B
3while_lstm_cell_110_biasadd_readvariableop_resource:	¢*while/lstm_cell_110/BiasAdd/ReadVariableOp¢)while/lstm_cell_110/MatMul/ReadVariableOp¢+while/lstm_cell_110/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
)while/lstm_cell_110/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_110_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_110/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¤
+while/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_110_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_110/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’”
while/lstm_cell_110/addAddV2$while/lstm_cell_110/MatMul:product:0&while/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
*while/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_110_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ŗ
while/lstm_cell_110/BiasAddBiasAddwhile/lstm_cell_110/add:z:02while/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
#while/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_110/splitSplit,while/lstm_cell_110/split/split_dim:output:0$while/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split}
while/lstm_cell_110/SigmoidSigmoid"while/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/Sigmoid_1Sigmoid"while/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/mulMul!while/lstm_cell_110/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell_110/ReluRelu"while/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/mul_1Mulwhile/lstm_cell_110/Sigmoid:y:0&while/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/add_1AddV2while/lstm_cell_110/mul:z:0while/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/Sigmoid_2Sigmoid"while/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’t
while/lstm_cell_110/Relu_1Reluwhile/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ 
while/lstm_cell_110/mul_2Mul!while/lstm_cell_110/Sigmoid_2:y:0(while/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ī
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_110/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: {
while/Identity_4Identitywhile/lstm_cell_110/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’{
while/Identity_5Identitywhile/lstm_cell_110/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ó

while/NoOpNoOp+^while/lstm_cell_110/BiasAdd/ReadVariableOp*^while/lstm_cell_110/MatMul/ReadVariableOp,^while/lstm_cell_110/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_110_biasadd_readvariableop_resource5while_lstm_cell_110_biasadd_readvariableop_resource_0"n
4while_lstm_cell_110_matmul_1_readvariableop_resource6while_lstm_cell_110_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_110_matmul_readvariableop_resource4while_lstm_cell_110_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2X
*while/lstm_cell_110/BiasAdd/ReadVariableOp*while/lstm_cell_110/BiasAdd/ReadVariableOp2V
)while/lstm_cell_110/MatMul/ReadVariableOp)while/lstm_cell_110/MatMul/ReadVariableOp2Z
+while/lstm_cell_110/MatMul_1/ReadVariableOp+while/lstm_cell_110/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
M
Ü
"forward_lstm_17_while_body_2303006<
8forward_lstm_17_while_forward_lstm_17_while_loop_counterB
>forward_lstm_17_while_forward_lstm_17_while_maximum_iterations%
!forward_lstm_17_while_placeholder'
#forward_lstm_17_while_placeholder_1'
#forward_lstm_17_while_placeholder_2'
#forward_lstm_17_while_placeholder_3;
7forward_lstm_17_while_forward_lstm_17_strided_slice_1_0w
sforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0W
Dforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0:	Z
Fforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0:
T
Eforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0:	"
forward_lstm_17_while_identity$
 forward_lstm_17_while_identity_1$
 forward_lstm_17_while_identity_2$
 forward_lstm_17_while_identity_3$
 forward_lstm_17_while_identity_4$
 forward_lstm_17_while_identity_59
5forward_lstm_17_while_forward_lstm_17_strided_slice_1u
qforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensorU
Bforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource:	X
Dforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource:
R
Cforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource:	¢:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp¢9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp¢;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp
Gforward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ö
9forward_lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_17_while_placeholderPforward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0æ
9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOpReadVariableOpDforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ģ
*forward_lstm_17/while/lstm_cell_109/MatMulMatMul@forward_lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:0Aforward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ä
;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOpFforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ó
,forward_lstm_17/while/lstm_cell_109/MatMul_1MatMul#forward_lstm_17_while_placeholder_2Cforward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ń
'forward_lstm_17/while/lstm_cell_109/addAddV24forward_lstm_17/while/lstm_cell_109/MatMul:product:06forward_lstm_17/while/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’½
:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOpEforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ś
+forward_lstm_17/while/lstm_cell_109/BiasAddBiasAdd+forward_lstm_17/while/lstm_cell_109/add:z:0Bforward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’u
3forward_lstm_17/while/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¦
)forward_lstm_17/while/lstm_cell_109/splitSplit<forward_lstm_17/while/lstm_cell_109/split/split_dim:output:04forward_lstm_17/while/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
+forward_lstm_17/while/lstm_cell_109/SigmoidSigmoid2forward_lstm_17/while/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
-forward_lstm_17/while/lstm_cell_109/Sigmoid_1Sigmoid2forward_lstm_17/while/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’¹
'forward_lstm_17/while/lstm_cell_109/mulMul1forward_lstm_17/while/lstm_cell_109/Sigmoid_1:y:0#forward_lstm_17_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
(forward_lstm_17/while/lstm_cell_109/ReluRelu2forward_lstm_17/while/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ģ
)forward_lstm_17/while/lstm_cell_109/mul_1Mul/forward_lstm_17/while/lstm_cell_109/Sigmoid:y:06forward_lstm_17/while/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Į
)forward_lstm_17/while/lstm_cell_109/add_1AddV2+forward_lstm_17/while/lstm_cell_109/mul:z:0-forward_lstm_17/while/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
-forward_lstm_17/while/lstm_cell_109/Sigmoid_2Sigmoid2forward_lstm_17/while/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
*forward_lstm_17/while/lstm_cell_109/Relu_1Relu-forward_lstm_17/while/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Š
)forward_lstm_17/while/lstm_cell_109/mul_2Mul1forward_lstm_17/while/lstm_cell_109/Sigmoid_2:y:08forward_lstm_17/while/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
@forward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ®
:forward_lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_17_while_placeholder_1Iforward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/index:output:0-forward_lstm_17/while/lstm_cell_109/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ]
forward_lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_17/while/addAddV2!forward_lstm_17_while_placeholder$forward_lstm_17/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :§
forward_lstm_17/while/add_1AddV28forward_lstm_17_while_forward_lstm_17_while_loop_counter&forward_lstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_17/while/IdentityIdentityforward_lstm_17/while/add_1:z:0^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: Ŗ
 forward_lstm_17/while/Identity_1Identity>forward_lstm_17_while_forward_lstm_17_while_maximum_iterations^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: 
 forward_lstm_17/while/Identity_2Identityforward_lstm_17/while/add:z:0^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: ¶
 forward_lstm_17/while/Identity_3IdentityJforward_lstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: «
 forward_lstm_17/while/Identity_4Identity-forward_lstm_17/while/lstm_cell_109/mul_2:z:0^forward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’«
 forward_lstm_17/while/Identity_5Identity-forward_lstm_17/while/lstm_cell_109/add_1:z:0^forward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
forward_lstm_17/while/NoOpNoOp;^forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp:^forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp<^forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "p
5forward_lstm_17_while_forward_lstm_17_strided_slice_17forward_lstm_17_while_forward_lstm_17_strided_slice_1_0"I
forward_lstm_17_while_identity'forward_lstm_17/while/Identity:output:0"M
 forward_lstm_17_while_identity_1)forward_lstm_17/while/Identity_1:output:0"M
 forward_lstm_17_while_identity_2)forward_lstm_17/while/Identity_2:output:0"M
 forward_lstm_17_while_identity_3)forward_lstm_17/while/Identity_3:output:0"M
 forward_lstm_17_while_identity_4)forward_lstm_17/while/Identity_4:output:0"M
 forward_lstm_17_while_identity_5)forward_lstm_17/while/Identity_5:output:0"
Cforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resourceEforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0"
Dforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resourceFforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0"
Bforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resourceDforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0"č
qforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensorsforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2x
:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp2v
9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp2z
;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
Ü
Ü
3bidirectional_17_forward_lstm_17_while_cond_2301749^
Zbidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_while_loop_counterd
`bidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_while_maximum_iterations6
2bidirectional_17_forward_lstm_17_while_placeholder8
4bidirectional_17_forward_lstm_17_while_placeholder_18
4bidirectional_17_forward_lstm_17_while_placeholder_28
4bidirectional_17_forward_lstm_17_while_placeholder_3`
\bidirectional_17_forward_lstm_17_while_less_bidirectional_17_forward_lstm_17_strided_slice_1w
sbidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_while_cond_2301749___redundant_placeholder0w
sbidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_while_cond_2301749___redundant_placeholder1w
sbidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_while_cond_2301749___redundant_placeholder2w
sbidirectional_17_forward_lstm_17_while_bidirectional_17_forward_lstm_17_while_cond_2301749___redundant_placeholder33
/bidirectional_17_forward_lstm_17_while_identity
ę
+bidirectional_17/forward_lstm_17/while/LessLess2bidirectional_17_forward_lstm_17_while_placeholder\bidirectional_17_forward_lstm_17_while_less_bidirectional_17_forward_lstm_17_strided_slice_1*
T0*
_output_shapes
: 
/bidirectional_17/forward_lstm_17/while/IdentityIdentity/bidirectional_17/forward_lstm_17/while/Less:z:0*
T0
*
_output_shapes
: "k
/bidirectional_17_forward_lstm_17_while_identity8bidirectional_17/forward_lstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:


ā
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_2301390

inputs
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:	
	unknown_3:

	unknown_4:	
	unknown_5:	
	unknown_6:
identity¢StatefulPartitionedCallĒ
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *j
feRc
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_2301233o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ÉL
«
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2299929

inputs?
,lstm_cell_109_matmul_readvariableop_resource:	B
.lstm_cell_109_matmul_1_readvariableop_resource:
<
-lstm_cell_109_biasadd_readvariableop_resource:	
identity¢$lstm_cell_109/BiasAdd/ReadVariableOp¢#lstm_cell_109/MatMul/ReadVariableOp¢%lstm_cell_109/MatMul_1/ReadVariableOp¢while;
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
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
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:ņ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
shrink_axis_mask
#lstm_cell_109/MatMul/ReadVariableOpReadVariableOp,lstm_cell_109_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_109/MatMulMatMulstrided_slice_2:output:0+lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
%lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_109_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_109/MatMul_1MatMulzeros:output:0-lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/addAddV2lstm_cell_109/MatMul:product:0 lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_109_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_109/BiasAddBiasAddlstm_cell_109/add:z:0,lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’_
lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_109/splitSplit&lstm_cell_109/split/split_dim:output:0lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitq
lstm_cell_109/SigmoidSigmoidlstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_109/Sigmoid_1Sigmoidlstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’z
lstm_cell_109/mulMullstm_cell_109/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell_109/ReluRelulstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/mul_1Mullstm_cell_109/Sigmoid:y:0 lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/add_1AddV2lstm_cell_109/mul:z:0lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_109/Sigmoid_2Sigmoidlstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’h
lstm_cell_109/Relu_1Relulstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/mul_2Mullstm_cell_109/Sigmoid_2:y:0"lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_109_matmul_readvariableop_resource.lstm_cell_109_matmul_1_readvariableop_resource-lstm_cell_109_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2299844*
condR
while_cond_2299843*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
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
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ć
NoOpNoOp%^lstm_cell_109/BiasAdd/ReadVariableOp$^lstm_cell_109/MatMul/ReadVariableOp&^lstm_cell_109/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2L
$lstm_cell_109/BiasAdd/ReadVariableOp$lstm_cell_109/BiasAdd/ReadVariableOp2J
#lstm_cell_109/MatMul/ReadVariableOp#lstm_cell_109/MatMul/ReadVariableOp2N
%lstm_cell_109/MatMul_1/ReadVariableOp%lstm_cell_109/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
’

"forward_lstm_17_while_cond_2302715<
8forward_lstm_17_while_forward_lstm_17_while_loop_counterB
>forward_lstm_17_while_forward_lstm_17_while_maximum_iterations%
!forward_lstm_17_while_placeholder'
#forward_lstm_17_while_placeholder_1'
#forward_lstm_17_while_placeholder_2'
#forward_lstm_17_while_placeholder_3>
:forward_lstm_17_while_less_forward_lstm_17_strided_slice_1U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2302715___redundant_placeholder0U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2302715___redundant_placeholder1U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2302715___redundant_placeholder2U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2302715___redundant_placeholder3"
forward_lstm_17_while_identity
¢
forward_lstm_17/while/LessLess!forward_lstm_17_while_placeholder:forward_lstm_17_while_less_forward_lstm_17_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_17/while/IdentityIdentityforward_lstm_17/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_17_while_identity'forward_lstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
¹$
ó
while_body_2299504
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_00
while_lstm_cell_110_2299528_0:	1
while_lstm_cell_110_2299530_0:
,
while_lstm_cell_110_2299532_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor.
while_lstm_cell_110_2299528:	/
while_lstm_cell_110_2299530:
*
while_lstm_cell_110_2299532:	¢+while/lstm_cell_110/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0Ā
+while/lstm_cell_110/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_110_2299528_0while_lstm_cell_110_2299530_0while_lstm_cell_110_2299532_0*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_lstm_cell_110_layer_call_and_return_conditional_losses_2299489r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:04while/lstm_cell_110/StatefulPartitionedCall:output:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: 
while/Identity_4Identity4while/lstm_cell_110/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
while/Identity_5Identity4while/lstm_cell_110/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z

while/NoOpNoOp,^while/lstm_cell_110/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"<
while_lstm_cell_110_2299528while_lstm_cell_110_2299528_0"<
while_lstm_cell_110_2299530while_lstm_cell_110_2299530_0"<
while_lstm_cell_110_2299532while_lstm_cell_110_2299532_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2Z
+while/lstm_cell_110/StatefulPartitionedCall+while/lstm_cell_110/StatefulPartitionedCall: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
£N
ü
#backward_lstm_17_while_body_2302279>
:backward_lstm_17_while_backward_lstm_17_while_loop_counterD
@backward_lstm_17_while_backward_lstm_17_while_maximum_iterations&
"backward_lstm_17_while_placeholder(
$backward_lstm_17_while_placeholder_1(
$backward_lstm_17_while_placeholder_2(
$backward_lstm_17_while_placeholder_3=
9backward_lstm_17_while_backward_lstm_17_strided_slice_1_0y
ubackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0X
Ebackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0:	[
Gbackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0:
U
Fbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0:	#
backward_lstm_17_while_identity%
!backward_lstm_17_while_identity_1%
!backward_lstm_17_while_identity_2%
!backward_lstm_17_while_identity_3%
!backward_lstm_17_while_identity_4%
!backward_lstm_17_while_identity_5;
7backward_lstm_17_while_backward_lstm_17_strided_slice_1w
sbackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensorV
Cbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource:	Y
Ebackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource:
S
Dbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource:	¢;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp¢:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp¢<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp
Hbackward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’
:backward_lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_17_while_placeholderQbackward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0Į
:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOpReadVariableOpEbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ļ
+backward_lstm_17/while/lstm_cell_110/MatMulMatMulAbackward_lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:0Bbackward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ę
<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOpGbackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ö
-backward_lstm_17/while/lstm_cell_110/MatMul_1MatMul$backward_lstm_17_while_placeholder_2Dbackward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ō
(backward_lstm_17/while/lstm_cell_110/addAddV25backward_lstm_17/while/lstm_cell_110/MatMul:product:07backward_lstm_17/while/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’æ
;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOpFbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ż
,backward_lstm_17/while/lstm_cell_110/BiasAddBiasAdd,backward_lstm_17/while/lstm_cell_110/add:z:0Cbackward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’v
4backward_lstm_17/while/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
*backward_lstm_17/while/lstm_cell_110/splitSplit=backward_lstm_17/while/lstm_cell_110/split/split_dim:output:05backward_lstm_17/while/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
,backward_lstm_17/while/lstm_cell_110/SigmoidSigmoid3backward_lstm_17/while/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’”
.backward_lstm_17/while/lstm_cell_110/Sigmoid_1Sigmoid3backward_lstm_17/while/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’¼
(backward_lstm_17/while/lstm_cell_110/mulMul2backward_lstm_17/while/lstm_cell_110/Sigmoid_1:y:0$backward_lstm_17_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
)backward_lstm_17/while/lstm_cell_110/ReluRelu3backward_lstm_17/while/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ļ
*backward_lstm_17/while/lstm_cell_110/mul_1Mul0backward_lstm_17/while/lstm_cell_110/Sigmoid:y:07backward_lstm_17/while/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Ä
*backward_lstm_17/while/lstm_cell_110/add_1AddV2,backward_lstm_17/while/lstm_cell_110/mul:z:0.backward_lstm_17/while/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’”
.backward_lstm_17/while/lstm_cell_110/Sigmoid_2Sigmoid3backward_lstm_17/while/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
+backward_lstm_17/while/lstm_cell_110/Relu_1Relu.backward_lstm_17/while/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ó
*backward_lstm_17/while/lstm_cell_110/mul_2Mul2backward_lstm_17/while/lstm_cell_110/Sigmoid_2:y:09backward_lstm_17/while/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Abackward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ²
;backward_lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_17_while_placeholder_1Jbackward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/index:output:0.backward_lstm_17/while/lstm_cell_110/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ^
backward_lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_17/while/addAddV2"backward_lstm_17_while_placeholder%backward_lstm_17/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :«
backward_lstm_17/while/add_1AddV2:backward_lstm_17_while_backward_lstm_17_while_loop_counter'backward_lstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_17/while/IdentityIdentity backward_lstm_17/while/add_1:z:0^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: ®
!backward_lstm_17/while/Identity_1Identity@backward_lstm_17_while_backward_lstm_17_while_maximum_iterations^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: 
!backward_lstm_17/while/Identity_2Identitybackward_lstm_17/while/add:z:0^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: ¹
!backward_lstm_17/while/Identity_3IdentityKbackward_lstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: ®
!backward_lstm_17/while/Identity_4Identity.backward_lstm_17/while/lstm_cell_110/mul_2:z:0^backward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’®
!backward_lstm_17/while/Identity_5Identity.backward_lstm_17/while/lstm_cell_110/add_1:z:0^backward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
backward_lstm_17/while/NoOpNoOp<^backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp;^backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp=^backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "t
7backward_lstm_17_while_backward_lstm_17_strided_slice_19backward_lstm_17_while_backward_lstm_17_strided_slice_1_0"K
backward_lstm_17_while_identity(backward_lstm_17/while/Identity:output:0"O
!backward_lstm_17_while_identity_1*backward_lstm_17/while/Identity_1:output:0"O
!backward_lstm_17_while_identity_2*backward_lstm_17/while/Identity_2:output:0"O
!backward_lstm_17_while_identity_3*backward_lstm_17/while/Identity_3:output:0"O
!backward_lstm_17_while_identity_4*backward_lstm_17/while/Identity_4:output:0"O
!backward_lstm_17_while_identity_5*backward_lstm_17/while/Identity_5:output:0"
Dbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resourceFbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0"
Ebackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resourceGbackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0"
Cbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resourceEbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0"ģ
sbackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensorubackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2z
;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp2x
:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp2|
<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
ī
Ę
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2300467

inputs*
forward_lstm_17_2300450:	+
forward_lstm_17_2300452:
&
forward_lstm_17_2300454:	+
backward_lstm_17_2300457:	,
backward_lstm_17_2300459:
'
backward_lstm_17_2300461:	
identity¢(backward_lstm_17/StatefulPartitionedCall¢'forward_lstm_17/StatefulPartitionedCall®
'forward_lstm_17/StatefulPartitionedCallStatefulPartitionedCallinputsforward_lstm_17_2300450forward_lstm_17_2300452forward_lstm_17_2300454*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2300436³
(backward_lstm_17/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_lstm_17_2300457backward_lstm_17_2300459backward_lstm_17_2300461*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2300269M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :É
concatConcatV20forward_lstm_17/StatefulPartitionedCall:output:01backward_lstm_17/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp)^backward_lstm_17/StatefulPartitionedCall(^forward_lstm_17/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : : : : 2T
(backward_lstm_17/StatefulPartitionedCall(backward_lstm_17/StatefulPartitionedCall2R
'forward_lstm_17/StatefulPartitionedCall'forward_lstm_17/StatefulPartitionedCall:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
©
Ā
2__inference_backward_lstm_17_layer_call_fn_2303890
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2299574p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
¬
G
+__inference_lambda_17_layer_call_fn_2301991

inputs
identityø
PartitionedCallPartitionedCallinputs*
Tin
2*
Tout
2*
_collective_manager_ids
 *+
_output_shapes
:’’’’’’’’’* 
_read_only_resource_inputs
 *0
config_proto 

CPU

GPU2*0J 8 *O
fJRH
F__inference_lambda_17_layer_call_and_return_conditional_losses_2300495d
IdentityIdentityPartitionedCall:output:0*
T0*+
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:’’’’’’’’’:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs


#backward_lstm_17_while_cond_2303148>
:backward_lstm_17_while_backward_lstm_17_while_loop_counterD
@backward_lstm_17_while_backward_lstm_17_while_maximum_iterations&
"backward_lstm_17_while_placeholder(
$backward_lstm_17_while_placeholder_1(
$backward_lstm_17_while_placeholder_2(
$backward_lstm_17_while_placeholder_3@
<backward_lstm_17_while_less_backward_lstm_17_strided_slice_1W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2303148___redundant_placeholder0W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2303148___redundant_placeholder1W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2303148___redundant_placeholder2W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2303148___redundant_placeholder3#
backward_lstm_17_while_identity
¦
backward_lstm_17/while/LessLess"backward_lstm_17_while_placeholder<backward_lstm_17_while_less_backward_lstm_17_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_17/while/IdentityIdentitybackward_lstm_17/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_17_while_identity(backward_lstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
©
Ā
2__inference_backward_lstm_17_layer_call_fn_2303901
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallõ
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2299769p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
Ū
ö
"__inference__wrapped_model_2299066
lambda_17_input
rmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource:	
tmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource:

smodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource:	
smodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource:	
umodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource:

tmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource:	_
Lmodel_9_bidirectionallstm_univariate_dense_17_matmul_readvariableop_resource:	[
Mmodel_9_bidirectionallstm_univariate_dense_17_biasadd_readvariableop_resource:
identity¢kmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp¢jmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp¢lmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp¢Lmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while¢jmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp¢imodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp¢kmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp¢Kmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while¢Dmodel_9_bidirectionalLSTM_univariate/dense_17/BiasAdd/ReadVariableOp¢Cmodel_9_bidirectionalLSTM_univariate/dense_17/MatMul/ReadVariableOp
=model_9_bidirectionalLSTM_univariate/lambda_17/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Ö
9model_9_bidirectionalLSTM_univariate/lambda_17/ExpandDims
ExpandDimslambda_17_inputFmodel_9_bidirectionalLSTM_univariate/lambda_17/ExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’½
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/ShapeShapeBmodel_9_bidirectionalLSTM_univariate/lambda_17/ExpandDims:output:0*
T0*
_output_shapes
:£
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: „
[model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:„
[model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Æ
Smodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_sliceStridedSliceTmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/Shape:output:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice/stack:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice/stack_1:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Å
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/zeros/packedPack\model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    æ
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/zerosFill[model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/zeros/packed:output:0Zmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :É
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/zeros_1/packedPack\model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice:output:0_model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:
Smodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Å
Mmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/zeros_1Fill]model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/zeros_1/packed:output:0\model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’©
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          µ
Omodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/transpose	TransposeBmodel_9_bidirectionalLSTM_univariate/lambda_17/ExpandDims:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’Š
Mmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/Shape_1ShapeSmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/transpose:y:0*
T0*
_output_shapes
:„
[model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: §
]model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:§
]model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¹
Umodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_1StridedSliceVmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/Shape_1:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_1/stack:output:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_1/stack_1:output:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¬
amodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
Smodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/TensorArrayV2TensorListReservejmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/TensorArrayV2/element_shape:output:0^model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅĢ
{model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ³
mmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorSmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/transpose:y:0model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ„
[model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: §
]model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:§
]model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ē
Umodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_2StridedSliceSmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/transpose:y:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_2/stack:output:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_2/stack_1:output:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
imodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOpReadVariableOprmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ź
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/MatMulMatMul^model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_2:output:0qmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
kmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOptmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0ä
\model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1MatMulTmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/zeros:output:0smodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’į
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/addAddV2dmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/MatMul:product:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
jmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOpsmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ź
[model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/BiasAddBiasAdd[model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/add:z:0rmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’„
cmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/splitSplitlmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/split/split_dim:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitż
[model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/SigmoidSigmoidbmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’’
]model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/Sigmoid_1Sigmoidbmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ģ
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/mulMulamodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/Sigmoid_1:y:0Vmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’÷
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/ReluRelubmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ü
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/mul_1Mul_model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/Sigmoid:y:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Ń
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/add_1AddV2[model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/mul:z:0]model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’’
]model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/Sigmoid_2Sigmoidbmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’ō
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/Relu_1Relu]model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ą
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/mul_2Mulamodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/Sigmoid_2:y:0hmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’“
cmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¤
bmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :
Umodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/TensorArrayV2_1TensorListReservelmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/TensorArrayV2_1/element_shape:output:0kmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Jmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : ©
^model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ß
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/whileWhileamodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/loop_counter:output:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while/maximum_iterations:output:0Smodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/time:output:0^model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/TensorArrayV2_1:handle:0Tmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/zeros:output:0Vmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/zeros_1:output:0^model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_1:output:0}model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:0rmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_lstm_cell_109_matmul_readvariableop_resourcetmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resourcesmodel_9_bidirectionallstm_univariate_bidirectional_17_forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *d
body\RZ
Xmodel_9_bidirectionalLSTM_univariate_bidirectional_17_forward_lstm_17_while_body_2298830*d
cond\RZ
Xmodel_9_bidirectionalLSTM_univariate_bidirectional_17_forward_lstm_17_while_cond_2298829*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations Ē
vmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ©
hmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/TensorArrayV2Stack/TensorListStackTensorListStackTmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while:output:3model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elements®
[model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’§
]model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: §
]model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
Umodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_3StridedSliceqmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_3/stack:output:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_3/stack_1:output:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask«
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          é
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/transpose_1	Transposeqmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0_model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’”
Mmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ¾
Lmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/ShapeShapeBmodel_9_bidirectionalLSTM_univariate/lambda_17/ExpandDims:output:0*
T0*
_output_shapes
:¤
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ¦
\model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¦
\model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:“
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_sliceStridedSliceUmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/Shape:output:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice/stack:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice/stack_1:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Umodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Č
Smodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/zeros/packedPack]model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice:output:0^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ā
Lmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/zerosFill\model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/zeros/packed:output:0[model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ģ
Umodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/zeros_1/packedPack]model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice:output:0`model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Č
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/zeros_1Fill^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/zeros_1/packed:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
Umodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ·
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/transpose	TransposeBmodel_9_bidirectionalLSTM_univariate/lambda_17/ExpandDims:output:0^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’Ņ
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/Shape_1ShapeTmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/transpose:y:0*
T0*
_output_shapes
:¦
\model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Ø
^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ø
^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¾
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_1StridedSliceWmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/Shape_1:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_1/stack:output:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_1/stack_1:output:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask­
bmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/TensorArrayV2TensorListReservekmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/TensorArrayV2/element_shape:output:0_model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Umodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: É
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/ReverseV2	ReverseV2Tmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/transpose:y:0^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/ReverseV2/axis:output:0*
T0*+
_output_shapes
:’’’’’’’’’Ķ
|model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   »
nmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorYmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/ReverseV2:output:0model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ¦
\model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: Ø
^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ø
^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ģ
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_2StridedSliceTmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/transpose:y:0emodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_2/stack:output:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_2/stack_1:output:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
jmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOpReadVariableOpsmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ķ
[model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/MatMulMatMul_model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_2:output:0rmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¤
lmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOpumodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0ē
]model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1MatMulUmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/zeros:output:0tmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ä
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/addAddV2emodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/MatMul:product:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
kmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOptmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ķ
\model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/BiasAddBiasAdd\model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/add:z:0smodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¦
dmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¹
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/splitSplitmmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/split/split_dim:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split’
\model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/SigmoidSigmoidcmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/Sigmoid_1Sigmoidcmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ļ
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/mulMulbmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/Sigmoid_1:y:0Wmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’ł
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/ReluRelucmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ß
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/mul_1Mul`model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/Sigmoid:y:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Ō
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/add_1AddV2\model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/mul:z:0^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/Sigmoid_2Sigmoidcmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’ö
[model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/Relu_1Relu^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ć
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/mul_2Mulbmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/Sigmoid_2:y:0imodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’µ
dmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   „
cmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/TensorArrayV2_1TensorListReservemmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/TensorArrayV2_1/element_shape:output:0lmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : Ŗ
_model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ķ
Lmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/whileWhilebmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/loop_counter:output:0hmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/maximum_iterations:output:0Tmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/time:output:0_model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/TensorArrayV2_1:handle:0Umodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/zeros:output:0Wmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/zeros_1:output:0_model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_1:output:0~model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:0smodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_lstm_cell_110_matmul_readvariableop_resourceumodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resourcetmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *e
body]R[
Ymodel_9_bidirectionalLSTM_univariate_bidirectional_17_backward_lstm_17_while_body_2298973*e
cond]R[
Ymodel_9_bidirectionalLSTM_univariate_bidirectional_17_backward_lstm_17_while_cond_2298972*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations Č
wmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ­
imodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/TensorArrayV2Stack/TensorListStackTensorListStackUmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while:output:3model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsÆ
\model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’Ø
^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: Ø
^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ė
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_3StridedSlicermodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0emodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_3/stack:output:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_3/stack_1:output:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask¬
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ģ
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/transpose_1	Transposermodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0`model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’¢
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
Amodel_9_bidirectionalLSTM_univariate/bidirectional_17/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
<model_9_bidirectionalLSTM_univariate/bidirectional_17/concatConcatV2^model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/strided_slice_3:output:0_model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/strided_slice_3:output:0Jmodel_9_bidirectionalLSTM_univariate/bidirectional_17/concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’Ń
Cmodel_9_bidirectionalLSTM_univariate/dense_17/MatMul/ReadVariableOpReadVariableOpLmodel_9_bidirectionallstm_univariate_dense_17_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
4model_9_bidirectionalLSTM_univariate/dense_17/MatMulMatMulEmodel_9_bidirectionalLSTM_univariate/bidirectional_17/concat:output:0Kmodel_9_bidirectionalLSTM_univariate/dense_17/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’Ī
Dmodel_9_bidirectionalLSTM_univariate/dense_17/BiasAdd/ReadVariableOpReadVariableOpMmodel_9_bidirectionallstm_univariate_dense_17_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
5model_9_bidirectionalLSTM_univariate/dense_17/BiasAddBiasAdd>model_9_bidirectionalLSTM_univariate/dense_17/MatMul:product:0Lmodel_9_bidirectionalLSTM_univariate/dense_17/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
IdentityIdentity>model_9_bidirectionalLSTM_univariate/dense_17/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
NoOpNoOpl^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOpk^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOpm^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOpM^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/whilek^model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOpj^model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOpl^model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOpL^model_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/whileE^model_9_bidirectionalLSTM_univariate/dense_17/BiasAdd/ReadVariableOpD^model_9_bidirectionalLSTM_univariate/dense_17/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 2Ś
kmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOpkmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp2Ų
jmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOpjmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp2Ü
lmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOplmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp2
Lmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/whileLmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while2Ų
jmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOpjmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp2Ö
imodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOpimodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp2Ś
kmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOpkmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp2
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/whileKmodel_9_bidirectionalLSTM_univariate/bidirectional_17/forward_lstm_17/while2
Dmodel_9_bidirectionalLSTM_univariate/dense_17/BiasAdd/ReadVariableOpDmodel_9_bidirectionalLSTM_univariate/dense_17/BiasAdd/ReadVariableOp2
Cmodel_9_bidirectionalLSTM_univariate/dense_17/MatMul/ReadVariableOpCmodel_9_bidirectionalLSTM_univariate/dense_17/MatMul/ReadVariableOp:X T
'
_output_shapes
:’’’’’’’’’
)
_user_specified_namelambda_17_input
¾
Č
while_cond_2299503
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2299503___redundant_placeholder05
1while_while_cond_2299503___redundant_placeholder15
1while_while_cond_2299503___redundant_placeholder25
1while_while_cond_2299503___redundant_placeholder3
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
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
µ
Ą
2__inference_backward_lstm_17_layer_call_fn_2303912

inputs
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCalló
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2300083p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 22
StatefulPartitionedCallStatefulPartitionedCall:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
’

"forward_lstm_17_while_cond_2300555<
8forward_lstm_17_while_forward_lstm_17_while_loop_counterB
>forward_lstm_17_while_forward_lstm_17_while_maximum_iterations%
!forward_lstm_17_while_placeholder'
#forward_lstm_17_while_placeholder_1'
#forward_lstm_17_while_placeholder_2'
#forward_lstm_17_while_placeholder_3>
:forward_lstm_17_while_less_forward_lstm_17_strided_slice_1U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2300555___redundant_placeholder0U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2300555___redundant_placeholder1U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2300555___redundant_placeholder2U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2300555___redundant_placeholder3"
forward_lstm_17_while_identity
¢
forward_lstm_17/while/LessLess!forward_lstm_17_while_placeholder:forward_lstm_17_while_less_forward_lstm_17_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_17/while/IdentityIdentityforward_lstm_17/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_17_while_identity'forward_lstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
	

2__inference_bidirectional_17_layer_call_fn_2302059

inputs
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCallinputsunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4*
Tin
	2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*(
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *V
fQRO
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2300786p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ņĮ
Õ
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2302366
inputs_0O
<forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource:	R
>forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource:
L
=forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource:	P
=backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource:	S
?backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource:
M
>backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource:	
identity¢5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp¢4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp¢6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp¢backward_lstm_17/while¢4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp¢3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp¢5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp¢forward_lstm_17/whileM
forward_lstm_17/ShapeShapeinputs_0*
T0*
_output_shapes
:m
#forward_lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_17/strided_sliceStridedSliceforward_lstm_17/Shape:output:0,forward_lstm_17/strided_slice/stack:output:0.forward_lstm_17/strided_slice/stack_1:output:0.forward_lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
forward_lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :£
forward_lstm_17/zeros/packedPack&forward_lstm_17/strided_slice:output:0'forward_lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_17/zerosFill%forward_lstm_17/zeros/packed:output:0$forward_lstm_17/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
 forward_lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :§
forward_lstm_17/zeros_1/packedPack&forward_lstm_17/strided_slice:output:0)forward_lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
forward_lstm_17/zeros_1Fill'forward_lstm_17/zeros_1/packed:output:0&forward_lstm_17/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
forward_lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ”
forward_lstm_17/transpose	Transposeinputs_0'forward_lstm_17/transpose/perm:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’d
forward_lstm_17/Shape_1Shapeforward_lstm_17/transpose:y:0*
T0*
_output_shapes
:o
%forward_lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
forward_lstm_17/strided_slice_1StridedSlice forward_lstm_17/Shape_1:output:0.forward_lstm_17/strided_slice_1/stack:output:00forward_lstm_17/strided_slice_1/stack_1:output:00forward_lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ä
forward_lstm_17/TensorArrayV2TensorListReserve4forward_lstm_17/TensorArrayV2/element_shape:output:0(forward_lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Eforward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’
7forward_lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_17/transpose:y:0Nforward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅo
%forward_lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ā
forward_lstm_17/strided_slice_2StridedSliceforward_lstm_17/transpose:y:0.forward_lstm_17/strided_slice_2/stack:output:00forward_lstm_17/strided_slice_2/stack_1:output:00forward_lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
shrink_axis_mask±
3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOpReadVariableOp<forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Č
$forward_lstm_17/lstm_cell_109/MatMulMatMul(forward_lstm_17/strided_slice_2:output:0;forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¶
5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOp>forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ā
&forward_lstm_17/lstm_cell_109/MatMul_1MatMulforward_lstm_17/zeros:output:0=forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’æ
!forward_lstm_17/lstm_cell_109/addAddV2.forward_lstm_17/lstm_cell_109/MatMul:product:00forward_lstm_17/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOp=forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Č
%forward_lstm_17/lstm_cell_109/BiasAddBiasAdd%forward_lstm_17/lstm_cell_109/add:z:0<forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’o
-forward_lstm_17/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
#forward_lstm_17/lstm_cell_109/splitSplit6forward_lstm_17/lstm_cell_109/split/split_dim:output:0.forward_lstm_17/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
%forward_lstm_17/lstm_cell_109/SigmoidSigmoid,forward_lstm_17/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
'forward_lstm_17/lstm_cell_109/Sigmoid_1Sigmoid,forward_lstm_17/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
!forward_lstm_17/lstm_cell_109/mulMul+forward_lstm_17/lstm_cell_109/Sigmoid_1:y:0 forward_lstm_17/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
"forward_lstm_17/lstm_cell_109/ReluRelu,forward_lstm_17/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ŗ
#forward_lstm_17/lstm_cell_109/mul_1Mul)forward_lstm_17/lstm_cell_109/Sigmoid:y:00forward_lstm_17/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
#forward_lstm_17/lstm_cell_109/add_1AddV2%forward_lstm_17/lstm_cell_109/mul:z:0'forward_lstm_17/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
'forward_lstm_17/lstm_cell_109/Sigmoid_2Sigmoid,forward_lstm_17/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
$forward_lstm_17/lstm_cell_109/Relu_1Relu'forward_lstm_17/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’¾
#forward_lstm_17/lstm_cell_109/mul_2Mul+forward_lstm_17/lstm_cell_109/Sigmoid_2:y:02forward_lstm_17/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’~
-forward_lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   n
,forward_lstm_17/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :õ
forward_lstm_17/TensorArrayV2_1TensorListReserve6forward_lstm_17/TensorArrayV2_1/element_shape:output:05forward_lstm_17/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅV
forward_lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’d
"forward_lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ė
forward_lstm_17/whileWhile+forward_lstm_17/while/loop_counter:output:01forward_lstm_17/while/maximum_iterations:output:0forward_lstm_17/time:output:0(forward_lstm_17/TensorArrayV2_1:handle:0forward_lstm_17/zeros:output:0 forward_lstm_17/zeros_1:output:0(forward_lstm_17/strided_slice_1:output:0Gforward_lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:0<forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource>forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource=forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *.
body&R$
"forward_lstm_17_while_body_2302136*.
cond&R$
"forward_lstm_17_while_cond_2302135*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
@forward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
2forward_lstm_17/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_17/while:output:3Iforward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsx
%forward_lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’q
'forward_lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ų
forward_lstm_17/strided_slice_3StridedSlice;forward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_17/strided_slice_3/stack:output:00forward_lstm_17/strided_slice_3/stack_1:output:00forward_lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_masku
 forward_lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ē
forward_lstm_17/transpose_1	Transpose;forward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_17/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’k
forward_lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    N
backward_lstm_17/ShapeShapeinputs_0*
T0*
_output_shapes
:n
$backward_lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
backward_lstm_17/strided_sliceStridedSlicebackward_lstm_17/Shape:output:0-backward_lstm_17/strided_slice/stack:output:0/backward_lstm_17/strided_slice/stack_1:output:0/backward_lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
backward_lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :¦
backward_lstm_17/zeros/packedPack'backward_lstm_17/strided_slice:output:0(backward_lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
backward_lstm_17/zerosFill&backward_lstm_17/zeros/packed:output:0%backward_lstm_17/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’d
!backward_lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ŗ
backward_lstm_17/zeros_1/packedPack'backward_lstm_17/strided_slice:output:0*backward_lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¦
backward_lstm_17/zeros_1Fill(backward_lstm_17/zeros_1/packed:output:0'backward_lstm_17/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’t
backward_lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          £
backward_lstm_17/transpose	Transposeinputs_0(backward_lstm_17/transpose/perm:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’f
backward_lstm_17/Shape_1Shapebackward_lstm_17/transpose:y:0*
T0*
_output_shapes
:p
&backward_lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 backward_lstm_17/strided_slice_1StridedSlice!backward_lstm_17/Shape_1:output:0/backward_lstm_17/strided_slice_1/stack:output:01backward_lstm_17/strided_slice_1/stack_1:output:01backward_lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ē
backward_lstm_17/TensorArrayV2TensorListReserve5backward_lstm_17/TensorArrayV2/element_shape:output:0)backward_lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅi
backward_lstm_17/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ¹
backward_lstm_17/ReverseV2	ReverseV2backward_lstm_17/transpose:y:0(backward_lstm_17/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
Fbackward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’
8backward_lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_17/ReverseV2:output:0Obackward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅp
&backward_lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ē
 backward_lstm_17/strided_slice_2StridedSlicebackward_lstm_17/transpose:y:0/backward_lstm_17/strided_slice_2/stack:output:01backward_lstm_17/strided_slice_2/stack_1:output:01backward_lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
shrink_axis_mask³
4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOpReadVariableOp=backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ė
%backward_lstm_17/lstm_cell_110/MatMulMatMul)backward_lstm_17/strided_slice_2:output:0<backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ø
6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOp?backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Å
'backward_lstm_17/lstm_cell_110/MatMul_1MatMulbackward_lstm_17/zeros:output:0>backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
"backward_lstm_17/lstm_cell_110/addAddV2/backward_lstm_17/lstm_cell_110/MatMul:product:01backward_lstm_17/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’±
5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOp>backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ė
&backward_lstm_17/lstm_cell_110/BiasAddBiasAdd&backward_lstm_17/lstm_cell_110/add:z:0=backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’p
.backward_lstm_17/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$backward_lstm_17/lstm_cell_110/splitSplit7backward_lstm_17/lstm_cell_110/split/split_dim:output:0/backward_lstm_17/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
&backward_lstm_17/lstm_cell_110/SigmoidSigmoid-backward_lstm_17/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
(backward_lstm_17/lstm_cell_110/Sigmoid_1Sigmoid-backward_lstm_17/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’­
"backward_lstm_17/lstm_cell_110/mulMul,backward_lstm_17/lstm_cell_110/Sigmoid_1:y:0!backward_lstm_17/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
#backward_lstm_17/lstm_cell_110/ReluRelu-backward_lstm_17/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’½
$backward_lstm_17/lstm_cell_110/mul_1Mul*backward_lstm_17/lstm_cell_110/Sigmoid:y:01backward_lstm_17/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’²
$backward_lstm_17/lstm_cell_110/add_1AddV2&backward_lstm_17/lstm_cell_110/mul:z:0(backward_lstm_17/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
(backward_lstm_17/lstm_cell_110/Sigmoid_2Sigmoid-backward_lstm_17/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
%backward_lstm_17/lstm_cell_110/Relu_1Relu(backward_lstm_17/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Į
$backward_lstm_17/lstm_cell_110/mul_2Mul,backward_lstm_17/lstm_cell_110/Sigmoid_2:y:03backward_lstm_17/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
.backward_lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   o
-backward_lstm_17/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ų
 backward_lstm_17/TensorArrayV2_1TensorListReserve7backward_lstm_17/TensorArrayV2_1/element_shape:output:06backward_lstm_17/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅW
backward_lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’e
#backward_lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ł
backward_lstm_17/whileWhile,backward_lstm_17/while/loop_counter:output:02backward_lstm_17/while/maximum_iterations:output:0backward_lstm_17/time:output:0)backward_lstm_17/TensorArrayV2_1:handle:0backward_lstm_17/zeros:output:0!backward_lstm_17/zeros_1:output:0)backward_lstm_17/strided_slice_1:output:0Hbackward_lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:0=backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource?backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource>backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( */
body'R%
#backward_lstm_17_while_body_2302279*/
cond'R%
#backward_lstm_17_while_cond_2302278*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
Abackward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
3backward_lstm_17/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_17/while:output:3Jbackward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsy
&backward_lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’r
(backward_lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ż
 backward_lstm_17/strided_slice_3StridedSlice<backward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_17/strided_slice_3/stack:output:01backward_lstm_17/strided_slice_3/stack_1:output:01backward_lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maskv
!backward_lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ź
backward_lstm_17/transpose_1	Transpose<backward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_17/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’l
backward_lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¹
concatConcatV2(forward_lstm_17/strided_slice_3:output:0)backward_lstm_17/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ä
NoOpNoOp6^backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp5^backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp7^backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp^backward_lstm_17/while5^forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp4^forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp6^forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp^forward_lstm_17/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : : : : 2n
5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp2l
4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp2p
6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp20
backward_lstm_17/whilebackward_lstm_17/while2l
4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp2j
3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp2n
5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp2.
forward_lstm_17/whileforward_lstm_17/while:g c
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
:
Ü
while_body_2303794
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_109_matmul_readvariableop_resource_0:	J
6while_lstm_cell_109_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_109_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_109_matmul_readvariableop_resource:	H
4while_lstm_cell_109_matmul_1_readvariableop_resource:
B
3while_lstm_cell_109_biasadd_readvariableop_resource:	¢*while/lstm_cell_109/BiasAdd/ReadVariableOp¢)while/lstm_cell_109/MatMul/ReadVariableOp¢+while/lstm_cell_109/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
)while/lstm_cell_109/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_109_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_109/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¤
+while/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_109_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_109/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’”
while/lstm_cell_109/addAddV2$while/lstm_cell_109/MatMul:product:0&while/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
*while/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_109_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ŗ
while/lstm_cell_109/BiasAddBiasAddwhile/lstm_cell_109/add:z:02while/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
#while/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_109/splitSplit,while/lstm_cell_109/split/split_dim:output:0$while/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split}
while/lstm_cell_109/SigmoidSigmoid"while/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/Sigmoid_1Sigmoid"while/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/mulMul!while/lstm_cell_109/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell_109/ReluRelu"while/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/mul_1Mulwhile/lstm_cell_109/Sigmoid:y:0&while/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/add_1AddV2while/lstm_cell_109/mul:z:0while/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/Sigmoid_2Sigmoid"while/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’t
while/lstm_cell_109/Relu_1Reluwhile/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ 
while/lstm_cell_109/mul_2Mul!while/lstm_cell_109/Sigmoid_2:y:0(while/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ī
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_109/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: {
while/Identity_4Identitywhile/lstm_cell_109/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’{
while/Identity_5Identitywhile/lstm_cell_109/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ó

while/NoOpNoOp+^while/lstm_cell_109/BiasAdd/ReadVariableOp*^while/lstm_cell_109/MatMul/ReadVariableOp,^while/lstm_cell_109/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_109_biasadd_readvariableop_resource5while_lstm_cell_109_biasadd_readvariableop_resource_0"n
4while_lstm_cell_109_matmul_1_readvariableop_resource6while_lstm_cell_109_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_109_matmul_readvariableop_resource4while_lstm_cell_109_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2X
*while/lstm_cell_109/BiasAdd/ReadVariableOp*while/lstm_cell_109/BiasAdd/ReadVariableOp2V
)while/lstm_cell_109/MatMul/ReadVariableOp)while/lstm_cell_109/MatMul/ReadVariableOp2Z
+while/lstm_cell_109/MatMul_1/ReadVariableOp+while/lstm_cell_109/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
¾
Č
while_cond_2303358
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2303358___redundant_placeholder05
1while_while_cond_2303358___redundant_placeholder15
1while_while_cond_2303358___redundant_placeholder25
1while_while_cond_2303358___redundant_placeholder3
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
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
­b
 
4bidirectional_17_backward_lstm_17_while_body_2301893`
\bidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_while_loop_counterf
bbidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_while_maximum_iterations7
3bidirectional_17_backward_lstm_17_while_placeholder9
5bidirectional_17_backward_lstm_17_while_placeholder_19
5bidirectional_17_backward_lstm_17_while_placeholder_29
5bidirectional_17_backward_lstm_17_while_placeholder_3_
[bidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_strided_slice_1_0
bidirectional_17_backward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_bidirectional_17_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0i
Vbidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0:	l
Xbidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0:
f
Wbidirectional_17_backward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0:	4
0bidirectional_17_backward_lstm_17_while_identity6
2bidirectional_17_backward_lstm_17_while_identity_16
2bidirectional_17_backward_lstm_17_while_identity_26
2bidirectional_17_backward_lstm_17_while_identity_36
2bidirectional_17_backward_lstm_17_while_identity_46
2bidirectional_17_backward_lstm_17_while_identity_5]
Ybidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_strided_slice_1
bidirectional_17_backward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_bidirectional_17_backward_lstm_17_tensorarrayunstack_tensorlistfromtensorg
Tbidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource:	j
Vbidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource:
d
Ubidirectional_17_backward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource:	¢Lbidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp¢Kbidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp¢Mbidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOpŖ
Ybidirectional_17/backward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ń
Kbidirectional_17/backward_lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_17_backward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_bidirectional_17_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_03bidirectional_17_backward_lstm_17_while_placeholderbbidirectional_17/backward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0ć
Kbidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOpReadVariableOpVbidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¢
<bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMulMatMulRbidirectional_17/backward_lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:0Sbidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’č
Mbidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOpXbidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
>bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1MatMul5bidirectional_17_backward_lstm_17_while_placeholder_2Ubidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
9bidirectional_17/backward_lstm_17/while/lstm_cell_110/addAddV2Fbidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul:product:0Hbidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’į
Lbidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOpWbidirectional_17_backward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
=bidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAddBiasAdd=bidirectional_17/backward_lstm_17/while/lstm_cell_110/add:z:0Tbidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
Ebidirectional_17/backward_lstm_17/while/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ü
;bidirectional_17/backward_lstm_17/while/lstm_cell_110/splitSplitNbidirectional_17/backward_lstm_17/while/lstm_cell_110/split/split_dim:output:0Fbidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitĮ
=bidirectional_17/backward_lstm_17/while/lstm_cell_110/SigmoidSigmoidDbidirectional_17/backward_lstm_17/while/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’Ć
?bidirectional_17/backward_lstm_17/while/lstm_cell_110/Sigmoid_1SigmoidDbidirectional_17/backward_lstm_17/while/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’ļ
9bidirectional_17/backward_lstm_17/while/lstm_cell_110/mulMulCbidirectional_17/backward_lstm_17/while/lstm_cell_110/Sigmoid_1:y:05bidirectional_17_backward_lstm_17_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’»
:bidirectional_17/backward_lstm_17/while/lstm_cell_110/ReluReluDbidirectional_17/backward_lstm_17/while/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
;bidirectional_17/backward_lstm_17/while/lstm_cell_110/mul_1MulAbidirectional_17/backward_lstm_17/while/lstm_cell_110/Sigmoid:y:0Hbidirectional_17/backward_lstm_17/while/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’÷
;bidirectional_17/backward_lstm_17/while/lstm_cell_110/add_1AddV2=bidirectional_17/backward_lstm_17/while/lstm_cell_110/mul:z:0?bidirectional_17/backward_lstm_17/while/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ć
?bidirectional_17/backward_lstm_17/while/lstm_cell_110/Sigmoid_2SigmoidDbidirectional_17/backward_lstm_17/while/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’ø
<bidirectional_17/backward_lstm_17/while/lstm_cell_110/Relu_1Relu?bidirectional_17/backward_lstm_17/while/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
;bidirectional_17/backward_lstm_17/while/lstm_cell_110/mul_2MulCbidirectional_17/backward_lstm_17/while/lstm_cell_110/Sigmoid_2:y:0Jbidirectional_17/backward_lstm_17/while/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Rbidirectional_17/backward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ö
Lbidirectional_17/backward_lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem5bidirectional_17_backward_lstm_17_while_placeholder_1[bidirectional_17/backward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/index:output:0?bidirectional_17/backward_lstm_17/while/lstm_cell_110/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅo
-bidirectional_17/backward_lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ā
+bidirectional_17/backward_lstm_17/while/addAddV23bidirectional_17_backward_lstm_17_while_placeholder6bidirectional_17/backward_lstm_17/while/add/y:output:0*
T0*
_output_shapes
: q
/bidirectional_17/backward_lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ļ
-bidirectional_17/backward_lstm_17/while/add_1AddV2\bidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_while_loop_counter8bidirectional_17/backward_lstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: æ
0bidirectional_17/backward_lstm_17/while/IdentityIdentity1bidirectional_17/backward_lstm_17/while/add_1:z:0-^bidirectional_17/backward_lstm_17/while/NoOp*
T0*
_output_shapes
: ņ
2bidirectional_17/backward_lstm_17/while/Identity_1Identitybbidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_while_maximum_iterations-^bidirectional_17/backward_lstm_17/while/NoOp*
T0*
_output_shapes
: æ
2bidirectional_17/backward_lstm_17/while/Identity_2Identity/bidirectional_17/backward_lstm_17/while/add:z:0-^bidirectional_17/backward_lstm_17/while/NoOp*
T0*
_output_shapes
: ģ
2bidirectional_17/backward_lstm_17/while/Identity_3Identity\bidirectional_17/backward_lstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^bidirectional_17/backward_lstm_17/while/NoOp*
T0*
_output_shapes
: į
2bidirectional_17/backward_lstm_17/while/Identity_4Identity?bidirectional_17/backward_lstm_17/while/lstm_cell_110/mul_2:z:0-^bidirectional_17/backward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’į
2bidirectional_17/backward_lstm_17/while/Identity_5Identity?bidirectional_17/backward_lstm_17/while/lstm_cell_110/add_1:z:0-^bidirectional_17/backward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ū
,bidirectional_17/backward_lstm_17/while/NoOpNoOpM^bidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOpL^bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOpN^bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "ø
Ybidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_strided_slice_1[bidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_strided_slice_1_0"m
0bidirectional_17_backward_lstm_17_while_identity9bidirectional_17/backward_lstm_17/while/Identity:output:0"q
2bidirectional_17_backward_lstm_17_while_identity_1;bidirectional_17/backward_lstm_17/while/Identity_1:output:0"q
2bidirectional_17_backward_lstm_17_while_identity_2;bidirectional_17/backward_lstm_17/while/Identity_2:output:0"q
2bidirectional_17_backward_lstm_17_while_identity_3;bidirectional_17/backward_lstm_17/while/Identity_3:output:0"q
2bidirectional_17_backward_lstm_17_while_identity_4;bidirectional_17/backward_lstm_17/while/Identity_4:output:0"q
2bidirectional_17_backward_lstm_17_while_identity_5;bidirectional_17/backward_lstm_17/while/Identity_5:output:0"°
Ubidirectional_17_backward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resourceWbidirectional_17_backward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0"²
Vbidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resourceXbidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0"®
Tbidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resourceVbidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0"²
bidirectional_17_backward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_bidirectional_17_backward_lstm_17_tensorarrayunstack_tensorlistfromtensorbidirectional_17_backward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_bidirectional_17_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2
Lbidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOpLbidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp2
Kbidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOpKbidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp2
Mbidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOpMbidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 

Ī
Ymodel_9_bidirectionalLSTM_univariate_bidirectional_17_backward_lstm_17_while_body_2298973«
¦model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_loop_counter±
¬model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_maximum_iterations\
Xmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_placeholder^
Zmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_placeholder_1^
Zmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_placeholder_2^
Zmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_placeholder_3Ŗ
„model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_strided_slice_1_0ę
įmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0
{model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0:	
}model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0:

|model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0:	Y
Umodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_identity[
Wmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_identity_1[
Wmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_identity_2[
Wmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_identity_3[
Wmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_identity_4[
Wmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_identity_5Ø
£model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_strided_slice_1ä
ßmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor
ymodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource:	
{model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource:

zmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource:	¢qmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp¢pmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp¢rmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOpĻ
~model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
pmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemįmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0Xmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_placeholdermodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0­
pmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOpReadVariableOp{model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0
amodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMulMatMulwmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:0xmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’²
rmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOp}model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0ų
cmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1MatMulZmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_placeholder_2zmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ö
^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/addAddV2kmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul:product:0mmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’«
qmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOp|model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0’
bmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAddBiasAddbmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/add:z:0ymodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¬
jmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ė
`model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/splitSplitsmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/split/split_dim:output:0kmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
bmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/SigmoidSigmoidimodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
dmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/Sigmoid_1Sigmoidimodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ž
^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/mulMulhmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/Sigmoid_1:y:0Zmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
_model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/ReluReluimodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ń
`model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/mul_1Mulfmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/Sigmoid:y:0mmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’ę
`model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/add_1AddV2bmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/mul:z:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
dmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/Sigmoid_2Sigmoidimodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
amodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/Relu_1Reludmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’õ
`model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/mul_2Mulhmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/Sigmoid_2:y:0omodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¹
wmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
qmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemZmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_placeholder_1model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/index:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :±
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/addAddV2Xmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_placeholder[model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/add/y:output:0*
T0*
_output_shapes
: 
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/add_1AddV2¦model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_loop_counter]model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: ®
Umodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/IdentityIdentityVmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/add_1:z:0R^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/NoOp*
T0*
_output_shapes
: 
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/Identity_1Identity¬model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_maximum_iterationsR^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/NoOp*
T0*
_output_shapes
: ®
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/Identity_2IdentityTmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/add:z:0R^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/NoOp*
T0*
_output_shapes
: Ü
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/Identity_3Identitymodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0R^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/NoOp*
T0*
_output_shapes
: Š
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/Identity_4Identitydmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/mul_2:z:0R^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/Identity_5Identitydmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/add_1:z:0R^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’ļ
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/NoOpNoOpr^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOpq^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOps^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "·
Umodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_identity^model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/Identity:output:0"»
Wmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_identity_1`model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/Identity_1:output:0"»
Wmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_identity_2`model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/Identity_2:output:0"»
Wmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_identity_3`model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/Identity_3:output:0"»
Wmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_identity_4`model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/Identity_4:output:0"»
Wmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_identity_5`model_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/Identity_5:output:0"ś
zmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource|model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0"ü
{model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource}model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0"ų
ymodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource{model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0"Ī
£model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_strided_slice_1„model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_strided_slice_1_0"Ę
ßmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_tensorarrayunstack_tensorlistfromtensorįmodel_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_17_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2ę
qmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOpqmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp2ä
pmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOppmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp2č
rmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOprmodel_9_bidirectionalLSTM_univariate/bidirectional_17/backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
:
Ü
while_body_2303985
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_110_matmul_readvariableop_resource_0:	J
6while_lstm_cell_110_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_110_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_110_matmul_readvariableop_resource:	H
4while_lstm_cell_110_matmul_1_readvariableop_resource:
B
3while_lstm_cell_110_biasadd_readvariableop_resource:	¢*while/lstm_cell_110/BiasAdd/ReadVariableOp¢)while/lstm_cell_110/MatMul/ReadVariableOp¢+while/lstm_cell_110/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0
)while/lstm_cell_110/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_110_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_110/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¤
+while/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_110_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_110/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’”
while/lstm_cell_110/addAddV2$while/lstm_cell_110/MatMul:product:0&while/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
*while/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_110_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ŗ
while/lstm_cell_110/BiasAddBiasAddwhile/lstm_cell_110/add:z:02while/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
#while/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_110/splitSplit,while/lstm_cell_110/split/split_dim:output:0$while/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split}
while/lstm_cell_110/SigmoidSigmoid"while/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/Sigmoid_1Sigmoid"while/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/mulMul!while/lstm_cell_110/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell_110/ReluRelu"while/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/mul_1Mulwhile/lstm_cell_110/Sigmoid:y:0&while/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/add_1AddV2while/lstm_cell_110/mul:z:0while/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/Sigmoid_2Sigmoid"while/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’t
while/lstm_cell_110/Relu_1Reluwhile/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ 
while/lstm_cell_110/mul_2Mul!while/lstm_cell_110/Sigmoid_2:y:0(while/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ī
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_110/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: {
while/Identity_4Identitywhile/lstm_cell_110/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’{
while/Identity_5Identitywhile/lstm_cell_110/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ó

while/NoOpNoOp+^while/lstm_cell_110/BiasAdd/ReadVariableOp*^while/lstm_cell_110/MatMul/ReadVariableOp,^while/lstm_cell_110/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_110_biasadd_readvariableop_resource5while_lstm_cell_110_biasadd_readvariableop_resource_0"n
4while_lstm_cell_110_matmul_1_readvariableop_resource6while_lstm_cell_110_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_110_matmul_readvariableop_resource4while_lstm_cell_110_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2X
*while/lstm_cell_110/BiasAdd/ReadVariableOp*while/lstm_cell_110/BiasAdd/ReadVariableOp2V
)while/lstm_cell_110/MatMul/ReadVariableOp)while/lstm_cell_110/MatMul/ReadVariableOp2Z
+while/lstm_cell_110/MatMul_1/ReadVariableOp+while/lstm_cell_110/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
¾
Č
while_cond_2299997
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2299997___redundant_placeholder05
1while_while_cond_2299997___redundant_placeholder15
1while_while_cond_2299997___redundant_placeholder25
1while_while_cond_2299997___redundant_placeholder3
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
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
¾
Č
while_cond_2299843
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2299843___redundant_placeholder05
1while_while_cond_2299843___redundant_placeholder15
1while_while_cond_2299843___redundant_placeholder25
1while_while_cond_2299843___redundant_placeholder3
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
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
N
ü
#backward_lstm_17_while_body_2301068>
:backward_lstm_17_while_backward_lstm_17_while_loop_counterD
@backward_lstm_17_while_backward_lstm_17_while_maximum_iterations&
"backward_lstm_17_while_placeholder(
$backward_lstm_17_while_placeholder_1(
$backward_lstm_17_while_placeholder_2(
$backward_lstm_17_while_placeholder_3=
9backward_lstm_17_while_backward_lstm_17_strided_slice_1_0y
ubackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0X
Ebackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0:	[
Gbackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0:
U
Fbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0:	#
backward_lstm_17_while_identity%
!backward_lstm_17_while_identity_1%
!backward_lstm_17_while_identity_2%
!backward_lstm_17_while_identity_3%
!backward_lstm_17_while_identity_4%
!backward_lstm_17_while_identity_5;
7backward_lstm_17_while_backward_lstm_17_strided_slice_1w
sbackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensorV
Cbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource:	Y
Ebackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource:
S
Dbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource:	¢;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp¢:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp¢<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp
Hbackward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ū
:backward_lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_17_while_placeholderQbackward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0Į
:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOpReadVariableOpEbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ļ
+backward_lstm_17/while/lstm_cell_110/MatMulMatMulAbackward_lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:0Bbackward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ę
<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOpGbackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ö
-backward_lstm_17/while/lstm_cell_110/MatMul_1MatMul$backward_lstm_17_while_placeholder_2Dbackward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ō
(backward_lstm_17/while/lstm_cell_110/addAddV25backward_lstm_17/while/lstm_cell_110/MatMul:product:07backward_lstm_17/while/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’æ
;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOpFbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ż
,backward_lstm_17/while/lstm_cell_110/BiasAddBiasAdd,backward_lstm_17/while/lstm_cell_110/add:z:0Cbackward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’v
4backward_lstm_17/while/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
*backward_lstm_17/while/lstm_cell_110/splitSplit=backward_lstm_17/while/lstm_cell_110/split/split_dim:output:05backward_lstm_17/while/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
,backward_lstm_17/while/lstm_cell_110/SigmoidSigmoid3backward_lstm_17/while/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’”
.backward_lstm_17/while/lstm_cell_110/Sigmoid_1Sigmoid3backward_lstm_17/while/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’¼
(backward_lstm_17/while/lstm_cell_110/mulMul2backward_lstm_17/while/lstm_cell_110/Sigmoid_1:y:0$backward_lstm_17_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
)backward_lstm_17/while/lstm_cell_110/ReluRelu3backward_lstm_17/while/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ļ
*backward_lstm_17/while/lstm_cell_110/mul_1Mul0backward_lstm_17/while/lstm_cell_110/Sigmoid:y:07backward_lstm_17/while/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Ä
*backward_lstm_17/while/lstm_cell_110/add_1AddV2,backward_lstm_17/while/lstm_cell_110/mul:z:0.backward_lstm_17/while/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’”
.backward_lstm_17/while/lstm_cell_110/Sigmoid_2Sigmoid3backward_lstm_17/while/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
+backward_lstm_17/while/lstm_cell_110/Relu_1Relu.backward_lstm_17/while/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ó
*backward_lstm_17/while/lstm_cell_110/mul_2Mul2backward_lstm_17/while/lstm_cell_110/Sigmoid_2:y:09backward_lstm_17/while/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Abackward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ²
;backward_lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_17_while_placeholder_1Jbackward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/index:output:0.backward_lstm_17/while/lstm_cell_110/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ^
backward_lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_17/while/addAddV2"backward_lstm_17_while_placeholder%backward_lstm_17/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :«
backward_lstm_17/while/add_1AddV2:backward_lstm_17_while_backward_lstm_17_while_loop_counter'backward_lstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_17/while/IdentityIdentity backward_lstm_17/while/add_1:z:0^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: ®
!backward_lstm_17/while/Identity_1Identity@backward_lstm_17_while_backward_lstm_17_while_maximum_iterations^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: 
!backward_lstm_17/while/Identity_2Identitybackward_lstm_17/while/add:z:0^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: ¹
!backward_lstm_17/while/Identity_3IdentityKbackward_lstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: ®
!backward_lstm_17/while/Identity_4Identity.backward_lstm_17/while/lstm_cell_110/mul_2:z:0^backward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’®
!backward_lstm_17/while/Identity_5Identity.backward_lstm_17/while/lstm_cell_110/add_1:z:0^backward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
backward_lstm_17/while/NoOpNoOp<^backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp;^backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp=^backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "t
7backward_lstm_17_while_backward_lstm_17_strided_slice_19backward_lstm_17_while_backward_lstm_17_strided_slice_1_0"K
backward_lstm_17_while_identity(backward_lstm_17/while/Identity:output:0"O
!backward_lstm_17_while_identity_1*backward_lstm_17/while/Identity_1:output:0"O
!backward_lstm_17_while_identity_2*backward_lstm_17/while/Identity_2:output:0"O
!backward_lstm_17_while_identity_3*backward_lstm_17/while/Identity_3:output:0"O
!backward_lstm_17_while_identity_4*backward_lstm_17/while/Identity_4:output:0"O
!backward_lstm_17_while_identity_5*backward_lstm_17/while/Identity_5:output:0"
Dbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resourceFbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0"
Ebackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resourceGbackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0"
Cbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resourceEbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0"ģ
sbackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensorubackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2z
;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp2x
:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp2|
<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
’

"forward_lstm_17_while_cond_2302135<
8forward_lstm_17_while_forward_lstm_17_while_loop_counterB
>forward_lstm_17_while_forward_lstm_17_while_maximum_iterations%
!forward_lstm_17_while_placeholder'
#forward_lstm_17_while_placeholder_1'
#forward_lstm_17_while_placeholder_2'
#forward_lstm_17_while_placeholder_3>
:forward_lstm_17_while_less_forward_lstm_17_strided_slice_1U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2302135___redundant_placeholder0U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2302135___redundant_placeholder1U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2302135___redundant_placeholder2U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2302135___redundant_placeholder3"
forward_lstm_17_while_identity
¢
forward_lstm_17/while/LessLess!forward_lstm_17_while_placeholder:forward_lstm_17_while_less_forward_lstm_17_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_17/while/IdentityIdentityforward_lstm_17/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_17_while_identity'forward_lstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
¾
Č
while_cond_2303793
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2303793___redundant_placeholder05
1while_while_cond_2303793___redundant_placeholder15
1while_while_cond_2303793___redundant_placeholder25
1while_while_cond_2303793___redundant_placeholder3
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
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
õ

J__inference_lstm_cell_110_layer_call_and_return_conditional_losses_2304675

inputs
states_0
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ŗ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:’’’’’’’’’V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:’’’’’’’’’O
ReluRelusplit:output:2*
T0*(
_output_shapes
:’’’’’’’’’`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:’’’’’’’’’L
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’d
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/0:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/1


#backward_lstm_17_while_cond_2302278>
:backward_lstm_17_while_backward_lstm_17_while_loop_counterD
@backward_lstm_17_while_backward_lstm_17_while_maximum_iterations&
"backward_lstm_17_while_placeholder(
$backward_lstm_17_while_placeholder_1(
$backward_lstm_17_while_placeholder_2(
$backward_lstm_17_while_placeholder_3@
<backward_lstm_17_while_less_backward_lstm_17_strided_slice_1W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2302278___redundant_placeholder0W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2302278___redundant_placeholder1W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2302278___redundant_placeholder2W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2302278___redundant_placeholder3#
backward_lstm_17_while_identity
¦
backward_lstm_17/while/LessLess"backward_lstm_17_while_placeholder<backward_lstm_17_while_less_backward_lstm_17_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_17/while/IdentityIdentitybackward_lstm_17/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_17_while_identity(backward_lstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
N
ü
#backward_lstm_17_while_body_2303149>
:backward_lstm_17_while_backward_lstm_17_while_loop_counterD
@backward_lstm_17_while_backward_lstm_17_while_maximum_iterations&
"backward_lstm_17_while_placeholder(
$backward_lstm_17_while_placeholder_1(
$backward_lstm_17_while_placeholder_2(
$backward_lstm_17_while_placeholder_3=
9backward_lstm_17_while_backward_lstm_17_strided_slice_1_0y
ubackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0X
Ebackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0:	[
Gbackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0:
U
Fbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0:	#
backward_lstm_17_while_identity%
!backward_lstm_17_while_identity_1%
!backward_lstm_17_while_identity_2%
!backward_lstm_17_while_identity_3%
!backward_lstm_17_while_identity_4%
!backward_lstm_17_while_identity_5;
7backward_lstm_17_while_backward_lstm_17_strided_slice_1w
sbackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensorV
Cbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource:	Y
Ebackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource:
S
Dbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource:	¢;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp¢:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp¢<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp
Hbackward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ū
:backward_lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_17_while_placeholderQbackward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0Į
:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOpReadVariableOpEbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ļ
+backward_lstm_17/while/lstm_cell_110/MatMulMatMulAbackward_lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:0Bbackward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ę
<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOpGbackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ö
-backward_lstm_17/while/lstm_cell_110/MatMul_1MatMul$backward_lstm_17_while_placeholder_2Dbackward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ō
(backward_lstm_17/while/lstm_cell_110/addAddV25backward_lstm_17/while/lstm_cell_110/MatMul:product:07backward_lstm_17/while/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’æ
;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOpFbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ż
,backward_lstm_17/while/lstm_cell_110/BiasAddBiasAdd,backward_lstm_17/while/lstm_cell_110/add:z:0Cbackward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’v
4backward_lstm_17/while/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :©
*backward_lstm_17/while/lstm_cell_110/splitSplit=backward_lstm_17/while/lstm_cell_110/split/split_dim:output:05backward_lstm_17/while/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
,backward_lstm_17/while/lstm_cell_110/SigmoidSigmoid3backward_lstm_17/while/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’”
.backward_lstm_17/while/lstm_cell_110/Sigmoid_1Sigmoid3backward_lstm_17/while/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’¼
(backward_lstm_17/while/lstm_cell_110/mulMul2backward_lstm_17/while/lstm_cell_110/Sigmoid_1:y:0$backward_lstm_17_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
)backward_lstm_17/while/lstm_cell_110/ReluRelu3backward_lstm_17/while/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ļ
*backward_lstm_17/while/lstm_cell_110/mul_1Mul0backward_lstm_17/while/lstm_cell_110/Sigmoid:y:07backward_lstm_17/while/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Ä
*backward_lstm_17/while/lstm_cell_110/add_1AddV2,backward_lstm_17/while/lstm_cell_110/mul:z:0.backward_lstm_17/while/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’”
.backward_lstm_17/while/lstm_cell_110/Sigmoid_2Sigmoid3backward_lstm_17/while/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
+backward_lstm_17/while/lstm_cell_110/Relu_1Relu.backward_lstm_17/while/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ó
*backward_lstm_17/while/lstm_cell_110/mul_2Mul2backward_lstm_17/while/lstm_cell_110/Sigmoid_2:y:09backward_lstm_17/while/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Abackward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ²
;backward_lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_17_while_placeholder_1Jbackward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/index:output:0.backward_lstm_17/while/lstm_cell_110/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ^
backward_lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_17/while/addAddV2"backward_lstm_17_while_placeholder%backward_lstm_17/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :«
backward_lstm_17/while/add_1AddV2:backward_lstm_17_while_backward_lstm_17_while_loop_counter'backward_lstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_17/while/IdentityIdentity backward_lstm_17/while/add_1:z:0^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: ®
!backward_lstm_17/while/Identity_1Identity@backward_lstm_17_while_backward_lstm_17_while_maximum_iterations^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: 
!backward_lstm_17/while/Identity_2Identitybackward_lstm_17/while/add:z:0^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: ¹
!backward_lstm_17/while/Identity_3IdentityKbackward_lstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_17/while/NoOp*
T0*
_output_shapes
: ®
!backward_lstm_17/while/Identity_4Identity.backward_lstm_17/while/lstm_cell_110/mul_2:z:0^backward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’®
!backward_lstm_17/while/Identity_5Identity.backward_lstm_17/while/lstm_cell_110/add_1:z:0^backward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
backward_lstm_17/while/NoOpNoOp<^backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp;^backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp=^backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "t
7backward_lstm_17_while_backward_lstm_17_strided_slice_19backward_lstm_17_while_backward_lstm_17_strided_slice_1_0"K
backward_lstm_17_while_identity(backward_lstm_17/while/Identity:output:0"O
!backward_lstm_17_while_identity_1*backward_lstm_17/while/Identity_1:output:0"O
!backward_lstm_17_while_identity_2*backward_lstm_17/while/Identity_2:output:0"O
!backward_lstm_17_while_identity_3*backward_lstm_17/while/Identity_3:output:0"O
!backward_lstm_17_while_identity_4*backward_lstm_17/while/Identity_4:output:0"O
!backward_lstm_17_while_identity_5*backward_lstm_17/while/Identity_5:output:0"
Dbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resourceFbackward_lstm_17_while_lstm_cell_110_biasadd_readvariableop_resource_0"
Ebackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resourceGbackward_lstm_17_while_lstm_cell_110_matmul_1_readvariableop_resource_0"
Cbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resourceEbackward_lstm_17_while_lstm_cell_110_matmul_readvariableop_resource_0"ģ
sbackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensorubackward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2z
;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp;backward_lstm_17/while/lstm_cell_110/BiasAdd/ReadVariableOp2x
:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp:backward_lstm_17/while/lstm_cell_110/MatMul/ReadVariableOp2|
<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp<backward_lstm_17/while/lstm_cell_110/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
ÉL
«
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2303734

inputs?
,lstm_cell_109_matmul_readvariableop_resource:	B
.lstm_cell_109_matmul_1_readvariableop_resource:
<
-lstm_cell_109_biasadd_readvariableop_resource:	
identity¢$lstm_cell_109/BiasAdd/ReadVariableOp¢#lstm_cell_109/MatMul/ReadVariableOp¢%lstm_cell_109/MatMul_1/ReadVariableOp¢while;
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
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
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:ņ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
shrink_axis_mask
#lstm_cell_109/MatMul/ReadVariableOpReadVariableOp,lstm_cell_109_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_109/MatMulMatMulstrided_slice_2:output:0+lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
%lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_109_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_109/MatMul_1MatMulzeros:output:0-lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/addAddV2lstm_cell_109/MatMul:product:0 lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_109_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_109/BiasAddBiasAddlstm_cell_109/add:z:0,lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’_
lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_109/splitSplit&lstm_cell_109/split/split_dim:output:0lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitq
lstm_cell_109/SigmoidSigmoidlstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_109/Sigmoid_1Sigmoidlstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’z
lstm_cell_109/mulMullstm_cell_109/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell_109/ReluRelulstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/mul_1Mullstm_cell_109/Sigmoid:y:0 lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/add_1AddV2lstm_cell_109/mul:z:0lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_109/Sigmoid_2Sigmoidlstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’h
lstm_cell_109/Relu_1Relulstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/mul_2Mullstm_cell_109/Sigmoid_2:y:0"lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_109_matmul_readvariableop_resource.lstm_cell_109_matmul_1_readvariableop_resource-lstm_cell_109_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2303649*
condR
while_cond_2303648*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
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
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ć
NoOpNoOp%^lstm_cell_109/BiasAdd/ReadVariableOp$^lstm_cell_109/MatMul/ReadVariableOp&^lstm_cell_109/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2L
$lstm_cell_109/BiasAdd/ReadVariableOp$lstm_cell_109/BiasAdd/ReadVariableOp2J
#lstm_cell_109/MatMul/ReadVariableOp#lstm_cell_109/MatMul/ReadVariableOp2N
%lstm_cell_109/MatMul_1/ReadVariableOp%lstm_cell_109/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs


#backward_lstm_17_while_cond_2302858>
:backward_lstm_17_while_backward_lstm_17_while_loop_counterD
@backward_lstm_17_while_backward_lstm_17_while_maximum_iterations&
"backward_lstm_17_while_placeholder(
$backward_lstm_17_while_placeholder_1(
$backward_lstm_17_while_placeholder_2(
$backward_lstm_17_while_placeholder_3@
<backward_lstm_17_while_less_backward_lstm_17_strided_slice_1W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2302858___redundant_placeholder0W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2302858___redundant_placeholder1W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2302858___redundant_placeholder2W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2302858___redundant_placeholder3#
backward_lstm_17_while_identity
¦
backward_lstm_17/while/LessLess"backward_lstm_17_while_placeholder<backward_lstm_17_while_less_backward_lstm_17_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_17/while/IdentityIdentitybackward_lstm_17/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_17_while_identity(backward_lstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
’

"forward_lstm_17_while_cond_2302425<
8forward_lstm_17_while_forward_lstm_17_while_loop_counterB
>forward_lstm_17_while_forward_lstm_17_while_maximum_iterations%
!forward_lstm_17_while_placeholder'
#forward_lstm_17_while_placeholder_1'
#forward_lstm_17_while_placeholder_2'
#forward_lstm_17_while_placeholder_3>
:forward_lstm_17_while_less_forward_lstm_17_strided_slice_1U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2302425___redundant_placeholder0U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2302425___redundant_placeholder1U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2302425___redundant_placeholder2U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2302425___redundant_placeholder3"
forward_lstm_17_while_identity
¢
forward_lstm_17/while/LessLess!forward_lstm_17_while_placeholder:forward_lstm_17_while_less_forward_lstm_17_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_17/while/IdentityIdentityforward_lstm_17/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_17_while_identity'forward_lstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
:
Ü
while_body_2303359
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_109_matmul_readvariableop_resource_0:	J
6while_lstm_cell_109_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_109_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_109_matmul_readvariableop_resource:	H
4while_lstm_cell_109_matmul_1_readvariableop_resource:
B
3while_lstm_cell_109_biasadd_readvariableop_resource:	¢*while/lstm_cell_109/BiasAdd/ReadVariableOp¢)while/lstm_cell_109/MatMul/ReadVariableOp¢+while/lstm_cell_109/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0
)while/lstm_cell_109/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_109_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_109/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¤
+while/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_109_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_109/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’”
while/lstm_cell_109/addAddV2$while/lstm_cell_109/MatMul:product:0&while/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
*while/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_109_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ŗ
while/lstm_cell_109/BiasAddBiasAddwhile/lstm_cell_109/add:z:02while/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
#while/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_109/splitSplit,while/lstm_cell_109/split/split_dim:output:0$while/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split}
while/lstm_cell_109/SigmoidSigmoid"while/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/Sigmoid_1Sigmoid"while/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/mulMul!while/lstm_cell_109/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell_109/ReluRelu"while/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/mul_1Mulwhile/lstm_cell_109/Sigmoid:y:0&while/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/add_1AddV2while/lstm_cell_109/mul:z:0while/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_109/Sigmoid_2Sigmoid"while/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’t
while/lstm_cell_109/Relu_1Reluwhile/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ 
while/lstm_cell_109/mul_2Mul!while/lstm_cell_109/Sigmoid_2:y:0(while/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ī
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_109/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: {
while/Identity_4Identitywhile/lstm_cell_109/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’{
while/Identity_5Identitywhile/lstm_cell_109/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ó

while/NoOpNoOp+^while/lstm_cell_109/BiasAdd/ReadVariableOp*^while/lstm_cell_109/MatMul/ReadVariableOp,^while/lstm_cell_109/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_109_biasadd_readvariableop_resource5while_lstm_cell_109_biasadd_readvariableop_resource_0"n
4while_lstm_cell_109_matmul_1_readvariableop_resource6while_lstm_cell_109_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_109_matmul_readvariableop_resource4while_lstm_cell_109_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2X
*while/lstm_cell_109/BiasAdd/ReadVariableOp*while/lstm_cell_109/BiasAdd/ReadVariableOp2V
)while/lstm_cell_109/MatMul/ReadVariableOp)while/lstm_cell_109/MatMul/ReadVariableOp2Z
+while/lstm_cell_109/MatMul_1/ReadVariableOp+while/lstm_cell_109/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
ż
ł
/__inference_lstm_cell_110_layer_call_fn_2304626

inputs
states_0
states_1
unknown:	
	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_lstm_cell_110_layer_call_and_return_conditional_losses_2299489p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:’’’’’’’’’r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/0:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/1
’

"forward_lstm_17_while_cond_2300924<
8forward_lstm_17_while_forward_lstm_17_while_loop_counterB
>forward_lstm_17_while_forward_lstm_17_while_maximum_iterations%
!forward_lstm_17_while_placeholder'
#forward_lstm_17_while_placeholder_1'
#forward_lstm_17_while_placeholder_2'
#forward_lstm_17_while_placeholder_3>
:forward_lstm_17_while_less_forward_lstm_17_strided_slice_1U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2300924___redundant_placeholder0U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2300924___redundant_placeholder1U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2300924___redundant_placeholder2U
Qforward_lstm_17_while_forward_lstm_17_while_cond_2300924___redundant_placeholder3"
forward_lstm_17_while_identity
¢
forward_lstm_17/while/LessLess!forward_lstm_17_while_placeholder:forward_lstm_17_while_less_forward_lstm_17_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_17/while/IdentityIdentityforward_lstm_17/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_17_while_identity'forward_lstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:


#backward_lstm_17_while_cond_2301067>
:backward_lstm_17_while_backward_lstm_17_while_loop_counterD
@backward_lstm_17_while_backward_lstm_17_while_maximum_iterations&
"backward_lstm_17_while_placeholder(
$backward_lstm_17_while_placeholder_1(
$backward_lstm_17_while_placeholder_2(
$backward_lstm_17_while_placeholder_3@
<backward_lstm_17_while_less_backward_lstm_17_strided_slice_1W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2301067___redundant_placeholder0W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2301067___redundant_placeholder1W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2301067___redundant_placeholder2W
Sbackward_lstm_17_while_backward_lstm_17_while_cond_2301067___redundant_placeholder3#
backward_lstm_17_while_identity
¦
backward_lstm_17/while/LessLess"backward_lstm_17_while_placeholder<backward_lstm_17_while_less_backward_lstm_17_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_17/while/IdentityIdentitybackward_lstm_17/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_17_while_identity(backward_lstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
ÉL
«
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2300436

inputs?
,lstm_cell_109_matmul_readvariableop_resource:	B
.lstm_cell_109_matmul_1_readvariableop_resource:
<
-lstm_cell_109_biasadd_readvariableop_resource:	
identity¢$lstm_cell_109/BiasAdd/ReadVariableOp¢#lstm_cell_109/MatMul/ReadVariableOp¢%lstm_cell_109/MatMul_1/ReadVariableOp¢while;
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
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
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:ņ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
shrink_axis_mask
#lstm_cell_109/MatMul/ReadVariableOpReadVariableOp,lstm_cell_109_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_109/MatMulMatMulstrided_slice_2:output:0+lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
%lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_109_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_109/MatMul_1MatMulzeros:output:0-lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/addAddV2lstm_cell_109/MatMul:product:0 lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_109_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_109/BiasAddBiasAddlstm_cell_109/add:z:0,lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’_
lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_109/splitSplit&lstm_cell_109/split/split_dim:output:0lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitq
lstm_cell_109/SigmoidSigmoidlstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_109/Sigmoid_1Sigmoidlstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’z
lstm_cell_109/mulMullstm_cell_109/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell_109/ReluRelulstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/mul_1Mullstm_cell_109/Sigmoid:y:0 lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/add_1AddV2lstm_cell_109/mul:z:0lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_109/Sigmoid_2Sigmoidlstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’h
lstm_cell_109/Relu_1Relulstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_109/mul_2Mullstm_cell_109/Sigmoid_2:y:0"lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_109_matmul_readvariableop_resource.lstm_cell_109_matmul_1_readvariableop_resource-lstm_cell_109_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2300351*
condR
while_cond_2300350*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
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
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ć
NoOpNoOp%^lstm_cell_109/BiasAdd/ReadVariableOp$^lstm_cell_109/MatMul/ReadVariableOp&^lstm_cell_109/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2L
$lstm_cell_109/BiasAdd/ReadVariableOp$lstm_cell_109/BiasAdd/ReadVariableOp2J
#lstm_cell_109/MatMul/ReadVariableOp#lstm_cell_109/MatMul/ReadVariableOp2N
%lstm_cell_109/MatMul_1/ReadVariableOp%lstm_cell_109/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
£

ė
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_2300836
lambda_17_input
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:	
	unknown_3:

	unknown_4:	
	unknown_5:	
	unknown_6:
identity¢StatefulPartitionedCallŠ
StatefulPartitionedCallStatefulPartitionedCalllambda_17_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *j
feRc
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_2300817o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:’’’’’’’’’
)
_user_specified_namelambda_17_input
N
®
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2304070
inputs_0?
,lstm_cell_110_matmul_readvariableop_resource:	B
.lstm_cell_110_matmul_1_readvariableop_resource:
<
-lstm_cell_110_biasadd_readvariableop_resource:	
identity¢$lstm_cell_110/BiasAdd/ReadVariableOp¢#lstm_cell_110/MatMul/ReadVariableOp¢%lstm_cell_110/MatMul_1/ReadVariableOp¢while=
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
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
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   å
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
#lstm_cell_110/MatMul/ReadVariableOpReadVariableOp,lstm_cell_110_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_110/MatMulMatMulstrided_slice_2:output:0+lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
%lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_110_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_110/MatMul_1MatMulzeros:output:0-lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/addAddV2lstm_cell_110/MatMul:product:0 lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_110_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_110/BiasAddBiasAddlstm_cell_110/add:z:0,lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’_
lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_110/splitSplit&lstm_cell_110/split/split_dim:output:0lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitq
lstm_cell_110/SigmoidSigmoidlstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_110/Sigmoid_1Sigmoidlstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’z
lstm_cell_110/mulMullstm_cell_110/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell_110/ReluRelulstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/mul_1Mullstm_cell_110/Sigmoid:y:0 lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/add_1AddV2lstm_cell_110/mul:z:0lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_110/Sigmoid_2Sigmoidlstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’h
lstm_cell_110/Relu_1Relulstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/mul_2Mullstm_cell_110/Sigmoid_2:y:0"lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_110_matmul_readvariableop_resource.lstm_cell_110_matmul_1_readvariableop_resource-lstm_cell_110_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2303985*
condR
while_cond_2303984*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
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
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ć
NoOpNoOp%^lstm_cell_110/BiasAdd/ReadVariableOp$^lstm_cell_110/MatMul/ReadVariableOp&^lstm_cell_110/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2L
$lstm_cell_110/BiasAdd/ReadVariableOp$lstm_cell_110/BiasAdd/ReadVariableOp2J
#lstm_cell_110/MatMul/ReadVariableOp#lstm_cell_110/MatMul/ReadVariableOp2N
%lstm_cell_110/MatMul_1/ReadVariableOp%lstm_cell_110/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
¾
Č
while_cond_2299147
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2299147___redundant_placeholder05
1while_while_cond_2299147___redundant_placeholder15
1while_while_cond_2299147___redundant_placeholder25
1while_while_cond_2299147___redundant_placeholder3
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
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
²N
¬
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2304511

inputs?
,lstm_cell_110_matmul_readvariableop_resource:	B
.lstm_cell_110_matmul_1_readvariableop_resource:
<
-lstm_cell_110_biasadd_readvariableop_resource:	
identity¢$lstm_cell_110/BiasAdd/ReadVariableOp¢#lstm_cell_110/MatMul/ReadVariableOp¢%lstm_cell_110/MatMul_1/ReadVariableOp¢while;
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
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
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’å
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:ņ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
shrink_axis_mask
#lstm_cell_110/MatMul/ReadVariableOpReadVariableOp,lstm_cell_110_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_110/MatMulMatMulstrided_slice_2:output:0+lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
%lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_110_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_110/MatMul_1MatMulzeros:output:0-lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/addAddV2lstm_cell_110/MatMul:product:0 lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_110_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_110/BiasAddBiasAddlstm_cell_110/add:z:0,lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’_
lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_110/splitSplit&lstm_cell_110/split/split_dim:output:0lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitq
lstm_cell_110/SigmoidSigmoidlstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_110/Sigmoid_1Sigmoidlstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’z
lstm_cell_110/mulMullstm_cell_110/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell_110/ReluRelulstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/mul_1Mullstm_cell_110/Sigmoid:y:0 lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/add_1AddV2lstm_cell_110/mul:z:0lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_110/Sigmoid_2Sigmoidlstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’h
lstm_cell_110/Relu_1Relulstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/mul_2Mullstm_cell_110/Sigmoid_2:y:0"lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_110_matmul_readvariableop_resource.lstm_cell_110_matmul_1_readvariableop_resource-lstm_cell_110_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2304426*
condR
while_cond_2304425*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
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
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ć
NoOpNoOp%^lstm_cell_110/BiasAdd/ReadVariableOp$^lstm_cell_110/MatMul/ReadVariableOp&^lstm_cell_110/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2L
$lstm_cell_110/BiasAdd/ReadVariableOp$lstm_cell_110/BiasAdd/ReadVariableOp2J
#lstm_cell_110/MatMul/ReadVariableOp#lstm_cell_110/MatMul/ReadVariableOp2N
%lstm_cell_110/MatMul_1/ReadVariableOp%lstm_cell_110/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
¾
Č
while_cond_2304131
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2304131___redundant_placeholder05
1while_while_cond_2304131___redundant_placeholder15
1while_while_cond_2304131___redundant_placeholder25
1while_while_cond_2304131___redundant_placeholder3
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
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
śĄ
Ó
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2303236

inputsO
<forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource:	R
>forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource:
L
=forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource:	P
=backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource:	S
?backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource:
M
>backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource:	
identity¢5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp¢4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp¢6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp¢backward_lstm_17/while¢4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp¢3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp¢5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp¢forward_lstm_17/whileK
forward_lstm_17/ShapeShapeinputs*
T0*
_output_shapes
:m
#forward_lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_17/strided_sliceStridedSliceforward_lstm_17/Shape:output:0,forward_lstm_17/strided_slice/stack:output:0.forward_lstm_17/strided_slice/stack_1:output:0.forward_lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
forward_lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :£
forward_lstm_17/zeros/packedPack&forward_lstm_17/strided_slice:output:0'forward_lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_17/zerosFill%forward_lstm_17/zeros/packed:output:0$forward_lstm_17/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
 forward_lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :§
forward_lstm_17/zeros_1/packedPack&forward_lstm_17/strided_slice:output:0)forward_lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
forward_lstm_17/zeros_1Fill'forward_lstm_17/zeros_1/packed:output:0&forward_lstm_17/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
forward_lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm_17/transpose	Transposeinputs'forward_lstm_17/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d
forward_lstm_17/Shape_1Shapeforward_lstm_17/transpose:y:0*
T0*
_output_shapes
:o
%forward_lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
forward_lstm_17/strided_slice_1StridedSlice forward_lstm_17/Shape_1:output:0.forward_lstm_17/strided_slice_1/stack:output:00forward_lstm_17/strided_slice_1/stack_1:output:00forward_lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ä
forward_lstm_17/TensorArrayV2TensorListReserve4forward_lstm_17/TensorArrayV2/element_shape:output:0(forward_lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Eforward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
7forward_lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_17/transpose:y:0Nforward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅo
%forward_lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¹
forward_lstm_17/strided_slice_2StridedSliceforward_lstm_17/transpose:y:0.forward_lstm_17/strided_slice_2/stack:output:00forward_lstm_17/strided_slice_2/stack_1:output:00forward_lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask±
3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOpReadVariableOp<forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Č
$forward_lstm_17/lstm_cell_109/MatMulMatMul(forward_lstm_17/strided_slice_2:output:0;forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¶
5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOp>forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ā
&forward_lstm_17/lstm_cell_109/MatMul_1MatMulforward_lstm_17/zeros:output:0=forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’æ
!forward_lstm_17/lstm_cell_109/addAddV2.forward_lstm_17/lstm_cell_109/MatMul:product:00forward_lstm_17/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOp=forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Č
%forward_lstm_17/lstm_cell_109/BiasAddBiasAdd%forward_lstm_17/lstm_cell_109/add:z:0<forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’o
-forward_lstm_17/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
#forward_lstm_17/lstm_cell_109/splitSplit6forward_lstm_17/lstm_cell_109/split/split_dim:output:0.forward_lstm_17/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
%forward_lstm_17/lstm_cell_109/SigmoidSigmoid,forward_lstm_17/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
'forward_lstm_17/lstm_cell_109/Sigmoid_1Sigmoid,forward_lstm_17/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
!forward_lstm_17/lstm_cell_109/mulMul+forward_lstm_17/lstm_cell_109/Sigmoid_1:y:0 forward_lstm_17/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
"forward_lstm_17/lstm_cell_109/ReluRelu,forward_lstm_17/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ŗ
#forward_lstm_17/lstm_cell_109/mul_1Mul)forward_lstm_17/lstm_cell_109/Sigmoid:y:00forward_lstm_17/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
#forward_lstm_17/lstm_cell_109/add_1AddV2%forward_lstm_17/lstm_cell_109/mul:z:0'forward_lstm_17/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
'forward_lstm_17/lstm_cell_109/Sigmoid_2Sigmoid,forward_lstm_17/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
$forward_lstm_17/lstm_cell_109/Relu_1Relu'forward_lstm_17/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’¾
#forward_lstm_17/lstm_cell_109/mul_2Mul+forward_lstm_17/lstm_cell_109/Sigmoid_2:y:02forward_lstm_17/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’~
-forward_lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   n
,forward_lstm_17/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :õ
forward_lstm_17/TensorArrayV2_1TensorListReserve6forward_lstm_17/TensorArrayV2_1/element_shape:output:05forward_lstm_17/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅV
forward_lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’d
"forward_lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ė
forward_lstm_17/whileWhile+forward_lstm_17/while/loop_counter:output:01forward_lstm_17/while/maximum_iterations:output:0forward_lstm_17/time:output:0(forward_lstm_17/TensorArrayV2_1:handle:0forward_lstm_17/zeros:output:0 forward_lstm_17/zeros_1:output:0(forward_lstm_17/strided_slice_1:output:0Gforward_lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:0<forward_lstm_17_lstm_cell_109_matmul_readvariableop_resource>forward_lstm_17_lstm_cell_109_matmul_1_readvariableop_resource=forward_lstm_17_lstm_cell_109_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *.
body&R$
"forward_lstm_17_while_body_2303006*.
cond&R$
"forward_lstm_17_while_cond_2303005*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
@forward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
2forward_lstm_17/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_17/while:output:3Iforward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsx
%forward_lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’q
'forward_lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ų
forward_lstm_17/strided_slice_3StridedSlice;forward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_17/strided_slice_3/stack:output:00forward_lstm_17/strided_slice_3/stack_1:output:00forward_lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_masku
 forward_lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ē
forward_lstm_17/transpose_1	Transpose;forward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_17/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’k
forward_lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    L
backward_lstm_17/ShapeShapeinputs*
T0*
_output_shapes
:n
$backward_lstm_17/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_17/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_17/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
backward_lstm_17/strided_sliceStridedSlicebackward_lstm_17/Shape:output:0-backward_lstm_17/strided_slice/stack:output:0/backward_lstm_17/strided_slice/stack_1:output:0/backward_lstm_17/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
backward_lstm_17/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :¦
backward_lstm_17/zeros/packedPack'backward_lstm_17/strided_slice:output:0(backward_lstm_17/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_17/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
backward_lstm_17/zerosFill&backward_lstm_17/zeros/packed:output:0%backward_lstm_17/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’d
!backward_lstm_17/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ŗ
backward_lstm_17/zeros_1/packedPack'backward_lstm_17/strided_slice:output:0*backward_lstm_17/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_17/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¦
backward_lstm_17/zeros_1Fill(backward_lstm_17/zeros_1/packed:output:0'backward_lstm_17/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’t
backward_lstm_17/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
backward_lstm_17/transpose	Transposeinputs(backward_lstm_17/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’f
backward_lstm_17/Shape_1Shapebackward_lstm_17/transpose:y:0*
T0*
_output_shapes
:p
&backward_lstm_17/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_17/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_17/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 backward_lstm_17/strided_slice_1StridedSlice!backward_lstm_17/Shape_1:output:0/backward_lstm_17/strided_slice_1/stack:output:01backward_lstm_17/strided_slice_1/stack_1:output:01backward_lstm_17/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_17/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ē
backward_lstm_17/TensorArrayV2TensorListReserve5backward_lstm_17/TensorArrayV2/element_shape:output:0)backward_lstm_17/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅi
backward_lstm_17/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: §
backward_lstm_17/ReverseV2	ReverseV2backward_lstm_17/transpose:y:0(backward_lstm_17/ReverseV2/axis:output:0*
T0*+
_output_shapes
:’’’’’’’’’
Fbackward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
8backward_lstm_17/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_17/ReverseV2:output:0Obackward_lstm_17/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅp
&backward_lstm_17/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_17/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_17/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¾
 backward_lstm_17/strided_slice_2StridedSlicebackward_lstm_17/transpose:y:0/backward_lstm_17/strided_slice_2/stack:output:01backward_lstm_17/strided_slice_2/stack_1:output:01backward_lstm_17/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask³
4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOpReadVariableOp=backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ė
%backward_lstm_17/lstm_cell_110/MatMulMatMul)backward_lstm_17/strided_slice_2:output:0<backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ø
6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOp?backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Å
'backward_lstm_17/lstm_cell_110/MatMul_1MatMulbackward_lstm_17/zeros:output:0>backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
"backward_lstm_17/lstm_cell_110/addAddV2/backward_lstm_17/lstm_cell_110/MatMul:product:01backward_lstm_17/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’±
5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOp>backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ė
&backward_lstm_17/lstm_cell_110/BiasAddBiasAdd&backward_lstm_17/lstm_cell_110/add:z:0=backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’p
.backward_lstm_17/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
$backward_lstm_17/lstm_cell_110/splitSplit7backward_lstm_17/lstm_cell_110/split/split_dim:output:0/backward_lstm_17/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
&backward_lstm_17/lstm_cell_110/SigmoidSigmoid-backward_lstm_17/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
(backward_lstm_17/lstm_cell_110/Sigmoid_1Sigmoid-backward_lstm_17/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’­
"backward_lstm_17/lstm_cell_110/mulMul,backward_lstm_17/lstm_cell_110/Sigmoid_1:y:0!backward_lstm_17/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
#backward_lstm_17/lstm_cell_110/ReluRelu-backward_lstm_17/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’½
$backward_lstm_17/lstm_cell_110/mul_1Mul*backward_lstm_17/lstm_cell_110/Sigmoid:y:01backward_lstm_17/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’²
$backward_lstm_17/lstm_cell_110/add_1AddV2&backward_lstm_17/lstm_cell_110/mul:z:0(backward_lstm_17/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
(backward_lstm_17/lstm_cell_110/Sigmoid_2Sigmoid-backward_lstm_17/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
%backward_lstm_17/lstm_cell_110/Relu_1Relu(backward_lstm_17/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Į
$backward_lstm_17/lstm_cell_110/mul_2Mul,backward_lstm_17/lstm_cell_110/Sigmoid_2:y:03backward_lstm_17/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
.backward_lstm_17/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   o
-backward_lstm_17/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ų
 backward_lstm_17/TensorArrayV2_1TensorListReserve7backward_lstm_17/TensorArrayV2_1/element_shape:output:06backward_lstm_17/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅW
backward_lstm_17/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_17/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’e
#backward_lstm_17/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ł
backward_lstm_17/whileWhile,backward_lstm_17/while/loop_counter:output:02backward_lstm_17/while/maximum_iterations:output:0backward_lstm_17/time:output:0)backward_lstm_17/TensorArrayV2_1:handle:0backward_lstm_17/zeros:output:0!backward_lstm_17/zeros_1:output:0)backward_lstm_17/strided_slice_1:output:0Hbackward_lstm_17/TensorArrayUnstack/TensorListFromTensor:output_handle:0=backward_lstm_17_lstm_cell_110_matmul_readvariableop_resource?backward_lstm_17_lstm_cell_110_matmul_1_readvariableop_resource>backward_lstm_17_lstm_cell_110_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( */
body'R%
#backward_lstm_17_while_body_2303149*/
cond'R%
#backward_lstm_17_while_cond_2303148*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
Abackward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
3backward_lstm_17/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_17/while:output:3Jbackward_lstm_17/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsy
&backward_lstm_17/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’r
(backward_lstm_17/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_17/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ż
 backward_lstm_17/strided_slice_3StridedSlice<backward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_17/strided_slice_3/stack:output:01backward_lstm_17/strided_slice_3/stack_1:output:01backward_lstm_17/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maskv
!backward_lstm_17/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ź
backward_lstm_17/transpose_1	Transpose<backward_lstm_17/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_17/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’l
backward_lstm_17/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :¹
concatConcatV2(forward_lstm_17/strided_slice_3:output:0)backward_lstm_17/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ä
NoOpNoOp6^backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp5^backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp7^backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp^backward_lstm_17/while5^forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp4^forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp6^forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp^forward_lstm_17/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : 2n
5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp5backward_lstm_17/lstm_cell_110/BiasAdd/ReadVariableOp2l
4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp4backward_lstm_17/lstm_cell_110/MatMul/ReadVariableOp2p
6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp6backward_lstm_17/lstm_cell_110/MatMul_1/ReadVariableOp20
backward_lstm_17/whilebackward_lstm_17/while2l
4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp4forward_lstm_17/lstm_cell_109/BiasAdd/ReadVariableOp2j
3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp3forward_lstm_17/lstm_cell_109/MatMul/ReadVariableOp2n
5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp5forward_lstm_17/lstm_cell_109/MatMul_1/ReadVariableOp2.
forward_lstm_17/whileforward_lstm_17/while:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
¾
Č
while_cond_2300183
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2300183___redundant_placeholder05
1while_while_cond_2300183___redundant_placeholder15
1while_while_cond_2300183___redundant_placeholder25
1while_while_cond_2300183___redundant_placeholder3
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
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
²N
¬
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2304364

inputs?
,lstm_cell_110_matmul_readvariableop_resource:	B
.lstm_cell_110_matmul_1_readvariableop_resource:
<
-lstm_cell_110_biasadd_readvariableop_resource:	
identity¢$lstm_cell_110/BiasAdd/ReadVariableOp¢#lstm_cell_110/MatMul/ReadVariableOp¢%lstm_cell_110/MatMul_1/ReadVariableOp¢while;
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
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
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
	transpose	Transposeinputstranspose/perm:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: 
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’å
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:ņ
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
shrink_axis_mask
#lstm_cell_110/MatMul/ReadVariableOpReadVariableOp,lstm_cell_110_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_110/MatMulMatMulstrided_slice_2:output:0+lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
%lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_110_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_110/MatMul_1MatMulzeros:output:0-lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/addAddV2lstm_cell_110/MatMul:product:0 lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_110_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_110/BiasAddBiasAddlstm_cell_110/add:z:0,lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’_
lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_110/splitSplit&lstm_cell_110/split/split_dim:output:0lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitq
lstm_cell_110/SigmoidSigmoidlstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_110/Sigmoid_1Sigmoidlstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’z
lstm_cell_110/mulMullstm_cell_110/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell_110/ReluRelulstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/mul_1Mullstm_cell_110/Sigmoid:y:0 lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/add_1AddV2lstm_cell_110/mul:z:0lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_110/Sigmoid_2Sigmoidlstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’h
lstm_cell_110/Relu_1Relulstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/mul_2Mullstm_cell_110/Sigmoid_2:y:0"lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_110_matmul_readvariableop_resource.lstm_cell_110_matmul_1_readvariableop_resource-lstm_cell_110_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2304279*
condR
while_cond_2304278*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
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
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ć
NoOpNoOp%^lstm_cell_110/BiasAdd/ReadVariableOp$^lstm_cell_110/MatMul/ReadVariableOp&^lstm_cell_110/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2L
$lstm_cell_110/BiasAdd/ReadVariableOp$lstm_cell_110/BiasAdd/ReadVariableOp2J
#lstm_cell_110/MatMul/ReadVariableOp#lstm_cell_110/MatMul/ReadVariableOp2N
%lstm_cell_110/MatMul_1/ReadVariableOp%lstm_cell_110/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
Ó
b
F__inference_lambda_17_layer_call_and_return_conditional_losses_2301184

inputs
identityY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:’’’’’’’’’:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
¾
Č
while_cond_2304425
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2304425___redundant_placeholder05
1while_while_cond_2304425___redundant_placeholder15
1while_while_cond_2304425___redundant_placeholder25
1while_while_cond_2304425___redundant_placeholder3
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
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
ż
ł
/__inference_lstm_cell_109_layer_call_fn_2304528

inputs
states_0
states_1
unknown:	
	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall°
StatefulPartitionedCallStatefulPartitionedCallinputsstates_0states_1unknown	unknown_0	unknown_1*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_lstm_cell_109_layer_call_and_return_conditional_losses_2299133p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’r

Identity_1Identity StatefulPartitionedCall:output:1^NoOp*
T0*(
_output_shapes
:’’’’’’’’’r

Identity_2Identity StatefulPartitionedCall:output:2^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’: : : 22
StatefulPartitionedCallStatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/0:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/1
õ

J__inference_lstm_cell_109_layer_call_and_return_conditional_losses_2304577

inputs
states_0
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0p
MatMul_1MatMulstates_0MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ŗ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:’’’’’’’’’V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:’’’’’’’’’O
ReluRelusplit:output:2*
T0*(
_output_shapes
:’’’’’’’’’`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:’’’’’’’’’L
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’d
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/0:RN
(
_output_shapes
:’’’’’’’’’
"
_user_specified_name
states/1
ķ

J__inference_lstm_cell_110_layer_call_and_return_conditional_losses_2299489

inputs

states
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ŗ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:’’’’’’’’’V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:’’’’’’’’’O
ReluRelusplit:output:2*
T0*(
_output_shapes
:’’’’’’’’’`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:’’’’’’’’’L
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’d
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:PL
(
_output_shapes
:’’’’’’’’’
 
_user_specified_namestates:PL
(
_output_shapes
:’’’’’’’’’
 
_user_specified_namestates
¾
Č
while_cond_2303503
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2303503___redundant_placeholder05
1while_while_cond_2303503___redundant_placeholder15
1while_while_cond_2303503___redundant_placeholder25
1while_while_cond_2303503___redundant_placeholder3
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
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
:
Ü
while_body_2304132
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0G
4while_lstm_cell_110_matmul_readvariableop_resource_0:	J
6while_lstm_cell_110_matmul_1_readvariableop_resource_0:
D
5while_lstm_cell_110_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorE
2while_lstm_cell_110_matmul_readvariableop_resource:	H
4while_lstm_cell_110_matmul_1_readvariableop_resource:
B
3while_lstm_cell_110_biasadd_readvariableop_resource:	¢*while/lstm_cell_110/BiasAdd/ReadVariableOp¢)while/lstm_cell_110/MatMul/ReadVariableOp¢+while/lstm_cell_110/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0
)while/lstm_cell_110/MatMul/ReadVariableOpReadVariableOp4while_lstm_cell_110_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0¼
while/lstm_cell_110/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:01while/lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¤
+while/lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOp6while_lstm_cell_110_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0£
while/lstm_cell_110/MatMul_1MatMulwhile_placeholder_23while/lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’”
while/lstm_cell_110/addAddV2$while/lstm_cell_110/MatMul:product:0&while/lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
*while/lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOp5while_lstm_cell_110_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ŗ
while/lstm_cell_110/BiasAddBiasAddwhile/lstm_cell_110/add:z:02while/lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
#while/lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ö
while/lstm_cell_110/splitSplit,while/lstm_cell_110/split/split_dim:output:0$while/lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split}
while/lstm_cell_110/SigmoidSigmoid"while/lstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/Sigmoid_1Sigmoid"while/lstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/mulMul!while/lstm_cell_110/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’w
while/lstm_cell_110/ReluRelu"while/lstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/mul_1Mulwhile/lstm_cell_110/Sigmoid:y:0&while/lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/add_1AddV2while/lstm_cell_110/mul:z:0while/lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_110/Sigmoid_2Sigmoid"while/lstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’t
while/lstm_cell_110/Relu_1Reluwhile/lstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ 
while/lstm_cell_110/mul_2Mul!while/lstm_cell_110/Sigmoid_2:y:0(while/lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ī
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_110/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅM
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
: {
while/Identity_4Identitywhile/lstm_cell_110/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’{
while/Identity_5Identitywhile/lstm_cell_110/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ó

while/NoOpNoOp+^while/lstm_cell_110/BiasAdd/ReadVariableOp*^while/lstm_cell_110/MatMul/ReadVariableOp,^while/lstm_cell_110/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"l
3while_lstm_cell_110_biasadd_readvariableop_resource5while_lstm_cell_110_biasadd_readvariableop_resource_0"n
4while_lstm_cell_110_matmul_1_readvariableop_resource6while_lstm_cell_110_matmul_1_readvariableop_resource_0"j
2while_lstm_cell_110_matmul_readvariableop_resource4while_lstm_cell_110_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2X
*while/lstm_cell_110/BiasAdd/ReadVariableOp*while/lstm_cell_110/BiasAdd/ReadVariableOp2V
)while/lstm_cell_110/MatMul/ReadVariableOp)while/lstm_cell_110/MatMul/ReadVariableOp2Z
+while/lstm_cell_110/MatMul_1/ReadVariableOp+while/lstm_cell_110/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
“9

L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2299411

inputs(
lstm_cell_109_2299327:	)
lstm_cell_109_2299329:
$
lstm_cell_109_2299331:	
identity¢%lstm_cell_109/StatefulPartitionedCall¢while;
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
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
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ą
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensortranspose:y:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
%lstm_cell_109/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_109_2299327lstm_cell_109_2299329lstm_cell_109_2299331*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_lstm_cell_109_layer_call_and_return_conditional_losses_2299281n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ć
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_109_2299327lstm_cell_109_2299329lstm_cell_109_2299331*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2299341*
condR
while_cond_2299340*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
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
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’v
NoOpNoOp&^lstm_cell_109/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2N
%lstm_cell_109/StatefulPartitionedCall%lstm_cell_109/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
M
Ü
"forward_lstm_17_while_body_2302716<
8forward_lstm_17_while_forward_lstm_17_while_loop_counterB
>forward_lstm_17_while_forward_lstm_17_while_maximum_iterations%
!forward_lstm_17_while_placeholder'
#forward_lstm_17_while_placeholder_1'
#forward_lstm_17_while_placeholder_2'
#forward_lstm_17_while_placeholder_3;
7forward_lstm_17_while_forward_lstm_17_strided_slice_1_0w
sforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0W
Dforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0:	Z
Fforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0:
T
Eforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0:	"
forward_lstm_17_while_identity$
 forward_lstm_17_while_identity_1$
 forward_lstm_17_while_identity_2$
 forward_lstm_17_while_identity_3$
 forward_lstm_17_while_identity_4$
 forward_lstm_17_while_identity_59
5forward_lstm_17_while_forward_lstm_17_strided_slice_1u
qforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensorU
Bforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource:	X
Dforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource:
R
Cforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource:	¢:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp¢9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp¢;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp
Gforward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ö
9forward_lstm_17/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_17_while_placeholderPforward_lstm_17/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0æ
9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOpReadVariableOpDforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ģ
*forward_lstm_17/while/lstm_cell_109/MatMulMatMul@forward_lstm_17/while/TensorArrayV2Read/TensorListGetItem:item:0Aforward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ä
;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOpReadVariableOpFforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ó
,forward_lstm_17/while/lstm_cell_109/MatMul_1MatMul#forward_lstm_17_while_placeholder_2Cforward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ń
'forward_lstm_17/while/lstm_cell_109/addAddV24forward_lstm_17/while/lstm_cell_109/MatMul:product:06forward_lstm_17/while/lstm_cell_109/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’½
:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOpReadVariableOpEforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ś
+forward_lstm_17/while/lstm_cell_109/BiasAddBiasAdd+forward_lstm_17/while/lstm_cell_109/add:z:0Bforward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’u
3forward_lstm_17/while/lstm_cell_109/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¦
)forward_lstm_17/while/lstm_cell_109/splitSplit<forward_lstm_17/while/lstm_cell_109/split/split_dim:output:04forward_lstm_17/while/lstm_cell_109/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
+forward_lstm_17/while/lstm_cell_109/SigmoidSigmoid2forward_lstm_17/while/lstm_cell_109/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
-forward_lstm_17/while/lstm_cell_109/Sigmoid_1Sigmoid2forward_lstm_17/while/lstm_cell_109/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’¹
'forward_lstm_17/while/lstm_cell_109/mulMul1forward_lstm_17/while/lstm_cell_109/Sigmoid_1:y:0#forward_lstm_17_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
(forward_lstm_17/while/lstm_cell_109/ReluRelu2forward_lstm_17/while/lstm_cell_109/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ģ
)forward_lstm_17/while/lstm_cell_109/mul_1Mul/forward_lstm_17/while/lstm_cell_109/Sigmoid:y:06forward_lstm_17/while/lstm_cell_109/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Į
)forward_lstm_17/while/lstm_cell_109/add_1AddV2+forward_lstm_17/while/lstm_cell_109/mul:z:0-forward_lstm_17/while/lstm_cell_109/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
-forward_lstm_17/while/lstm_cell_109/Sigmoid_2Sigmoid2forward_lstm_17/while/lstm_cell_109/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
*forward_lstm_17/while/lstm_cell_109/Relu_1Relu-forward_lstm_17/while/lstm_cell_109/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Š
)forward_lstm_17/while/lstm_cell_109/mul_2Mul1forward_lstm_17/while/lstm_cell_109/Sigmoid_2:y:08forward_lstm_17/while/lstm_cell_109/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
@forward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ®
:forward_lstm_17/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_17_while_placeholder_1Iforward_lstm_17/while/TensorArrayV2Write/TensorListSetItem/index:output:0-forward_lstm_17/while/lstm_cell_109/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ]
forward_lstm_17/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_17/while/addAddV2!forward_lstm_17_while_placeholder$forward_lstm_17/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_17/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :§
forward_lstm_17/while/add_1AddV28forward_lstm_17_while_forward_lstm_17_while_loop_counter&forward_lstm_17/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_17/while/IdentityIdentityforward_lstm_17/while/add_1:z:0^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: Ŗ
 forward_lstm_17/while/Identity_1Identity>forward_lstm_17_while_forward_lstm_17_while_maximum_iterations^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: 
 forward_lstm_17/while/Identity_2Identityforward_lstm_17/while/add:z:0^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: ¶
 forward_lstm_17/while/Identity_3IdentityJforward_lstm_17/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_17/while/NoOp*
T0*
_output_shapes
: «
 forward_lstm_17/while/Identity_4Identity-forward_lstm_17/while/lstm_cell_109/mul_2:z:0^forward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’«
 forward_lstm_17/while/Identity_5Identity-forward_lstm_17/while/lstm_cell_109/add_1:z:0^forward_lstm_17/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
forward_lstm_17/while/NoOpNoOp;^forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp:^forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp<^forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "p
5forward_lstm_17_while_forward_lstm_17_strided_slice_17forward_lstm_17_while_forward_lstm_17_strided_slice_1_0"I
forward_lstm_17_while_identity'forward_lstm_17/while/Identity:output:0"M
 forward_lstm_17_while_identity_1)forward_lstm_17/while/Identity_1:output:0"M
 forward_lstm_17_while_identity_2)forward_lstm_17/while/Identity_2:output:0"M
 forward_lstm_17_while_identity_3)forward_lstm_17/while/Identity_3:output:0"M
 forward_lstm_17_while_identity_4)forward_lstm_17/while/Identity_4:output:0"M
 forward_lstm_17_while_identity_5)forward_lstm_17/while/Identity_5:output:0"
Cforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resourceEforward_lstm_17_while_lstm_cell_109_biasadd_readvariableop_resource_0"
Dforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resourceFforward_lstm_17_while_lstm_cell_109_matmul_1_readvariableop_resource_0"
Bforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resourceDforward_lstm_17_while_lstm_cell_109_matmul_readvariableop_resource_0"č
qforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensorsforward_lstm_17_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_17_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2x
:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp:forward_lstm_17/while/lstm_cell_109/BiasAdd/ReadVariableOp2v
9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp9forward_lstm_17/while/lstm_cell_109/MatMul/ReadVariableOp2z
;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp;forward_lstm_17/while/lstm_cell_109/MatMul_1/ReadVariableOp: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
: 
§
Į
1__inference_forward_lstm_17_layer_call_fn_2303277
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallō
StatefulPartitionedCallStatefulPartitionedCallinputs_0unknown	unknown_0	unknown_1*
Tin
2*
Tout
2*
_collective_manager_ids
 *(
_output_shapes
:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *U
fPRN
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2299411p
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 22
StatefulPartitionedCallStatefulPartitionedCall:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
ų
š
4bidirectional_17_backward_lstm_17_while_cond_2301892`
\bidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_while_loop_counterf
bbidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_while_maximum_iterations7
3bidirectional_17_backward_lstm_17_while_placeholder9
5bidirectional_17_backward_lstm_17_while_placeholder_19
5bidirectional_17_backward_lstm_17_while_placeholder_29
5bidirectional_17_backward_lstm_17_while_placeholder_3b
^bidirectional_17_backward_lstm_17_while_less_bidirectional_17_backward_lstm_17_strided_slice_1y
ubidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_while_cond_2301892___redundant_placeholder0y
ubidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_while_cond_2301892___redundant_placeholder1y
ubidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_while_cond_2301892___redundant_placeholder2y
ubidirectional_17_backward_lstm_17_while_bidirectional_17_backward_lstm_17_while_cond_2301892___redundant_placeholder34
0bidirectional_17_backward_lstm_17_while_identity
ź
,bidirectional_17/backward_lstm_17/while/LessLess3bidirectional_17_backward_lstm_17_while_placeholder^bidirectional_17_backward_lstm_17_while_less_bidirectional_17_backward_lstm_17_strided_slice_1*
T0*
_output_shapes
: 
0bidirectional_17/backward_lstm_17/while/IdentityIdentity0bidirectional_17/backward_lstm_17/while/Less:z:0*
T0
*
_output_shapes
: "m
0bidirectional_17_backward_lstm_17_while_identity9bidirectional_17/backward_lstm_17/while/Identity:output:0*(
_construction_contextkEagerRuntime*U
_input_shapesD
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
¾
Č
while_cond_2303648
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_2303648___redundant_placeholder05
1while_while_cond_2303648___redundant_placeholder15
1while_while_cond_2303648___redundant_placeholder25
1while_while_cond_2303648___redundant_placeholder3
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
B: : : : :’’’’’’’’’:’’’’’’’’’: ::::: 
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
:’’’’’’’’’:.*
(
_output_shapes
:’’’’’’’’’:

_output_shapes
: :

_output_shapes
:
;

M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2299574

inputs(
lstm_cell_110_2299490:	)
lstm_cell_110_2299492:
$
lstm_cell_110_2299494:	
identity¢%lstm_cell_110/StatefulPartitionedCall¢while;
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
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
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          v
	transpose	Transposeinputstranspose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   å
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
%lstm_cell_110/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_110_2299490lstm_cell_110_2299492lstm_cell_110_2299494*
Tin

2*
Tout
2*
_collective_manager_ids
 *P
_output_shapes>
<:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*%
_read_only_resource_inputs
*0
config_proto 

CPU

GPU2*0J 8 *S
fNRL
J__inference_lstm_cell_110_layer_call_and_return_conditional_losses_2299489n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ć
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_110_2299490lstm_cell_110_2299492lstm_cell_110_2299494*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2299504*
condR
while_cond_2299503*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
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
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’v
NoOpNoOp&^lstm_cell_110/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2N
%lstm_cell_110/StatefulPartitionedCall%lstm_cell_110/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
Ó
b
F__inference_lambda_17_layer_call_and_return_conditional_losses_2302008

inputs
identityY
ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’o

ExpandDims
ExpandDimsinputsExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’_
IdentityIdentityExpandDims:output:0*
T0*+
_output_shapes
:’’’’’’’’’"
identityIdentity:output:0*(
_construction_contextkEagerRuntime*&
_input_shapes
:’’’’’’’’’:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ģ	
÷
E__inference_dense_17_layer_call_and_return_conditional_losses_2303255

inputs1
matmul_readvariableop_resource:	-
biasadd_readvariableop_resource:
identity¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0i
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’r
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes
:*
dtype0v
BiasAddBiasAddMatMul:product:0BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’_
IdentityIdentityBiasAdd:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’w
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*+
_input_shapes
:’’’’’’’’’: : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp:P L
(
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
£

ė
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_2301273
lambda_17_input
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:	
	unknown_3:

	unknown_4:	
	unknown_5:	
	unknown_6:
identity¢StatefulPartitionedCallŠ
StatefulPartitionedCallStatefulPartitionedCalllambda_17_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
Tin
2	*
Tout
2*
_collective_manager_ids
 *'
_output_shapes
:’’’’’’’’’**
_read_only_resource_inputs

*0
config_proto 

CPU

GPU2*0J 8 *j
feRc
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_2301233o
IdentityIdentity StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’`
NoOpNoOp^StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 22
StatefulPartitionedCallStatefulPartitionedCall:X T
'
_output_shapes
:’’’’’’’’’
)
_user_specified_namelambda_17_input
ķ

J__inference_lstm_cell_110_layer_call_and_return_conditional_losses_2299637

inputs

states
states_11
matmul_readvariableop_resource:	4
 matmul_1_readvariableop_resource:
.
biasadd_readvariableop_resource:	
identity

identity_1

identity_2¢BiasAdd/ReadVariableOp¢MatMul/ReadVariableOp¢MatMul_1/ReadVariableOpu
MatMul/ReadVariableOpReadVariableOpmatmul_readvariableop_resource*
_output_shapes
:	*
dtype0j
MatMulMatMulinputsMatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’z
MatMul_1/ReadVariableOpReadVariableOp matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0n
MatMul_1MatMulstatesMatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’e
addAddV2MatMul:product:0MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’s
BiasAdd/ReadVariableOpReadVariableOpbiasadd_readvariableop_resource*
_output_shapes	
:*
dtype0n
BiasAddBiasAddadd:z:0BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Q
split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ŗ
splitSplitsplit/split_dim:output:0BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitU
SigmoidSigmoidsplit:output:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_1Sigmoidsplit:output:1*
T0*(
_output_shapes
:’’’’’’’’’V
mulMulSigmoid_1:y:0states_1*
T0*(
_output_shapes
:’’’’’’’’’O
ReluRelusplit:output:2*
T0*(
_output_shapes
:’’’’’’’’’`
mul_1MulSigmoid:y:0Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’U
add_1AddV2mul:z:0	mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’W
	Sigmoid_2Sigmoidsplit:output:3*
T0*(
_output_shapes
:’’’’’’’’’L
Relu_1Relu	add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’d
mul_2MulSigmoid_2:y:0Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Y
IdentityIdentity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_1Identity	mul_2:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’[

Identity_2Identity	add_1:z:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp^BiasAdd/ReadVariableOp^MatMul/ReadVariableOp^MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0"!

identity_1Identity_1:output:0"!

identity_2Identity_2:output:0*(
_construction_contextkEagerRuntime*T
_input_shapesC
A:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’: : : 20
BiasAdd/ReadVariableOpBiasAdd/ReadVariableOp2.
MatMul/ReadVariableOpMatMul/ReadVariableOp22
MatMul_1/ReadVariableOpMatMul_1/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs:PL
(
_output_shapes
:’’’’’’’’’
 
_user_specified_namestates:PL
(
_output_shapes
:’’’’’’’’’
 
_user_specified_namestates
N
®
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2304217
inputs_0?
,lstm_cell_110_matmul_readvariableop_resource:	B
.lstm_cell_110_matmul_1_readvariableop_resource:
<
-lstm_cell_110_biasadd_readvariableop_resource:	
identity¢$lstm_cell_110/BiasAdd/ReadVariableOp¢#lstm_cell_110/MatMul/ReadVariableOp¢%lstm_cell_110/MatMul_1/ReadVariableOp¢while=
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
valueB:Ń
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
B :s
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
:’’’’’’’’’S
zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :w
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
:’’’’’’’’’c
transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          x
	transpose	Transposeinputs_0transpose/perm:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’D
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
valueB:Ū
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
’’’’’’’’’“
TensorArrayV2TensorListReserve$TensorArrayV2/element_shape:output:0strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅX
ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: }
	ReverseV2	ReverseV2transpose:y:0ReverseV2/axis:output:0*
T0*4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
5TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   å
'TensorArrayUnstack/TensorListFromTensorTensorListFromTensorReverseV2:output:0>TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ_
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
valueB:é
strided_slice_2StridedSlicetranspose:y:0strided_slice_2/stack:output:0 strided_slice_2/stack_1:output:0 strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
#lstm_cell_110/MatMul/ReadVariableOpReadVariableOp,lstm_cell_110_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_110/MatMulMatMulstrided_slice_2:output:0+lstm_cell_110/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
%lstm_cell_110/MatMul_1/ReadVariableOpReadVariableOp.lstm_cell_110_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_110/MatMul_1MatMulzeros:output:0-lstm_cell_110/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/addAddV2lstm_cell_110/MatMul:product:0 lstm_cell_110/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_110/BiasAdd/ReadVariableOpReadVariableOp-lstm_cell_110_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_110/BiasAddBiasAddlstm_cell_110/add:z:0,lstm_cell_110/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’_
lstm_cell_110/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ä
lstm_cell_110/splitSplit&lstm_cell_110/split/split_dim:output:0lstm_cell_110/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitq
lstm_cell_110/SigmoidSigmoidlstm_cell_110/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_110/Sigmoid_1Sigmoidlstm_cell_110/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’z
lstm_cell_110/mulMullstm_cell_110/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’k
lstm_cell_110/ReluRelulstm_cell_110/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/mul_1Mullstm_cell_110/Sigmoid:y:0 lstm_cell_110/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/add_1AddV2lstm_cell_110/mul:z:0lstm_cell_110/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’s
lstm_cell_110/Sigmoid_2Sigmoidlstm_cell_110/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’h
lstm_cell_110/Relu_1Relulstm_cell_110/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_110/mul_2Mullstm_cell_110/Sigmoid_2:y:0"lstm_cell_110/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’n
TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ^
TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Å
TensorArrayV2_1TensorListReserve&TensorArrayV2_1/element_shape:output:0%TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅF
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
’’’’’’’’’T
while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0,lstm_cell_110_matmul_readvariableop_resource.lstm_cell_110_matmul_1_readvariableop_resource-lstm_cell_110_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *
bodyR
while_body_2304132*
condR
while_cond_2304131*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
0TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ×
"TensorArrayV2Stack/TensorListStackTensorListStackwhile:output:39TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsh
strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’a
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
:’’’’’’’’’*
shrink_axis_maske
transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          
transpose_1	Transpose+TensorArrayV2Stack/TensorListStack:tensor:0transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’[
runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    h
IdentityIdentitystrided_slice_3:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ć
NoOpNoOp%^lstm_cell_110/BiasAdd/ReadVariableOp$^lstm_cell_110/MatMul/ReadVariableOp&^lstm_cell_110/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2L
$lstm_cell_110/BiasAdd/ReadVariableOp$lstm_cell_110/BiasAdd/ReadVariableOp2J
#lstm_cell_110/MatMul/ReadVariableOp#lstm_cell_110/MatMul/ReadVariableOp2N
%lstm_cell_110/MatMul_1/ReadVariableOp%lstm_cell_110/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*»
serving_default§
K
lambda_17_input8
!serving_default_lambda_17_input:0’’’’’’’’’<
dense_170
StatefulPartitionedCall:0’’’’’’’’’tensorflow/serving/predict:ÄĮ
Į
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
„
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses"
_tf_keras_layer
Ģ
	variables
trainable_variables
regularization_losses
	keras_api
__call__
*&call_and_return_all_conditional_losses
forward_layer
backward_layer"
_tf_keras_layer
»
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
Ź
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
Ķ
.trace_0
/trace_1
0trace_2
1trace_32ā
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_2300836
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_2301369
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_2301390
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_2301273æ
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 z.trace_0z/trace_1z0trace_2z1trace_3
¹
2trace_0
3trace_1
4trace_2
5trace_32Ī
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_2301688
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_2301986
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_2301296
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_2301319æ
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 z2trace_0z3trace_1z4trace_2z5trace_3
ÕBŅ
"__inference__wrapped_model_2299066lambda_17_input"
²
FullArgSpec
args 
varargsjargs
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ó
6iter

7beta_1

8beta_2
	9decay
:learning_rate!m®"mÆ#m°$m±%m²&m³'m“(mµ!v¶"v·#vø$v¹%vŗ&v»'v¼(v½"
	optimizer
,
;serving_default"
signature_map
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
­
<non_trainable_variables

=layers
>metrics
?layer_regularization_losses
@layer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ó
Atrace_0
Btrace_12
+__inference_lambda_17_layer_call_fn_2301991
+__inference_lambda_17_layer_call_fn_2301996æ
¶²²
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 zAtrace_0zBtrace_1

Ctrace_0
Dtrace_12Ņ
F__inference_lambda_17_layer_call_and_return_conditional_losses_2302002
F__inference_lambda_17_layer_call_and_return_conditional_losses_2302008æ
¶²²
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 zCtrace_0zDtrace_1
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
­
Enon_trainable_variables

Flayers
Gmetrics
Hlayer_regularization_losses
Ilayer_metrics
	variables
trainable_variables
regularization_losses
__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
£
Jtrace_0
Ktrace_1
Ltrace_2
Mtrace_32ø
2__inference_bidirectional_17_layer_call_fn_2302025
2__inference_bidirectional_17_layer_call_fn_2302042
2__inference_bidirectional_17_layer_call_fn_2302059
2__inference_bidirectional_17_layer_call_fn_2302076å
Ü²Ų
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 zJtrace_0zKtrace_1zLtrace_2zMtrace_3

Ntrace_0
Otrace_1
Ptrace_2
Qtrace_32¤
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2302366
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2302656
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2302946
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2303236å
Ü²Ų
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 zNtrace_0zOtrace_1zPtrace_2zQtrace_3
Ś
R	variables
Strainable_variables
Tregularization_losses
U	keras_api
V__call__
*W&call_and_return_all_conditional_losses
X_random_generator
Ycell
Z
state_spec"
_tf_keras_rnn_layer
Ś
[	variables
\trainable_variables
]regularization_losses
^	keras_api
___call__
*`&call_and_return_all_conditional_losses
a_random_generator
bcell
c
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
­
dnon_trainable_variables

elayers
fmetrics
glayer_regularization_losses
hlayer_metrics
	variables
trainable_variables
regularization_losses
__call__
* &call_and_return_all_conditional_losses
& "call_and_return_conditional_losses"
_generic_user_object
ī
itrace_02Ń
*__inference_dense_17_layer_call_fn_2303245¢
²
FullArgSpec
args
jself
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
annotationsŖ *
 zitrace_0

jtrace_02ģ
E__inference_dense_17_layer_call_and_return_conditional_losses_2303255¢
²
FullArgSpec
args
jself
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
annotationsŖ *
 zjtrace_0
": 	2dense_17/kernel
:2dense_17/bias
H:F	25bidirectional_17/forward_lstm_17/lstm_cell_109/kernel
S:Q
2?bidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel
B:@23bidirectional_17/forward_lstm_17/lstm_cell_109/bias
I:G	26bidirectional_17/backward_lstm_17/lstm_cell_110/kernel
T:R
2@bidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel
C:A24bidirectional_17/backward_lstm_17/lstm_cell_110/bias
 "
trackable_list_wrapper
5
0
1
2"
trackable_list_wrapper
'
k0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
 B
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_2300836lambda_17_input"æ
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_2301369inputs"æ
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_2301390inputs"æ
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
 B
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_2301273lambda_17_input"æ
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
²BÆ
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_2301688inputs"æ
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
²BÆ
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_2301986inputs"æ
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
»Bø
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_2301296lambda_17_input"æ
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
»Bø
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_2301319lambda_17_input"æ
¶²²
FullArgSpec1
args)&
jself
jinputs

jtraining
jmask
varargs
 
varkw
 
defaults
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
:	 (2	Adam/iter
: (2Adam/beta_1
: (2Adam/beta_2
: (2
Adam/decay
: (2Adam/learning_rate
ŌBŃ
%__inference_signature_wrapper_2301348lambda_17_input"
²
FullArgSpec
args 
varargs
 
varkwjkwargs
defaults
 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
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
üBł
+__inference_lambda_17_layer_call_fn_2301991inputs"æ
¶²²
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
üBł
+__inference_lambda_17_layer_call_fn_2301996inputs"æ
¶²²
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
F__inference_lambda_17_layer_call_and_return_conditional_losses_2302002inputs"æ
¶²²
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
F__inference_lambda_17_layer_call_and_return_conditional_losses_2302008inputs"æ
¶²²
FullArgSpec1
args)&
jself
jinputs
jmask

jtraining
varargs
 
varkw
 
defaults

 
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
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
«BØ
2__inference_bidirectional_17_layer_call_fn_2302025inputs/0"å
Ü²Ų
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
«BØ
2__inference_bidirectional_17_layer_call_fn_2302042inputs/0"å
Ü²Ų
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
©B¦
2__inference_bidirectional_17_layer_call_fn_2302059inputs"å
Ü²Ų
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
©B¦
2__inference_bidirectional_17_layer_call_fn_2302076inputs"å
Ü²Ų
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ĘBĆ
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2302366inputs/0"å
Ü²Ų
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ĘBĆ
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2302656inputs/0"å
Ü²Ų
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ÄBĮ
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2302946inputs"å
Ü²Ų
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
ÄBĮ
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2303236inputs"å
Ü²Ų
FullArgSpecO
argsGD
jself
jinputs

jtraining
jmask
jinitial_state
j	constants
varargs
 
varkw
 
defaults
p 

 

 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
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
¹

lstates
mnon_trainable_variables

nlayers
ometrics
player_regularization_losses
qlayer_metrics
R	variables
Strainable_variables
Tregularization_losses
V__call__
*W&call_and_return_all_conditional_losses
&W"call_and_return_conditional_losses"
_generic_user_object

rtrace_0
strace_1
ttrace_2
utrace_32£
1__inference_forward_lstm_17_layer_call_fn_2303266
1__inference_forward_lstm_17_layer_call_fn_2303277
1__inference_forward_lstm_17_layer_call_fn_2303288
1__inference_forward_lstm_17_layer_call_fn_2303299Ō
Ė²Ē
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 zrtrace_0zstrace_1zttrace_2zutrace_3
ś
vtrace_0
wtrace_1
xtrace_2
ytrace_32
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2303444
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2303589
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2303734
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2303879Ō
Ė²Ē
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 zvtrace_0zwtrace_1zxtrace_2zytrace_3
"
_generic_user_object
ś
z	variables
{trainable_variables
|regularization_losses
}	keras_api
~__call__
*&call_and_return_all_conditional_losses
_random_generator

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
æ
states
non_trainable_variables
layers
metrics
 layer_regularization_losses
layer_metrics
[	variables
\trainable_variables
]regularization_losses
___call__
*`&call_and_return_all_conditional_losses
&`"call_and_return_conditional_losses"
_generic_user_object

trace_0
trace_1
trace_2
trace_32§
2__inference_backward_lstm_17_layer_call_fn_2303890
2__inference_backward_lstm_17_layer_call_fn_2303901
2__inference_backward_lstm_17_layer_call_fn_2303912
2__inference_backward_lstm_17_layer_call_fn_2303923Ō
Ė²Ē
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 ztrace_0ztrace_1ztrace_2ztrace_3

trace_0
trace_1
trace_2
trace_32
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2304070
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2304217
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2304364
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2304511Ō
Ė²Ē
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 ztrace_0ztrace_1ztrace_2ztrace_3
"
_generic_user_object

	variables
trainable_variables
regularization_losses
	keras_api
__call__
+&call_and_return_all_conditional_losses
_random_generator

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
ŽBŪ
*__inference_dense_17_layer_call_fn_2303245inputs"¢
²
FullArgSpec
args
jself
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
annotationsŖ *
 
łBö
E__inference_dense_17_layer_call_and_return_conditional_losses_2303255inputs"¢
²
FullArgSpec
args
jself
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
annotationsŖ *
 
R
	variables
	keras_api

total

count"
_tf_keras_metric
 "
trackable_list_wrapper
 "
trackable_list_wrapper
'
Y0"
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
1__inference_forward_lstm_17_layer_call_fn_2303266inputs/0"Ō
Ė²Ē
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
1__inference_forward_lstm_17_layer_call_fn_2303277inputs/0"Ō
Ė²Ē
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
1__inference_forward_lstm_17_layer_call_fn_2303288inputs"Ō
Ė²Ē
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
1__inference_forward_lstm_17_layer_call_fn_2303299inputs"Ō
Ė²Ē
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
“B±
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2303444inputs/0"Ō
Ė²Ē
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
“B±
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2303589inputs/0"Ō
Ė²Ē
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
²BÆ
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2303734inputs"Ō
Ė²Ē
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
²BÆ
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2303879inputs"Ō
Ė²Ē
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
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
²
non_trainable_variables
layers
metrics
 layer_regularization_losses
 layer_metrics
z	variables
{trainable_variables
|regularization_losses
~__call__
*&call_and_return_all_conditional_losses
&"call_and_return_conditional_losses"
_generic_user_object
Ż
”trace_0
¢trace_12¢
/__inference_lstm_cell_109_layer_call_fn_2304528
/__inference_lstm_cell_109_layer_call_fn_2304545½
“²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 z”trace_0z¢trace_1

£trace_0
¤trace_12Ų
J__inference_lstm_cell_109_layer_call_and_return_conditional_losses_2304577
J__inference_lstm_cell_109_layer_call_and_return_conditional_losses_2304609½
“²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 z£trace_0z¤trace_1
"
_generic_user_object
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
trackable_list_wrapper
 "
trackable_list_wrapper
 "
trackable_dict_wrapper
B
2__inference_backward_lstm_17_layer_call_fn_2303890inputs/0"Ō
Ė²Ē
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
2__inference_backward_lstm_17_layer_call_fn_2303901inputs/0"Ō
Ė²Ē
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
2__inference_backward_lstm_17_layer_call_fn_2303912inputs"Ō
Ė²Ē
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
2__inference_backward_lstm_17_layer_call_fn_2303923inputs"Ō
Ė²Ē
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
µB²
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2304070inputs/0"Ō
Ė²Ē
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
µB²
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2304217inputs/0"Ō
Ė²Ē
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
³B°
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2304364inputs"Ō
Ė²Ē
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
³B°
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2304511inputs"Ō
Ė²Ē
FullArgSpecB
args:7
jself
jinputs
jmask

jtraining
jinitial_state
varargs
 
varkw
 
defaults

 
p 

 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
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
ø
„non_trainable_variables
¦layers
§metrics
 Ølayer_regularization_losses
©layer_metrics
	variables
trainable_variables
regularization_losses
__call__
+&call_and_return_all_conditional_losses
'"call_and_return_conditional_losses"
_generic_user_object
Ż
Ŗtrace_0
«trace_12¢
/__inference_lstm_cell_110_layer_call_fn_2304626
/__inference_lstm_cell_110_layer_call_fn_2304643½
“²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 zŖtrace_0z«trace_1

¬trace_0
­trace_12Ų
J__inference_lstm_cell_110_layer_call_and_return_conditional_losses_2304675
J__inference_lstm_cell_110_layer_call_and_return_conditional_losses_2304707½
“²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 z¬trace_0z­trace_1
"
_generic_user_object
 "
trackable_list_wrapper
0
0
1"
trackable_list_wrapper
.
	variables"
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
B
/__inference_lstm_cell_109_layer_call_fn_2304528inputsstates/0states/1"½
“²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
/__inference_lstm_cell_109_layer_call_fn_2304545inputsstates/0states/1"½
“²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
­BŖ
J__inference_lstm_cell_109_layer_call_and_return_conditional_losses_2304577inputsstates/0states/1"½
“²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
­BŖ
J__inference_lstm_cell_109_layer_call_and_return_conditional_losses_2304609inputsstates/0states/1"½
“²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
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
B
/__inference_lstm_cell_110_layer_call_fn_2304626inputsstates/0states/1"½
“²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
B
/__inference_lstm_cell_110_layer_call_fn_2304643inputsstates/0states/1"½
“²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
­BŖ
J__inference_lstm_cell_110_layer_call_and_return_conditional_losses_2304675inputsstates/0states/1"½
“²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
­BŖ
J__inference_lstm_cell_110_layer_call_and_return_conditional_losses_2304707inputsstates/0states/1"½
“²°
FullArgSpec3
args+(
jself
jinputs
jstates

jtraining
varargs
 
varkw
 
defaults
p 

kwonlyargs 
kwonlydefaults
 
annotationsŖ *
 
':%	2Adam/dense_17/kernel/m
 :2Adam/dense_17/bias/m
M:K	2<Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/kernel/m
X:V
2FAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel/m
G:E2:Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/bias/m
N:L	2=Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/kernel/m
Y:W
2GAdam/bidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel/m
H:F2;Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/bias/m
':%	2Adam/dense_17/kernel/v
 :2Adam/dense_17/bias/v
M:K	2<Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/kernel/v
X:V
2FAdam/bidirectional_17/forward_lstm_17/lstm_cell_109/recurrent_kernel/v
G:E2:Adam/bidirectional_17/forward_lstm_17/lstm_cell_109/bias/v
N:L	2=Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/kernel/v
Y:W
2GAdam/bidirectional_17/backward_lstm_17/lstm_cell_110/recurrent_kernel/v
H:F2;Adam/bidirectional_17/backward_lstm_17/lstm_cell_110/bias/v
"__inference__wrapped_model_2299066y#$%&'(!"8¢5
.¢+
)&
lambda_17_input’’’’’’’’’
Ŗ "3Ŗ0
.
dense_17"
dense_17’’’’’’’’’Ļ
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2304070~&'(O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’

 
p 

 
Ŗ "&¢#

0’’’’’’’’’
 Ļ
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2304217~&'(O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’

 
p

 
Ŗ "&¢#

0’’’’’’’’’
 Ņ
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2304364&'(Q¢N
G¢D
63
inputs'’’’’’’’’’’’’’’’’’’’’’’’’’’’

 
p 

 
Ŗ "&¢#

0’’’’’’’’’
 Ņ
M__inference_backward_lstm_17_layer_call_and_return_conditional_losses_2304511&'(Q¢N
G¢D
63
inputs'’’’’’’’’’’’’’’’’’’’’’’’’’’’

 
p

 
Ŗ "&¢#

0’’’’’’’’’
 §
2__inference_backward_lstm_17_layer_call_fn_2303890q&'(O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’

 
p 

 
Ŗ "’’’’’’’’’§
2__inference_backward_lstm_17_layer_call_fn_2303901q&'(O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’

 
p

 
Ŗ "’’’’’’’’’©
2__inference_backward_lstm_17_layer_call_fn_2303912s&'(Q¢N
G¢D
63
inputs'’’’’’’’’’’’’’’’’’’’’’’’’’’’

 
p 

 
Ŗ "’’’’’’’’’©
2__inference_backward_lstm_17_layer_call_fn_2303923s&'(Q¢N
G¢D
63
inputs'’’’’’’’’’’’’’’’’’’’’’’’’’’’

 
p

 
Ŗ "’’’’’’’’’ą
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2302366#$%&'(\¢Y
R¢O
=:
85
inputs/0'’’’’’’’’’’’’’’’’’’’’’’’’’’’
p 

 

 

 
Ŗ "&¢#

0’’’’’’’’’
 ą
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2302656#$%&'(\¢Y
R¢O
=:
85
inputs/0'’’’’’’’’’’’’’’’’’’’’’’’’’’’
p

 

 

 
Ŗ "&¢#

0’’’’’’’’’
 Ę
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2302946u#$%&'(C¢@
9¢6
$!
inputs’’’’’’’’’
p 

 

 

 
Ŗ "&¢#

0’’’’’’’’’
 Ę
M__inference_bidirectional_17_layer_call_and_return_conditional_losses_2303236u#$%&'(C¢@
9¢6
$!
inputs’’’’’’’’’
p

 

 

 
Ŗ "&¢#

0’’’’’’’’’
 ø
2__inference_bidirectional_17_layer_call_fn_2302025#$%&'(\¢Y
R¢O
=:
85
inputs/0'’’’’’’’’’’’’’’’’’’’’’’’’’’’
p 

 

 

 
Ŗ "’’’’’’’’’ø
2__inference_bidirectional_17_layer_call_fn_2302042#$%&'(\¢Y
R¢O
=:
85
inputs/0'’’’’’’’’’’’’’’’’’’’’’’’’’’’
p

 

 

 
Ŗ "’’’’’’’’’
2__inference_bidirectional_17_layer_call_fn_2302059h#$%&'(C¢@
9¢6
$!
inputs’’’’’’’’’
p 

 

 

 
Ŗ "’’’’’’’’’
2__inference_bidirectional_17_layer_call_fn_2302076h#$%&'(C¢@
9¢6
$!
inputs’’’’’’’’’
p

 

 

 
Ŗ "’’’’’’’’’¦
E__inference_dense_17_layer_call_and_return_conditional_losses_2303255]!"0¢-
&¢#
!
inputs’’’’’’’’’
Ŗ "%¢"

0’’’’’’’’’
 ~
*__inference_dense_17_layer_call_fn_2303245P!"0¢-
&¢#
!
inputs’’’’’’’’’
Ŗ "’’’’’’’’’Ī
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2303444~#$%O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’

 
p 

 
Ŗ "&¢#

0’’’’’’’’’
 Ī
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2303589~#$%O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’

 
p

 
Ŗ "&¢#

0’’’’’’’’’
 Ń
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2303734#$%Q¢N
G¢D
63
inputs'’’’’’’’’’’’’’’’’’’’’’’’’’’’

 
p 

 
Ŗ "&¢#

0’’’’’’’’’
 Ń
L__inference_forward_lstm_17_layer_call_and_return_conditional_losses_2303879#$%Q¢N
G¢D
63
inputs'’’’’’’’’’’’’’’’’’’’’’’’’’’’

 
p

 
Ŗ "&¢#

0’’’’’’’’’
 ¦
1__inference_forward_lstm_17_layer_call_fn_2303266q#$%O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’

 
p 

 
Ŗ "’’’’’’’’’¦
1__inference_forward_lstm_17_layer_call_fn_2303277q#$%O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’

 
p

 
Ŗ "’’’’’’’’’Ø
1__inference_forward_lstm_17_layer_call_fn_2303288s#$%Q¢N
G¢D
63
inputs'’’’’’’’’’’’’’’’’’’’’’’’’’’’

 
p 

 
Ŗ "’’’’’’’’’Ø
1__inference_forward_lstm_17_layer_call_fn_2303299s#$%Q¢N
G¢D
63
inputs'’’’’’’’’’’’’’’’’’’’’’’’’’’’

 
p

 
Ŗ "’’’’’’’’’®
F__inference_lambda_17_layer_call_and_return_conditional_losses_2302002d7¢4
-¢*
 
inputs’’’’’’’’’

 
p 
Ŗ ")¢&

0’’’’’’’’’
 ®
F__inference_lambda_17_layer_call_and_return_conditional_losses_2302008d7¢4
-¢*
 
inputs’’’’’’’’’

 
p
Ŗ ")¢&

0’’’’’’’’’
 
+__inference_lambda_17_layer_call_fn_2301991W7¢4
-¢*
 
inputs’’’’’’’’’

 
p 
Ŗ "’’’’’’’’’
+__inference_lambda_17_layer_call_fn_2301996W7¢4
-¢*
 
inputs’’’’’’’’’

 
p
Ŗ "’’’’’’’’’Ń
J__inference_lstm_cell_109_layer_call_and_return_conditional_losses_2304577#$%¢
x¢u
 
inputs’’’’’’’’’
M¢J
# 
states/0’’’’’’’’’
# 
states/1’’’’’’’’’
p 
Ŗ "v¢s
l¢i

0/0’’’’’’’’’
GD
 
0/1/0’’’’’’’’’
 
0/1/1’’’’’’’’’
 Ń
J__inference_lstm_cell_109_layer_call_and_return_conditional_losses_2304609#$%¢
x¢u
 
inputs’’’’’’’’’
M¢J
# 
states/0’’’’’’’’’
# 
states/1’’’’’’’’’
p
Ŗ "v¢s
l¢i

0/0’’’’’’’’’
GD
 
0/1/0’’’’’’’’’
 
0/1/1’’’’’’’’’
 ¦
/__inference_lstm_cell_109_layer_call_fn_2304528ņ#$%¢
x¢u
 
inputs’’’’’’’’’
M¢J
# 
states/0’’’’’’’’’
# 
states/1’’’’’’’’’
p 
Ŗ "f¢c

0’’’’’’’’’
C@

1/0’’’’’’’’’

1/1’’’’’’’’’¦
/__inference_lstm_cell_109_layer_call_fn_2304545ņ#$%¢
x¢u
 
inputs’’’’’’’’’
M¢J
# 
states/0’’’’’’’’’
# 
states/1’’’’’’’’’
p
Ŗ "f¢c

0’’’’’’’’’
C@

1/0’’’’’’’’’

1/1’’’’’’’’’Ń
J__inference_lstm_cell_110_layer_call_and_return_conditional_losses_2304675&'(¢
x¢u
 
inputs’’’’’’’’’
M¢J
# 
states/0’’’’’’’’’
# 
states/1’’’’’’’’’
p 
Ŗ "v¢s
l¢i

0/0’’’’’’’’’
GD
 
0/1/0’’’’’’’’’
 
0/1/1’’’’’’’’’
 Ń
J__inference_lstm_cell_110_layer_call_and_return_conditional_losses_2304707&'(¢
x¢u
 
inputs’’’’’’’’’
M¢J
# 
states/0’’’’’’’’’
# 
states/1’’’’’’’’’
p
Ŗ "v¢s
l¢i

0/0’’’’’’’’’
GD
 
0/1/0’’’’’’’’’
 
0/1/1’’’’’’’’’
 ¦
/__inference_lstm_cell_110_layer_call_fn_2304626ņ&'(¢
x¢u
 
inputs’’’’’’’’’
M¢J
# 
states/0’’’’’’’’’
# 
states/1’’’’’’’’’
p 
Ŗ "f¢c

0’’’’’’’’’
C@

1/0’’’’’’’’’

1/1’’’’’’’’’¦
/__inference_lstm_cell_110_layer_call_fn_2304643ņ&'(¢
x¢u
 
inputs’’’’’’’’’
M¢J
# 
states/0’’’’’’’’’
# 
states/1’’’’’’’’’
p
Ŗ "f¢c

0’’’’’’’’’
C@

1/0’’’’’’’’’

1/1’’’’’’’’’Ų
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_2301296s#$%&'(!"@¢=
6¢3
)&
lambda_17_input’’’’’’’’’
p 

 
Ŗ "%¢"

0’’’’’’’’’
 Ų
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_2301319s#$%&'(!"@¢=
6¢3
)&
lambda_17_input’’’’’’’’’
p

 
Ŗ "%¢"

0’’’’’’’’’
 Ļ
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_2301688j#$%&'(!"7¢4
-¢*
 
inputs’’’’’’’’’
p 

 
Ŗ "%¢"

0’’’’’’’’’
 Ļ
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_2301986j#$%&'(!"7¢4
-¢*
 
inputs’’’’’’’’’
p

 
Ŗ "%¢"

0’’’’’’’’’
 °
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_2300836f#$%&'(!"@¢=
6¢3
)&
lambda_17_input’’’’’’’’’
p 

 
Ŗ "’’’’’’’’’°
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_2301273f#$%&'(!"@¢=
6¢3
)&
lambda_17_input’’’’’’’’’
p

 
Ŗ "’’’’’’’’’§
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_2301369]#$%&'(!"7¢4
-¢*
 
inputs’’’’’’’’’
p 

 
Ŗ "’’’’’’’’’§
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_2301390]#$%&'(!"7¢4
-¢*
 
inputs’’’’’’’’’
p

 
Ŗ "’’’’’’’’’¶
%__inference_signature_wrapper_2301348#$%&'(!"K¢H
¢ 
AŖ>
<
lambda_17_input)&
lambda_17_input’’’’’’’’’"3Ŗ0
.
dense_17"
dense_17’’’’’’’’’