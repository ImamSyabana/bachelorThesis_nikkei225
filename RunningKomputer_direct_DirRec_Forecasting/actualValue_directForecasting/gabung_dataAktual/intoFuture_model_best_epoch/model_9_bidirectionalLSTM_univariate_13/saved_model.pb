9
Æ
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
"serve*2.10.12v2.10.0-76-gfdfc646704c8Å·6
Ķ
:Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*K
shared_name<:Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/bias/v
Ę
NAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/bias/v/Read/ReadVariableOpReadVariableOp:Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/bias/v*
_output_shapes	
:*
dtype0
ź
FAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*W
shared_nameHFAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel/v
ć
ZAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel/v/Read/ReadVariableOpReadVariableOpFAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel/v* 
_output_shapes
:
*
dtype0
Õ
<Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*M
shared_name><Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/kernel/v
Ī
PAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/kernel/v/Read/ReadVariableOpReadVariableOp<Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/kernel/v*
_output_shapes
:	*
dtype0
Ė
9Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*J
shared_name;9Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/bias/v
Ä
MAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/bias/v/Read/ReadVariableOpReadVariableOp9Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/bias/v*
_output_shapes	
:*
dtype0
č
EAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*V
shared_nameGEAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel/v
į
YAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel/v/Read/ReadVariableOpReadVariableOpEAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel/v* 
_output_shapes
:
*
dtype0
Ó
;Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*L
shared_name=;Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/kernel/v
Ģ
OAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/kernel/v/Read/ReadVariableOpReadVariableOp;Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/kernel/v*
_output_shapes
:	*
dtype0

Adam/dense_14/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_14/bias/v
y
(Adam/dense_14/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/v*
_output_shapes
:*
dtype0

Adam/dense_14/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/dense_14/kernel/v

*Adam/dense_14/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/v*
_output_shapes
:	*
dtype0
Ķ
:Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*K
shared_name<:Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/bias/m
Ę
NAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/bias/m/Read/ReadVariableOpReadVariableOp:Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/bias/m*
_output_shapes	
:*
dtype0
ź
FAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*W
shared_nameHFAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel/m
ć
ZAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel/m/Read/ReadVariableOpReadVariableOpFAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel/m* 
_output_shapes
:
*
dtype0
Õ
<Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*M
shared_name><Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/kernel/m
Ī
PAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/kernel/m/Read/ReadVariableOpReadVariableOp<Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/kernel/m*
_output_shapes
:	*
dtype0
Ė
9Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*J
shared_name;9Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/bias/m
Ä
MAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/bias/m/Read/ReadVariableOpReadVariableOp9Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/bias/m*
_output_shapes	
:*
dtype0
č
EAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*V
shared_nameGEAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel/m
į
YAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel/m/Read/ReadVariableOpReadVariableOpEAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel/m* 
_output_shapes
:
*
dtype0
Ó
;Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*L
shared_name=;Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/kernel/m
Ģ
OAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/kernel/m/Read/ReadVariableOpReadVariableOp;Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/kernel/m*
_output_shapes
:	*
dtype0

Adam/dense_14/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*%
shared_nameAdam/dense_14/bias/m
y
(Adam/dense_14/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/bias/m*
_output_shapes
:*
dtype0

Adam/dense_14/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*'
shared_nameAdam/dense_14/kernel/m

*Adam/dense_14/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_14/kernel/m*
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
æ
3bidirectional_14/backward_lstm_14/lstm_cell_95/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*D
shared_name53bidirectional_14/backward_lstm_14/lstm_cell_95/bias
ø
Gbidirectional_14/backward_lstm_14/lstm_cell_95/bias/Read/ReadVariableOpReadVariableOp3bidirectional_14/backward_lstm_14/lstm_cell_95/bias*
_output_shapes	
:*
dtype0
Ü
?bidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*P
shared_nameA?bidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel
Õ
Sbidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel/Read/ReadVariableOpReadVariableOp?bidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel* 
_output_shapes
:
*
dtype0
Ē
5bidirectional_14/backward_lstm_14/lstm_cell_95/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*F
shared_name75bidirectional_14/backward_lstm_14/lstm_cell_95/kernel
Ą
Ibidirectional_14/backward_lstm_14/lstm_cell_95/kernel/Read/ReadVariableOpReadVariableOp5bidirectional_14/backward_lstm_14/lstm_cell_95/kernel*
_output_shapes
:	*
dtype0
½
2bidirectional_14/forward_lstm_14/lstm_cell_94/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*C
shared_name42bidirectional_14/forward_lstm_14/lstm_cell_94/bias
¶
Fbidirectional_14/forward_lstm_14/lstm_cell_94/bias/Read/ReadVariableOpReadVariableOp2bidirectional_14/forward_lstm_14/lstm_cell_94/bias*
_output_shapes	
:*
dtype0
Ś
>bidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*O
shared_name@>bidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel
Ó
Rbidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel/Read/ReadVariableOpReadVariableOp>bidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel* 
_output_shapes
:
*
dtype0
Å
4bidirectional_14/forward_lstm_14/lstm_cell_94/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*E
shared_name64bidirectional_14/forward_lstm_14/lstm_cell_94/kernel
¾
Hbidirectional_14/forward_lstm_14/lstm_cell_94/kernel/Read/ReadVariableOpReadVariableOp4bidirectional_14/forward_lstm_14/lstm_cell_94/kernel*
_output_shapes
:	*
dtype0
r
dense_14/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_14/bias
k
!dense_14/bias/Read/ReadVariableOpReadVariableOpdense_14/bias*
_output_shapes
:*
dtype0
{
dense_14/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	* 
shared_namedense_14/kernel
t
#dense_14/kernel/Read/ReadVariableOpReadVariableOpdense_14/kernel*
_output_shapes
:	*
dtype0

serving_default_lambda_14_inputPlaceholder*'
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
Å
StatefulPartitionedCallStatefulPartitionedCallserving_default_lambda_14_input4bidirectional_14/forward_lstm_14/lstm_cell_94/kernel>bidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel2bidirectional_14/forward_lstm_14/lstm_cell_94/bias5bidirectional_14/backward_lstm_14/lstm_cell_95/kernel?bidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel3bidirectional_14/backward_lstm_14/lstm_cell_95/biasdense_14/kerneldense_14/bias*
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
%__inference_signature_wrapper_1559517

NoOpNoOp
N
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*¼M
value²MBÆM BØM
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
VARIABLE_VALUEdense_14/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
[U
VARIABLE_VALUEdense_14/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
tn
VARIABLE_VALUE4bidirectional_14/forward_lstm_14/lstm_cell_94/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUE>bidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE2bidirectional_14/forward_lstm_14/lstm_cell_94/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
uo
VARIABLE_VALUE5bidirectional_14/backward_lstm_14/lstm_cell_95/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
y
VARIABLE_VALUE?bidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE3bidirectional_14/backward_lstm_14/lstm_cell_95/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
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
VARIABLE_VALUEAdam/dense_14/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_14/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE;Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
¢
VARIABLE_VALUEEAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE9Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUEFAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE:Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
|
VARIABLE_VALUEAdam/dense_14/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
~x
VARIABLE_VALUEAdam/dense_14/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE;Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
¢
VARIABLE_VALUEEAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE9Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE<Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
£
VARIABLE_VALUEFAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE:Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
Ņ
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename#dense_14/kernel/Read/ReadVariableOp!dense_14/bias/Read/ReadVariableOpHbidirectional_14/forward_lstm_14/lstm_cell_94/kernel/Read/ReadVariableOpRbidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel/Read/ReadVariableOpFbidirectional_14/forward_lstm_14/lstm_cell_94/bias/Read/ReadVariableOpIbidirectional_14/backward_lstm_14/lstm_cell_95/kernel/Read/ReadVariableOpSbidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel/Read/ReadVariableOpGbidirectional_14/backward_lstm_14/lstm_cell_95/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp*Adam/dense_14/kernel/m/Read/ReadVariableOp(Adam/dense_14/bias/m/Read/ReadVariableOpOAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/kernel/m/Read/ReadVariableOpYAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel/m/Read/ReadVariableOpMAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/bias/m/Read/ReadVariableOpPAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/kernel/m/Read/ReadVariableOpZAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel/m/Read/ReadVariableOpNAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/bias/m/Read/ReadVariableOp*Adam/dense_14/kernel/v/Read/ReadVariableOp(Adam/dense_14/bias/v/Read/ReadVariableOpOAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/kernel/v/Read/ReadVariableOpYAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel/v/Read/ReadVariableOpMAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/bias/v/Read/ReadVariableOpPAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/kernel/v/Read/ReadVariableOpZAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel/v/Read/ReadVariableOpNAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/bias/v/Read/ReadVariableOpConst*,
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
 __inference__traced_save_1562992
į
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_14/kerneldense_14/bias4bidirectional_14/forward_lstm_14/lstm_cell_94/kernel>bidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel2bidirectional_14/forward_lstm_14/lstm_cell_94/bias5bidirectional_14/backward_lstm_14/lstm_cell_95/kernel?bidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel3bidirectional_14/backward_lstm_14/lstm_cell_95/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_14/kernel/mAdam/dense_14/bias/m;Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/kernel/mEAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel/m9Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/bias/m<Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/kernel/mFAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel/m:Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/bias/mAdam/dense_14/kernel/vAdam/dense_14/bias/v;Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/kernel/vEAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel/v9Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/bias/v<Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/kernel/vFAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel/v:Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/bias/v*+
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
#__inference__traced_restore_1563095ń4
Ł
Å
Ymodel_9_bidirectionalLSTM_univariate_bidirectional_14_backward_lstm_14_while_body_1557142«
¦model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_loop_counter±
¬model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_maximum_iterations\
Xmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_placeholder^
Zmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_placeholder_1^
Zmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_placeholder_2^
Zmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_placeholder_3Ŗ
„model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_strided_slice_1_0ę
įmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0
zmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0:	
|model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0:

{model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0:	Y
Umodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_identity[
Wmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_identity_1[
Wmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_identity_2[
Wmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_identity_3[
Wmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_identity_4[
Wmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_identity_5Ø
£model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_strided_slice_1ä
ßmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor
xmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource:	
zmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource:

ymodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource:	¢pmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp¢omodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp¢qmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOpĻ
~model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
pmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemįmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0Xmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_placeholdermodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0«
omodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOpReadVariableOpzmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0
`model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMulMatMulwmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0wmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’°
qmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOp|model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0ö
bmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1MatMulZmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_placeholder_2ymodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ó
]model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/addAddV2jmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul:product:0lmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’©
pmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOp{model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ü
amodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAddBiasAddamodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/add:z:0xmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’«
imodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Č
_model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/splitSplitrmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/split/split_dim:output:0jmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
amodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/SigmoidSigmoidhmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
cmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/Sigmoid_1Sigmoidhmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ü
]model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/mulMulgmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/Sigmoid_1:y:0Zmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/ReluReluhmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ī
_model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/mul_1Mulemodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/Sigmoid:y:0lmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’ć
_model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/add_1AddV2amodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/mul:z:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
cmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/Sigmoid_2Sigmoidhmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
`model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/Relu_1Relucmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ņ
_model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/mul_2Mulgmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/Sigmoid_2:y:0nmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¹
wmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
qmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemZmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_placeholder_1model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/index:output:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :±
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/addAddV2Xmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_placeholder[model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/add/y:output:0*
T0*
_output_shapes
: 
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/add_1AddV2¦model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_loop_counter]model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: ®
Umodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/IdentityIdentityVmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/add_1:z:0R^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/NoOp*
T0*
_output_shapes
: 
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/Identity_1Identity¬model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_maximum_iterationsR^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ®
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/Identity_2IdentityTmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/add:z:0R^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/NoOp*
T0*
_output_shapes
: Ü
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/Identity_3Identitymodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0R^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/NoOp*
T0*
_output_shapes
: Ļ
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/Identity_4Identitycmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/mul_2:z:0R^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ļ
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/Identity_5Identitycmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/add_1:z:0R^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’ģ
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/NoOpNoOpq^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOpp^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOpr^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "·
Umodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_identity^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/Identity:output:0"»
Wmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_identity_1`model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/Identity_1:output:0"»
Wmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_identity_2`model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/Identity_2:output:0"»
Wmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_identity_3`model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/Identity_3:output:0"»
Wmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_identity_4`model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/Identity_4:output:0"»
Wmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_identity_5`model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/Identity_5:output:0"ų
ymodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource{model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0"ś
zmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource|model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0"ö
xmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resourcezmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0"Ī
£model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_strided_slice_1„model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_strided_slice_1_0"Ę
ßmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_tensorarrayunstack_tensorlistfromtensorįmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2ä
pmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOppmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp2ā
omodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOpomodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp2ę
qmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOpqmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp: 
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
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_1559488
lambda_14_input+
bidirectional_14_1559469:	,
bidirectional_14_1559471:
'
bidirectional_14_1559473:	+
bidirectional_14_1559475:	,
bidirectional_14_1559477:
'
bidirectional_14_1559479:	#
dense_14_1559482:	
dense_14_1559484:
identity¢(bidirectional_14/StatefulPartitionedCall¢ dense_14/StatefulPartitionedCallĖ
lambda_14/PartitionedCallPartitionedCalllambda_14_input*
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
F__inference_lambda_14_layer_call_and_return_conditional_losses_1559353£
(bidirectional_14/StatefulPartitionedCallStatefulPartitionedCall"lambda_14/PartitionedCall:output:0bidirectional_14_1559469bidirectional_14_1559471bidirectional_14_1559473bidirectional_14_1559475bidirectional_14_1559477bidirectional_14_1559479*
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
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1559324”
 dense_14/StatefulPartitionedCallStatefulPartitionedCall1bidirectional_14/StatefulPartitionedCall:output:0dense_14_1559482dense_14_1559484*
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
E__inference_dense_14_layer_call_and_return_conditional_losses_1558979x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
NoOpNoOp)^bidirectional_14/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 2T
(bidirectional_14/StatefulPartitionedCall(bidirectional_14/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:X T
'
_output_shapes
:’’’’’’’’’
)
_user_specified_namelambda_14_input
Ģ	
÷
E__inference_dense_14_layer_call_and_return_conditional_losses_1561424

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
’

"forward_lstm_14_while_cond_1560884<
8forward_lstm_14_while_forward_lstm_14_while_loop_counterB
>forward_lstm_14_while_forward_lstm_14_while_maximum_iterations%
!forward_lstm_14_while_placeholder'
#forward_lstm_14_while_placeholder_1'
#forward_lstm_14_while_placeholder_2'
#forward_lstm_14_while_placeholder_3>
:forward_lstm_14_while_less_forward_lstm_14_strided_slice_1U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1560884___redundant_placeholder0U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1560884___redundant_placeholder1U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1560884___redundant_placeholder2U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1560884___redundant_placeholder3"
forward_lstm_14_while_identity
¢
forward_lstm_14/while/LessLess!forward_lstm_14_while_placeholder:forward_lstm_14_while_less_forward_lstm_14_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_14/while/IdentityIdentityforward_lstm_14/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_14_while_identity'forward_lstm_14/while/Identity:output:0*(
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
Č9
Ó
while_body_1561963
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_94_matmul_readvariableop_resource_0:	I
5while_lstm_cell_94_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_94_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_94_matmul_readvariableop_resource:	G
3while_lstm_cell_94_matmul_1_readvariableop_resource:
A
2while_lstm_cell_94_biasadd_readvariableop_resource:	¢)while/lstm_cell_94/BiasAdd/ReadVariableOp¢(while/lstm_cell_94/MatMul/ReadVariableOp¢*while/lstm_cell_94/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
(while/lstm_cell_94/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_94_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_94/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_94_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_94/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/addAddV2#while/lstm_cell_94/MatMul:product:0%while/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_94_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_94/BiasAddBiasAddwhile/lstm_cell_94/add:z:01while/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_94/splitSplit+while/lstm_cell_94/split/split_dim:output:0#while/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_94/SigmoidSigmoid!while/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_94/Sigmoid_1Sigmoid!while/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/mulMul while/lstm_cell_94/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_94/ReluRelu!while/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/mul_1Mulwhile/lstm_cell_94/Sigmoid:y:0%while/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/add_1AddV2while/lstm_cell_94/mul:z:0while/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_94/Sigmoid_2Sigmoid!while/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_94/Relu_1Reluwhile/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/mul_2Mul while/lstm_cell_94/Sigmoid_2:y:0'while/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_94/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_94/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_94/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_94/BiasAdd/ReadVariableOp)^while/lstm_cell_94/MatMul/ReadVariableOp+^while/lstm_cell_94/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_94_biasadd_readvariableop_resource4while_lstm_cell_94_biasadd_readvariableop_resource_0"l
3while_lstm_cell_94_matmul_1_readvariableop_resource5while_lstm_cell_94_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_94_matmul_readvariableop_resource3while_lstm_cell_94_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_94/BiasAdd/ReadVariableOp)while/lstm_cell_94/BiasAdd/ReadVariableOp2T
(while/lstm_cell_94/MatMul/ReadVariableOp(while/lstm_cell_94/MatMul/ReadVariableOp2X
*while/lstm_cell_94/MatMul_1/ReadVariableOp*while/lstm_cell_94/MatMul_1/ReadVariableOp: 
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
ÖM
ó
#backward_lstm_14_while_body_1561028>
:backward_lstm_14_while_backward_lstm_14_while_loop_counterD
@backward_lstm_14_while_backward_lstm_14_while_maximum_iterations&
"backward_lstm_14_while_placeholder(
$backward_lstm_14_while_placeholder_1(
$backward_lstm_14_while_placeholder_2(
$backward_lstm_14_while_placeholder_3=
9backward_lstm_14_while_backward_lstm_14_strided_slice_1_0y
ubackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0W
Dbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0:	Z
Fbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0:
T
Ebackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0:	#
backward_lstm_14_while_identity%
!backward_lstm_14_while_identity_1%
!backward_lstm_14_while_identity_2%
!backward_lstm_14_while_identity_3%
!backward_lstm_14_while_identity_4%
!backward_lstm_14_while_identity_5;
7backward_lstm_14_while_backward_lstm_14_strided_slice_1w
sbackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensorU
Bbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource:	X
Dbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource:
R
Cbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource:	¢:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp¢9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp¢;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp
Hbackward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ū
:backward_lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_14_while_placeholderQbackward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0æ
9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOpReadVariableOpDbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ķ
*backward_lstm_14/while/lstm_cell_95/MatMulMatMulAbackward_lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0Abackward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ä
;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOpFbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ō
,backward_lstm_14/while/lstm_cell_95/MatMul_1MatMul$backward_lstm_14_while_placeholder_2Cbackward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ń
'backward_lstm_14/while/lstm_cell_95/addAddV24backward_lstm_14/while/lstm_cell_95/MatMul:product:06backward_lstm_14/while/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’½
:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOpEbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ś
+backward_lstm_14/while/lstm_cell_95/BiasAddBiasAdd+backward_lstm_14/while/lstm_cell_95/add:z:0Bbackward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’u
3backward_lstm_14/while/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¦
)backward_lstm_14/while/lstm_cell_95/splitSplit<backward_lstm_14/while/lstm_cell_95/split/split_dim:output:04backward_lstm_14/while/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
+backward_lstm_14/while/lstm_cell_95/SigmoidSigmoid2backward_lstm_14/while/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
-backward_lstm_14/while/lstm_cell_95/Sigmoid_1Sigmoid2backward_lstm_14/while/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’ŗ
'backward_lstm_14/while/lstm_cell_95/mulMul1backward_lstm_14/while/lstm_cell_95/Sigmoid_1:y:0$backward_lstm_14_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
(backward_lstm_14/while/lstm_cell_95/ReluRelu2backward_lstm_14/while/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ģ
)backward_lstm_14/while/lstm_cell_95/mul_1Mul/backward_lstm_14/while/lstm_cell_95/Sigmoid:y:06backward_lstm_14/while/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Į
)backward_lstm_14/while/lstm_cell_95/add_1AddV2+backward_lstm_14/while/lstm_cell_95/mul:z:0-backward_lstm_14/while/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
-backward_lstm_14/while/lstm_cell_95/Sigmoid_2Sigmoid2backward_lstm_14/while/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
*backward_lstm_14/while/lstm_cell_95/Relu_1Relu-backward_lstm_14/while/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Š
)backward_lstm_14/while/lstm_cell_95/mul_2Mul1backward_lstm_14/while/lstm_cell_95/Sigmoid_2:y:08backward_lstm_14/while/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Abackward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ±
;backward_lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_14_while_placeholder_1Jbackward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/index:output:0-backward_lstm_14/while/lstm_cell_95/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ^
backward_lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_14/while/addAddV2"backward_lstm_14_while_placeholder%backward_lstm_14/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :«
backward_lstm_14/while/add_1AddV2:backward_lstm_14_while_backward_lstm_14_while_loop_counter'backward_lstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_14/while/IdentityIdentity backward_lstm_14/while/add_1:z:0^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ®
!backward_lstm_14/while/Identity_1Identity@backward_lstm_14_while_backward_lstm_14_while_maximum_iterations^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: 
!backward_lstm_14/while/Identity_2Identitybackward_lstm_14/while/add:z:0^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ¹
!backward_lstm_14/while/Identity_3IdentityKbackward_lstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ­
!backward_lstm_14/while/Identity_4Identity-backward_lstm_14/while/lstm_cell_95/mul_2:z:0^backward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’­
!backward_lstm_14/while/Identity_5Identity-backward_lstm_14/while/lstm_cell_95/add_1:z:0^backward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
backward_lstm_14/while/NoOpNoOp;^backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp:^backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp<^backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "t
7backward_lstm_14_while_backward_lstm_14_strided_slice_19backward_lstm_14_while_backward_lstm_14_strided_slice_1_0"K
backward_lstm_14_while_identity(backward_lstm_14/while/Identity:output:0"O
!backward_lstm_14_while_identity_1*backward_lstm_14/while/Identity_1:output:0"O
!backward_lstm_14_while_identity_2*backward_lstm_14/while/Identity_2:output:0"O
!backward_lstm_14_while_identity_3*backward_lstm_14/while/Identity_3:output:0"O
!backward_lstm_14_while_identity_4*backward_lstm_14/while/Identity_4:output:0"O
!backward_lstm_14_while_identity_5*backward_lstm_14/while/Identity_5:output:0"
Cbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resourceEbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0"
Dbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resourceFbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0"
Bbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resourceDbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0"ģ
sbackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensorubackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2x
:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp2v
9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp2z
;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp: 
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
¬
G
+__inference_lambda_14_layer_call_fn_1560165

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
F__inference_lambda_14_layer_call_and_return_conditional_losses_1559353d
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
©
Ā
2__inference_backward_lstm_14_layer_call_fn_1562059
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
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1557743p
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
¾
Č
while_cond_1558166
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1558166___redundant_placeholder05
1while_while_cond_1558166___redundant_placeholder15
1while_while_cond_1558166___redundant_placeholder25
1while_while_cond_1558166___redundant_placeholder3
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
¬
G
+__inference_lambda_14_layer_call_fn_1560160

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
F__inference_lambda_14_layer_call_and_return_conditional_losses_1558664d
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
Ą
Ē
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1561405

inputsN
;forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource:	Q
=forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource:
K
<forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource:	O
<backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource:	R
>backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource:
L
=backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource:	
identity¢4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp¢3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp¢5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp¢backward_lstm_14/while¢3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp¢2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp¢4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp¢forward_lstm_14/whileK
forward_lstm_14/ShapeShapeinputs*
T0*
_output_shapes
:m
#forward_lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_14/strided_sliceStridedSliceforward_lstm_14/Shape:output:0,forward_lstm_14/strided_slice/stack:output:0.forward_lstm_14/strided_slice/stack_1:output:0.forward_lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
forward_lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :£
forward_lstm_14/zeros/packedPack&forward_lstm_14/strided_slice:output:0'forward_lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_14/zerosFill%forward_lstm_14/zeros/packed:output:0$forward_lstm_14/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
 forward_lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :§
forward_lstm_14/zeros_1/packedPack&forward_lstm_14/strided_slice:output:0)forward_lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
forward_lstm_14/zeros_1Fill'forward_lstm_14/zeros_1/packed:output:0&forward_lstm_14/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
forward_lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm_14/transpose	Transposeinputs'forward_lstm_14/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d
forward_lstm_14/Shape_1Shapeforward_lstm_14/transpose:y:0*
T0*
_output_shapes
:o
%forward_lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
forward_lstm_14/strided_slice_1StridedSlice forward_lstm_14/Shape_1:output:0.forward_lstm_14/strided_slice_1/stack:output:00forward_lstm_14/strided_slice_1/stack_1:output:00forward_lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ä
forward_lstm_14/TensorArrayV2TensorListReserve4forward_lstm_14/TensorArrayV2/element_shape:output:0(forward_lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Eforward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
7forward_lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_14/transpose:y:0Nforward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅo
%forward_lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¹
forward_lstm_14/strided_slice_2StridedSliceforward_lstm_14/transpose:y:0.forward_lstm_14/strided_slice_2/stack:output:00forward_lstm_14/strided_slice_2/stack_1:output:00forward_lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_maskÆ
2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOpReadVariableOp;forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ę
#forward_lstm_14/lstm_cell_94/MatMulMatMul(forward_lstm_14/strided_slice_2:output:0:forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’“
4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOp=forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ą
%forward_lstm_14/lstm_cell_94/MatMul_1MatMulforward_lstm_14/zeros:output:0<forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¼
 forward_lstm_14/lstm_cell_94/addAddV2-forward_lstm_14/lstm_cell_94/MatMul:product:0/forward_lstm_14/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’­
3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOp<forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Å
$forward_lstm_14/lstm_cell_94/BiasAddBiasAdd$forward_lstm_14/lstm_cell_94/add:z:0;forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’n
,forward_lstm_14/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
"forward_lstm_14/lstm_cell_94/splitSplit5forward_lstm_14/lstm_cell_94/split/split_dim:output:0-forward_lstm_14/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
$forward_lstm_14/lstm_cell_94/SigmoidSigmoid+forward_lstm_14/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
&forward_lstm_14/lstm_cell_94/Sigmoid_1Sigmoid+forward_lstm_14/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ø
 forward_lstm_14/lstm_cell_94/mulMul*forward_lstm_14/lstm_cell_94/Sigmoid_1:y:0 forward_lstm_14/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
!forward_lstm_14/lstm_cell_94/ReluRelu+forward_lstm_14/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’·
"forward_lstm_14/lstm_cell_94/mul_1Mul(forward_lstm_14/lstm_cell_94/Sigmoid:y:0/forward_lstm_14/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¬
"forward_lstm_14/lstm_cell_94/add_1AddV2$forward_lstm_14/lstm_cell_94/mul:z:0&forward_lstm_14/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
&forward_lstm_14/lstm_cell_94/Sigmoid_2Sigmoid+forward_lstm_14/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
#forward_lstm_14/lstm_cell_94/Relu_1Relu&forward_lstm_14/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’»
"forward_lstm_14/lstm_cell_94/mul_2Mul*forward_lstm_14/lstm_cell_94/Sigmoid_2:y:01forward_lstm_14/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’~
-forward_lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   n
,forward_lstm_14/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :õ
forward_lstm_14/TensorArrayV2_1TensorListReserve6forward_lstm_14/TensorArrayV2_1/element_shape:output:05forward_lstm_14/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅV
forward_lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’d
"forward_lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : č
forward_lstm_14/whileWhile+forward_lstm_14/while/loop_counter:output:01forward_lstm_14/while/maximum_iterations:output:0forward_lstm_14/time:output:0(forward_lstm_14/TensorArrayV2_1:handle:0forward_lstm_14/zeros:output:0 forward_lstm_14/zeros_1:output:0(forward_lstm_14/strided_slice_1:output:0Gforward_lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0;forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource=forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource<forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource*
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
"forward_lstm_14_while_body_1561175*.
cond&R$
"forward_lstm_14_while_cond_1561174*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
@forward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
2forward_lstm_14/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_14/while:output:3Iforward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsx
%forward_lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’q
'forward_lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ų
forward_lstm_14/strided_slice_3StridedSlice;forward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_14/strided_slice_3/stack:output:00forward_lstm_14/strided_slice_3/stack_1:output:00forward_lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_masku
 forward_lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ē
forward_lstm_14/transpose_1	Transpose;forward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_14/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’k
forward_lstm_14/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    L
backward_lstm_14/ShapeShapeinputs*
T0*
_output_shapes
:n
$backward_lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
backward_lstm_14/strided_sliceStridedSlicebackward_lstm_14/Shape:output:0-backward_lstm_14/strided_slice/stack:output:0/backward_lstm_14/strided_slice/stack_1:output:0/backward_lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
backward_lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :¦
backward_lstm_14/zeros/packedPack'backward_lstm_14/strided_slice:output:0(backward_lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
backward_lstm_14/zerosFill&backward_lstm_14/zeros/packed:output:0%backward_lstm_14/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’d
!backward_lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ŗ
backward_lstm_14/zeros_1/packedPack'backward_lstm_14/strided_slice:output:0*backward_lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¦
backward_lstm_14/zeros_1Fill(backward_lstm_14/zeros_1/packed:output:0'backward_lstm_14/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’t
backward_lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
backward_lstm_14/transpose	Transposeinputs(backward_lstm_14/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’f
backward_lstm_14/Shape_1Shapebackward_lstm_14/transpose:y:0*
T0*
_output_shapes
:p
&backward_lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 backward_lstm_14/strided_slice_1StridedSlice!backward_lstm_14/Shape_1:output:0/backward_lstm_14/strided_slice_1/stack:output:01backward_lstm_14/strided_slice_1/stack_1:output:01backward_lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ē
backward_lstm_14/TensorArrayV2TensorListReserve5backward_lstm_14/TensorArrayV2/element_shape:output:0)backward_lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅi
backward_lstm_14/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: §
backward_lstm_14/ReverseV2	ReverseV2backward_lstm_14/transpose:y:0(backward_lstm_14/ReverseV2/axis:output:0*
T0*+
_output_shapes
:’’’’’’’’’
Fbackward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
8backward_lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_14/ReverseV2:output:0Obackward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅp
&backward_lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¾
 backward_lstm_14/strided_slice_2StridedSlicebackward_lstm_14/transpose:y:0/backward_lstm_14/strided_slice_2/stack:output:01backward_lstm_14/strided_slice_2/stack_1:output:01backward_lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask±
3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOpReadVariableOp<backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0É
$backward_lstm_14/lstm_cell_95/MatMulMatMul)backward_lstm_14/strided_slice_2:output:0;backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¶
5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOp>backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ć
&backward_lstm_14/lstm_cell_95/MatMul_1MatMulbackward_lstm_14/zeros:output:0=backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’æ
!backward_lstm_14/lstm_cell_95/addAddV2.backward_lstm_14/lstm_cell_95/MatMul:product:00backward_lstm_14/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOp=backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Č
%backward_lstm_14/lstm_cell_95/BiasAddBiasAdd%backward_lstm_14/lstm_cell_95/add:z:0<backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’o
-backward_lstm_14/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
#backward_lstm_14/lstm_cell_95/splitSplit6backward_lstm_14/lstm_cell_95/split/split_dim:output:0.backward_lstm_14/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
%backward_lstm_14/lstm_cell_95/SigmoidSigmoid,backward_lstm_14/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
'backward_lstm_14/lstm_cell_95/Sigmoid_1Sigmoid,backward_lstm_14/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’«
!backward_lstm_14/lstm_cell_95/mulMul+backward_lstm_14/lstm_cell_95/Sigmoid_1:y:0!backward_lstm_14/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
"backward_lstm_14/lstm_cell_95/ReluRelu,backward_lstm_14/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ŗ
#backward_lstm_14/lstm_cell_95/mul_1Mul)backward_lstm_14/lstm_cell_95/Sigmoid:y:00backward_lstm_14/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
#backward_lstm_14/lstm_cell_95/add_1AddV2%backward_lstm_14/lstm_cell_95/mul:z:0'backward_lstm_14/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
'backward_lstm_14/lstm_cell_95/Sigmoid_2Sigmoid,backward_lstm_14/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
$backward_lstm_14/lstm_cell_95/Relu_1Relu'backward_lstm_14/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’¾
#backward_lstm_14/lstm_cell_95/mul_2Mul+backward_lstm_14/lstm_cell_95/Sigmoid_2:y:02backward_lstm_14/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
.backward_lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   o
-backward_lstm_14/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ų
 backward_lstm_14/TensorArrayV2_1TensorListReserve7backward_lstm_14/TensorArrayV2_1/element_shape:output:06backward_lstm_14/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅW
backward_lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’e
#backward_lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ö
backward_lstm_14/whileWhile,backward_lstm_14/while/loop_counter:output:02backward_lstm_14/while/maximum_iterations:output:0backward_lstm_14/time:output:0)backward_lstm_14/TensorArrayV2_1:handle:0backward_lstm_14/zeros:output:0!backward_lstm_14/zeros_1:output:0)backward_lstm_14/strided_slice_1:output:0Hbackward_lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0<backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource>backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource=backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource*
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
#backward_lstm_14_while_body_1561318*/
cond'R%
#backward_lstm_14_while_cond_1561317*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
Abackward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
3backward_lstm_14/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_14/while:output:3Jbackward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsy
&backward_lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’r
(backward_lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ż
 backward_lstm_14/strided_slice_3StridedSlice<backward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_14/strided_slice_3/stack:output:01backward_lstm_14/strided_slice_3/stack_1:output:01backward_lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maskv
!backward_lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ź
backward_lstm_14/transpose_1	Transpose<backward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_14/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’l
backward_lstm_14/runtimeConst"/device:CPU:0*
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
concatConcatV2(forward_lstm_14/strided_slice_3:output:0)backward_lstm_14/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’¾
NoOpNoOp5^backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp4^backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp6^backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp^backward_lstm_14/while4^forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp3^forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp5^forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp^forward_lstm_14/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : 2l
4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp2j
3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp2n
5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp20
backward_lstm_14/whilebackward_lstm_14/while2j
3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp2h
2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp2l
4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp2.
forward_lstm_14/whileforward_lstm_14/while:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ų
š
4bidirectional_14_backward_lstm_14_while_cond_1560061`
\bidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_while_loop_counterf
bbidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_while_maximum_iterations7
3bidirectional_14_backward_lstm_14_while_placeholder9
5bidirectional_14_backward_lstm_14_while_placeholder_19
5bidirectional_14_backward_lstm_14_while_placeholder_29
5bidirectional_14_backward_lstm_14_while_placeholder_3b
^bidirectional_14_backward_lstm_14_while_less_bidirectional_14_backward_lstm_14_strided_slice_1y
ubidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_while_cond_1560061___redundant_placeholder0y
ubidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_while_cond_1560061___redundant_placeholder1y
ubidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_while_cond_1560061___redundant_placeholder2y
ubidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_while_cond_1560061___redundant_placeholder34
0bidirectional_14_backward_lstm_14_while_identity
ź
,bidirectional_14/backward_lstm_14/while/LessLess3bidirectional_14_backward_lstm_14_while_placeholder^bidirectional_14_backward_lstm_14_while_less_bidirectional_14_backward_lstm_14_strided_slice_1*
T0*
_output_shapes
: 
0bidirectional_14/backward_lstm_14/while/IdentityIdentity0bidirectional_14/backward_lstm_14/while/Less:z:0*
T0
*
_output_shapes
: "m
0bidirectional_14_backward_lstm_14_while_identity9bidirectional_14/backward_lstm_14/while/Identity:output:0*(
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
Ć	
Ź
%__inference_signature_wrapper_1559517
lambda_14_input
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
StatefulPartitionedCallStatefulPartitionedCalllambda_14_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
"__inference__wrapped_model_1557235o
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
_user_specified_namelambda_14_input
ū
ų
.__inference_lstm_cell_95_layer_call_fn_1562795

inputs
states_0
states_1
unknown:	
	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCallÆ
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
GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_95_layer_call_and_return_conditional_losses_1557658p
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
L
„
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1561903

inputs>
+lstm_cell_94_matmul_readvariableop_resource:	A
-lstm_cell_94_matmul_1_readvariableop_resource:
;
,lstm_cell_94_biasadd_readvariableop_resource:	
identity¢#lstm_cell_94/BiasAdd/ReadVariableOp¢"lstm_cell_94/MatMul/ReadVariableOp¢$lstm_cell_94/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
"lstm_cell_94/MatMul/ReadVariableOpReadVariableOp+lstm_cell_94_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_94/MatMulMatMulstrided_slice_2:output:0*lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_94_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_94/MatMul_1MatMulzeros:output:0,lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_94/addAddV2lstm_cell_94/MatMul:product:0lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_94_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_94/BiasAddBiasAddlstm_cell_94/add:z:0+lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_94/splitSplit%lstm_cell_94/split/split_dim:output:0lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_94/SigmoidSigmoidlstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_94/Sigmoid_1Sigmoidlstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_94/mulMullstm_cell_94/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_94/ReluRelulstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_94/mul_1Mullstm_cell_94/Sigmoid:y:0lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_94/add_1AddV2lstm_cell_94/mul:z:0lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_94/Sigmoid_2Sigmoidlstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_94/Relu_1Relulstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_94/mul_2Mullstm_cell_94/Sigmoid_2:y:0!lstm_cell_94/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_94_matmul_readvariableop_resource-lstm_cell_94_matmul_1_readvariableop_resource,lstm_cell_94_biasadd_readvariableop_resource*
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
while_body_1561818*
condR
while_cond_1561817*M
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
:’’’’’’’’’Ą
NoOpNoOp$^lstm_cell_94/BiasAdd/ReadVariableOp#^lstm_cell_94/MatMul/ReadVariableOp%^lstm_cell_94/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_94/BiasAdd/ReadVariableOp#lstm_cell_94/BiasAdd/ReadVariableOp2H
"lstm_cell_94/MatMul/ReadVariableOp"lstm_cell_94/MatMul/ReadVariableOp2L
$lstm_cell_94/MatMul_1/ReadVariableOp$lstm_cell_94/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
Ģ	
÷
E__inference_dense_14_layer_call_and_return_conditional_losses_1558979

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
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_1559442
lambda_14_input
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
StatefulPartitionedCallStatefulPartitionedCalllambda_14_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_1559402o
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
_user_specified_namelambda_14_input
”$
ģ
while_body_1557317
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_94_1557341_0:	0
while_lstm_cell_94_1557343_0:
+
while_lstm_cell_94_1557345_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_94_1557341:	.
while_lstm_cell_94_1557343:
)
while_lstm_cell_94_1557345:	¢*while/lstm_cell_94/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0½
*while/lstm_cell_94/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_94_1557341_0while_lstm_cell_94_1557343_0while_lstm_cell_94_1557345_0*
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
GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_94_layer_call_and_return_conditional_losses_1557302r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_94/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity3while/lstm_cell_94/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
while/Identity_5Identity3while/lstm_cell_94/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’y

while/NoOpNoOp+^while/lstm_cell_94/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_94_1557341while_lstm_cell_94_1557341_0":
while_lstm_cell_94_1557343while_lstm_cell_94_1557343_0":
while_lstm_cell_94_1557345while_lstm_cell_94_1557345_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2X
*while/lstm_cell_94/StatefulPartitionedCall*while/lstm_cell_94/StatefulPartitionedCall: 
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
üĄ
É
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1560825
inputs_0N
;forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource:	Q
=forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource:
K
<forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource:	O
<backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource:	R
>backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource:
L
=backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource:	
identity¢4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp¢3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp¢5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp¢backward_lstm_14/while¢3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp¢2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp¢4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp¢forward_lstm_14/whileM
forward_lstm_14/ShapeShapeinputs_0*
T0*
_output_shapes
:m
#forward_lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_14/strided_sliceStridedSliceforward_lstm_14/Shape:output:0,forward_lstm_14/strided_slice/stack:output:0.forward_lstm_14/strided_slice/stack_1:output:0.forward_lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
forward_lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :£
forward_lstm_14/zeros/packedPack&forward_lstm_14/strided_slice:output:0'forward_lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_14/zerosFill%forward_lstm_14/zeros/packed:output:0$forward_lstm_14/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
 forward_lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :§
forward_lstm_14/zeros_1/packedPack&forward_lstm_14/strided_slice:output:0)forward_lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
forward_lstm_14/zeros_1Fill'forward_lstm_14/zeros_1/packed:output:0&forward_lstm_14/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
forward_lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ”
forward_lstm_14/transpose	Transposeinputs_0'forward_lstm_14/transpose/perm:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’d
forward_lstm_14/Shape_1Shapeforward_lstm_14/transpose:y:0*
T0*
_output_shapes
:o
%forward_lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
forward_lstm_14/strided_slice_1StridedSlice forward_lstm_14/Shape_1:output:0.forward_lstm_14/strided_slice_1/stack:output:00forward_lstm_14/strided_slice_1/stack_1:output:00forward_lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ä
forward_lstm_14/TensorArrayV2TensorListReserve4forward_lstm_14/TensorArrayV2/element_shape:output:0(forward_lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Eforward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’
7forward_lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_14/transpose:y:0Nforward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅo
%forward_lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ā
forward_lstm_14/strided_slice_2StridedSliceforward_lstm_14/transpose:y:0.forward_lstm_14/strided_slice_2/stack:output:00forward_lstm_14/strided_slice_2/stack_1:output:00forward_lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
shrink_axis_maskÆ
2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOpReadVariableOp;forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ę
#forward_lstm_14/lstm_cell_94/MatMulMatMul(forward_lstm_14/strided_slice_2:output:0:forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’“
4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOp=forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ą
%forward_lstm_14/lstm_cell_94/MatMul_1MatMulforward_lstm_14/zeros:output:0<forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¼
 forward_lstm_14/lstm_cell_94/addAddV2-forward_lstm_14/lstm_cell_94/MatMul:product:0/forward_lstm_14/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’­
3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOp<forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Å
$forward_lstm_14/lstm_cell_94/BiasAddBiasAdd$forward_lstm_14/lstm_cell_94/add:z:0;forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’n
,forward_lstm_14/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
"forward_lstm_14/lstm_cell_94/splitSplit5forward_lstm_14/lstm_cell_94/split/split_dim:output:0-forward_lstm_14/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
$forward_lstm_14/lstm_cell_94/SigmoidSigmoid+forward_lstm_14/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
&forward_lstm_14/lstm_cell_94/Sigmoid_1Sigmoid+forward_lstm_14/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ø
 forward_lstm_14/lstm_cell_94/mulMul*forward_lstm_14/lstm_cell_94/Sigmoid_1:y:0 forward_lstm_14/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
!forward_lstm_14/lstm_cell_94/ReluRelu+forward_lstm_14/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’·
"forward_lstm_14/lstm_cell_94/mul_1Mul(forward_lstm_14/lstm_cell_94/Sigmoid:y:0/forward_lstm_14/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¬
"forward_lstm_14/lstm_cell_94/add_1AddV2$forward_lstm_14/lstm_cell_94/mul:z:0&forward_lstm_14/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
&forward_lstm_14/lstm_cell_94/Sigmoid_2Sigmoid+forward_lstm_14/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
#forward_lstm_14/lstm_cell_94/Relu_1Relu&forward_lstm_14/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’»
"forward_lstm_14/lstm_cell_94/mul_2Mul*forward_lstm_14/lstm_cell_94/Sigmoid_2:y:01forward_lstm_14/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’~
-forward_lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   n
,forward_lstm_14/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :õ
forward_lstm_14/TensorArrayV2_1TensorListReserve6forward_lstm_14/TensorArrayV2_1/element_shape:output:05forward_lstm_14/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅV
forward_lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’d
"forward_lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : č
forward_lstm_14/whileWhile+forward_lstm_14/while/loop_counter:output:01forward_lstm_14/while/maximum_iterations:output:0forward_lstm_14/time:output:0(forward_lstm_14/TensorArrayV2_1:handle:0forward_lstm_14/zeros:output:0 forward_lstm_14/zeros_1:output:0(forward_lstm_14/strided_slice_1:output:0Gforward_lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0;forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource=forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource<forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource*
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
"forward_lstm_14_while_body_1560595*.
cond&R$
"forward_lstm_14_while_cond_1560594*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
@forward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
2forward_lstm_14/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_14/while:output:3Iforward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsx
%forward_lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’q
'forward_lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ų
forward_lstm_14/strided_slice_3StridedSlice;forward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_14/strided_slice_3/stack:output:00forward_lstm_14/strided_slice_3/stack_1:output:00forward_lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_masku
 forward_lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ē
forward_lstm_14/transpose_1	Transpose;forward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_14/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’k
forward_lstm_14/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    N
backward_lstm_14/ShapeShapeinputs_0*
T0*
_output_shapes
:n
$backward_lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
backward_lstm_14/strided_sliceStridedSlicebackward_lstm_14/Shape:output:0-backward_lstm_14/strided_slice/stack:output:0/backward_lstm_14/strided_slice/stack_1:output:0/backward_lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
backward_lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :¦
backward_lstm_14/zeros/packedPack'backward_lstm_14/strided_slice:output:0(backward_lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
backward_lstm_14/zerosFill&backward_lstm_14/zeros/packed:output:0%backward_lstm_14/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’d
!backward_lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ŗ
backward_lstm_14/zeros_1/packedPack'backward_lstm_14/strided_slice:output:0*backward_lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¦
backward_lstm_14/zeros_1Fill(backward_lstm_14/zeros_1/packed:output:0'backward_lstm_14/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’t
backward_lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          £
backward_lstm_14/transpose	Transposeinputs_0(backward_lstm_14/transpose/perm:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’f
backward_lstm_14/Shape_1Shapebackward_lstm_14/transpose:y:0*
T0*
_output_shapes
:p
&backward_lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 backward_lstm_14/strided_slice_1StridedSlice!backward_lstm_14/Shape_1:output:0/backward_lstm_14/strided_slice_1/stack:output:01backward_lstm_14/strided_slice_1/stack_1:output:01backward_lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ē
backward_lstm_14/TensorArrayV2TensorListReserve5backward_lstm_14/TensorArrayV2/element_shape:output:0)backward_lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅi
backward_lstm_14/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ¹
backward_lstm_14/ReverseV2	ReverseV2backward_lstm_14/transpose:y:0(backward_lstm_14/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
Fbackward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’
8backward_lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_14/ReverseV2:output:0Obackward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅp
&backward_lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ē
 backward_lstm_14/strided_slice_2StridedSlicebackward_lstm_14/transpose:y:0/backward_lstm_14/strided_slice_2/stack:output:01backward_lstm_14/strided_slice_2/stack_1:output:01backward_lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
shrink_axis_mask±
3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOpReadVariableOp<backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0É
$backward_lstm_14/lstm_cell_95/MatMulMatMul)backward_lstm_14/strided_slice_2:output:0;backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¶
5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOp>backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ć
&backward_lstm_14/lstm_cell_95/MatMul_1MatMulbackward_lstm_14/zeros:output:0=backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’æ
!backward_lstm_14/lstm_cell_95/addAddV2.backward_lstm_14/lstm_cell_95/MatMul:product:00backward_lstm_14/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOp=backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Č
%backward_lstm_14/lstm_cell_95/BiasAddBiasAdd%backward_lstm_14/lstm_cell_95/add:z:0<backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’o
-backward_lstm_14/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
#backward_lstm_14/lstm_cell_95/splitSplit6backward_lstm_14/lstm_cell_95/split/split_dim:output:0.backward_lstm_14/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
%backward_lstm_14/lstm_cell_95/SigmoidSigmoid,backward_lstm_14/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
'backward_lstm_14/lstm_cell_95/Sigmoid_1Sigmoid,backward_lstm_14/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’«
!backward_lstm_14/lstm_cell_95/mulMul+backward_lstm_14/lstm_cell_95/Sigmoid_1:y:0!backward_lstm_14/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
"backward_lstm_14/lstm_cell_95/ReluRelu,backward_lstm_14/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ŗ
#backward_lstm_14/lstm_cell_95/mul_1Mul)backward_lstm_14/lstm_cell_95/Sigmoid:y:00backward_lstm_14/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
#backward_lstm_14/lstm_cell_95/add_1AddV2%backward_lstm_14/lstm_cell_95/mul:z:0'backward_lstm_14/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
'backward_lstm_14/lstm_cell_95/Sigmoid_2Sigmoid,backward_lstm_14/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
$backward_lstm_14/lstm_cell_95/Relu_1Relu'backward_lstm_14/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’¾
#backward_lstm_14/lstm_cell_95/mul_2Mul+backward_lstm_14/lstm_cell_95/Sigmoid_2:y:02backward_lstm_14/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
.backward_lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   o
-backward_lstm_14/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ų
 backward_lstm_14/TensorArrayV2_1TensorListReserve7backward_lstm_14/TensorArrayV2_1/element_shape:output:06backward_lstm_14/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅW
backward_lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’e
#backward_lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ö
backward_lstm_14/whileWhile,backward_lstm_14/while/loop_counter:output:02backward_lstm_14/while/maximum_iterations:output:0backward_lstm_14/time:output:0)backward_lstm_14/TensorArrayV2_1:handle:0backward_lstm_14/zeros:output:0!backward_lstm_14/zeros_1:output:0)backward_lstm_14/strided_slice_1:output:0Hbackward_lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0<backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource>backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource=backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource*
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
#backward_lstm_14_while_body_1560738*/
cond'R%
#backward_lstm_14_while_cond_1560737*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
Abackward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
3backward_lstm_14/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_14/while:output:3Jbackward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsy
&backward_lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’r
(backward_lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ż
 backward_lstm_14/strided_slice_3StridedSlice<backward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_14/strided_slice_3/stack:output:01backward_lstm_14/strided_slice_3/stack_1:output:01backward_lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maskv
!backward_lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ź
backward_lstm_14/transpose_1	Transpose<backward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_14/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’l
backward_lstm_14/runtimeConst"/device:CPU:0*
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
concatConcatV2(forward_lstm_14/strided_slice_3:output:0)backward_lstm_14/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’¾
NoOpNoOp5^backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp4^backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp6^backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp^backward_lstm_14/while4^forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp3^forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp5^forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp^forward_lstm_14/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : : : : 2l
4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp2j
3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp2n
5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp20
backward_lstm_14/whilebackward_lstm_14/while2j
3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp2h
2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp2l
4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp2.
forward_lstm_14/whileforward_lstm_14/while:g c
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
üĄ
É
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1560535
inputs_0N
;forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource:	Q
=forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource:
K
<forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource:	O
<backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource:	R
>backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource:
L
=backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource:	
identity¢4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp¢3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp¢5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp¢backward_lstm_14/while¢3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp¢2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp¢4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp¢forward_lstm_14/whileM
forward_lstm_14/ShapeShapeinputs_0*
T0*
_output_shapes
:m
#forward_lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_14/strided_sliceStridedSliceforward_lstm_14/Shape:output:0,forward_lstm_14/strided_slice/stack:output:0.forward_lstm_14/strided_slice/stack_1:output:0.forward_lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
forward_lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :£
forward_lstm_14/zeros/packedPack&forward_lstm_14/strided_slice:output:0'forward_lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_14/zerosFill%forward_lstm_14/zeros/packed:output:0$forward_lstm_14/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
 forward_lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :§
forward_lstm_14/zeros_1/packedPack&forward_lstm_14/strided_slice:output:0)forward_lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
forward_lstm_14/zeros_1Fill'forward_lstm_14/zeros_1/packed:output:0&forward_lstm_14/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
forward_lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ”
forward_lstm_14/transpose	Transposeinputs_0'forward_lstm_14/transpose/perm:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’d
forward_lstm_14/Shape_1Shapeforward_lstm_14/transpose:y:0*
T0*
_output_shapes
:o
%forward_lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
forward_lstm_14/strided_slice_1StridedSlice forward_lstm_14/Shape_1:output:0.forward_lstm_14/strided_slice_1/stack:output:00forward_lstm_14/strided_slice_1/stack_1:output:00forward_lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ä
forward_lstm_14/TensorArrayV2TensorListReserve4forward_lstm_14/TensorArrayV2/element_shape:output:0(forward_lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Eforward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’
7forward_lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_14/transpose:y:0Nforward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅo
%forward_lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ā
forward_lstm_14/strided_slice_2StridedSliceforward_lstm_14/transpose:y:0.forward_lstm_14/strided_slice_2/stack:output:00forward_lstm_14/strided_slice_2/stack_1:output:00forward_lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
shrink_axis_maskÆ
2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOpReadVariableOp;forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ę
#forward_lstm_14/lstm_cell_94/MatMulMatMul(forward_lstm_14/strided_slice_2:output:0:forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’“
4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOp=forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ą
%forward_lstm_14/lstm_cell_94/MatMul_1MatMulforward_lstm_14/zeros:output:0<forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¼
 forward_lstm_14/lstm_cell_94/addAddV2-forward_lstm_14/lstm_cell_94/MatMul:product:0/forward_lstm_14/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’­
3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOp<forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Å
$forward_lstm_14/lstm_cell_94/BiasAddBiasAdd$forward_lstm_14/lstm_cell_94/add:z:0;forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’n
,forward_lstm_14/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
"forward_lstm_14/lstm_cell_94/splitSplit5forward_lstm_14/lstm_cell_94/split/split_dim:output:0-forward_lstm_14/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
$forward_lstm_14/lstm_cell_94/SigmoidSigmoid+forward_lstm_14/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
&forward_lstm_14/lstm_cell_94/Sigmoid_1Sigmoid+forward_lstm_14/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ø
 forward_lstm_14/lstm_cell_94/mulMul*forward_lstm_14/lstm_cell_94/Sigmoid_1:y:0 forward_lstm_14/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
!forward_lstm_14/lstm_cell_94/ReluRelu+forward_lstm_14/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’·
"forward_lstm_14/lstm_cell_94/mul_1Mul(forward_lstm_14/lstm_cell_94/Sigmoid:y:0/forward_lstm_14/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¬
"forward_lstm_14/lstm_cell_94/add_1AddV2$forward_lstm_14/lstm_cell_94/mul:z:0&forward_lstm_14/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
&forward_lstm_14/lstm_cell_94/Sigmoid_2Sigmoid+forward_lstm_14/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
#forward_lstm_14/lstm_cell_94/Relu_1Relu&forward_lstm_14/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’»
"forward_lstm_14/lstm_cell_94/mul_2Mul*forward_lstm_14/lstm_cell_94/Sigmoid_2:y:01forward_lstm_14/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’~
-forward_lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   n
,forward_lstm_14/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :õ
forward_lstm_14/TensorArrayV2_1TensorListReserve6forward_lstm_14/TensorArrayV2_1/element_shape:output:05forward_lstm_14/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅV
forward_lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’d
"forward_lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : č
forward_lstm_14/whileWhile+forward_lstm_14/while/loop_counter:output:01forward_lstm_14/while/maximum_iterations:output:0forward_lstm_14/time:output:0(forward_lstm_14/TensorArrayV2_1:handle:0forward_lstm_14/zeros:output:0 forward_lstm_14/zeros_1:output:0(forward_lstm_14/strided_slice_1:output:0Gforward_lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0;forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource=forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource<forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource*
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
"forward_lstm_14_while_body_1560305*.
cond&R$
"forward_lstm_14_while_cond_1560304*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
@forward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
2forward_lstm_14/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_14/while:output:3Iforward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsx
%forward_lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’q
'forward_lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ų
forward_lstm_14/strided_slice_3StridedSlice;forward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_14/strided_slice_3/stack:output:00forward_lstm_14/strided_slice_3/stack_1:output:00forward_lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_masku
 forward_lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ē
forward_lstm_14/transpose_1	Transpose;forward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_14/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’k
forward_lstm_14/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    N
backward_lstm_14/ShapeShapeinputs_0*
T0*
_output_shapes
:n
$backward_lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
backward_lstm_14/strided_sliceStridedSlicebackward_lstm_14/Shape:output:0-backward_lstm_14/strided_slice/stack:output:0/backward_lstm_14/strided_slice/stack_1:output:0/backward_lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
backward_lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :¦
backward_lstm_14/zeros/packedPack'backward_lstm_14/strided_slice:output:0(backward_lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
backward_lstm_14/zerosFill&backward_lstm_14/zeros/packed:output:0%backward_lstm_14/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’d
!backward_lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ŗ
backward_lstm_14/zeros_1/packedPack'backward_lstm_14/strided_slice:output:0*backward_lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¦
backward_lstm_14/zeros_1Fill(backward_lstm_14/zeros_1/packed:output:0'backward_lstm_14/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’t
backward_lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          £
backward_lstm_14/transpose	Transposeinputs_0(backward_lstm_14/transpose/perm:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’f
backward_lstm_14/Shape_1Shapebackward_lstm_14/transpose:y:0*
T0*
_output_shapes
:p
&backward_lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 backward_lstm_14/strided_slice_1StridedSlice!backward_lstm_14/Shape_1:output:0/backward_lstm_14/strided_slice_1/stack:output:01backward_lstm_14/strided_slice_1/stack_1:output:01backward_lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ē
backward_lstm_14/TensorArrayV2TensorListReserve5backward_lstm_14/TensorArrayV2/element_shape:output:0)backward_lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅi
backward_lstm_14/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ¹
backward_lstm_14/ReverseV2	ReverseV2backward_lstm_14/transpose:y:0(backward_lstm_14/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
Fbackward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’
8backward_lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_14/ReverseV2:output:0Obackward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅp
&backward_lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ē
 backward_lstm_14/strided_slice_2StridedSlicebackward_lstm_14/transpose:y:0/backward_lstm_14/strided_slice_2/stack:output:01backward_lstm_14/strided_slice_2/stack_1:output:01backward_lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
shrink_axis_mask±
3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOpReadVariableOp<backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0É
$backward_lstm_14/lstm_cell_95/MatMulMatMul)backward_lstm_14/strided_slice_2:output:0;backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¶
5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOp>backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ć
&backward_lstm_14/lstm_cell_95/MatMul_1MatMulbackward_lstm_14/zeros:output:0=backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’æ
!backward_lstm_14/lstm_cell_95/addAddV2.backward_lstm_14/lstm_cell_95/MatMul:product:00backward_lstm_14/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOp=backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Č
%backward_lstm_14/lstm_cell_95/BiasAddBiasAdd%backward_lstm_14/lstm_cell_95/add:z:0<backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’o
-backward_lstm_14/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
#backward_lstm_14/lstm_cell_95/splitSplit6backward_lstm_14/lstm_cell_95/split/split_dim:output:0.backward_lstm_14/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
%backward_lstm_14/lstm_cell_95/SigmoidSigmoid,backward_lstm_14/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
'backward_lstm_14/lstm_cell_95/Sigmoid_1Sigmoid,backward_lstm_14/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’«
!backward_lstm_14/lstm_cell_95/mulMul+backward_lstm_14/lstm_cell_95/Sigmoid_1:y:0!backward_lstm_14/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
"backward_lstm_14/lstm_cell_95/ReluRelu,backward_lstm_14/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ŗ
#backward_lstm_14/lstm_cell_95/mul_1Mul)backward_lstm_14/lstm_cell_95/Sigmoid:y:00backward_lstm_14/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
#backward_lstm_14/lstm_cell_95/add_1AddV2%backward_lstm_14/lstm_cell_95/mul:z:0'backward_lstm_14/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
'backward_lstm_14/lstm_cell_95/Sigmoid_2Sigmoid,backward_lstm_14/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
$backward_lstm_14/lstm_cell_95/Relu_1Relu'backward_lstm_14/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’¾
#backward_lstm_14/lstm_cell_95/mul_2Mul+backward_lstm_14/lstm_cell_95/Sigmoid_2:y:02backward_lstm_14/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
.backward_lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   o
-backward_lstm_14/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ų
 backward_lstm_14/TensorArrayV2_1TensorListReserve7backward_lstm_14/TensorArrayV2_1/element_shape:output:06backward_lstm_14/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅW
backward_lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’e
#backward_lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ö
backward_lstm_14/whileWhile,backward_lstm_14/while/loop_counter:output:02backward_lstm_14/while/maximum_iterations:output:0backward_lstm_14/time:output:0)backward_lstm_14/TensorArrayV2_1:handle:0backward_lstm_14/zeros:output:0!backward_lstm_14/zeros_1:output:0)backward_lstm_14/strided_slice_1:output:0Hbackward_lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0<backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource>backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource=backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource*
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
#backward_lstm_14_while_body_1560448*/
cond'R%
#backward_lstm_14_while_cond_1560447*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
Abackward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
3backward_lstm_14/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_14/while:output:3Jbackward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsy
&backward_lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’r
(backward_lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ż
 backward_lstm_14/strided_slice_3StridedSlice<backward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_14/strided_slice_3/stack:output:01backward_lstm_14/strided_slice_3/stack_1:output:01backward_lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maskv
!backward_lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ź
backward_lstm_14/transpose_1	Transpose<backward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_14/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’l
backward_lstm_14/runtimeConst"/device:CPU:0*
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
concatConcatV2(forward_lstm_14/strided_slice_3:output:0)backward_lstm_14/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’¾
NoOpNoOp5^backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp4^backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp6^backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp^backward_lstm_14/while4^forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp3^forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp5^forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp^forward_lstm_14/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : : : : 2l
4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp2j
3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp2n
5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp20
backward_lstm_14/whilebackward_lstm_14/while2j
3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp2h
2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp2l
4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp2.
forward_lstm_14/whileforward_lstm_14/while:g c
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
÷M
¦
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1558438

inputs>
+lstm_cell_95_matmul_readvariableop_resource:	A
-lstm_cell_95_matmul_1_readvariableop_resource:
;
,lstm_cell_95_biasadd_readvariableop_resource:	
identity¢#lstm_cell_95/BiasAdd/ReadVariableOp¢"lstm_cell_95/MatMul/ReadVariableOp¢$lstm_cell_95/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
"lstm_cell_95/MatMul/ReadVariableOpReadVariableOp+lstm_cell_95_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_95/MatMulMatMulstrided_slice_2:output:0*lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_95_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_95/MatMul_1MatMulzeros:output:0,lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_95/addAddV2lstm_cell_95/MatMul:product:0lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_95_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_95/BiasAddBiasAddlstm_cell_95/add:z:0+lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_95/splitSplit%lstm_cell_95/split/split_dim:output:0lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_95/SigmoidSigmoidlstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_95/Sigmoid_1Sigmoidlstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_95/mulMullstm_cell_95/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_95/ReluRelulstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_95/mul_1Mullstm_cell_95/Sigmoid:y:0lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_95/add_1AddV2lstm_cell_95/mul:z:0lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_95/Sigmoid_2Sigmoidlstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_95/Relu_1Relulstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_95/mul_2Mullstm_cell_95/Sigmoid_2:y:0!lstm_cell_95/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_95_matmul_readvariableop_resource-lstm_cell_95_matmul_1_readvariableop_resource,lstm_cell_95_biasadd_readvariableop_resource*
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
while_body_1558353*
condR
while_cond_1558352*M
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
:’’’’’’’’’Ą
NoOpNoOp$^lstm_cell_95/BiasAdd/ReadVariableOp#^lstm_cell_95/MatMul/ReadVariableOp%^lstm_cell_95/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_95/BiasAdd/ReadVariableOp#lstm_cell_95/BiasAdd/ReadVariableOp2H
"lstm_cell_95/MatMul/ReadVariableOp"lstm_cell_95/MatMul/ReadVariableOp2L
$lstm_cell_95/MatMul_1/ReadVariableOp$lstm_cell_95/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
’

"forward_lstm_14_while_cond_1560304<
8forward_lstm_14_while_forward_lstm_14_while_loop_counterB
>forward_lstm_14_while_forward_lstm_14_while_maximum_iterations%
!forward_lstm_14_while_placeholder'
#forward_lstm_14_while_placeholder_1'
#forward_lstm_14_while_placeholder_2'
#forward_lstm_14_while_placeholder_3>
:forward_lstm_14_while_less_forward_lstm_14_strided_slice_1U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1560304___redundant_placeholder0U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1560304___redundant_placeholder1U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1560304___redundant_placeholder2U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1560304___redundant_placeholder3"
forward_lstm_14_while_identity
¢
forward_lstm_14/while/LessLess!forward_lstm_14_while_placeholder:forward_lstm_14_while_less_forward_lstm_14_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_14/while/IdentityIdentityforward_lstm_14/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_14_while_identity'forward_lstm_14/while/Identity:output:0*(
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
éa

4bidirectional_14_backward_lstm_14_while_body_1559764`
\bidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_while_loop_counterf
bbidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_while_maximum_iterations7
3bidirectional_14_backward_lstm_14_while_placeholder9
5bidirectional_14_backward_lstm_14_while_placeholder_19
5bidirectional_14_backward_lstm_14_while_placeholder_29
5bidirectional_14_backward_lstm_14_while_placeholder_3_
[bidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_strided_slice_1_0
bidirectional_14_backward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_bidirectional_14_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0h
Ubidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0:	k
Wbidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0:
e
Vbidirectional_14_backward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0:	4
0bidirectional_14_backward_lstm_14_while_identity6
2bidirectional_14_backward_lstm_14_while_identity_16
2bidirectional_14_backward_lstm_14_while_identity_26
2bidirectional_14_backward_lstm_14_while_identity_36
2bidirectional_14_backward_lstm_14_while_identity_46
2bidirectional_14_backward_lstm_14_while_identity_5]
Ybidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_strided_slice_1
bidirectional_14_backward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_bidirectional_14_backward_lstm_14_tensorarrayunstack_tensorlistfromtensorf
Sbidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource:	i
Ubidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource:
c
Tbidirectional_14_backward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource:	¢Kbidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp¢Jbidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp¢Lbidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOpŖ
Ybidirectional_14/backward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ń
Kbidirectional_14/backward_lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_14_backward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_bidirectional_14_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_03bidirectional_14_backward_lstm_14_while_placeholderbbidirectional_14/backward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0į
Jbidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOpReadVariableOpUbidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0 
;bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMulMatMulRbidirectional_14/backward_lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0Rbidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ę
Lbidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOpWbidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
=bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1MatMul5bidirectional_14_backward_lstm_14_while_placeholder_2Tbidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
8bidirectional_14/backward_lstm_14/while/lstm_cell_95/addAddV2Ebidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul:product:0Gbidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’ß
Kbidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOpVbidirectional_14_backward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
<bidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAddBiasAdd<bidirectional_14/backward_lstm_14/while/lstm_cell_95/add:z:0Sbidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
Dbidirectional_14/backward_lstm_14/while/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ł
:bidirectional_14/backward_lstm_14/while/lstm_cell_95/splitSplitMbidirectional_14/backward_lstm_14/while/lstm_cell_95/split/split_dim:output:0Ebidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitæ
<bidirectional_14/backward_lstm_14/while/lstm_cell_95/SigmoidSigmoidCbidirectional_14/backward_lstm_14/while/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’Į
>bidirectional_14/backward_lstm_14/while/lstm_cell_95/Sigmoid_1SigmoidCbidirectional_14/backward_lstm_14/while/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’ķ
8bidirectional_14/backward_lstm_14/while/lstm_cell_95/mulMulBbidirectional_14/backward_lstm_14/while/lstm_cell_95/Sigmoid_1:y:05bidirectional_14_backward_lstm_14_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’¹
9bidirectional_14/backward_lstm_14/while/lstm_cell_95/ReluReluCbidirectional_14/backward_lstm_14/while/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’’
:bidirectional_14/backward_lstm_14/while/lstm_cell_95/mul_1Mul@bidirectional_14/backward_lstm_14/while/lstm_cell_95/Sigmoid:y:0Gbidirectional_14/backward_lstm_14/while/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’ō
:bidirectional_14/backward_lstm_14/while/lstm_cell_95/add_1AddV2<bidirectional_14/backward_lstm_14/while/lstm_cell_95/mul:z:0>bidirectional_14/backward_lstm_14/while/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Į
>bidirectional_14/backward_lstm_14/while/lstm_cell_95/Sigmoid_2SigmoidCbidirectional_14/backward_lstm_14/while/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’¶
;bidirectional_14/backward_lstm_14/while/lstm_cell_95/Relu_1Relu>bidirectional_14/backward_lstm_14/while/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
:bidirectional_14/backward_lstm_14/while/lstm_cell_95/mul_2MulBbidirectional_14/backward_lstm_14/while/lstm_cell_95/Sigmoid_2:y:0Ibidirectional_14/backward_lstm_14/while/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Rbidirectional_14/backward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : õ
Lbidirectional_14/backward_lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem5bidirectional_14_backward_lstm_14_while_placeholder_1[bidirectional_14/backward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/index:output:0>bidirectional_14/backward_lstm_14/while/lstm_cell_95/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅo
-bidirectional_14/backward_lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ā
+bidirectional_14/backward_lstm_14/while/addAddV23bidirectional_14_backward_lstm_14_while_placeholder6bidirectional_14/backward_lstm_14/while/add/y:output:0*
T0*
_output_shapes
: q
/bidirectional_14/backward_lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ļ
-bidirectional_14/backward_lstm_14/while/add_1AddV2\bidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_while_loop_counter8bidirectional_14/backward_lstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: æ
0bidirectional_14/backward_lstm_14/while/IdentityIdentity1bidirectional_14/backward_lstm_14/while/add_1:z:0-^bidirectional_14/backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ņ
2bidirectional_14/backward_lstm_14/while/Identity_1Identitybbidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_while_maximum_iterations-^bidirectional_14/backward_lstm_14/while/NoOp*
T0*
_output_shapes
: æ
2bidirectional_14/backward_lstm_14/while/Identity_2Identity/bidirectional_14/backward_lstm_14/while/add:z:0-^bidirectional_14/backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ģ
2bidirectional_14/backward_lstm_14/while/Identity_3Identity\bidirectional_14/backward_lstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^bidirectional_14/backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ą
2bidirectional_14/backward_lstm_14/while/Identity_4Identity>bidirectional_14/backward_lstm_14/while/lstm_cell_95/mul_2:z:0-^bidirectional_14/backward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’ą
2bidirectional_14/backward_lstm_14/while/Identity_5Identity>bidirectional_14/backward_lstm_14/while/lstm_cell_95/add_1:z:0-^bidirectional_14/backward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ų
,bidirectional_14/backward_lstm_14/while/NoOpNoOpL^bidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOpK^bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOpM^bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "ø
Ybidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_strided_slice_1[bidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_strided_slice_1_0"m
0bidirectional_14_backward_lstm_14_while_identity9bidirectional_14/backward_lstm_14/while/Identity:output:0"q
2bidirectional_14_backward_lstm_14_while_identity_1;bidirectional_14/backward_lstm_14/while/Identity_1:output:0"q
2bidirectional_14_backward_lstm_14_while_identity_2;bidirectional_14/backward_lstm_14/while/Identity_2:output:0"q
2bidirectional_14_backward_lstm_14_while_identity_3;bidirectional_14/backward_lstm_14/while/Identity_3:output:0"q
2bidirectional_14_backward_lstm_14_while_identity_4;bidirectional_14/backward_lstm_14/while/Identity_4:output:0"q
2bidirectional_14_backward_lstm_14_while_identity_5;bidirectional_14/backward_lstm_14/while/Identity_5:output:0"®
Tbidirectional_14_backward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resourceVbidirectional_14_backward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0"°
Ubidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resourceWbidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0"¬
Sbidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resourceUbidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0"²
bidirectional_14_backward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_bidirectional_14_backward_lstm_14_tensorarrayunstack_tensorlistfromtensorbidirectional_14_backward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_bidirectional_14_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2
Kbidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOpKbidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp2
Jbidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOpJbidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp2
Lbidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOpLbidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp: 
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
µ
Ą
2__inference_backward_lstm_14_layer_call_fn_1562092

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
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1558438p
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
Ē
¤
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_1559465
lambda_14_input+
bidirectional_14_1559446:	,
bidirectional_14_1559448:
'
bidirectional_14_1559450:	+
bidirectional_14_1559452:	,
bidirectional_14_1559454:
'
bidirectional_14_1559456:	#
dense_14_1559459:	
dense_14_1559461:
identity¢(bidirectional_14/StatefulPartitionedCall¢ dense_14/StatefulPartitionedCallĖ
lambda_14/PartitionedCallPartitionedCalllambda_14_input*
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
F__inference_lambda_14_layer_call_and_return_conditional_losses_1558664£
(bidirectional_14/StatefulPartitionedCallStatefulPartitionedCall"lambda_14/PartitionedCall:output:0bidirectional_14_1559446bidirectional_14_1559448bidirectional_14_1559450bidirectional_14_1559452bidirectional_14_1559454bidirectional_14_1559456*
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
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1558955”
 dense_14/StatefulPartitionedCallStatefulPartitionedCall1bidirectional_14/StatefulPartitionedCall:output:0dense_14_1559459dense_14_1559461*
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
E__inference_dense_14_layer_call_and_return_conditional_losses_1558979x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
NoOpNoOp)^bidirectional_14/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 2T
(bidirectional_14/StatefulPartitionedCall(bidirectional_14/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:X T
'
_output_shapes
:’’’’’’’’’
)
_user_specified_namelambda_14_input

ā
Ymodel_9_bidirectionalLSTM_univariate_bidirectional_14_backward_lstm_14_while_cond_1557141«
¦model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_loop_counter±
¬model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_maximum_iterations\
Xmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_placeholder^
Zmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_placeholder_1^
Zmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_placeholder_2^
Zmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_placeholder_3­
Ømodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_less_model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_strided_slice_1Ä
æmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_cond_1557141___redundant_placeholder0Ä
æmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_cond_1557141___redundant_placeholder1Ä
æmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_cond_1557141___redundant_placeholder2Ä
æmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_cond_1557141___redundant_placeholder3Y
Umodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_identity
’
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/LessLessXmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_placeholderØmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_less_model_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_strided_slice_1*
T0*
_output_shapes
: Ł
Umodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/IdentityIdentityUmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/Less:z:0*
T0
*
_output_shapes
: "·
Umodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_while_identity^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/Identity:output:0*(
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
æL
Ó
"forward_lstm_14_while_body_1559094<
8forward_lstm_14_while_forward_lstm_14_while_loop_counterB
>forward_lstm_14_while_forward_lstm_14_while_maximum_iterations%
!forward_lstm_14_while_placeholder'
#forward_lstm_14_while_placeholder_1'
#forward_lstm_14_while_placeholder_2'
#forward_lstm_14_while_placeholder_3;
7forward_lstm_14_while_forward_lstm_14_strided_slice_1_0w
sforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0V
Cforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0:	Y
Eforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0:
S
Dforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0:	"
forward_lstm_14_while_identity$
 forward_lstm_14_while_identity_1$
 forward_lstm_14_while_identity_2$
 forward_lstm_14_while_identity_3$
 forward_lstm_14_while_identity_4$
 forward_lstm_14_while_identity_59
5forward_lstm_14_while_forward_lstm_14_strided_slice_1u
qforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensorT
Aforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource:	W
Cforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource:
Q
Bforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource:	¢9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp¢8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp¢:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp
Gforward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ö
9forward_lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_14_while_placeholderPforward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0½
8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOpReadVariableOpCforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ź
)forward_lstm_14/while/lstm_cell_94/MatMulMatMul@forward_lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0@forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOpEforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ń
+forward_lstm_14/while/lstm_cell_94/MatMul_1MatMul#forward_lstm_14_while_placeholder_2Bforward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ī
&forward_lstm_14/while/lstm_cell_94/addAddV23forward_lstm_14/while/lstm_cell_94/MatMul:product:05forward_lstm_14/while/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’»
9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOpDforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0×
*forward_lstm_14/while/lstm_cell_94/BiasAddBiasAdd*forward_lstm_14/while/lstm_cell_94/add:z:0Aforward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’t
2forward_lstm_14/while/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
(forward_lstm_14/while/lstm_cell_94/splitSplit;forward_lstm_14/while/lstm_cell_94/split/split_dim:output:03forward_lstm_14/while/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
*forward_lstm_14/while/lstm_cell_94/SigmoidSigmoid1forward_lstm_14/while/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
,forward_lstm_14/while/lstm_cell_94/Sigmoid_1Sigmoid1forward_lstm_14/while/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’·
&forward_lstm_14/while/lstm_cell_94/mulMul0forward_lstm_14/while/lstm_cell_94/Sigmoid_1:y:0#forward_lstm_14_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
'forward_lstm_14/while/lstm_cell_94/ReluRelu1forward_lstm_14/while/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’É
(forward_lstm_14/while/lstm_cell_94/mul_1Mul.forward_lstm_14/while/lstm_cell_94/Sigmoid:y:05forward_lstm_14/while/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¾
(forward_lstm_14/while/lstm_cell_94/add_1AddV2*forward_lstm_14/while/lstm_cell_94/mul:z:0,forward_lstm_14/while/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
,forward_lstm_14/while/lstm_cell_94/Sigmoid_2Sigmoid1forward_lstm_14/while/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
)forward_lstm_14/while/lstm_cell_94/Relu_1Relu,forward_lstm_14/while/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ķ
(forward_lstm_14/while/lstm_cell_94/mul_2Mul0forward_lstm_14/while/lstm_cell_94/Sigmoid_2:y:07forward_lstm_14/while/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
@forward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ­
:forward_lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_14_while_placeholder_1Iforward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/index:output:0,forward_lstm_14/while/lstm_cell_94/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ]
forward_lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_14/while/addAddV2!forward_lstm_14_while_placeholder$forward_lstm_14/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :§
forward_lstm_14/while/add_1AddV28forward_lstm_14_while_forward_lstm_14_while_loop_counter&forward_lstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_14/while/IdentityIdentityforward_lstm_14/while/add_1:z:0^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: Ŗ
 forward_lstm_14/while/Identity_1Identity>forward_lstm_14_while_forward_lstm_14_while_maximum_iterations^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: 
 forward_lstm_14/while/Identity_2Identityforward_lstm_14/while/add:z:0^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: ¶
 forward_lstm_14/while/Identity_3IdentityJforward_lstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: Ŗ
 forward_lstm_14/while/Identity_4Identity,forward_lstm_14/while/lstm_cell_94/mul_2:z:0^forward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
 forward_lstm_14/while/Identity_5Identity,forward_lstm_14/while/lstm_cell_94/add_1:z:0^forward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
forward_lstm_14/while/NoOpNoOp:^forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp9^forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp;^forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "p
5forward_lstm_14_while_forward_lstm_14_strided_slice_17forward_lstm_14_while_forward_lstm_14_strided_slice_1_0"I
forward_lstm_14_while_identity'forward_lstm_14/while/Identity:output:0"M
 forward_lstm_14_while_identity_1)forward_lstm_14/while/Identity_1:output:0"M
 forward_lstm_14_while_identity_2)forward_lstm_14/while/Identity_2:output:0"M
 forward_lstm_14_while_identity_3)forward_lstm_14/while/Identity_3:output:0"M
 forward_lstm_14_while_identity_4)forward_lstm_14/while/Identity_4:output:0"M
 forward_lstm_14_while_identity_5)forward_lstm_14/while/Identity_5:output:0"
Bforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resourceDforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0"
Cforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resourceEforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0"
Aforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resourceCforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0"č
qforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensorsforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2v
9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp2t
8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp2x
:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp: 
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
„9

L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1557580

inputs'
lstm_cell_94_1557496:	(
lstm_cell_94_1557498:
#
lstm_cell_94_1557500:	
identity¢$lstm_cell_94/StatefulPartitionedCall¢while;
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
shrink_axis_mask’
$lstm_cell_94/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_94_1557496lstm_cell_94_1557498lstm_cell_94_1557500*
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
GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_94_layer_call_and_return_conditional_losses_1557450n
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
value	B : Ą
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_94_1557496lstm_cell_94_1557498lstm_cell_94_1557500*
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
while_body_1557510*
condR
while_cond_1557509*M
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
:’’’’’’’’’u
NoOpNoOp%^lstm_cell_94/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2L
$lstm_cell_94/StatefulPartitionedCall$lstm_cell_94/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs


#backward_lstm_14_while_cond_1559236>
:backward_lstm_14_while_backward_lstm_14_while_loop_counterD
@backward_lstm_14_while_backward_lstm_14_while_maximum_iterations&
"backward_lstm_14_while_placeholder(
$backward_lstm_14_while_placeholder_1(
$backward_lstm_14_while_placeholder_2(
$backward_lstm_14_while_placeholder_3@
<backward_lstm_14_while_less_backward_lstm_14_strided_slice_1W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1559236___redundant_placeholder0W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1559236___redundant_placeholder1W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1559236___redundant_placeholder2W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1559236___redundant_placeholder3#
backward_lstm_14_while_identity
¦
backward_lstm_14/while/LessLess"backward_lstm_14_while_placeholder<backward_lstm_14_while_less_backward_lstm_14_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_14/while/IdentityIdentitybackward_lstm_14/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_14_while_identity(backward_lstm_14/while/Identity:output:0*(
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
ų
š
4bidirectional_14_backward_lstm_14_while_cond_1559763`
\bidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_while_loop_counterf
bbidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_while_maximum_iterations7
3bidirectional_14_backward_lstm_14_while_placeholder9
5bidirectional_14_backward_lstm_14_while_placeholder_19
5bidirectional_14_backward_lstm_14_while_placeholder_29
5bidirectional_14_backward_lstm_14_while_placeholder_3b
^bidirectional_14_backward_lstm_14_while_less_bidirectional_14_backward_lstm_14_strided_slice_1y
ubidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_while_cond_1559763___redundant_placeholder0y
ubidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_while_cond_1559763___redundant_placeholder1y
ubidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_while_cond_1559763___redundant_placeholder2y
ubidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_while_cond_1559763___redundant_placeholder34
0bidirectional_14_backward_lstm_14_while_identity
ź
,bidirectional_14/backward_lstm_14/while/LessLess3bidirectional_14_backward_lstm_14_while_placeholder^bidirectional_14_backward_lstm_14_while_less_bidirectional_14_backward_lstm_14_strided_slice_1*
T0*
_output_shapes
: 
0bidirectional_14/backward_lstm_14/while/IdentityIdentity0bidirectional_14/backward_lstm_14/while/Less:z:0*
T0
*
_output_shapes
: "m
0bidirectional_14_backward_lstm_14_while_identity9bidirectional_14/backward_lstm_14/while/Identity:output:0*(
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
¬

a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_1558986

inputs+
bidirectional_14_1558956:	,
bidirectional_14_1558958:
'
bidirectional_14_1558960:	+
bidirectional_14_1558962:	,
bidirectional_14_1558964:
'
bidirectional_14_1558966:	#
dense_14_1558980:	
dense_14_1558982:
identity¢(bidirectional_14/StatefulPartitionedCall¢ dense_14/StatefulPartitionedCallĀ
lambda_14/PartitionedCallPartitionedCallinputs*
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
F__inference_lambda_14_layer_call_and_return_conditional_losses_1558664£
(bidirectional_14/StatefulPartitionedCallStatefulPartitionedCall"lambda_14/PartitionedCall:output:0bidirectional_14_1558956bidirectional_14_1558958bidirectional_14_1558960bidirectional_14_1558962bidirectional_14_1558964bidirectional_14_1558966*
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
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1558955”
 dense_14/StatefulPartitionedCallStatefulPartitionedCall1bidirectional_14/StatefulPartitionedCall:output:0dense_14_1558980dense_14_1558982*
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
E__inference_dense_14_layer_call_and_return_conditional_losses_1558979x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
NoOpNoOp)^bidirectional_14/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 2T
(bidirectional_14/StatefulPartitionedCall(bidirectional_14/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
µ
Ą
2__inference_backward_lstm_14_layer_call_fn_1562081

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
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1558252p
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
ō

I__inference_lstm_cell_95_layer_call_and_return_conditional_losses_1562844

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
æL
Ó
"forward_lstm_14_while_body_1561175<
8forward_lstm_14_while_forward_lstm_14_while_loop_counterB
>forward_lstm_14_while_forward_lstm_14_while_maximum_iterations%
!forward_lstm_14_while_placeholder'
#forward_lstm_14_while_placeholder_1'
#forward_lstm_14_while_placeholder_2'
#forward_lstm_14_while_placeholder_3;
7forward_lstm_14_while_forward_lstm_14_strided_slice_1_0w
sforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0V
Cforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0:	Y
Eforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0:
S
Dforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0:	"
forward_lstm_14_while_identity$
 forward_lstm_14_while_identity_1$
 forward_lstm_14_while_identity_2$
 forward_lstm_14_while_identity_3$
 forward_lstm_14_while_identity_4$
 forward_lstm_14_while_identity_59
5forward_lstm_14_while_forward_lstm_14_strided_slice_1u
qforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensorT
Aforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource:	W
Cforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource:
Q
Bforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource:	¢9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp¢8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp¢:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp
Gforward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ö
9forward_lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_14_while_placeholderPforward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0½
8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOpReadVariableOpCforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ź
)forward_lstm_14/while/lstm_cell_94/MatMulMatMul@forward_lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0@forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOpEforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ń
+forward_lstm_14/while/lstm_cell_94/MatMul_1MatMul#forward_lstm_14_while_placeholder_2Bforward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ī
&forward_lstm_14/while/lstm_cell_94/addAddV23forward_lstm_14/while/lstm_cell_94/MatMul:product:05forward_lstm_14/while/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’»
9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOpDforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0×
*forward_lstm_14/while/lstm_cell_94/BiasAddBiasAdd*forward_lstm_14/while/lstm_cell_94/add:z:0Aforward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’t
2forward_lstm_14/while/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
(forward_lstm_14/while/lstm_cell_94/splitSplit;forward_lstm_14/while/lstm_cell_94/split/split_dim:output:03forward_lstm_14/while/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
*forward_lstm_14/while/lstm_cell_94/SigmoidSigmoid1forward_lstm_14/while/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
,forward_lstm_14/while/lstm_cell_94/Sigmoid_1Sigmoid1forward_lstm_14/while/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’·
&forward_lstm_14/while/lstm_cell_94/mulMul0forward_lstm_14/while/lstm_cell_94/Sigmoid_1:y:0#forward_lstm_14_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
'forward_lstm_14/while/lstm_cell_94/ReluRelu1forward_lstm_14/while/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’É
(forward_lstm_14/while/lstm_cell_94/mul_1Mul.forward_lstm_14/while/lstm_cell_94/Sigmoid:y:05forward_lstm_14/while/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¾
(forward_lstm_14/while/lstm_cell_94/add_1AddV2*forward_lstm_14/while/lstm_cell_94/mul:z:0,forward_lstm_14/while/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
,forward_lstm_14/while/lstm_cell_94/Sigmoid_2Sigmoid1forward_lstm_14/while/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
)forward_lstm_14/while/lstm_cell_94/Relu_1Relu,forward_lstm_14/while/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ķ
(forward_lstm_14/while/lstm_cell_94/mul_2Mul0forward_lstm_14/while/lstm_cell_94/Sigmoid_2:y:07forward_lstm_14/while/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
@forward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ­
:forward_lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_14_while_placeholder_1Iforward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/index:output:0,forward_lstm_14/while/lstm_cell_94/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ]
forward_lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_14/while/addAddV2!forward_lstm_14_while_placeholder$forward_lstm_14/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :§
forward_lstm_14/while/add_1AddV28forward_lstm_14_while_forward_lstm_14_while_loop_counter&forward_lstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_14/while/IdentityIdentityforward_lstm_14/while/add_1:z:0^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: Ŗ
 forward_lstm_14/while/Identity_1Identity>forward_lstm_14_while_forward_lstm_14_while_maximum_iterations^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: 
 forward_lstm_14/while/Identity_2Identityforward_lstm_14/while/add:z:0^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: ¶
 forward_lstm_14/while/Identity_3IdentityJforward_lstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: Ŗ
 forward_lstm_14/while/Identity_4Identity,forward_lstm_14/while/lstm_cell_94/mul_2:z:0^forward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
 forward_lstm_14/while/Identity_5Identity,forward_lstm_14/while/lstm_cell_94/add_1:z:0^forward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
forward_lstm_14/while/NoOpNoOp:^forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp9^forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp;^forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "p
5forward_lstm_14_while_forward_lstm_14_strided_slice_17forward_lstm_14_while_forward_lstm_14_strided_slice_1_0"I
forward_lstm_14_while_identity'forward_lstm_14/while/Identity:output:0"M
 forward_lstm_14_while_identity_1)forward_lstm_14/while/Identity_1:output:0"M
 forward_lstm_14_while_identity_2)forward_lstm_14/while/Identity_2:output:0"M
 forward_lstm_14_while_identity_3)forward_lstm_14/while/Identity_3:output:0"M
 forward_lstm_14_while_identity_4)forward_lstm_14/while/Identity_4:output:0"M
 forward_lstm_14_while_identity_5)forward_lstm_14/while/Identity_5:output:0"
Bforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resourceDforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0"
Cforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resourceEforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0"
Aforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resourceCforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0"č
qforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensorsforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2v
9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp2t
8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp2x
:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp: 
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
Č9
Ó
while_body_1558167
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_95_matmul_readvariableop_resource_0:	I
5while_lstm_cell_95_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_95_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_95_matmul_readvariableop_resource:	G
3while_lstm_cell_95_matmul_1_readvariableop_resource:
A
2while_lstm_cell_95_biasadd_readvariableop_resource:	¢)while/lstm_cell_95/BiasAdd/ReadVariableOp¢(while/lstm_cell_95/MatMul/ReadVariableOp¢*while/lstm_cell_95/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
(while/lstm_cell_95/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_95_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_95/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_95_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_95/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/addAddV2#while/lstm_cell_95/MatMul:product:0%while/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_95_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_95/BiasAddBiasAddwhile/lstm_cell_95/add:z:01while/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_95/splitSplit+while/lstm_cell_95/split/split_dim:output:0#while/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_95/SigmoidSigmoid!while/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_95/Sigmoid_1Sigmoid!while/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/mulMul while/lstm_cell_95/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_95/ReluRelu!while/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/mul_1Mulwhile/lstm_cell_95/Sigmoid:y:0%while/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/add_1AddV2while/lstm_cell_95/mul:z:0while/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_95/Sigmoid_2Sigmoid!while/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_95/Relu_1Reluwhile/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/mul_2Mul while/lstm_cell_95/Sigmoid_2:y:0'while/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_95/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_95/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_95/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_95/BiasAdd/ReadVariableOp)^while/lstm_cell_95/MatMul/ReadVariableOp+^while/lstm_cell_95/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_95_biasadd_readvariableop_resource4while_lstm_cell_95_biasadd_readvariableop_resource_0"l
3while_lstm_cell_95_matmul_1_readvariableop_resource5while_lstm_cell_95_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_95_matmul_readvariableop_resource3while_lstm_cell_95_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_95/BiasAdd/ReadVariableOp)while/lstm_cell_95/BiasAdd/ReadVariableOp2T
(while/lstm_cell_95/MatMul/ReadVariableOp(while/lstm_cell_95/MatMul/ReadVariableOp2X
*while/lstm_cell_95/MatMul_1/ReadVariableOp*while/lstm_cell_95/MatMul_1/ReadVariableOp: 
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
3bidirectional_14_forward_lstm_14_while_cond_1559918^
Zbidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_while_loop_counterd
`bidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_while_maximum_iterations6
2bidirectional_14_forward_lstm_14_while_placeholder8
4bidirectional_14_forward_lstm_14_while_placeholder_18
4bidirectional_14_forward_lstm_14_while_placeholder_28
4bidirectional_14_forward_lstm_14_while_placeholder_3`
\bidirectional_14_forward_lstm_14_while_less_bidirectional_14_forward_lstm_14_strided_slice_1w
sbidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_while_cond_1559918___redundant_placeholder0w
sbidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_while_cond_1559918___redundant_placeholder1w
sbidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_while_cond_1559918___redundant_placeholder2w
sbidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_while_cond_1559918___redundant_placeholder33
/bidirectional_14_forward_lstm_14_while_identity
ę
+bidirectional_14/forward_lstm_14/while/LessLess2bidirectional_14_forward_lstm_14_while_placeholder\bidirectional_14_forward_lstm_14_while_less_bidirectional_14_forward_lstm_14_strided_slice_1*
T0*
_output_shapes
: 
/bidirectional_14/forward_lstm_14/while/IdentityIdentity/bidirectional_14/forward_lstm_14/while/Less:z:0*
T0
*
_output_shapes
: "k
/bidirectional_14_forward_lstm_14_while_identity8bidirectional_14/forward_lstm_14/while/Identity:output:0*(
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
while_cond_1558352
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1558352___redundant_placeholder05
1while_while_cond_1558352___redundant_placeholder15
1while_while_cond_1558352___redundant_placeholder25
1while_while_cond_1558352___redundant_placeholder3
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
while_cond_1558519
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1558519___redundant_placeholder05
1while_while_cond_1558519___redundant_placeholder15
1while_while_cond_1558519___redundant_placeholder25
1while_while_cond_1558519___redundant_placeholder3
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
³
æ
1__inference_forward_lstm_14_layer_call_fn_1561468

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
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1558605p
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
”$
ģ
while_body_1557673
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_95_1557697_0:	0
while_lstm_cell_95_1557699_0:
+
while_lstm_cell_95_1557701_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_95_1557697:	.
while_lstm_cell_95_1557699:
)
while_lstm_cell_95_1557701:	¢*while/lstm_cell_95/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0½
*while/lstm_cell_95/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_95_1557697_0while_lstm_cell_95_1557699_0while_lstm_cell_95_1557701_0*
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
GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_95_layer_call_and_return_conditional_losses_1557658r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_95/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity3while/lstm_cell_95/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
while/Identity_5Identity3while/lstm_cell_95/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’y

while/NoOpNoOp+^while/lstm_cell_95/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_95_1557697while_lstm_cell_95_1557697_0":
while_lstm_cell_95_1557699while_lstm_cell_95_1557699_0":
while_lstm_cell_95_1557701while_lstm_cell_95_1557701_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2X
*while/lstm_cell_95/StatefulPartitionedCall*while/lstm_cell_95/StatefulPartitionedCall: 
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
L
„
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1558098

inputs>
+lstm_cell_94_matmul_readvariableop_resource:	A
-lstm_cell_94_matmul_1_readvariableop_resource:
;
,lstm_cell_94_biasadd_readvariableop_resource:	
identity¢#lstm_cell_94/BiasAdd/ReadVariableOp¢"lstm_cell_94/MatMul/ReadVariableOp¢$lstm_cell_94/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
"lstm_cell_94/MatMul/ReadVariableOpReadVariableOp+lstm_cell_94_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_94/MatMulMatMulstrided_slice_2:output:0*lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_94_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_94/MatMul_1MatMulzeros:output:0,lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_94/addAddV2lstm_cell_94/MatMul:product:0lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_94_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_94/BiasAddBiasAddlstm_cell_94/add:z:0+lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_94/splitSplit%lstm_cell_94/split/split_dim:output:0lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_94/SigmoidSigmoidlstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_94/Sigmoid_1Sigmoidlstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_94/mulMullstm_cell_94/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_94/ReluRelulstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_94/mul_1Mullstm_cell_94/Sigmoid:y:0lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_94/add_1AddV2lstm_cell_94/mul:z:0lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_94/Sigmoid_2Sigmoidlstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_94/Relu_1Relulstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_94/mul_2Mullstm_cell_94/Sigmoid_2:y:0!lstm_cell_94/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_94_matmul_readvariableop_resource-lstm_cell_94_matmul_1_readvariableop_resource,lstm_cell_94_biasadd_readvariableop_resource*
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
while_body_1558013*
condR
while_cond_1558012*M
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
:’’’’’’’’’Ą
NoOpNoOp$^lstm_cell_94/BiasAdd/ReadVariableOp#^lstm_cell_94/MatMul/ReadVariableOp%^lstm_cell_94/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_94/BiasAdd/ReadVariableOp#lstm_cell_94/BiasAdd/ReadVariableOp2H
"lstm_cell_94/MatMul/ReadVariableOp"lstm_cell_94/MatMul/ReadVariableOp2L
$lstm_cell_94/MatMul_1/ReadVariableOp$lstm_cell_94/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
¾
Č
while_cond_1561672
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1561672___redundant_placeholder05
1while_while_cond_1561672___redundant_placeholder15
1while_while_cond_1561672___redundant_placeholder25
1while_while_cond_1561672___redundant_placeholder3
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
L
„
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1558605

inputs>
+lstm_cell_94_matmul_readvariableop_resource:	A
-lstm_cell_94_matmul_1_readvariableop_resource:
;
,lstm_cell_94_biasadd_readvariableop_resource:	
identity¢#lstm_cell_94/BiasAdd/ReadVariableOp¢"lstm_cell_94/MatMul/ReadVariableOp¢$lstm_cell_94/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
"lstm_cell_94/MatMul/ReadVariableOpReadVariableOp+lstm_cell_94_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_94/MatMulMatMulstrided_slice_2:output:0*lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_94_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_94/MatMul_1MatMulzeros:output:0,lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_94/addAddV2lstm_cell_94/MatMul:product:0lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_94_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_94/BiasAddBiasAddlstm_cell_94/add:z:0+lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_94/splitSplit%lstm_cell_94/split/split_dim:output:0lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_94/SigmoidSigmoidlstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_94/Sigmoid_1Sigmoidlstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_94/mulMullstm_cell_94/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_94/ReluRelulstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_94/mul_1Mullstm_cell_94/Sigmoid:y:0lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_94/add_1AddV2lstm_cell_94/mul:z:0lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_94/Sigmoid_2Sigmoidlstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_94/Relu_1Relulstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_94/mul_2Mullstm_cell_94/Sigmoid_2:y:0!lstm_cell_94/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_94_matmul_readvariableop_resource-lstm_cell_94_matmul_1_readvariableop_resource,lstm_cell_94_biasadd_readvariableop_resource*
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
while_body_1558520*
condR
while_cond_1558519*M
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
:’’’’’’’’’Ą
NoOpNoOp$^lstm_cell_94/BiasAdd/ReadVariableOp#^lstm_cell_94/MatMul/ReadVariableOp%^lstm_cell_94/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_94/BiasAdd/ReadVariableOp#lstm_cell_94/BiasAdd/ReadVariableOp2H
"lstm_cell_94/MatMul/ReadVariableOp"lstm_cell_94/MatMul/ReadVariableOp2L
$lstm_cell_94/MatMul_1/ReadVariableOp$lstm_cell_94/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
ų
Ī
Xmodel_9_bidirectionalLSTM_univariate_bidirectional_14_forward_lstm_14_while_cond_1556998©
¤model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_loop_counterÆ
Ŗmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_maximum_iterations[
Wmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_placeholder]
Ymodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_placeholder_1]
Ymodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_placeholder_2]
Ymodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_placeholder_3«
¦model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_less_model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_strided_slice_1Ā
½model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_cond_1556998___redundant_placeholder0Ā
½model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_cond_1556998___redundant_placeholder1Ā
½model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_cond_1556998___redundant_placeholder2Ā
½model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_cond_1556998___redundant_placeholder3X
Tmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_identity
ū
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/LessLessWmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_placeholder¦model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_less_model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_strided_slice_1*
T0*
_output_shapes
: ×
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/IdentityIdentityTmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/Less:z:0*
T0
*
_output_shapes
: "µ
Tmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_identity]model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/Identity:output:0*(
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
§
Į
1__inference_forward_lstm_14_layer_call_fn_1561446
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
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1557580p
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
	

2__inference_bidirectional_14_layer_call_fn_1560228

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
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1558955p
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
¾
Č
while_cond_1561817
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1561817___redundant_placeholder05
1while_while_cond_1561817___redundant_placeholder15
1while_while_cond_1561817___redundant_placeholder25
1while_while_cond_1561817___redundant_placeholder3
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
Č9
Ó
while_body_1558353
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_95_matmul_readvariableop_resource_0:	I
5while_lstm_cell_95_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_95_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_95_matmul_readvariableop_resource:	G
3while_lstm_cell_95_matmul_1_readvariableop_resource:
A
2while_lstm_cell_95_biasadd_readvariableop_resource:	¢)while/lstm_cell_95/BiasAdd/ReadVariableOp¢(while/lstm_cell_95/MatMul/ReadVariableOp¢*while/lstm_cell_95/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
(while/lstm_cell_95/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_95_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_95/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_95_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_95/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/addAddV2#while/lstm_cell_95/MatMul:product:0%while/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_95_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_95/BiasAddBiasAddwhile/lstm_cell_95/add:z:01while/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_95/splitSplit+while/lstm_cell_95/split/split_dim:output:0#while/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_95/SigmoidSigmoid!while/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_95/Sigmoid_1Sigmoid!while/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/mulMul while/lstm_cell_95/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_95/ReluRelu!while/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/mul_1Mulwhile/lstm_cell_95/Sigmoid:y:0%while/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/add_1AddV2while/lstm_cell_95/mul:z:0while/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_95/Sigmoid_2Sigmoid!while/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_95/Relu_1Reluwhile/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/mul_2Mul while/lstm_cell_95/Sigmoid_2:y:0'while/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_95/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_95/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_95/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_95/BiasAdd/ReadVariableOp)^while/lstm_cell_95/MatMul/ReadVariableOp+^while/lstm_cell_95/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_95_biasadd_readvariableop_resource4while_lstm_cell_95_biasadd_readvariableop_resource_0"l
3while_lstm_cell_95_matmul_1_readvariableop_resource5while_lstm_cell_95_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_95_matmul_readvariableop_resource3while_lstm_cell_95_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_95/BiasAdd/ReadVariableOp)while/lstm_cell_95/BiasAdd/ReadVariableOp2T
(while/lstm_cell_95/MatMul/ReadVariableOp(while/lstm_cell_95/MatMul/ReadVariableOp2X
*while/lstm_cell_95/MatMul_1/ReadVariableOp*while/lstm_cell_95/MatMul_1/ReadVariableOp: 
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
æ9
Ó
while_body_1562301
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_95_matmul_readvariableop_resource_0:	I
5while_lstm_cell_95_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_95_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_95_matmul_readvariableop_resource:	G
3while_lstm_cell_95_matmul_1_readvariableop_resource:
A
2while_lstm_cell_95_biasadd_readvariableop_resource:	¢)while/lstm_cell_95/BiasAdd/ReadVariableOp¢(while/lstm_cell_95/MatMul/ReadVariableOp¢*while/lstm_cell_95/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0
(while/lstm_cell_95/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_95_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_95/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_95_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_95/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/addAddV2#while/lstm_cell_95/MatMul:product:0%while/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_95_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_95/BiasAddBiasAddwhile/lstm_cell_95/add:z:01while/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_95/splitSplit+while/lstm_cell_95/split/split_dim:output:0#while/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_95/SigmoidSigmoid!while/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_95/Sigmoid_1Sigmoid!while/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/mulMul while/lstm_cell_95/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_95/ReluRelu!while/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/mul_1Mulwhile/lstm_cell_95/Sigmoid:y:0%while/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/add_1AddV2while/lstm_cell_95/mul:z:0while/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_95/Sigmoid_2Sigmoid!while/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_95/Relu_1Reluwhile/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/mul_2Mul while/lstm_cell_95/Sigmoid_2:y:0'while/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_95/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_95/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_95/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_95/BiasAdd/ReadVariableOp)^while/lstm_cell_95/MatMul/ReadVariableOp+^while/lstm_cell_95/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_95_biasadd_readvariableop_resource4while_lstm_cell_95_biasadd_readvariableop_resource_0"l
3while_lstm_cell_95_matmul_1_readvariableop_resource5while_lstm_cell_95_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_95_matmul_readvariableop_resource3while_lstm_cell_95_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_95/BiasAdd/ReadVariableOp)while/lstm_cell_95/BiasAdd/ReadVariableOp2T
(while/lstm_cell_95/MatMul/ReadVariableOp(while/lstm_cell_95/MatMul/ReadVariableOp2X
*while/lstm_cell_95/MatMul_1/ReadVariableOp*while/lstm_cell_95/MatMul_1/ReadVariableOp: 
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
ĆM
Ö
 __inference__traced_save_1562992
file_prefix.
*savev2_dense_14_kernel_read_readvariableop,
(savev2_dense_14_bias_read_readvariableopS
Osavev2_bidirectional_14_forward_lstm_14_lstm_cell_94_kernel_read_readvariableop]
Ysavev2_bidirectional_14_forward_lstm_14_lstm_cell_94_recurrent_kernel_read_readvariableopQ
Msavev2_bidirectional_14_forward_lstm_14_lstm_cell_94_bias_read_readvariableopT
Psavev2_bidirectional_14_backward_lstm_14_lstm_cell_95_kernel_read_readvariableop^
Zsavev2_bidirectional_14_backward_lstm_14_lstm_cell_95_recurrent_kernel_read_readvariableopR
Nsavev2_bidirectional_14_backward_lstm_14_lstm_cell_95_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop5
1savev2_adam_dense_14_kernel_m_read_readvariableop3
/savev2_adam_dense_14_bias_m_read_readvariableopZ
Vsavev2_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_kernel_m_read_readvariableopd
`savev2_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_recurrent_kernel_m_read_readvariableopX
Tsavev2_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_bias_m_read_readvariableop[
Wsavev2_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_kernel_m_read_readvariableope
asavev2_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_recurrent_kernel_m_read_readvariableopY
Usavev2_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_bias_m_read_readvariableop5
1savev2_adam_dense_14_kernel_v_read_readvariableop3
/savev2_adam_dense_14_bias_v_read_readvariableopZ
Vsavev2_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_kernel_v_read_readvariableopd
`savev2_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_recurrent_kernel_v_read_readvariableopX
Tsavev2_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_bias_v_read_readvariableop[
Wsavev2_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_kernel_v_read_readvariableope
asavev2_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_recurrent_kernel_v_read_readvariableopY
Usavev2_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_bias_v_read_readvariableop
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
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B ¼
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0*savev2_dense_14_kernel_read_readvariableop(savev2_dense_14_bias_read_readvariableopOsavev2_bidirectional_14_forward_lstm_14_lstm_cell_94_kernel_read_readvariableopYsavev2_bidirectional_14_forward_lstm_14_lstm_cell_94_recurrent_kernel_read_readvariableopMsavev2_bidirectional_14_forward_lstm_14_lstm_cell_94_bias_read_readvariableopPsavev2_bidirectional_14_backward_lstm_14_lstm_cell_95_kernel_read_readvariableopZsavev2_bidirectional_14_backward_lstm_14_lstm_cell_95_recurrent_kernel_read_readvariableopNsavev2_bidirectional_14_backward_lstm_14_lstm_cell_95_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop1savev2_adam_dense_14_kernel_m_read_readvariableop/savev2_adam_dense_14_bias_m_read_readvariableopVsavev2_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_kernel_m_read_readvariableop`savev2_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_recurrent_kernel_m_read_readvariableopTsavev2_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_bias_m_read_readvariableopWsavev2_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_kernel_m_read_readvariableopasavev2_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_recurrent_kernel_m_read_readvariableopUsavev2_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_bias_m_read_readvariableop1savev2_adam_dense_14_kernel_v_read_readvariableop/savev2_adam_dense_14_bias_v_read_readvariableopVsavev2_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_kernel_v_read_readvariableop`savev2_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_recurrent_kernel_v_read_readvariableopTsavev2_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_bias_v_read_readvariableopWsavev2_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_kernel_v_read_readvariableopasavev2_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_recurrent_kernel_v_read_readvariableopUsavev2_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
ģ

I__inference_lstm_cell_94_layer_call_and_return_conditional_losses_1557302

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
’

"forward_lstm_14_while_cond_1561174<
8forward_lstm_14_while_forward_lstm_14_while_loop_counterB
>forward_lstm_14_while_forward_lstm_14_while_maximum_iterations%
!forward_lstm_14_while_placeholder'
#forward_lstm_14_while_placeholder_1'
#forward_lstm_14_while_placeholder_2'
#forward_lstm_14_while_placeholder_3>
:forward_lstm_14_while_less_forward_lstm_14_strided_slice_1U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1561174___redundant_placeholder0U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1561174___redundant_placeholder1U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1561174___redundant_placeholder2U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1561174___redundant_placeholder3"
forward_lstm_14_while_identity
¢
forward_lstm_14/while/LessLess!forward_lstm_14_while_placeholder:forward_lstm_14_while_less_forward_lstm_14_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_14/while/IdentityIdentityforward_lstm_14/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_14_while_identity'forward_lstm_14/while/Identity:output:0*(
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
"forward_lstm_14_while_cond_1558724<
8forward_lstm_14_while_forward_lstm_14_while_loop_counterB
>forward_lstm_14_while_forward_lstm_14_while_maximum_iterations%
!forward_lstm_14_while_placeholder'
#forward_lstm_14_while_placeholder_1'
#forward_lstm_14_while_placeholder_2'
#forward_lstm_14_while_placeholder_3>
:forward_lstm_14_while_less_forward_lstm_14_strided_slice_1U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1558724___redundant_placeholder0U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1558724___redundant_placeholder1U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1558724___redundant_placeholder2U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1558724___redundant_placeholder3"
forward_lstm_14_while_identity
¢
forward_lstm_14/while/LessLess!forward_lstm_14_while_placeholder:forward_lstm_14_while_less_forward_lstm_14_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_14/while/IdentityIdentityforward_lstm_14/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_14_while_identity'forward_lstm_14/while/Identity:output:0*(
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
¬

a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_1559402

inputs+
bidirectional_14_1559383:	,
bidirectional_14_1559385:
'
bidirectional_14_1559387:	+
bidirectional_14_1559389:	,
bidirectional_14_1559391:
'
bidirectional_14_1559393:	#
dense_14_1559396:	
dense_14_1559398:
identity¢(bidirectional_14/StatefulPartitionedCall¢ dense_14/StatefulPartitionedCallĀ
lambda_14/PartitionedCallPartitionedCallinputs*
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
F__inference_lambda_14_layer_call_and_return_conditional_losses_1559353£
(bidirectional_14/StatefulPartitionedCallStatefulPartitionedCall"lambda_14/PartitionedCall:output:0bidirectional_14_1559383bidirectional_14_1559385bidirectional_14_1559387bidirectional_14_1559389bidirectional_14_1559391bidirectional_14_1559393*
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
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1559324”
 dense_14/StatefulPartitionedCallStatefulPartitionedCall1bidirectional_14/StatefulPartitionedCall:output:0dense_14_1559396dense_14_1559398*
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
E__inference_dense_14_layer_call_and_return_conditional_losses_1558979x
IdentityIdentity)dense_14/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
NoOpNoOp)^bidirectional_14/StatefulPartitionedCall!^dense_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 2T
(bidirectional_14/StatefulPartitionedCall(bidirectional_14/StatefulPartitionedCall2D
 dense_14/StatefulPartitionedCall dense_14/StatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
„9

L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1557387

inputs'
lstm_cell_94_1557303:	(
lstm_cell_94_1557305:
#
lstm_cell_94_1557307:	
identity¢$lstm_cell_94/StatefulPartitionedCall¢while;
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
shrink_axis_mask’
$lstm_cell_94/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_94_1557303lstm_cell_94_1557305lstm_cell_94_1557307*
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
GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_94_layer_call_and_return_conditional_losses_1557302n
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
value	B : Ą
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_94_1557303lstm_cell_94_1557305lstm_cell_94_1557307*
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
while_body_1557317*
condR
while_cond_1557316*M
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
:’’’’’’’’’u
NoOpNoOp%^lstm_cell_94/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2L
$lstm_cell_94/StatefulPartitionedCall$lstm_cell_94/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
Č9
Ó
while_body_1562448
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_95_matmul_readvariableop_resource_0:	I
5while_lstm_cell_95_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_95_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_95_matmul_readvariableop_resource:	G
3while_lstm_cell_95_matmul_1_readvariableop_resource:
A
2while_lstm_cell_95_biasadd_readvariableop_resource:	¢)while/lstm_cell_95/BiasAdd/ReadVariableOp¢(while/lstm_cell_95/MatMul/ReadVariableOp¢*while/lstm_cell_95/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
(while/lstm_cell_95/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_95_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_95/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_95_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_95/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/addAddV2#while/lstm_cell_95/MatMul:product:0%while/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_95_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_95/BiasAddBiasAddwhile/lstm_cell_95/add:z:01while/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_95/splitSplit+while/lstm_cell_95/split/split_dim:output:0#while/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_95/SigmoidSigmoid!while/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_95/Sigmoid_1Sigmoid!while/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/mulMul while/lstm_cell_95/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_95/ReluRelu!while/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/mul_1Mulwhile/lstm_cell_95/Sigmoid:y:0%while/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/add_1AddV2while/lstm_cell_95/mul:z:0while/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_95/Sigmoid_2Sigmoid!while/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_95/Relu_1Reluwhile/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/mul_2Mul while/lstm_cell_95/Sigmoid_2:y:0'while/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_95/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_95/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_95/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_95/BiasAdd/ReadVariableOp)^while/lstm_cell_95/MatMul/ReadVariableOp+^while/lstm_cell_95/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_95_biasadd_readvariableop_resource4while_lstm_cell_95_biasadd_readvariableop_resource_0"l
3while_lstm_cell_95_matmul_1_readvariableop_resource5while_lstm_cell_95_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_95_matmul_readvariableop_resource3while_lstm_cell_95_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_95/BiasAdd/ReadVariableOp)while/lstm_cell_95/BiasAdd/ReadVariableOp2T
(while/lstm_cell_95/MatMul/ReadVariableOp(while/lstm_cell_95/MatMul/ReadVariableOp2X
*while/lstm_cell_95/MatMul_1/ReadVariableOp*while/lstm_cell_95/MatMul_1/ReadVariableOp: 
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
while_cond_1557867
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1557867___redundant_placeholder05
1while_while_cond_1557867___redundant_placeholder15
1while_while_cond_1557867___redundant_placeholder25
1while_while_cond_1557867___redundant_placeholder3
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
Ó
b
F__inference_lambda_14_layer_call_and_return_conditional_losses_1560177

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
’

"forward_lstm_14_while_cond_1559093<
8forward_lstm_14_while_forward_lstm_14_while_loop_counterB
>forward_lstm_14_while_forward_lstm_14_while_maximum_iterations%
!forward_lstm_14_while_placeholder'
#forward_lstm_14_while_placeholder_1'
#forward_lstm_14_while_placeholder_2'
#forward_lstm_14_while_placeholder_3>
:forward_lstm_14_while_less_forward_lstm_14_strided_slice_1U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1559093___redundant_placeholder0U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1559093___redundant_placeholder1U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1559093___redundant_placeholder2U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1559093___redundant_placeholder3"
forward_lstm_14_while_identity
¢
forward_lstm_14/while/LessLess!forward_lstm_14_while_placeholder:forward_lstm_14_while_less_forward_lstm_14_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_14/while/IdentityIdentityforward_lstm_14/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_14_while_identity'forward_lstm_14/while/Identity:output:0*(
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
ū
ų
.__inference_lstm_cell_94_layer_call_fn_1562697

inputs
states_0
states_1
unknown:	
	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCallÆ
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
GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_94_layer_call_and_return_conditional_losses_1557302p
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
£

ė
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_1559005
lambda_14_input
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
StatefulPartitionedCallStatefulPartitionedCalllambda_14_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_1558986o
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
_user_specified_namelambda_14_input
”$
ģ
while_body_1557510
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_94_1557534_0:	0
while_lstm_cell_94_1557536_0:
+
while_lstm_cell_94_1557538_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_94_1557534:	.
while_lstm_cell_94_1557536:
)
while_lstm_cell_94_1557538:	¢*while/lstm_cell_94/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0½
*while/lstm_cell_94/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_94_1557534_0while_lstm_cell_94_1557536_0while_lstm_cell_94_1557538_0*
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
GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_94_layer_call_and_return_conditional_losses_1557450r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_94/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity3while/lstm_cell_94/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
while/Identity_5Identity3while/lstm_cell_94/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’y

while/NoOpNoOp+^while/lstm_cell_94/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_94_1557534while_lstm_cell_94_1557534_0":
while_lstm_cell_94_1557536while_lstm_cell_94_1557536_0":
while_lstm_cell_94_1557538while_lstm_cell_94_1557538_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2X
*while/lstm_cell_94/StatefulPartitionedCall*while/lstm_cell_94/StatefulPartitionedCall: 
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
;

M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1557938

inputs'
lstm_cell_95_1557854:	(
lstm_cell_95_1557856:
#
lstm_cell_95_1557858:	
identity¢$lstm_cell_95/StatefulPartitionedCall¢while;
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
shrink_axis_mask’
$lstm_cell_95/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_95_1557854lstm_cell_95_1557856lstm_cell_95_1557858*
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
GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_95_layer_call_and_return_conditional_losses_1557806n
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
value	B : Ą
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_95_1557854lstm_cell_95_1557856lstm_cell_95_1557858*
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
while_body_1557868*
condR
while_cond_1557867*M
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
:’’’’’’’’’u
NoOpNoOp%^lstm_cell_95/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2L
$lstm_cell_95/StatefulPartitionedCall$lstm_cell_95/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
æ9
Ó
while_body_1562154
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_95_matmul_readvariableop_resource_0:	I
5while_lstm_cell_95_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_95_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_95_matmul_readvariableop_resource:	G
3while_lstm_cell_95_matmul_1_readvariableop_resource:
A
2while_lstm_cell_95_biasadd_readvariableop_resource:	¢)while/lstm_cell_95/BiasAdd/ReadVariableOp¢(while/lstm_cell_95/MatMul/ReadVariableOp¢*while/lstm_cell_95/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0
(while/lstm_cell_95/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_95_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_95/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_95_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_95/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/addAddV2#while/lstm_cell_95/MatMul:product:0%while/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_95_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_95/BiasAddBiasAddwhile/lstm_cell_95/add:z:01while/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_95/splitSplit+while/lstm_cell_95/split/split_dim:output:0#while/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_95/SigmoidSigmoid!while/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_95/Sigmoid_1Sigmoid!while/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/mulMul while/lstm_cell_95/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_95/ReluRelu!while/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/mul_1Mulwhile/lstm_cell_95/Sigmoid:y:0%while/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/add_1AddV2while/lstm_cell_95/mul:z:0while/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_95/Sigmoid_2Sigmoid!while/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_95/Relu_1Reluwhile/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/mul_2Mul while/lstm_cell_95/Sigmoid_2:y:0'while/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_95/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_95/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_95/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_95/BiasAdd/ReadVariableOp)^while/lstm_cell_95/MatMul/ReadVariableOp+^while/lstm_cell_95/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_95_biasadd_readvariableop_resource4while_lstm_cell_95_biasadd_readvariableop_resource_0"l
3while_lstm_cell_95_matmul_1_readvariableop_resource5while_lstm_cell_95_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_95_matmul_readvariableop_resource3while_lstm_cell_95_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_95/BiasAdd/ReadVariableOp)while/lstm_cell_95/BiasAdd/ReadVariableOp2T
(while/lstm_cell_95/MatMul/ReadVariableOp(while/lstm_cell_95/MatMul/ReadVariableOp2X
*while/lstm_cell_95/MatMul_1/ReadVariableOp*while/lstm_cell_95/MatMul_1/ReadVariableOp: 
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
ÖM
ó
#backward_lstm_14_while_body_1559237>
:backward_lstm_14_while_backward_lstm_14_while_loop_counterD
@backward_lstm_14_while_backward_lstm_14_while_maximum_iterations&
"backward_lstm_14_while_placeholder(
$backward_lstm_14_while_placeholder_1(
$backward_lstm_14_while_placeholder_2(
$backward_lstm_14_while_placeholder_3=
9backward_lstm_14_while_backward_lstm_14_strided_slice_1_0y
ubackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0W
Dbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0:	Z
Fbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0:
T
Ebackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0:	#
backward_lstm_14_while_identity%
!backward_lstm_14_while_identity_1%
!backward_lstm_14_while_identity_2%
!backward_lstm_14_while_identity_3%
!backward_lstm_14_while_identity_4%
!backward_lstm_14_while_identity_5;
7backward_lstm_14_while_backward_lstm_14_strided_slice_1w
sbackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensorU
Bbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource:	X
Dbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource:
R
Cbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource:	¢:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp¢9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp¢;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp
Hbackward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ū
:backward_lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_14_while_placeholderQbackward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0æ
9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOpReadVariableOpDbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ķ
*backward_lstm_14/while/lstm_cell_95/MatMulMatMulAbackward_lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0Abackward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ä
;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOpFbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ō
,backward_lstm_14/while/lstm_cell_95/MatMul_1MatMul$backward_lstm_14_while_placeholder_2Cbackward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ń
'backward_lstm_14/while/lstm_cell_95/addAddV24backward_lstm_14/while/lstm_cell_95/MatMul:product:06backward_lstm_14/while/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’½
:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOpEbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ś
+backward_lstm_14/while/lstm_cell_95/BiasAddBiasAdd+backward_lstm_14/while/lstm_cell_95/add:z:0Bbackward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’u
3backward_lstm_14/while/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¦
)backward_lstm_14/while/lstm_cell_95/splitSplit<backward_lstm_14/while/lstm_cell_95/split/split_dim:output:04backward_lstm_14/while/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
+backward_lstm_14/while/lstm_cell_95/SigmoidSigmoid2backward_lstm_14/while/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
-backward_lstm_14/while/lstm_cell_95/Sigmoid_1Sigmoid2backward_lstm_14/while/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’ŗ
'backward_lstm_14/while/lstm_cell_95/mulMul1backward_lstm_14/while/lstm_cell_95/Sigmoid_1:y:0$backward_lstm_14_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
(backward_lstm_14/while/lstm_cell_95/ReluRelu2backward_lstm_14/while/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ģ
)backward_lstm_14/while/lstm_cell_95/mul_1Mul/backward_lstm_14/while/lstm_cell_95/Sigmoid:y:06backward_lstm_14/while/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Į
)backward_lstm_14/while/lstm_cell_95/add_1AddV2+backward_lstm_14/while/lstm_cell_95/mul:z:0-backward_lstm_14/while/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
-backward_lstm_14/while/lstm_cell_95/Sigmoid_2Sigmoid2backward_lstm_14/while/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
*backward_lstm_14/while/lstm_cell_95/Relu_1Relu-backward_lstm_14/while/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Š
)backward_lstm_14/while/lstm_cell_95/mul_2Mul1backward_lstm_14/while/lstm_cell_95/Sigmoid_2:y:08backward_lstm_14/while/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Abackward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ±
;backward_lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_14_while_placeholder_1Jbackward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/index:output:0-backward_lstm_14/while/lstm_cell_95/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ^
backward_lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_14/while/addAddV2"backward_lstm_14_while_placeholder%backward_lstm_14/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :«
backward_lstm_14/while/add_1AddV2:backward_lstm_14_while_backward_lstm_14_while_loop_counter'backward_lstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_14/while/IdentityIdentity backward_lstm_14/while/add_1:z:0^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ®
!backward_lstm_14/while/Identity_1Identity@backward_lstm_14_while_backward_lstm_14_while_maximum_iterations^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: 
!backward_lstm_14/while/Identity_2Identitybackward_lstm_14/while/add:z:0^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ¹
!backward_lstm_14/while/Identity_3IdentityKbackward_lstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ­
!backward_lstm_14/while/Identity_4Identity-backward_lstm_14/while/lstm_cell_95/mul_2:z:0^backward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’­
!backward_lstm_14/while/Identity_5Identity-backward_lstm_14/while/lstm_cell_95/add_1:z:0^backward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
backward_lstm_14/while/NoOpNoOp;^backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp:^backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp<^backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "t
7backward_lstm_14_while_backward_lstm_14_strided_slice_19backward_lstm_14_while_backward_lstm_14_strided_slice_1_0"K
backward_lstm_14_while_identity(backward_lstm_14/while/Identity:output:0"O
!backward_lstm_14_while_identity_1*backward_lstm_14/while/Identity_1:output:0"O
!backward_lstm_14_while_identity_2*backward_lstm_14/while/Identity_2:output:0"O
!backward_lstm_14_while_identity_3*backward_lstm_14/while/Identity_3:output:0"O
!backward_lstm_14_while_identity_4*backward_lstm_14/while/Identity_4:output:0"O
!backward_lstm_14_while_identity_5*backward_lstm_14/while/Identity_5:output:0"
Cbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resourceEbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0"
Dbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resourceFbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0"
Bbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resourceDbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0"ģ
sbackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensorubackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2x
:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp2v
9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp2z
;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp: 
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
F__inference_lambda_14_layer_call_and_return_conditional_losses_1559353

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
÷M
¦
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1562533

inputs>
+lstm_cell_95_matmul_readvariableop_resource:	A
-lstm_cell_95_matmul_1_readvariableop_resource:
;
,lstm_cell_95_biasadd_readvariableop_resource:	
identity¢#lstm_cell_95/BiasAdd/ReadVariableOp¢"lstm_cell_95/MatMul/ReadVariableOp¢$lstm_cell_95/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
"lstm_cell_95/MatMul/ReadVariableOpReadVariableOp+lstm_cell_95_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_95/MatMulMatMulstrided_slice_2:output:0*lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_95_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_95/MatMul_1MatMulzeros:output:0,lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_95/addAddV2lstm_cell_95/MatMul:product:0lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_95_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_95/BiasAddBiasAddlstm_cell_95/add:z:0+lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_95/splitSplit%lstm_cell_95/split/split_dim:output:0lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_95/SigmoidSigmoidlstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_95/Sigmoid_1Sigmoidlstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_95/mulMullstm_cell_95/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_95/ReluRelulstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_95/mul_1Mullstm_cell_95/Sigmoid:y:0lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_95/add_1AddV2lstm_cell_95/mul:z:0lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_95/Sigmoid_2Sigmoidlstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_95/Relu_1Relulstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_95/mul_2Mullstm_cell_95/Sigmoid_2:y:0!lstm_cell_95/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_95_matmul_readvariableop_resource-lstm_cell_95_matmul_1_readvariableop_resource,lstm_cell_95_biasadd_readvariableop_resource*
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
while_body_1562448*
condR
while_cond_1562447*M
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
:’’’’’’’’’Ą
NoOpNoOp$^lstm_cell_95/BiasAdd/ReadVariableOp#^lstm_cell_95/MatMul/ReadVariableOp%^lstm_cell_95/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_95/BiasAdd/ReadVariableOp#lstm_cell_95/BiasAdd/ReadVariableOp2H
"lstm_cell_95/MatMul/ReadVariableOp"lstm_cell_95/MatMul/ReadVariableOp2L
$lstm_cell_95/MatMul_1/ReadVariableOp$lstm_cell_95/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
©
Ā
2__inference_backward_lstm_14_layer_call_fn_1562070
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
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1557938p
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
³
æ
1__inference_forward_lstm_14_layer_call_fn_1561457

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
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1558098p
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
æ9
Ó
while_body_1561528
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_94_matmul_readvariableop_resource_0:	I
5while_lstm_cell_94_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_94_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_94_matmul_readvariableop_resource:	G
3while_lstm_cell_94_matmul_1_readvariableop_resource:
A
2while_lstm_cell_94_biasadd_readvariableop_resource:	¢)while/lstm_cell_94/BiasAdd/ReadVariableOp¢(while/lstm_cell_94/MatMul/ReadVariableOp¢*while/lstm_cell_94/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0
(while/lstm_cell_94/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_94_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_94/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_94_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_94/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/addAddV2#while/lstm_cell_94/MatMul:product:0%while/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_94_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_94/BiasAddBiasAddwhile/lstm_cell_94/add:z:01while/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_94/splitSplit+while/lstm_cell_94/split/split_dim:output:0#while/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_94/SigmoidSigmoid!while/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_94/Sigmoid_1Sigmoid!while/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/mulMul while/lstm_cell_94/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_94/ReluRelu!while/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/mul_1Mulwhile/lstm_cell_94/Sigmoid:y:0%while/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/add_1AddV2while/lstm_cell_94/mul:z:0while/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_94/Sigmoid_2Sigmoid!while/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_94/Relu_1Reluwhile/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/mul_2Mul while/lstm_cell_94/Sigmoid_2:y:0'while/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_94/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_94/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_94/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_94/BiasAdd/ReadVariableOp)^while/lstm_cell_94/MatMul/ReadVariableOp+^while/lstm_cell_94/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_94_biasadd_readvariableop_resource4while_lstm_cell_94_biasadd_readvariableop_resource_0"l
3while_lstm_cell_94_matmul_1_readvariableop_resource5while_lstm_cell_94_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_94_matmul_readvariableop_resource3while_lstm_cell_94_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_94/BiasAdd/ReadVariableOp)while/lstm_cell_94/BiasAdd/ReadVariableOp2T
(while/lstm_cell_94/MatMul/ReadVariableOp(while/lstm_cell_94/MatMul/ReadVariableOp2X
*while/lstm_cell_94/MatMul_1/ReadVariableOp*while/lstm_cell_94/MatMul_1/ReadVariableOp: 
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
ō

I__inference_lstm_cell_94_layer_call_and_return_conditional_losses_1562746

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
Č9
Ó
while_body_1562595
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_95_matmul_readvariableop_resource_0:	I
5while_lstm_cell_95_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_95_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_95_matmul_readvariableop_resource:	G
3while_lstm_cell_95_matmul_1_readvariableop_resource:
A
2while_lstm_cell_95_biasadd_readvariableop_resource:	¢)while/lstm_cell_95/BiasAdd/ReadVariableOp¢(while/lstm_cell_95/MatMul/ReadVariableOp¢*while/lstm_cell_95/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
(while/lstm_cell_95/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_95_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_95/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_95_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_95/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/addAddV2#while/lstm_cell_95/MatMul:product:0%while/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_95_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_95/BiasAddBiasAddwhile/lstm_cell_95/add:z:01while/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_95/splitSplit+while/lstm_cell_95/split/split_dim:output:0#while/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_95/SigmoidSigmoid!while/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_95/Sigmoid_1Sigmoid!while/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/mulMul while/lstm_cell_95/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_95/ReluRelu!while/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/mul_1Mulwhile/lstm_cell_95/Sigmoid:y:0%while/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/add_1AddV2while/lstm_cell_95/mul:z:0while/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_95/Sigmoid_2Sigmoid!while/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_95/Relu_1Reluwhile/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_95/mul_2Mul while/lstm_cell_95/Sigmoid_2:y:0'while/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_95/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_95/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_95/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_95/BiasAdd/ReadVariableOp)^while/lstm_cell_95/MatMul/ReadVariableOp+^while/lstm_cell_95/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_95_biasadd_readvariableop_resource4while_lstm_cell_95_biasadd_readvariableop_resource_0"l
3while_lstm_cell_95_matmul_1_readvariableop_resource5while_lstm_cell_95_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_95_matmul_readvariableop_resource3while_lstm_cell_95_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_95/BiasAdd/ReadVariableOp)while/lstm_cell_95/BiasAdd/ReadVariableOp2T
(while/lstm_cell_95/MatMul/ReadVariableOp(while/lstm_cell_95/MatMul/ReadVariableOp2X
*while/lstm_cell_95/MatMul_1/ReadVariableOp*while/lstm_cell_95/MatMul_1/ReadVariableOp: 
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
"forward_lstm_14_while_cond_1560594<
8forward_lstm_14_while_forward_lstm_14_while_loop_counterB
>forward_lstm_14_while_forward_lstm_14_while_maximum_iterations%
!forward_lstm_14_while_placeholder'
#forward_lstm_14_while_placeholder_1'
#forward_lstm_14_while_placeholder_2'
#forward_lstm_14_while_placeholder_3>
:forward_lstm_14_while_less_forward_lstm_14_strided_slice_1U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1560594___redundant_placeholder0U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1560594___redundant_placeholder1U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1560594___redundant_placeholder2U
Qforward_lstm_14_while_forward_lstm_14_while_cond_1560594___redundant_placeholder3"
forward_lstm_14_while_identity
¢
forward_lstm_14/while/LessLess!forward_lstm_14_while_placeholder:forward_lstm_14_while_less_forward_lstm_14_strided_slice_1*
T0*
_output_shapes
: k
forward_lstm_14/while/IdentityIdentityforward_lstm_14/while/Less:z:0*
T0
*
_output_shapes
: "I
forward_lstm_14_while_identity'forward_lstm_14/while/Identity:output:0*(
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
Ś
ź
"__inference__wrapped_model_1557235
lambda_14_input
qmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource:	
smodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource:

rmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource:	
rmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource:	
tmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource:

smodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource:	_
Lmodel_9_bidirectionallstm_univariate_dense_14_matmul_readvariableop_resource:	[
Mmodel_9_bidirectionallstm_univariate_dense_14_biasadd_readvariableop_resource:
identity¢jmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp¢imodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp¢kmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp¢Lmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while¢imodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp¢hmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp¢jmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp¢Kmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while¢Dmodel_9_bidirectionalLSTM_univariate/dense_14/BiasAdd/ReadVariableOp¢Cmodel_9_bidirectionalLSTM_univariate/dense_14/MatMul/ReadVariableOp
=model_9_bidirectionalLSTM_univariate/lambda_14/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Ö
9model_9_bidirectionalLSTM_univariate/lambda_14/ExpandDims
ExpandDimslambda_14_inputFmodel_9_bidirectionalLSTM_univariate/lambda_14/ExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’½
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/ShapeShapeBmodel_9_bidirectionalLSTM_univariate/lambda_14/ExpandDims:output:0*
T0*
_output_shapes
:£
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: „
[model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:„
[model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Æ
Smodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_sliceStridedSliceTmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/Shape:output:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice/stack:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice/stack_1:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Å
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/zeros/packedPack\model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    æ
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/zerosFill[model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/zeros/packed:output:0Zmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :É
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/zeros_1/packedPack\model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice:output:0_model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:
Smodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Å
Mmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/zeros_1Fill]model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/zeros_1/packed:output:0\model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’©
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          µ
Omodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/transpose	TransposeBmodel_9_bidirectionalLSTM_univariate/lambda_14/ExpandDims:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’Š
Mmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/Shape_1ShapeSmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/transpose:y:0*
T0*
_output_shapes
:„
[model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: §
]model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:§
]model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¹
Umodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_1StridedSliceVmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/Shape_1:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_1/stack:output:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_1/stack_1:output:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask¬
amodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
Smodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/TensorArrayV2TensorListReservejmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/TensorArrayV2/element_shape:output:0^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅĢ
{model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ³
mmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorSmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/transpose:y:0model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ„
[model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: §
]model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:§
]model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ē
Umodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_2StridedSliceSmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/transpose:y:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_2/stack:output:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_2/stack_1:output:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
hmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOpReadVariableOpqmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0č
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/MatMulMatMul^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_2:output:0pmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ 
jmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOpsmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0ā
[model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1MatMulTmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/zeros:output:0rmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ž
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/addAddV2cmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul:product:0emodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
imodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOprmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ē
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/BiasAddBiasAddZmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/add:z:0qmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¤
bmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :³
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/splitSplitkmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/split/split_dim:output:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitū
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/SigmoidSigmoidamodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’ż
\model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/Sigmoid_1Sigmoidamodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ź
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/mulMul`model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/Sigmoid_1:y:0Vmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’õ
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/ReluReluamodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ł
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/mul_1Mul^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/Sigmoid:y:0emodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Ī
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/add_1AddV2Zmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/mul:z:0\model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ż
\model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/Sigmoid_2Sigmoidamodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’ņ
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/Relu_1Relu\model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ż
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/mul_2Mul`model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/Sigmoid_2:y:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’“
cmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¤
bmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :
Umodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/TensorArrayV2_1TensorListReservelmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/TensorArrayV2_1/element_shape:output:0kmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Jmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : ©
^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ü
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/whileWhileamodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/loop_counter:output:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/maximum_iterations:output:0Smodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/time:output:0^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/TensorArrayV2_1:handle:0Tmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/zeros:output:0Vmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/zeros_1:output:0^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_1:output:0}model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0qmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_lstm_cell_94_matmul_readvariableop_resourcesmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resourcermodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource*
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
Xmodel_9_bidirectionalLSTM_univariate_bidirectional_14_forward_lstm_14_while_body_1556999*d
cond\RZ
Xmodel_9_bidirectionalLSTM_univariate_bidirectional_14_forward_lstm_14_while_cond_1556998*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations Ē
vmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ©
hmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/TensorArrayV2Stack/TensorListStackTensorListStackTmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while:output:3model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elements®
[model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’§
]model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: §
]model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ę
Umodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_3StridedSliceqmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_3/stack:output:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_3/stack_1:output:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask«
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          é
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/transpose_1	Transposeqmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0_model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’”
Mmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ¾
Lmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/ShapeShapeBmodel_9_bidirectionalLSTM_univariate/lambda_14/ExpandDims:output:0*
T0*
_output_shapes
:¤
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ¦
\model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¦
\model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:“
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_sliceStridedSliceUmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/Shape:output:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice/stack:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice/stack_1:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Umodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Č
Smodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/zeros/packedPack]model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice:output:0^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ā
Lmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/zerosFill\model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/zeros/packed:output:0[model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ģ
Umodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/zeros_1/packedPack]model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice:output:0`model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Č
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/zeros_1Fill^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/zeros_1/packed:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
Umodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ·
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/transpose	TransposeBmodel_9_bidirectionalLSTM_univariate/lambda_14/ExpandDims:output:0^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’Ņ
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/Shape_1ShapeTmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/transpose:y:0*
T0*
_output_shapes
:¦
\model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: Ø
^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ø
^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¾
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_1StridedSliceWmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/Shape_1:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_1/stack:output:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_1/stack_1:output:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask­
bmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/TensorArrayV2TensorListReservekmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/TensorArrayV2/element_shape:output:0_model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Umodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: É
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/ReverseV2	ReverseV2Tmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/transpose:y:0^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/ReverseV2/axis:output:0*
T0*+
_output_shapes
:’’’’’’’’’Ķ
|model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   »
nmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorYmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/ReverseV2:output:0model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ¦
\model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: Ø
^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:Ø
^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ģ
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_2StridedSliceTmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/transpose:y:0emodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_2/stack:output:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_2/stack_1:output:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
imodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOpReadVariableOprmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ė
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/MatMulMatMul_model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_2:output:0qmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
kmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOptmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0å
\model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1MatMulUmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/zeros:output:0smodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’į
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/addAddV2dmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/MatMul:product:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
jmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOpsmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ź
[model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/BiasAddBiasAdd[model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/add:z:0rmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’„
cmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¶
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/splitSplitlmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/split/split_dim:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitż
[model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/SigmoidSigmoidbmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’’
]model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/Sigmoid_1Sigmoidbmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ķ
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/mulMulamodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/Sigmoid_1:y:0Wmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’÷
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/ReluRelubmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ü
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/mul_1Mul_model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/Sigmoid:y:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Ń
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/add_1AddV2[model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/mul:z:0]model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’’
]model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/Sigmoid_2Sigmoidbmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’ō
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/Relu_1Relu]model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ą
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/mul_2Mulamodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/Sigmoid_2:y:0hmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’µ
dmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   „
cmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/TensorArrayV2_1TensorListReservemmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/TensorArrayV2_1/element_shape:output:0lmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : Ŗ
_model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ź
Lmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/whileWhilebmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/loop_counter:output:0hmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while/maximum_iterations:output:0Tmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/time:output:0_model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/TensorArrayV2_1:handle:0Umodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/zeros:output:0Wmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/zeros_1:output:0_model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_1:output:0~model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0rmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_lstm_cell_95_matmul_readvariableop_resourcetmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resourcesmodel_9_bidirectionallstm_univariate_bidirectional_14_backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource*
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
Ymodel_9_bidirectionalLSTM_univariate_bidirectional_14_backward_lstm_14_while_body_1557142*e
cond]R[
Ymodel_9_bidirectionalLSTM_univariate_bidirectional_14_backward_lstm_14_while_cond_1557141*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations Č
wmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ­
imodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/TensorArrayV2Stack/TensorListStackTensorListStackUmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while:output:3model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsÆ
\model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’Ø
^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: Ø
^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ė
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_3StridedSlicermodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0emodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_3/stack:output:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_3/stack_1:output:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask¬
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ģ
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/transpose_1	Transposermodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0`model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’¢
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
Amodel_9_bidirectionalLSTM_univariate/bidirectional_14/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
<model_9_bidirectionalLSTM_univariate/bidirectional_14/concatConcatV2^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/strided_slice_3:output:0_model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/strided_slice_3:output:0Jmodel_9_bidirectionalLSTM_univariate/bidirectional_14/concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’Ń
Cmodel_9_bidirectionalLSTM_univariate/dense_14/MatMul/ReadVariableOpReadVariableOpLmodel_9_bidirectionallstm_univariate_dense_14_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
4model_9_bidirectionalLSTM_univariate/dense_14/MatMulMatMulEmodel_9_bidirectionalLSTM_univariate/bidirectional_14/concat:output:0Kmodel_9_bidirectionalLSTM_univariate/dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’Ī
Dmodel_9_bidirectionalLSTM_univariate/dense_14/BiasAdd/ReadVariableOpReadVariableOpMmodel_9_bidirectionallstm_univariate_dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
5model_9_bidirectionalLSTM_univariate/dense_14/BiasAddBiasAdd>model_9_bidirectionalLSTM_univariate/dense_14/MatMul:product:0Lmodel_9_bidirectionalLSTM_univariate/dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
IdentityIdentity>model_9_bidirectionalLSTM_univariate/dense_14/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’ū
NoOpNoOpk^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOpj^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOpl^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOpM^model_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/whilej^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOpi^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOpk^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOpL^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/whileE^model_9_bidirectionalLSTM_univariate/dense_14/BiasAdd/ReadVariableOpD^model_9_bidirectionalLSTM_univariate/dense_14/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 2Ų
jmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOpjmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp2Ö
imodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOpimodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp2Ś
kmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOpkmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp2
Lmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/whileLmodel_9_bidirectionalLSTM_univariate/bidirectional_14/backward_lstm_14/while2Ö
imodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOpimodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp2Ō
hmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOphmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp2Ų
jmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOpjmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp2
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/whileKmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while2
Dmodel_9_bidirectionalLSTM_univariate/dense_14/BiasAdd/ReadVariableOpDmodel_9_bidirectionalLSTM_univariate/dense_14/BiasAdd/ReadVariableOp2
Cmodel_9_bidirectionalLSTM_univariate/dense_14/MatMul/ReadVariableOpCmodel_9_bidirectionalLSTM_univariate/dense_14/MatMul/ReadVariableOp:X T
'
_output_shapes
:’’’’’’’’’
)
_user_specified_namelambda_14_input
ņK
§
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1561613
inputs_0>
+lstm_cell_94_matmul_readvariableop_resource:	A
-lstm_cell_94_matmul_1_readvariableop_resource:
;
,lstm_cell_94_biasadd_readvariableop_resource:	
identity¢#lstm_cell_94/BiasAdd/ReadVariableOp¢"lstm_cell_94/MatMul/ReadVariableOp¢$lstm_cell_94/MatMul_1/ReadVariableOp¢while=
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
shrink_axis_mask
"lstm_cell_94/MatMul/ReadVariableOpReadVariableOp+lstm_cell_94_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_94/MatMulMatMulstrided_slice_2:output:0*lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_94_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_94/MatMul_1MatMulzeros:output:0,lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_94/addAddV2lstm_cell_94/MatMul:product:0lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_94_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_94/BiasAddBiasAddlstm_cell_94/add:z:0+lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_94/splitSplit%lstm_cell_94/split/split_dim:output:0lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_94/SigmoidSigmoidlstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_94/Sigmoid_1Sigmoidlstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_94/mulMullstm_cell_94/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_94/ReluRelulstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_94/mul_1Mullstm_cell_94/Sigmoid:y:0lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_94/add_1AddV2lstm_cell_94/mul:z:0lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_94/Sigmoid_2Sigmoidlstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_94/Relu_1Relulstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_94/mul_2Mullstm_cell_94/Sigmoid_2:y:0!lstm_cell_94/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_94_matmul_readvariableop_resource-lstm_cell_94_matmul_1_readvariableop_resource,lstm_cell_94_biasadd_readvariableop_resource*
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
while_body_1561528*
condR
while_cond_1561527*M
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
:’’’’’’’’’Ą
NoOpNoOp$^lstm_cell_94/BiasAdd/ReadVariableOp#^lstm_cell_94/MatMul/ReadVariableOp%^lstm_cell_94/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_94/BiasAdd/ReadVariableOp#lstm_cell_94/BiasAdd/ReadVariableOp2H
"lstm_cell_94/MatMul/ReadVariableOp"lstm_cell_94/MatMul/ReadVariableOp2L
$lstm_cell_94/MatMul_1/ReadVariableOp$lstm_cell_94/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
¾
Č
while_cond_1562447
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1562447___redundant_placeholder05
1while_while_cond_1562447___redundant_placeholder15
1while_while_cond_1562447___redundant_placeholder25
1while_while_cond_1562447___redundant_placeholder3
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
ņK
§
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1561758
inputs_0>
+lstm_cell_94_matmul_readvariableop_resource:	A
-lstm_cell_94_matmul_1_readvariableop_resource:
;
,lstm_cell_94_biasadd_readvariableop_resource:	
identity¢#lstm_cell_94/BiasAdd/ReadVariableOp¢"lstm_cell_94/MatMul/ReadVariableOp¢$lstm_cell_94/MatMul_1/ReadVariableOp¢while=
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
shrink_axis_mask
"lstm_cell_94/MatMul/ReadVariableOpReadVariableOp+lstm_cell_94_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_94/MatMulMatMulstrided_slice_2:output:0*lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_94_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_94/MatMul_1MatMulzeros:output:0,lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_94/addAddV2lstm_cell_94/MatMul:product:0lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_94_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_94/BiasAddBiasAddlstm_cell_94/add:z:0+lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_94/splitSplit%lstm_cell_94/split/split_dim:output:0lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_94/SigmoidSigmoidlstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_94/Sigmoid_1Sigmoidlstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_94/mulMullstm_cell_94/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_94/ReluRelulstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_94/mul_1Mullstm_cell_94/Sigmoid:y:0lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_94/add_1AddV2lstm_cell_94/mul:z:0lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_94/Sigmoid_2Sigmoidlstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_94/Relu_1Relulstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_94/mul_2Mullstm_cell_94/Sigmoid_2:y:0!lstm_cell_94/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_94_matmul_readvariableop_resource-lstm_cell_94_matmul_1_readvariableop_resource,lstm_cell_94_biasadd_readvariableop_resource*
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
while_body_1561673*
condR
while_cond_1561672*M
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
:’’’’’’’’’Ą
NoOpNoOp$^lstm_cell_94/BiasAdd/ReadVariableOp#^lstm_cell_94/MatMul/ReadVariableOp%^lstm_cell_94/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_94/BiasAdd/ReadVariableOp#lstm_cell_94/BiasAdd/ReadVariableOp2H
"lstm_cell_94/MatMul/ReadVariableOp"lstm_cell_94/MatMul/ReadVariableOp2L
$lstm_cell_94/MatMul_1/ReadVariableOp$lstm_cell_94/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
Ą
Ē
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1558955

inputsN
;forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource:	Q
=forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource:
K
<forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource:	O
<backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource:	R
>backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource:
L
=backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource:	
identity¢4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp¢3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp¢5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp¢backward_lstm_14/while¢3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp¢2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp¢4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp¢forward_lstm_14/whileK
forward_lstm_14/ShapeShapeinputs*
T0*
_output_shapes
:m
#forward_lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_14/strided_sliceStridedSliceforward_lstm_14/Shape:output:0,forward_lstm_14/strided_slice/stack:output:0.forward_lstm_14/strided_slice/stack_1:output:0.forward_lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
forward_lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :£
forward_lstm_14/zeros/packedPack&forward_lstm_14/strided_slice:output:0'forward_lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_14/zerosFill%forward_lstm_14/zeros/packed:output:0$forward_lstm_14/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
 forward_lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :§
forward_lstm_14/zeros_1/packedPack&forward_lstm_14/strided_slice:output:0)forward_lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
forward_lstm_14/zeros_1Fill'forward_lstm_14/zeros_1/packed:output:0&forward_lstm_14/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
forward_lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm_14/transpose	Transposeinputs'forward_lstm_14/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d
forward_lstm_14/Shape_1Shapeforward_lstm_14/transpose:y:0*
T0*
_output_shapes
:o
%forward_lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
forward_lstm_14/strided_slice_1StridedSlice forward_lstm_14/Shape_1:output:0.forward_lstm_14/strided_slice_1/stack:output:00forward_lstm_14/strided_slice_1/stack_1:output:00forward_lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ä
forward_lstm_14/TensorArrayV2TensorListReserve4forward_lstm_14/TensorArrayV2/element_shape:output:0(forward_lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Eforward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
7forward_lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_14/transpose:y:0Nforward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅo
%forward_lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¹
forward_lstm_14/strided_slice_2StridedSliceforward_lstm_14/transpose:y:0.forward_lstm_14/strided_slice_2/stack:output:00forward_lstm_14/strided_slice_2/stack_1:output:00forward_lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_maskÆ
2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOpReadVariableOp;forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ę
#forward_lstm_14/lstm_cell_94/MatMulMatMul(forward_lstm_14/strided_slice_2:output:0:forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’“
4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOp=forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ą
%forward_lstm_14/lstm_cell_94/MatMul_1MatMulforward_lstm_14/zeros:output:0<forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¼
 forward_lstm_14/lstm_cell_94/addAddV2-forward_lstm_14/lstm_cell_94/MatMul:product:0/forward_lstm_14/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’­
3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOp<forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Å
$forward_lstm_14/lstm_cell_94/BiasAddBiasAdd$forward_lstm_14/lstm_cell_94/add:z:0;forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’n
,forward_lstm_14/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
"forward_lstm_14/lstm_cell_94/splitSplit5forward_lstm_14/lstm_cell_94/split/split_dim:output:0-forward_lstm_14/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
$forward_lstm_14/lstm_cell_94/SigmoidSigmoid+forward_lstm_14/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
&forward_lstm_14/lstm_cell_94/Sigmoid_1Sigmoid+forward_lstm_14/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ø
 forward_lstm_14/lstm_cell_94/mulMul*forward_lstm_14/lstm_cell_94/Sigmoid_1:y:0 forward_lstm_14/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
!forward_lstm_14/lstm_cell_94/ReluRelu+forward_lstm_14/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’·
"forward_lstm_14/lstm_cell_94/mul_1Mul(forward_lstm_14/lstm_cell_94/Sigmoid:y:0/forward_lstm_14/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¬
"forward_lstm_14/lstm_cell_94/add_1AddV2$forward_lstm_14/lstm_cell_94/mul:z:0&forward_lstm_14/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
&forward_lstm_14/lstm_cell_94/Sigmoid_2Sigmoid+forward_lstm_14/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
#forward_lstm_14/lstm_cell_94/Relu_1Relu&forward_lstm_14/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’»
"forward_lstm_14/lstm_cell_94/mul_2Mul*forward_lstm_14/lstm_cell_94/Sigmoid_2:y:01forward_lstm_14/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’~
-forward_lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   n
,forward_lstm_14/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :õ
forward_lstm_14/TensorArrayV2_1TensorListReserve6forward_lstm_14/TensorArrayV2_1/element_shape:output:05forward_lstm_14/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅV
forward_lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’d
"forward_lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : č
forward_lstm_14/whileWhile+forward_lstm_14/while/loop_counter:output:01forward_lstm_14/while/maximum_iterations:output:0forward_lstm_14/time:output:0(forward_lstm_14/TensorArrayV2_1:handle:0forward_lstm_14/zeros:output:0 forward_lstm_14/zeros_1:output:0(forward_lstm_14/strided_slice_1:output:0Gforward_lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0;forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource=forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource<forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource*
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
"forward_lstm_14_while_body_1558725*.
cond&R$
"forward_lstm_14_while_cond_1558724*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
@forward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
2forward_lstm_14/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_14/while:output:3Iforward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsx
%forward_lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’q
'forward_lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ų
forward_lstm_14/strided_slice_3StridedSlice;forward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_14/strided_slice_3/stack:output:00forward_lstm_14/strided_slice_3/stack_1:output:00forward_lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_masku
 forward_lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ē
forward_lstm_14/transpose_1	Transpose;forward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_14/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’k
forward_lstm_14/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    L
backward_lstm_14/ShapeShapeinputs*
T0*
_output_shapes
:n
$backward_lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
backward_lstm_14/strided_sliceStridedSlicebackward_lstm_14/Shape:output:0-backward_lstm_14/strided_slice/stack:output:0/backward_lstm_14/strided_slice/stack_1:output:0/backward_lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
backward_lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :¦
backward_lstm_14/zeros/packedPack'backward_lstm_14/strided_slice:output:0(backward_lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
backward_lstm_14/zerosFill&backward_lstm_14/zeros/packed:output:0%backward_lstm_14/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’d
!backward_lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ŗ
backward_lstm_14/zeros_1/packedPack'backward_lstm_14/strided_slice:output:0*backward_lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¦
backward_lstm_14/zeros_1Fill(backward_lstm_14/zeros_1/packed:output:0'backward_lstm_14/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’t
backward_lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
backward_lstm_14/transpose	Transposeinputs(backward_lstm_14/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’f
backward_lstm_14/Shape_1Shapebackward_lstm_14/transpose:y:0*
T0*
_output_shapes
:p
&backward_lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 backward_lstm_14/strided_slice_1StridedSlice!backward_lstm_14/Shape_1:output:0/backward_lstm_14/strided_slice_1/stack:output:01backward_lstm_14/strided_slice_1/stack_1:output:01backward_lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ē
backward_lstm_14/TensorArrayV2TensorListReserve5backward_lstm_14/TensorArrayV2/element_shape:output:0)backward_lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅi
backward_lstm_14/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: §
backward_lstm_14/ReverseV2	ReverseV2backward_lstm_14/transpose:y:0(backward_lstm_14/ReverseV2/axis:output:0*
T0*+
_output_shapes
:’’’’’’’’’
Fbackward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
8backward_lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_14/ReverseV2:output:0Obackward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅp
&backward_lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¾
 backward_lstm_14/strided_slice_2StridedSlicebackward_lstm_14/transpose:y:0/backward_lstm_14/strided_slice_2/stack:output:01backward_lstm_14/strided_slice_2/stack_1:output:01backward_lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask±
3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOpReadVariableOp<backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0É
$backward_lstm_14/lstm_cell_95/MatMulMatMul)backward_lstm_14/strided_slice_2:output:0;backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¶
5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOp>backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ć
&backward_lstm_14/lstm_cell_95/MatMul_1MatMulbackward_lstm_14/zeros:output:0=backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’æ
!backward_lstm_14/lstm_cell_95/addAddV2.backward_lstm_14/lstm_cell_95/MatMul:product:00backward_lstm_14/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOp=backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Č
%backward_lstm_14/lstm_cell_95/BiasAddBiasAdd%backward_lstm_14/lstm_cell_95/add:z:0<backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’o
-backward_lstm_14/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
#backward_lstm_14/lstm_cell_95/splitSplit6backward_lstm_14/lstm_cell_95/split/split_dim:output:0.backward_lstm_14/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
%backward_lstm_14/lstm_cell_95/SigmoidSigmoid,backward_lstm_14/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
'backward_lstm_14/lstm_cell_95/Sigmoid_1Sigmoid,backward_lstm_14/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’«
!backward_lstm_14/lstm_cell_95/mulMul+backward_lstm_14/lstm_cell_95/Sigmoid_1:y:0!backward_lstm_14/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
"backward_lstm_14/lstm_cell_95/ReluRelu,backward_lstm_14/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ŗ
#backward_lstm_14/lstm_cell_95/mul_1Mul)backward_lstm_14/lstm_cell_95/Sigmoid:y:00backward_lstm_14/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
#backward_lstm_14/lstm_cell_95/add_1AddV2%backward_lstm_14/lstm_cell_95/mul:z:0'backward_lstm_14/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
'backward_lstm_14/lstm_cell_95/Sigmoid_2Sigmoid,backward_lstm_14/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
$backward_lstm_14/lstm_cell_95/Relu_1Relu'backward_lstm_14/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’¾
#backward_lstm_14/lstm_cell_95/mul_2Mul+backward_lstm_14/lstm_cell_95/Sigmoid_2:y:02backward_lstm_14/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
.backward_lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   o
-backward_lstm_14/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ų
 backward_lstm_14/TensorArrayV2_1TensorListReserve7backward_lstm_14/TensorArrayV2_1/element_shape:output:06backward_lstm_14/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅW
backward_lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’e
#backward_lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ö
backward_lstm_14/whileWhile,backward_lstm_14/while/loop_counter:output:02backward_lstm_14/while/maximum_iterations:output:0backward_lstm_14/time:output:0)backward_lstm_14/TensorArrayV2_1:handle:0backward_lstm_14/zeros:output:0!backward_lstm_14/zeros_1:output:0)backward_lstm_14/strided_slice_1:output:0Hbackward_lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0<backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource>backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource=backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource*
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
#backward_lstm_14_while_body_1558868*/
cond'R%
#backward_lstm_14_while_cond_1558867*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
Abackward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
3backward_lstm_14/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_14/while:output:3Jbackward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsy
&backward_lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’r
(backward_lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ż
 backward_lstm_14/strided_slice_3StridedSlice<backward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_14/strided_slice_3/stack:output:01backward_lstm_14/strided_slice_3/stack_1:output:01backward_lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maskv
!backward_lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ź
backward_lstm_14/transpose_1	Transpose<backward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_14/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’l
backward_lstm_14/runtimeConst"/device:CPU:0*
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
concatConcatV2(forward_lstm_14/strided_slice_3:output:0)backward_lstm_14/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’¾
NoOpNoOp5^backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp4^backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp6^backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp^backward_lstm_14/while4^forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp3^forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp5^forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp^forward_lstm_14/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : 2l
4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp2j
3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp2n
5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp20
backward_lstm_14/whilebackward_lstm_14/while2j
3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp2h
2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp2l
4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp2.
forward_lstm_14/whileforward_lstm_14/while:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ņ`
÷
3bidirectional_14_forward_lstm_14_while_body_1559621^
Zbidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_while_loop_counterd
`bidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_while_maximum_iterations6
2bidirectional_14_forward_lstm_14_while_placeholder8
4bidirectional_14_forward_lstm_14_while_placeholder_18
4bidirectional_14_forward_lstm_14_while_placeholder_28
4bidirectional_14_forward_lstm_14_while_placeholder_3]
Ybidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_strided_slice_1_0
bidirectional_14_forward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_bidirectional_14_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0g
Tbidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0:	j
Vbidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0:
d
Ubidirectional_14_forward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0:	3
/bidirectional_14_forward_lstm_14_while_identity5
1bidirectional_14_forward_lstm_14_while_identity_15
1bidirectional_14_forward_lstm_14_while_identity_25
1bidirectional_14_forward_lstm_14_while_identity_35
1bidirectional_14_forward_lstm_14_while_identity_45
1bidirectional_14_forward_lstm_14_while_identity_5[
Wbidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_strided_slice_1
bidirectional_14_forward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_bidirectional_14_forward_lstm_14_tensorarrayunstack_tensorlistfromtensore
Rbidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource:	h
Tbidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource:
b
Sbidirectional_14_forward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource:	¢Jbidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp¢Ibidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp¢Kbidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp©
Xbidirectional_14/forward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ģ
Jbidirectional_14/forward_lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_14_forward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_bidirectional_14_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_02bidirectional_14_forward_lstm_14_while_placeholderabidirectional_14/forward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0ß
Ibidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOpReadVariableOpTbidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0
:bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMulMatMulQbidirectional_14/forward_lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0Qbidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ä
Kbidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOpVbidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
<bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1MatMul4bidirectional_14_forward_lstm_14_while_placeholder_2Sbidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
7bidirectional_14/forward_lstm_14/while/lstm_cell_94/addAddV2Dbidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul:product:0Fbidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Ż
Jbidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOpUbidirectional_14_forward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
;bidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAddBiasAdd;bidirectional_14/forward_lstm_14/while/lstm_cell_94/add:z:0Rbidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
Cbidirectional_14/forward_lstm_14/while/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ö
9bidirectional_14/forward_lstm_14/while/lstm_cell_94/splitSplitLbidirectional_14/forward_lstm_14/while/lstm_cell_94/split/split_dim:output:0Dbidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split½
;bidirectional_14/forward_lstm_14/while/lstm_cell_94/SigmoidSigmoidBbidirectional_14/forward_lstm_14/while/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’æ
=bidirectional_14/forward_lstm_14/while/lstm_cell_94/Sigmoid_1SigmoidBbidirectional_14/forward_lstm_14/while/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’ź
7bidirectional_14/forward_lstm_14/while/lstm_cell_94/mulMulAbidirectional_14/forward_lstm_14/while/lstm_cell_94/Sigmoid_1:y:04bidirectional_14_forward_lstm_14_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’·
8bidirectional_14/forward_lstm_14/while/lstm_cell_94/ReluReluBbidirectional_14/forward_lstm_14/while/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ü
9bidirectional_14/forward_lstm_14/while/lstm_cell_94/mul_1Mul?bidirectional_14/forward_lstm_14/while/lstm_cell_94/Sigmoid:y:0Fbidirectional_14/forward_lstm_14/while/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’ń
9bidirectional_14/forward_lstm_14/while/lstm_cell_94/add_1AddV2;bidirectional_14/forward_lstm_14/while/lstm_cell_94/mul:z:0=bidirectional_14/forward_lstm_14/while/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’æ
=bidirectional_14/forward_lstm_14/while/lstm_cell_94/Sigmoid_2SigmoidBbidirectional_14/forward_lstm_14/while/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’“
:bidirectional_14/forward_lstm_14/while/lstm_cell_94/Relu_1Relu=bidirectional_14/forward_lstm_14/while/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
9bidirectional_14/forward_lstm_14/while/lstm_cell_94/mul_2MulAbidirectional_14/forward_lstm_14/while/lstm_cell_94/Sigmoid_2:y:0Hbidirectional_14/forward_lstm_14/while/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Qbidirectional_14/forward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ń
Kbidirectional_14/forward_lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem4bidirectional_14_forward_lstm_14_while_placeholder_1Zbidirectional_14/forward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/index:output:0=bidirectional_14/forward_lstm_14/while/lstm_cell_94/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅn
,bidirectional_14/forward_lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :æ
*bidirectional_14/forward_lstm_14/while/addAddV22bidirectional_14_forward_lstm_14_while_placeholder5bidirectional_14/forward_lstm_14/while/add/y:output:0*
T0*
_output_shapes
: p
.bidirectional_14/forward_lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ė
,bidirectional_14/forward_lstm_14/while/add_1AddV2Zbidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_while_loop_counter7bidirectional_14/forward_lstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: ¼
/bidirectional_14/forward_lstm_14/while/IdentityIdentity0bidirectional_14/forward_lstm_14/while/add_1:z:0,^bidirectional_14/forward_lstm_14/while/NoOp*
T0*
_output_shapes
: ī
1bidirectional_14/forward_lstm_14/while/Identity_1Identity`bidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_while_maximum_iterations,^bidirectional_14/forward_lstm_14/while/NoOp*
T0*
_output_shapes
: ¼
1bidirectional_14/forward_lstm_14/while/Identity_2Identity.bidirectional_14/forward_lstm_14/while/add:z:0,^bidirectional_14/forward_lstm_14/while/NoOp*
T0*
_output_shapes
: é
1bidirectional_14/forward_lstm_14/while/Identity_3Identity[bidirectional_14/forward_lstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^bidirectional_14/forward_lstm_14/while/NoOp*
T0*
_output_shapes
: Ż
1bidirectional_14/forward_lstm_14/while/Identity_4Identity=bidirectional_14/forward_lstm_14/while/lstm_cell_94/mul_2:z:0,^bidirectional_14/forward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ż
1bidirectional_14/forward_lstm_14/while/Identity_5Identity=bidirectional_14/forward_lstm_14/while/lstm_cell_94/add_1:z:0,^bidirectional_14/forward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ō
+bidirectional_14/forward_lstm_14/while/NoOpNoOpK^bidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOpJ^bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOpL^bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "“
Wbidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_strided_slice_1Ybidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_strided_slice_1_0"k
/bidirectional_14_forward_lstm_14_while_identity8bidirectional_14/forward_lstm_14/while/Identity:output:0"o
1bidirectional_14_forward_lstm_14_while_identity_1:bidirectional_14/forward_lstm_14/while/Identity_1:output:0"o
1bidirectional_14_forward_lstm_14_while_identity_2:bidirectional_14/forward_lstm_14/while/Identity_2:output:0"o
1bidirectional_14_forward_lstm_14_while_identity_3:bidirectional_14/forward_lstm_14/while/Identity_3:output:0"o
1bidirectional_14_forward_lstm_14_while_identity_4:bidirectional_14/forward_lstm_14/while/Identity_4:output:0"o
1bidirectional_14_forward_lstm_14_while_identity_5:bidirectional_14/forward_lstm_14/while/Identity_5:output:0"¬
Sbidirectional_14_forward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resourceUbidirectional_14_forward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0"®
Tbidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resourceVbidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0"Ŗ
Rbidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resourceTbidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0"®
bidirectional_14_forward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_bidirectional_14_forward_lstm_14_tensorarrayunstack_tensorlistfromtensorbidirectional_14_forward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_bidirectional_14_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2
Jbidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOpJbidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp2
Ibidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOpIbidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp2
Kbidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOpKbidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp: 
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
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1558263

inputs*
forward_lstm_14_1558099:	+
forward_lstm_14_1558101:
&
forward_lstm_14_1558103:	+
backward_lstm_14_1558253:	,
backward_lstm_14_1558255:
'
backward_lstm_14_1558257:	
identity¢(backward_lstm_14/StatefulPartitionedCall¢'forward_lstm_14/StatefulPartitionedCall®
'forward_lstm_14/StatefulPartitionedCallStatefulPartitionedCallinputsforward_lstm_14_1558099forward_lstm_14_1558101forward_lstm_14_1558103*
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
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1558098³
(backward_lstm_14/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_lstm_14_1558253backward_lstm_14_1558255backward_lstm_14_1558257*
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
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1558252M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :É
concatConcatV20forward_lstm_14/StatefulPartitionedCall:output:01backward_lstm_14/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp)^backward_lstm_14/StatefulPartitionedCall(^forward_lstm_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : : : : 2T
(backward_lstm_14/StatefulPartitionedCall(backward_lstm_14/StatefulPartitionedCall2R
'forward_lstm_14/StatefulPartitionedCall'forward_lstm_14/StatefulPartitionedCall:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
Ó
b
F__inference_lambda_14_layer_call_and_return_conditional_losses_1560171

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
while_cond_1557509
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1557509___redundant_placeholder05
1while_while_cond_1557509___redundant_placeholder15
1while_while_cond_1557509___redundant_placeholder25
1while_while_cond_1557509___redundant_placeholder3
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
ÖM
ó
#backward_lstm_14_while_body_1558868>
:backward_lstm_14_while_backward_lstm_14_while_loop_counterD
@backward_lstm_14_while_backward_lstm_14_while_maximum_iterations&
"backward_lstm_14_while_placeholder(
$backward_lstm_14_while_placeholder_1(
$backward_lstm_14_while_placeholder_2(
$backward_lstm_14_while_placeholder_3=
9backward_lstm_14_while_backward_lstm_14_strided_slice_1_0y
ubackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0W
Dbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0:	Z
Fbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0:
T
Ebackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0:	#
backward_lstm_14_while_identity%
!backward_lstm_14_while_identity_1%
!backward_lstm_14_while_identity_2%
!backward_lstm_14_while_identity_3%
!backward_lstm_14_while_identity_4%
!backward_lstm_14_while_identity_5;
7backward_lstm_14_while_backward_lstm_14_strided_slice_1w
sbackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensorU
Bbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource:	X
Dbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource:
R
Cbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource:	¢:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp¢9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp¢;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp
Hbackward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ū
:backward_lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_14_while_placeholderQbackward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0æ
9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOpReadVariableOpDbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ķ
*backward_lstm_14/while/lstm_cell_95/MatMulMatMulAbackward_lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0Abackward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ä
;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOpFbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ō
,backward_lstm_14/while/lstm_cell_95/MatMul_1MatMul$backward_lstm_14_while_placeholder_2Cbackward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ń
'backward_lstm_14/while/lstm_cell_95/addAddV24backward_lstm_14/while/lstm_cell_95/MatMul:product:06backward_lstm_14/while/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’½
:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOpEbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ś
+backward_lstm_14/while/lstm_cell_95/BiasAddBiasAdd+backward_lstm_14/while/lstm_cell_95/add:z:0Bbackward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’u
3backward_lstm_14/while/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¦
)backward_lstm_14/while/lstm_cell_95/splitSplit<backward_lstm_14/while/lstm_cell_95/split/split_dim:output:04backward_lstm_14/while/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
+backward_lstm_14/while/lstm_cell_95/SigmoidSigmoid2backward_lstm_14/while/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
-backward_lstm_14/while/lstm_cell_95/Sigmoid_1Sigmoid2backward_lstm_14/while/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’ŗ
'backward_lstm_14/while/lstm_cell_95/mulMul1backward_lstm_14/while/lstm_cell_95/Sigmoid_1:y:0$backward_lstm_14_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
(backward_lstm_14/while/lstm_cell_95/ReluRelu2backward_lstm_14/while/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ģ
)backward_lstm_14/while/lstm_cell_95/mul_1Mul/backward_lstm_14/while/lstm_cell_95/Sigmoid:y:06backward_lstm_14/while/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Į
)backward_lstm_14/while/lstm_cell_95/add_1AddV2+backward_lstm_14/while/lstm_cell_95/mul:z:0-backward_lstm_14/while/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
-backward_lstm_14/while/lstm_cell_95/Sigmoid_2Sigmoid2backward_lstm_14/while/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
*backward_lstm_14/while/lstm_cell_95/Relu_1Relu-backward_lstm_14/while/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Š
)backward_lstm_14/while/lstm_cell_95/mul_2Mul1backward_lstm_14/while/lstm_cell_95/Sigmoid_2:y:08backward_lstm_14/while/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Abackward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ±
;backward_lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_14_while_placeholder_1Jbackward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/index:output:0-backward_lstm_14/while/lstm_cell_95/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ^
backward_lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_14/while/addAddV2"backward_lstm_14_while_placeholder%backward_lstm_14/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :«
backward_lstm_14/while/add_1AddV2:backward_lstm_14_while_backward_lstm_14_while_loop_counter'backward_lstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_14/while/IdentityIdentity backward_lstm_14/while/add_1:z:0^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ®
!backward_lstm_14/while/Identity_1Identity@backward_lstm_14_while_backward_lstm_14_while_maximum_iterations^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: 
!backward_lstm_14/while/Identity_2Identitybackward_lstm_14/while/add:z:0^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ¹
!backward_lstm_14/while/Identity_3IdentityKbackward_lstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ­
!backward_lstm_14/while/Identity_4Identity-backward_lstm_14/while/lstm_cell_95/mul_2:z:0^backward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’­
!backward_lstm_14/while/Identity_5Identity-backward_lstm_14/while/lstm_cell_95/add_1:z:0^backward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
backward_lstm_14/while/NoOpNoOp;^backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp:^backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp<^backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "t
7backward_lstm_14_while_backward_lstm_14_strided_slice_19backward_lstm_14_while_backward_lstm_14_strided_slice_1_0"K
backward_lstm_14_while_identity(backward_lstm_14/while/Identity:output:0"O
!backward_lstm_14_while_identity_1*backward_lstm_14/while/Identity_1:output:0"O
!backward_lstm_14_while_identity_2*backward_lstm_14/while/Identity_2:output:0"O
!backward_lstm_14_while_identity_3*backward_lstm_14/while/Identity_3:output:0"O
!backward_lstm_14_while_identity_4*backward_lstm_14/while/Identity_4:output:0"O
!backward_lstm_14_while_identity_5*backward_lstm_14/while/Identity_5:output:0"
Cbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resourceEbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0"
Dbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resourceFbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0"
Bbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resourceDbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0"ģ
sbackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensorubackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2x
:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp2v
9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp2z
;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp: 
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
ū
ų
.__inference_lstm_cell_94_layer_call_fn_1562714

inputs
states_0
states_1
unknown:	
	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCallÆ
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
GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_94_layer_call_and_return_conditional_losses_1557450p
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
Ą
Ē
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1561115

inputsN
;forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource:	Q
=forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource:
K
<forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource:	O
<backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource:	R
>backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource:
L
=backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource:	
identity¢4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp¢3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp¢5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp¢backward_lstm_14/while¢3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp¢2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp¢4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp¢forward_lstm_14/whileK
forward_lstm_14/ShapeShapeinputs*
T0*
_output_shapes
:m
#forward_lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_14/strided_sliceStridedSliceforward_lstm_14/Shape:output:0,forward_lstm_14/strided_slice/stack:output:0.forward_lstm_14/strided_slice/stack_1:output:0.forward_lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
forward_lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :£
forward_lstm_14/zeros/packedPack&forward_lstm_14/strided_slice:output:0'forward_lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_14/zerosFill%forward_lstm_14/zeros/packed:output:0$forward_lstm_14/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
 forward_lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :§
forward_lstm_14/zeros_1/packedPack&forward_lstm_14/strided_slice:output:0)forward_lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
forward_lstm_14/zeros_1Fill'forward_lstm_14/zeros_1/packed:output:0&forward_lstm_14/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
forward_lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm_14/transpose	Transposeinputs'forward_lstm_14/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d
forward_lstm_14/Shape_1Shapeforward_lstm_14/transpose:y:0*
T0*
_output_shapes
:o
%forward_lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
forward_lstm_14/strided_slice_1StridedSlice forward_lstm_14/Shape_1:output:0.forward_lstm_14/strided_slice_1/stack:output:00forward_lstm_14/strided_slice_1/stack_1:output:00forward_lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ä
forward_lstm_14/TensorArrayV2TensorListReserve4forward_lstm_14/TensorArrayV2/element_shape:output:0(forward_lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Eforward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
7forward_lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_14/transpose:y:0Nforward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅo
%forward_lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¹
forward_lstm_14/strided_slice_2StridedSliceforward_lstm_14/transpose:y:0.forward_lstm_14/strided_slice_2/stack:output:00forward_lstm_14/strided_slice_2/stack_1:output:00forward_lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_maskÆ
2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOpReadVariableOp;forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ę
#forward_lstm_14/lstm_cell_94/MatMulMatMul(forward_lstm_14/strided_slice_2:output:0:forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’“
4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOp=forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ą
%forward_lstm_14/lstm_cell_94/MatMul_1MatMulforward_lstm_14/zeros:output:0<forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¼
 forward_lstm_14/lstm_cell_94/addAddV2-forward_lstm_14/lstm_cell_94/MatMul:product:0/forward_lstm_14/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’­
3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOp<forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Å
$forward_lstm_14/lstm_cell_94/BiasAddBiasAdd$forward_lstm_14/lstm_cell_94/add:z:0;forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’n
,forward_lstm_14/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
"forward_lstm_14/lstm_cell_94/splitSplit5forward_lstm_14/lstm_cell_94/split/split_dim:output:0-forward_lstm_14/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
$forward_lstm_14/lstm_cell_94/SigmoidSigmoid+forward_lstm_14/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
&forward_lstm_14/lstm_cell_94/Sigmoid_1Sigmoid+forward_lstm_14/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ø
 forward_lstm_14/lstm_cell_94/mulMul*forward_lstm_14/lstm_cell_94/Sigmoid_1:y:0 forward_lstm_14/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
!forward_lstm_14/lstm_cell_94/ReluRelu+forward_lstm_14/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’·
"forward_lstm_14/lstm_cell_94/mul_1Mul(forward_lstm_14/lstm_cell_94/Sigmoid:y:0/forward_lstm_14/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¬
"forward_lstm_14/lstm_cell_94/add_1AddV2$forward_lstm_14/lstm_cell_94/mul:z:0&forward_lstm_14/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
&forward_lstm_14/lstm_cell_94/Sigmoid_2Sigmoid+forward_lstm_14/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
#forward_lstm_14/lstm_cell_94/Relu_1Relu&forward_lstm_14/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’»
"forward_lstm_14/lstm_cell_94/mul_2Mul*forward_lstm_14/lstm_cell_94/Sigmoid_2:y:01forward_lstm_14/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’~
-forward_lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   n
,forward_lstm_14/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :õ
forward_lstm_14/TensorArrayV2_1TensorListReserve6forward_lstm_14/TensorArrayV2_1/element_shape:output:05forward_lstm_14/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅV
forward_lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’d
"forward_lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : č
forward_lstm_14/whileWhile+forward_lstm_14/while/loop_counter:output:01forward_lstm_14/while/maximum_iterations:output:0forward_lstm_14/time:output:0(forward_lstm_14/TensorArrayV2_1:handle:0forward_lstm_14/zeros:output:0 forward_lstm_14/zeros_1:output:0(forward_lstm_14/strided_slice_1:output:0Gforward_lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0;forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource=forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource<forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource*
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
"forward_lstm_14_while_body_1560885*.
cond&R$
"forward_lstm_14_while_cond_1560884*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
@forward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
2forward_lstm_14/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_14/while:output:3Iforward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsx
%forward_lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’q
'forward_lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ų
forward_lstm_14/strided_slice_3StridedSlice;forward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_14/strided_slice_3/stack:output:00forward_lstm_14/strided_slice_3/stack_1:output:00forward_lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_masku
 forward_lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ē
forward_lstm_14/transpose_1	Transpose;forward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_14/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’k
forward_lstm_14/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    L
backward_lstm_14/ShapeShapeinputs*
T0*
_output_shapes
:n
$backward_lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
backward_lstm_14/strided_sliceStridedSlicebackward_lstm_14/Shape:output:0-backward_lstm_14/strided_slice/stack:output:0/backward_lstm_14/strided_slice/stack_1:output:0/backward_lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
backward_lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :¦
backward_lstm_14/zeros/packedPack'backward_lstm_14/strided_slice:output:0(backward_lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
backward_lstm_14/zerosFill&backward_lstm_14/zeros/packed:output:0%backward_lstm_14/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’d
!backward_lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ŗ
backward_lstm_14/zeros_1/packedPack'backward_lstm_14/strided_slice:output:0*backward_lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¦
backward_lstm_14/zeros_1Fill(backward_lstm_14/zeros_1/packed:output:0'backward_lstm_14/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’t
backward_lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
backward_lstm_14/transpose	Transposeinputs(backward_lstm_14/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’f
backward_lstm_14/Shape_1Shapebackward_lstm_14/transpose:y:0*
T0*
_output_shapes
:p
&backward_lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 backward_lstm_14/strided_slice_1StridedSlice!backward_lstm_14/Shape_1:output:0/backward_lstm_14/strided_slice_1/stack:output:01backward_lstm_14/strided_slice_1/stack_1:output:01backward_lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ē
backward_lstm_14/TensorArrayV2TensorListReserve5backward_lstm_14/TensorArrayV2/element_shape:output:0)backward_lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅi
backward_lstm_14/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: §
backward_lstm_14/ReverseV2	ReverseV2backward_lstm_14/transpose:y:0(backward_lstm_14/ReverseV2/axis:output:0*
T0*+
_output_shapes
:’’’’’’’’’
Fbackward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
8backward_lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_14/ReverseV2:output:0Obackward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅp
&backward_lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¾
 backward_lstm_14/strided_slice_2StridedSlicebackward_lstm_14/transpose:y:0/backward_lstm_14/strided_slice_2/stack:output:01backward_lstm_14/strided_slice_2/stack_1:output:01backward_lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask±
3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOpReadVariableOp<backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0É
$backward_lstm_14/lstm_cell_95/MatMulMatMul)backward_lstm_14/strided_slice_2:output:0;backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¶
5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOp>backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ć
&backward_lstm_14/lstm_cell_95/MatMul_1MatMulbackward_lstm_14/zeros:output:0=backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’æ
!backward_lstm_14/lstm_cell_95/addAddV2.backward_lstm_14/lstm_cell_95/MatMul:product:00backward_lstm_14/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOp=backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Č
%backward_lstm_14/lstm_cell_95/BiasAddBiasAdd%backward_lstm_14/lstm_cell_95/add:z:0<backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’o
-backward_lstm_14/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
#backward_lstm_14/lstm_cell_95/splitSplit6backward_lstm_14/lstm_cell_95/split/split_dim:output:0.backward_lstm_14/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
%backward_lstm_14/lstm_cell_95/SigmoidSigmoid,backward_lstm_14/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
'backward_lstm_14/lstm_cell_95/Sigmoid_1Sigmoid,backward_lstm_14/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’«
!backward_lstm_14/lstm_cell_95/mulMul+backward_lstm_14/lstm_cell_95/Sigmoid_1:y:0!backward_lstm_14/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
"backward_lstm_14/lstm_cell_95/ReluRelu,backward_lstm_14/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ŗ
#backward_lstm_14/lstm_cell_95/mul_1Mul)backward_lstm_14/lstm_cell_95/Sigmoid:y:00backward_lstm_14/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
#backward_lstm_14/lstm_cell_95/add_1AddV2%backward_lstm_14/lstm_cell_95/mul:z:0'backward_lstm_14/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
'backward_lstm_14/lstm_cell_95/Sigmoid_2Sigmoid,backward_lstm_14/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
$backward_lstm_14/lstm_cell_95/Relu_1Relu'backward_lstm_14/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’¾
#backward_lstm_14/lstm_cell_95/mul_2Mul+backward_lstm_14/lstm_cell_95/Sigmoid_2:y:02backward_lstm_14/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
.backward_lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   o
-backward_lstm_14/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ų
 backward_lstm_14/TensorArrayV2_1TensorListReserve7backward_lstm_14/TensorArrayV2_1/element_shape:output:06backward_lstm_14/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅW
backward_lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’e
#backward_lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ö
backward_lstm_14/whileWhile,backward_lstm_14/while/loop_counter:output:02backward_lstm_14/while/maximum_iterations:output:0backward_lstm_14/time:output:0)backward_lstm_14/TensorArrayV2_1:handle:0backward_lstm_14/zeros:output:0!backward_lstm_14/zeros_1:output:0)backward_lstm_14/strided_slice_1:output:0Hbackward_lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0<backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource>backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource=backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource*
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
#backward_lstm_14_while_body_1561028*/
cond'R%
#backward_lstm_14_while_cond_1561027*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
Abackward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
3backward_lstm_14/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_14/while:output:3Jbackward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsy
&backward_lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’r
(backward_lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ż
 backward_lstm_14/strided_slice_3StridedSlice<backward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_14/strided_slice_3/stack:output:01backward_lstm_14/strided_slice_3/stack_1:output:01backward_lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maskv
!backward_lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ź
backward_lstm_14/transpose_1	Transpose<backward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_14/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’l
backward_lstm_14/runtimeConst"/device:CPU:0*
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
concatConcatV2(forward_lstm_14/strided_slice_3:output:0)backward_lstm_14/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’¾
NoOpNoOp5^backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp4^backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp6^backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp^backward_lstm_14/while4^forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp3^forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp5^forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp^forward_lstm_14/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : 2l
4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp2j
3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp2n
5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp20
backward_lstm_14/whilebackward_lstm_14/while2j
3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp2h
2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp2l
4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp2.
forward_lstm_14/whileforward_lstm_14/while:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
õ

a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_1560155

inputs_
Lbidirectional_14_forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource:	b
Nbidirectional_14_forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource:
\
Mbidirectional_14_forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource:	`
Mbidirectional_14_backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource:	c
Obidirectional_14_backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource:
]
Nbidirectional_14_backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource:	:
'dense_14_matmul_readvariableop_resource:	6
(dense_14_biasadd_readvariableop_resource:
identity¢Ebidirectional_14/backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp¢Dbidirectional_14/backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp¢Fbidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp¢'bidirectional_14/backward_lstm_14/while¢Dbidirectional_14/forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp¢Cbidirectional_14/forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp¢Ebidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp¢&bidirectional_14/forward_lstm_14/while¢dense_14/BiasAdd/ReadVariableOp¢dense_14/MatMul/ReadVariableOpc
lambda_14/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
lambda_14/ExpandDims
ExpandDimsinputs!lambda_14/ExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’s
&bidirectional_14/forward_lstm_14/ShapeShapelambda_14/ExpandDims:output:0*
T0*
_output_shapes
:~
4bidirectional_14/forward_lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6bidirectional_14/forward_lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6bidirectional_14/forward_lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ö
.bidirectional_14/forward_lstm_14/strided_sliceStridedSlice/bidirectional_14/forward_lstm_14/Shape:output:0=bidirectional_14/forward_lstm_14/strided_slice/stack:output:0?bidirectional_14/forward_lstm_14/strided_slice/stack_1:output:0?bidirectional_14/forward_lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
/bidirectional_14/forward_lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ö
-bidirectional_14/forward_lstm_14/zeros/packedPack7bidirectional_14/forward_lstm_14/strided_slice:output:08bidirectional_14/forward_lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:q
,bidirectional_14/forward_lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Š
&bidirectional_14/forward_lstm_14/zerosFill6bidirectional_14/forward_lstm_14/zeros/packed:output:05bidirectional_14/forward_lstm_14/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’t
1bidirectional_14/forward_lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ś
/bidirectional_14/forward_lstm_14/zeros_1/packedPack7bidirectional_14/forward_lstm_14/strided_slice:output:0:bidirectional_14/forward_lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:s
.bidirectional_14/forward_lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ö
(bidirectional_14/forward_lstm_14/zeros_1Fill8bidirectional_14/forward_lstm_14/zeros_1/packed:output:07bidirectional_14/forward_lstm_14/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’
/bidirectional_14/forward_lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ę
*bidirectional_14/forward_lstm_14/transpose	Transposelambda_14/ExpandDims:output:08bidirectional_14/forward_lstm_14/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’
(bidirectional_14/forward_lstm_14/Shape_1Shape.bidirectional_14/forward_lstm_14/transpose:y:0*
T0*
_output_shapes
:
6bidirectional_14/forward_lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8bidirectional_14/forward_lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8bidirectional_14/forward_lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
0bidirectional_14/forward_lstm_14/strided_slice_1StridedSlice1bidirectional_14/forward_lstm_14/Shape_1:output:0?bidirectional_14/forward_lstm_14/strided_slice_1/stack:output:0Abidirectional_14/forward_lstm_14/strided_slice_1/stack_1:output:0Abidirectional_14/forward_lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
<bidirectional_14/forward_lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
.bidirectional_14/forward_lstm_14/TensorArrayV2TensorListReserveEbidirectional_14/forward_lstm_14/TensorArrayV2/element_shape:output:09bidirectional_14/forward_lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ§
Vbidirectional_14/forward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ć
Hbidirectional_14/forward_lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor.bidirectional_14/forward_lstm_14/transpose:y:0_bidirectional_14/forward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
6bidirectional_14/forward_lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8bidirectional_14/forward_lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8bidirectional_14/forward_lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
0bidirectional_14/forward_lstm_14/strided_slice_2StridedSlice.bidirectional_14/forward_lstm_14/transpose:y:0?bidirectional_14/forward_lstm_14/strided_slice_2/stack:output:0Abidirectional_14/forward_lstm_14/strided_slice_2/stack_1:output:0Abidirectional_14/forward_lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_maskŃ
Cbidirectional_14/forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOpReadVariableOpLbidirectional_14_forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ł
4bidirectional_14/forward_lstm_14/lstm_cell_94/MatMulMatMul9bidirectional_14/forward_lstm_14/strided_slice_2:output:0Kbidirectional_14/forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ö
Ebidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOpNbidirectional_14_forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0ó
6bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1MatMul/bidirectional_14/forward_lstm_14/zeros:output:0Mbidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ļ
1bidirectional_14/forward_lstm_14/lstm_cell_94/addAddV2>bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul:product:0@bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Ļ
Dbidirectional_14/forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOpMbidirectional_14_forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ų
5bidirectional_14/forward_lstm_14/lstm_cell_94/BiasAddBiasAdd5bidirectional_14/forward_lstm_14/lstm_cell_94/add:z:0Lbidirectional_14/forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
=bidirectional_14/forward_lstm_14/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ä
3bidirectional_14/forward_lstm_14/lstm_cell_94/splitSplitFbidirectional_14/forward_lstm_14/lstm_cell_94/split/split_dim:output:0>bidirectional_14/forward_lstm_14/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split±
5bidirectional_14/forward_lstm_14/lstm_cell_94/SigmoidSigmoid<bidirectional_14/forward_lstm_14/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’³
7bidirectional_14/forward_lstm_14/lstm_cell_94/Sigmoid_1Sigmoid<bidirectional_14/forward_lstm_14/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ū
1bidirectional_14/forward_lstm_14/lstm_cell_94/mulMul;bidirectional_14/forward_lstm_14/lstm_cell_94/Sigmoid_1:y:01bidirectional_14/forward_lstm_14/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’«
2bidirectional_14/forward_lstm_14/lstm_cell_94/ReluRelu<bidirectional_14/forward_lstm_14/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ź
3bidirectional_14/forward_lstm_14/lstm_cell_94/mul_1Mul9bidirectional_14/forward_lstm_14/lstm_cell_94/Sigmoid:y:0@bidirectional_14/forward_lstm_14/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’ß
3bidirectional_14/forward_lstm_14/lstm_cell_94/add_1AddV25bidirectional_14/forward_lstm_14/lstm_cell_94/mul:z:07bidirectional_14/forward_lstm_14/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’³
7bidirectional_14/forward_lstm_14/lstm_cell_94/Sigmoid_2Sigmoid<bidirectional_14/forward_lstm_14/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’Ø
4bidirectional_14/forward_lstm_14/lstm_cell_94/Relu_1Relu7bidirectional_14/forward_lstm_14/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ī
3bidirectional_14/forward_lstm_14/lstm_cell_94/mul_2Mul;bidirectional_14/forward_lstm_14/lstm_cell_94/Sigmoid_2:y:0Bbidirectional_14/forward_lstm_14/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
>bidirectional_14/forward_lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
=bidirectional_14/forward_lstm_14/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ø
0bidirectional_14/forward_lstm_14/TensorArrayV2_1TensorListReserveGbidirectional_14/forward_lstm_14/TensorArrayV2_1/element_shape:output:0Fbidirectional_14/forward_lstm_14/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅg
%bidirectional_14/forward_lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : 
9bidirectional_14/forward_lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’u
3bidirectional_14/forward_lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ö	
&bidirectional_14/forward_lstm_14/whileWhile<bidirectional_14/forward_lstm_14/while/loop_counter:output:0Bbidirectional_14/forward_lstm_14/while/maximum_iterations:output:0.bidirectional_14/forward_lstm_14/time:output:09bidirectional_14/forward_lstm_14/TensorArrayV2_1:handle:0/bidirectional_14/forward_lstm_14/zeros:output:01bidirectional_14/forward_lstm_14/zeros_1:output:09bidirectional_14/forward_lstm_14/strided_slice_1:output:0Xbidirectional_14/forward_lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0Lbidirectional_14_forward_lstm_14_lstm_cell_94_matmul_readvariableop_resourceNbidirectional_14_forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resourceMbidirectional_14_forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource*
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
3bidirectional_14_forward_lstm_14_while_body_1559919*?
cond7R5
3bidirectional_14_forward_lstm_14_while_cond_1559918*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations ¢
Qbidirectional_14/forward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ŗ
Cbidirectional_14/forward_lstm_14/TensorArrayV2Stack/TensorListStackTensorListStack/bidirectional_14/forward_lstm_14/while:output:3Zbidirectional_14/forward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elements
6bidirectional_14/forward_lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
8bidirectional_14/forward_lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
8bidirectional_14/forward_lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:­
0bidirectional_14/forward_lstm_14/strided_slice_3StridedSliceLbidirectional_14/forward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0?bidirectional_14/forward_lstm_14/strided_slice_3/stack:output:0Abidirectional_14/forward_lstm_14/strided_slice_3/stack_1:output:0Abidirectional_14/forward_lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
1bidirectional_14/forward_lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ś
,bidirectional_14/forward_lstm_14/transpose_1	TransposeLbidirectional_14/forward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0:bidirectional_14/forward_lstm_14/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’|
(bidirectional_14/forward_lstm_14/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
'bidirectional_14/backward_lstm_14/ShapeShapelambda_14/ExpandDims:output:0*
T0*
_output_shapes
:
5bidirectional_14/backward_lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
7bidirectional_14/backward_lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7bidirectional_14/backward_lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ū
/bidirectional_14/backward_lstm_14/strided_sliceStridedSlice0bidirectional_14/backward_lstm_14/Shape:output:0>bidirectional_14/backward_lstm_14/strided_slice/stack:output:0@bidirectional_14/backward_lstm_14/strided_slice/stack_1:output:0@bidirectional_14/backward_lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
0bidirectional_14/backward_lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ł
.bidirectional_14/backward_lstm_14/zeros/packedPack8bidirectional_14/backward_lstm_14/strided_slice:output:09bidirectional_14/backward_lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:r
-bidirectional_14/backward_lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ó
'bidirectional_14/backward_lstm_14/zerosFill7bidirectional_14/backward_lstm_14/zeros/packed:output:06bidirectional_14/backward_lstm_14/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’u
2bidirectional_14/backward_lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ż
0bidirectional_14/backward_lstm_14/zeros_1/packedPack8bidirectional_14/backward_lstm_14/strided_slice:output:0;bidirectional_14/backward_lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:t
/bidirectional_14/backward_lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ł
)bidirectional_14/backward_lstm_14/zeros_1Fill9bidirectional_14/backward_lstm_14/zeros_1/packed:output:08bidirectional_14/backward_lstm_14/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’
0bidirectional_14/backward_lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Č
+bidirectional_14/backward_lstm_14/transpose	Transposelambda_14/ExpandDims:output:09bidirectional_14/backward_lstm_14/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’
)bidirectional_14/backward_lstm_14/Shape_1Shape/bidirectional_14/backward_lstm_14/transpose:y:0*
T0*
_output_shapes
:
7bidirectional_14/backward_lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9bidirectional_14/backward_lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9bidirectional_14/backward_lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1bidirectional_14/backward_lstm_14/strided_slice_1StridedSlice2bidirectional_14/backward_lstm_14/Shape_1:output:0@bidirectional_14/backward_lstm_14/strided_slice_1/stack:output:0Bbidirectional_14/backward_lstm_14/strided_slice_1/stack_1:output:0Bbidirectional_14/backward_lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
=bidirectional_14/backward_lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
/bidirectional_14/backward_lstm_14/TensorArrayV2TensorListReserveFbidirectional_14/backward_lstm_14/TensorArrayV2/element_shape:output:0:bidirectional_14/backward_lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅz
0bidirectional_14/backward_lstm_14/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Ś
+bidirectional_14/backward_lstm_14/ReverseV2	ReverseV2/bidirectional_14/backward_lstm_14/transpose:y:09bidirectional_14/backward_lstm_14/ReverseV2/axis:output:0*
T0*+
_output_shapes
:’’’’’’’’’Ø
Wbidirectional_14/backward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ė
Ibidirectional_14/backward_lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor4bidirectional_14/backward_lstm_14/ReverseV2:output:0`bidirectional_14/backward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
7bidirectional_14/backward_lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9bidirectional_14/backward_lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9bidirectional_14/backward_lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1bidirectional_14/backward_lstm_14/strided_slice_2StridedSlice/bidirectional_14/backward_lstm_14/transpose:y:0@bidirectional_14/backward_lstm_14/strided_slice_2/stack:output:0Bbidirectional_14/backward_lstm_14/strided_slice_2/stack_1:output:0Bbidirectional_14/backward_lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_maskÓ
Dbidirectional_14/backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOpReadVariableOpMbidirectional_14_backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ü
5bidirectional_14/backward_lstm_14/lstm_cell_95/MatMulMatMul:bidirectional_14/backward_lstm_14/strided_slice_2:output:0Lbidirectional_14/backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ų
Fbidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOpObidirectional_14_backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0ö
7bidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1MatMul0bidirectional_14/backward_lstm_14/zeros:output:0Nbidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ņ
2bidirectional_14/backward_lstm_14/lstm_cell_95/addAddV2?bidirectional_14/backward_lstm_14/lstm_cell_95/MatMul:product:0Abidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Ń
Ebidirectional_14/backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOpNbidirectional_14_backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ū
6bidirectional_14/backward_lstm_14/lstm_cell_95/BiasAddBiasAdd6bidirectional_14/backward_lstm_14/lstm_cell_95/add:z:0Mbidirectional_14/backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
>bidirectional_14/backward_lstm_14/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ē
4bidirectional_14/backward_lstm_14/lstm_cell_95/splitSplitGbidirectional_14/backward_lstm_14/lstm_cell_95/split/split_dim:output:0?bidirectional_14/backward_lstm_14/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split³
6bidirectional_14/backward_lstm_14/lstm_cell_95/SigmoidSigmoid=bidirectional_14/backward_lstm_14/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’µ
8bidirectional_14/backward_lstm_14/lstm_cell_95/Sigmoid_1Sigmoid=bidirectional_14/backward_lstm_14/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ž
2bidirectional_14/backward_lstm_14/lstm_cell_95/mulMul<bidirectional_14/backward_lstm_14/lstm_cell_95/Sigmoid_1:y:02bidirectional_14/backward_lstm_14/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’­
3bidirectional_14/backward_lstm_14/lstm_cell_95/ReluRelu=bidirectional_14/backward_lstm_14/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ķ
4bidirectional_14/backward_lstm_14/lstm_cell_95/mul_1Mul:bidirectional_14/backward_lstm_14/lstm_cell_95/Sigmoid:y:0Abidirectional_14/backward_lstm_14/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’ā
4bidirectional_14/backward_lstm_14/lstm_cell_95/add_1AddV26bidirectional_14/backward_lstm_14/lstm_cell_95/mul:z:08bidirectional_14/backward_lstm_14/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’µ
8bidirectional_14/backward_lstm_14/lstm_cell_95/Sigmoid_2Sigmoid=bidirectional_14/backward_lstm_14/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
5bidirectional_14/backward_lstm_14/lstm_cell_95/Relu_1Relu8bidirectional_14/backward_lstm_14/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ń
4bidirectional_14/backward_lstm_14/lstm_cell_95/mul_2Mul<bidirectional_14/backward_lstm_14/lstm_cell_95/Sigmoid_2:y:0Cbidirectional_14/backward_lstm_14/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
?bidirectional_14/backward_lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
>bidirectional_14/backward_lstm_14/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :«
1bidirectional_14/backward_lstm_14/TensorArrayV2_1TensorListReserveHbidirectional_14/backward_lstm_14/TensorArrayV2_1/element_shape:output:0Gbidirectional_14/backward_lstm_14/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅh
&bidirectional_14/backward_lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : 
:bidirectional_14/backward_lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’v
4bidirectional_14/backward_lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ä	
'bidirectional_14/backward_lstm_14/whileWhile=bidirectional_14/backward_lstm_14/while/loop_counter:output:0Cbidirectional_14/backward_lstm_14/while/maximum_iterations:output:0/bidirectional_14/backward_lstm_14/time:output:0:bidirectional_14/backward_lstm_14/TensorArrayV2_1:handle:00bidirectional_14/backward_lstm_14/zeros:output:02bidirectional_14/backward_lstm_14/zeros_1:output:0:bidirectional_14/backward_lstm_14/strided_slice_1:output:0Ybidirectional_14/backward_lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0Mbidirectional_14_backward_lstm_14_lstm_cell_95_matmul_readvariableop_resourceObidirectional_14_backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resourceNbidirectional_14_backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource*
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
4bidirectional_14_backward_lstm_14_while_body_1560062*@
cond8R6
4bidirectional_14_backward_lstm_14_while_cond_1560061*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations £
Rbidirectional_14/backward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ½
Dbidirectional_14/backward_lstm_14/TensorArrayV2Stack/TensorListStackTensorListStack0bidirectional_14/backward_lstm_14/while:output:3[bidirectional_14/backward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elements
7bidirectional_14/backward_lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
9bidirectional_14/backward_lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
9bidirectional_14/backward_lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:²
1bidirectional_14/backward_lstm_14/strided_slice_3StridedSliceMbidirectional_14/backward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0@bidirectional_14/backward_lstm_14/strided_slice_3/stack:output:0Bbidirectional_14/backward_lstm_14/strided_slice_3/stack_1:output:0Bbidirectional_14/backward_lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
2bidirectional_14/backward_lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ż
-bidirectional_14/backward_lstm_14/transpose_1	TransposeMbidirectional_14/backward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0;bidirectional_14/backward_lstm_14/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’}
)bidirectional_14/backward_lstm_14/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ^
bidirectional_14/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ż
bidirectional_14/concatConcatV29bidirectional_14/forward_lstm_14/strided_slice_3:output:0:bidirectional_14/backward_lstm_14/strided_slice_3:output:0%bidirectional_14/concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_14/MatMulMatMul bidirectional_14/concat:output:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’h
IdentityIdentitydense_14/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
NoOpNoOpF^bidirectional_14/backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOpE^bidirectional_14/backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOpG^bidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp(^bidirectional_14/backward_lstm_14/whileE^bidirectional_14/forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOpD^bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOpF^bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp'^bidirectional_14/forward_lstm_14/while ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 2
Ebidirectional_14/backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOpEbidirectional_14/backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp2
Dbidirectional_14/backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOpDbidirectional_14/backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp2
Fbidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOpFbidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp2R
'bidirectional_14/backward_lstm_14/while'bidirectional_14/backward_lstm_14/while2
Dbidirectional_14/forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOpDbidirectional_14/forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp2
Cbidirectional_14/forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOpCbidirectional_14/forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp2
Ebidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOpEbidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp2P
&bidirectional_14/forward_lstm_14/while&bidirectional_14/forward_lstm_14/while2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs


#backward_lstm_14_while_cond_1558867>
:backward_lstm_14_while_backward_lstm_14_while_loop_counterD
@backward_lstm_14_while_backward_lstm_14_while_maximum_iterations&
"backward_lstm_14_while_placeholder(
$backward_lstm_14_while_placeholder_1(
$backward_lstm_14_while_placeholder_2(
$backward_lstm_14_while_placeholder_3@
<backward_lstm_14_while_less_backward_lstm_14_strided_slice_1W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1558867___redundant_placeholder0W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1558867___redundant_placeholder1W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1558867___redundant_placeholder2W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1558867___redundant_placeholder3#
backward_lstm_14_while_identity
¦
backward_lstm_14/while/LessLess"backward_lstm_14_while_placeholder<backward_lstm_14_while_less_backward_lstm_14_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_14/while/IdentityIdentitybackward_lstm_14/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_14_while_identity(backward_lstm_14/while/Identity:output:0*(
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
Č9
Ó
while_body_1558520
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_94_matmul_readvariableop_resource_0:	I
5while_lstm_cell_94_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_94_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_94_matmul_readvariableop_resource:	G
3while_lstm_cell_94_matmul_1_readvariableop_resource:
A
2while_lstm_cell_94_biasadd_readvariableop_resource:	¢)while/lstm_cell_94/BiasAdd/ReadVariableOp¢(while/lstm_cell_94/MatMul/ReadVariableOp¢*while/lstm_cell_94/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
(while/lstm_cell_94/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_94_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_94/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_94_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_94/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/addAddV2#while/lstm_cell_94/MatMul:product:0%while/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_94_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_94/BiasAddBiasAddwhile/lstm_cell_94/add:z:01while/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_94/splitSplit+while/lstm_cell_94/split/split_dim:output:0#while/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_94/SigmoidSigmoid!while/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_94/Sigmoid_1Sigmoid!while/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/mulMul while/lstm_cell_94/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_94/ReluRelu!while/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/mul_1Mulwhile/lstm_cell_94/Sigmoid:y:0%while/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/add_1AddV2while/lstm_cell_94/mul:z:0while/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_94/Sigmoid_2Sigmoid!while/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_94/Relu_1Reluwhile/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/mul_2Mul while/lstm_cell_94/Sigmoid_2:y:0'while/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_94/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_94/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_94/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_94/BiasAdd/ReadVariableOp)^while/lstm_cell_94/MatMul/ReadVariableOp+^while/lstm_cell_94/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_94_biasadd_readvariableop_resource4while_lstm_cell_94_biasadd_readvariableop_resource_0"l
3while_lstm_cell_94_matmul_1_readvariableop_resource5while_lstm_cell_94_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_94_matmul_readvariableop_resource3while_lstm_cell_94_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_94/BiasAdd/ReadVariableOp)while/lstm_cell_94/BiasAdd/ReadVariableOp2T
(while/lstm_cell_94/MatMul/ReadVariableOp(while/lstm_cell_94/MatMul/ReadVariableOp2X
*while/lstm_cell_94/MatMul_1/ReadVariableOp*while/lstm_cell_94/MatMul_1/ReadVariableOp: 
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
while_cond_1558012
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1558012___redundant_placeholder05
1while_while_cond_1558012___redundant_placeholder15
1while_while_cond_1558012___redundant_placeholder25
1while_while_cond_1558012___redundant_placeholder3
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
§
Į
1__inference_forward_lstm_14_layer_call_fn_1561435
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
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1557387p
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
¾
Č
while_cond_1557316
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1557316___redundant_placeholder05
1while_while_cond_1557316___redundant_placeholder15
1while_while_cond_1557316___redundant_placeholder25
1while_while_cond_1557316___redundant_placeholder3
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
ģ

I__inference_lstm_cell_95_layer_call_and_return_conditional_losses_1557806

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
L
„
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1562048

inputs>
+lstm_cell_94_matmul_readvariableop_resource:	A
-lstm_cell_94_matmul_1_readvariableop_resource:
;
,lstm_cell_94_biasadd_readvariableop_resource:	
identity¢#lstm_cell_94/BiasAdd/ReadVariableOp¢"lstm_cell_94/MatMul/ReadVariableOp¢$lstm_cell_94/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
"lstm_cell_94/MatMul/ReadVariableOpReadVariableOp+lstm_cell_94_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_94/MatMulMatMulstrided_slice_2:output:0*lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_94_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_94/MatMul_1MatMulzeros:output:0,lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_94/addAddV2lstm_cell_94/MatMul:product:0lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_94_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_94/BiasAddBiasAddlstm_cell_94/add:z:0+lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_94/splitSplit%lstm_cell_94/split/split_dim:output:0lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_94/SigmoidSigmoidlstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_94/Sigmoid_1Sigmoidlstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_94/mulMullstm_cell_94/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_94/ReluRelulstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_94/mul_1Mullstm_cell_94/Sigmoid:y:0lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_94/add_1AddV2lstm_cell_94/mul:z:0lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_94/Sigmoid_2Sigmoidlstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_94/Relu_1Relulstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_94/mul_2Mullstm_cell_94/Sigmoid_2:y:0!lstm_cell_94/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_94_matmul_readvariableop_resource-lstm_cell_94_matmul_1_readvariableop_resource,lstm_cell_94_biasadd_readvariableop_resource*
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
while_body_1561963*
condR
while_cond_1561962*M
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
:’’’’’’’’’Ą
NoOpNoOp$^lstm_cell_94/BiasAdd/ReadVariableOp#^lstm_cell_94/MatMul/ReadVariableOp%^lstm_cell_94/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_94/BiasAdd/ReadVariableOp#lstm_cell_94/BiasAdd/ReadVariableOp2H
"lstm_cell_94/MatMul/ReadVariableOp"lstm_cell_94/MatMul/ReadVariableOp2L
$lstm_cell_94/MatMul_1/ReadVariableOp$lstm_cell_94/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
ßM
ó
#backward_lstm_14_while_body_1560738>
:backward_lstm_14_while_backward_lstm_14_while_loop_counterD
@backward_lstm_14_while_backward_lstm_14_while_maximum_iterations&
"backward_lstm_14_while_placeholder(
$backward_lstm_14_while_placeholder_1(
$backward_lstm_14_while_placeholder_2(
$backward_lstm_14_while_placeholder_3=
9backward_lstm_14_while_backward_lstm_14_strided_slice_1_0y
ubackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0W
Dbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0:	Z
Fbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0:
T
Ebackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0:	#
backward_lstm_14_while_identity%
!backward_lstm_14_while_identity_1%
!backward_lstm_14_while_identity_2%
!backward_lstm_14_while_identity_3%
!backward_lstm_14_while_identity_4%
!backward_lstm_14_while_identity_5;
7backward_lstm_14_while_backward_lstm_14_strided_slice_1w
sbackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensorU
Bbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource:	X
Dbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource:
R
Cbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource:	¢:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp¢9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp¢;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp
Hbackward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’
:backward_lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_14_while_placeholderQbackward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0æ
9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOpReadVariableOpDbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ķ
*backward_lstm_14/while/lstm_cell_95/MatMulMatMulAbackward_lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0Abackward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ä
;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOpFbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ō
,backward_lstm_14/while/lstm_cell_95/MatMul_1MatMul$backward_lstm_14_while_placeholder_2Cbackward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ń
'backward_lstm_14/while/lstm_cell_95/addAddV24backward_lstm_14/while/lstm_cell_95/MatMul:product:06backward_lstm_14/while/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’½
:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOpEbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ś
+backward_lstm_14/while/lstm_cell_95/BiasAddBiasAdd+backward_lstm_14/while/lstm_cell_95/add:z:0Bbackward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’u
3backward_lstm_14/while/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¦
)backward_lstm_14/while/lstm_cell_95/splitSplit<backward_lstm_14/while/lstm_cell_95/split/split_dim:output:04backward_lstm_14/while/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
+backward_lstm_14/while/lstm_cell_95/SigmoidSigmoid2backward_lstm_14/while/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
-backward_lstm_14/while/lstm_cell_95/Sigmoid_1Sigmoid2backward_lstm_14/while/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’ŗ
'backward_lstm_14/while/lstm_cell_95/mulMul1backward_lstm_14/while/lstm_cell_95/Sigmoid_1:y:0$backward_lstm_14_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
(backward_lstm_14/while/lstm_cell_95/ReluRelu2backward_lstm_14/while/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ģ
)backward_lstm_14/while/lstm_cell_95/mul_1Mul/backward_lstm_14/while/lstm_cell_95/Sigmoid:y:06backward_lstm_14/while/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Į
)backward_lstm_14/while/lstm_cell_95/add_1AddV2+backward_lstm_14/while/lstm_cell_95/mul:z:0-backward_lstm_14/while/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
-backward_lstm_14/while/lstm_cell_95/Sigmoid_2Sigmoid2backward_lstm_14/while/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
*backward_lstm_14/while/lstm_cell_95/Relu_1Relu-backward_lstm_14/while/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Š
)backward_lstm_14/while/lstm_cell_95/mul_2Mul1backward_lstm_14/while/lstm_cell_95/Sigmoid_2:y:08backward_lstm_14/while/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Abackward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ±
;backward_lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_14_while_placeholder_1Jbackward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/index:output:0-backward_lstm_14/while/lstm_cell_95/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ^
backward_lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_14/while/addAddV2"backward_lstm_14_while_placeholder%backward_lstm_14/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :«
backward_lstm_14/while/add_1AddV2:backward_lstm_14_while_backward_lstm_14_while_loop_counter'backward_lstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_14/while/IdentityIdentity backward_lstm_14/while/add_1:z:0^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ®
!backward_lstm_14/while/Identity_1Identity@backward_lstm_14_while_backward_lstm_14_while_maximum_iterations^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: 
!backward_lstm_14/while/Identity_2Identitybackward_lstm_14/while/add:z:0^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ¹
!backward_lstm_14/while/Identity_3IdentityKbackward_lstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ­
!backward_lstm_14/while/Identity_4Identity-backward_lstm_14/while/lstm_cell_95/mul_2:z:0^backward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’­
!backward_lstm_14/while/Identity_5Identity-backward_lstm_14/while/lstm_cell_95/add_1:z:0^backward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
backward_lstm_14/while/NoOpNoOp;^backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp:^backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp<^backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "t
7backward_lstm_14_while_backward_lstm_14_strided_slice_19backward_lstm_14_while_backward_lstm_14_strided_slice_1_0"K
backward_lstm_14_while_identity(backward_lstm_14/while/Identity:output:0"O
!backward_lstm_14_while_identity_1*backward_lstm_14/while/Identity_1:output:0"O
!backward_lstm_14_while_identity_2*backward_lstm_14/while/Identity_2:output:0"O
!backward_lstm_14_while_identity_3*backward_lstm_14/while/Identity_3:output:0"O
!backward_lstm_14_while_identity_4*backward_lstm_14/while/Identity_4:output:0"O
!backward_lstm_14_while_identity_5*backward_lstm_14/while/Identity_5:output:0"
Cbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resourceEbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0"
Dbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resourceFbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0"
Bbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resourceDbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0"ģ
sbackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensorubackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2x
:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp2v
9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp2z
;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp: 
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
	

2__inference_bidirectional_14_layer_call_fn_1560245

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
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1559324p
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
¾
Č
while_cond_1561527
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1561527___redundant_placeholder05
1while_while_cond_1561527___redundant_placeholder15
1while_while_cond_1561527___redundant_placeholder25
1while_while_cond_1561527___redundant_placeholder3
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


#backward_lstm_14_while_cond_1560447>
:backward_lstm_14_while_backward_lstm_14_while_loop_counterD
@backward_lstm_14_while_backward_lstm_14_while_maximum_iterations&
"backward_lstm_14_while_placeholder(
$backward_lstm_14_while_placeholder_1(
$backward_lstm_14_while_placeholder_2(
$backward_lstm_14_while_placeholder_3@
<backward_lstm_14_while_less_backward_lstm_14_strided_slice_1W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1560447___redundant_placeholder0W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1560447___redundant_placeholder1W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1560447___redundant_placeholder2W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1560447___redundant_placeholder3#
backward_lstm_14_while_identity
¦
backward_lstm_14/while/LessLess"backward_lstm_14_while_placeholder<backward_lstm_14_while_less_backward_lstm_14_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_14/while/IdentityIdentitybackward_lstm_14/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_14_while_identity(backward_lstm_14/while/Identity:output:0*(
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
while_cond_1561962
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1561962___redundant_placeholder05
1while_while_cond_1561962___redundant_placeholder15
1while_while_cond_1561962___redundant_placeholder25
1while_while_cond_1561962___redundant_placeholder3
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


ā
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_1559538

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
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_1558986o
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
Ó
b
F__inference_lambda_14_layer_call_and_return_conditional_losses_1558664

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


ā
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_1559559

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
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_1559402o
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
Į
„
Xmodel_9_bidirectionalLSTM_univariate_bidirectional_14_forward_lstm_14_while_body_1556999©
¤model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_loop_counterÆ
Ŗmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_maximum_iterations[
Wmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_placeholder]
Ymodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_placeholder_1]
Ymodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_placeholder_2]
Ymodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_placeholder_3Ø
£model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_strided_slice_1_0ä
ßmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0
ymodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0:	
{model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0:

zmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0:	X
Tmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_identityZ
Vmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_identity_1Z
Vmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_identity_2Z
Vmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_identity_3Z
Vmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_identity_4Z
Vmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_identity_5¦
”model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_strided_slice_1ā
Żmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor
wmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource:	
ymodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource:

xmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource:	¢omodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp¢nmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp¢pmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOpĪ
}model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
omodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemßmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0Wmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_placeholdermodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0©
nmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOpReadVariableOpymodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0
_model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMulMatMulvmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0vmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’®
pmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOp{model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0ó
amodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1MatMulYmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_placeholder_2xmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’š
\model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/addAddV2imodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul:product:0kmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’§
omodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOpzmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ł
`model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAddBiasAdd`model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/add:z:0wmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
hmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Å
^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/splitSplitqmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/split/split_dim:output:0imodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
`model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/SigmoidSigmoidgmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
bmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/Sigmoid_1Sigmoidgmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ł
\model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/mulMulfmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/Sigmoid_1:y:0Ymodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
]model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/ReluRelugmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ė
^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/mul_1Muldmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/Sigmoid:y:0kmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’ą
^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/add_1AddV2`model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/mul:z:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
bmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/Sigmoid_2Sigmoidgmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’ž
_model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/Relu_1Relubmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ļ
^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/mul_2Mulfmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/Sigmoid_2:y:0mmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’ø
vmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
pmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemYmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_placeholder_1model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/index:output:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :®
Omodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/addAddV2Wmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_placeholderZmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/add/y:output:0*
T0*
_output_shapes
: 
Smodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/add_1AddV2¤model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_loop_counter\model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: «
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/IdentityIdentityUmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/add_1:z:0Q^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/NoOp*
T0*
_output_shapes
: 
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/Identity_1IdentityŖmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_maximum_iterationsQ^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/NoOp*
T0*
_output_shapes
: «
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/Identity_2IdentitySmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/add:z:0Q^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/NoOp*
T0*
_output_shapes
: Ł
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/Identity_3Identitymodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0Q^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/NoOp*
T0*
_output_shapes
: Ģ
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/Identity_4Identitybmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/mul_2:z:0Q^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ģ
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/Identity_5Identitybmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/add_1:z:0Q^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’č
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/NoOpNoOpp^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOpo^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOpq^model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "µ
Tmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_identity]model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/Identity:output:0"¹
Vmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_identity_1_model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/Identity_1:output:0"¹
Vmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_identity_2_model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/Identity_2:output:0"¹
Vmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_identity_3_model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/Identity_3:output:0"¹
Vmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_identity_4_model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/Identity_4:output:0"¹
Vmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_identity_5_model_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/Identity_5:output:0"ö
xmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resourcezmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0"ų
ymodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource{model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0"ō
wmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resourceymodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0"Ź
”model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_strided_slice_1£model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_strided_slice_1_0"Ā
Żmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_tensorarrayunstack_tensorlistfromtensorßmodel_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_14_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2ā
omodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOpomodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp2ą
nmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOpnmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp2ä
pmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOppmodel_9_bidirectionalLSTM_univariate/bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp: 
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
while_cond_1562300
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1562300___redundant_placeholder05
1while_while_cond_1562300___redundant_placeholder15
1while_while_cond_1562300___redundant_placeholder25
1while_while_cond_1562300___redundant_placeholder3
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
Ü
Ü
3bidirectional_14_forward_lstm_14_while_cond_1559620^
Zbidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_while_loop_counterd
`bidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_while_maximum_iterations6
2bidirectional_14_forward_lstm_14_while_placeholder8
4bidirectional_14_forward_lstm_14_while_placeholder_18
4bidirectional_14_forward_lstm_14_while_placeholder_28
4bidirectional_14_forward_lstm_14_while_placeholder_3`
\bidirectional_14_forward_lstm_14_while_less_bidirectional_14_forward_lstm_14_strided_slice_1w
sbidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_while_cond_1559620___redundant_placeholder0w
sbidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_while_cond_1559620___redundant_placeholder1w
sbidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_while_cond_1559620___redundant_placeholder2w
sbidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_while_cond_1559620___redundant_placeholder33
/bidirectional_14_forward_lstm_14_while_identity
ę
+bidirectional_14/forward_lstm_14/while/LessLess2bidirectional_14_forward_lstm_14_while_placeholder\bidirectional_14_forward_lstm_14_while_less_bidirectional_14_forward_lstm_14_strided_slice_1*
T0*
_output_shapes
: 
/bidirectional_14/forward_lstm_14/while/IdentityIdentity/bidirectional_14/forward_lstm_14/while/Less:z:0*
T0
*
_output_shapes
: "k
/bidirectional_14_forward_lstm_14_while_identity8bidirectional_14/forward_lstm_14/while/Identity:output:0*(
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
#backward_lstm_14_while_cond_1561317>
:backward_lstm_14_while_backward_lstm_14_while_loop_counterD
@backward_lstm_14_while_backward_lstm_14_while_maximum_iterations&
"backward_lstm_14_while_placeholder(
$backward_lstm_14_while_placeholder_1(
$backward_lstm_14_while_placeholder_2(
$backward_lstm_14_while_placeholder_3@
<backward_lstm_14_while_less_backward_lstm_14_strided_slice_1W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1561317___redundant_placeholder0W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1561317___redundant_placeholder1W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1561317___redundant_placeholder2W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1561317___redundant_placeholder3#
backward_lstm_14_while_identity
¦
backward_lstm_14/while/LessLess"backward_lstm_14_while_placeholder<backward_lstm_14_while_less_backward_lstm_14_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_14/while/IdentityIdentitybackward_lstm_14/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_14_while_identity(backward_lstm_14/while/Identity:output:0*(
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
ÖM
ó
#backward_lstm_14_while_body_1561318>
:backward_lstm_14_while_backward_lstm_14_while_loop_counterD
@backward_lstm_14_while_backward_lstm_14_while_maximum_iterations&
"backward_lstm_14_while_placeholder(
$backward_lstm_14_while_placeholder_1(
$backward_lstm_14_while_placeholder_2(
$backward_lstm_14_while_placeholder_3=
9backward_lstm_14_while_backward_lstm_14_strided_slice_1_0y
ubackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0W
Dbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0:	Z
Fbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0:
T
Ebackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0:	#
backward_lstm_14_while_identity%
!backward_lstm_14_while_identity_1%
!backward_lstm_14_while_identity_2%
!backward_lstm_14_while_identity_3%
!backward_lstm_14_while_identity_4%
!backward_lstm_14_while_identity_5;
7backward_lstm_14_while_backward_lstm_14_strided_slice_1w
sbackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensorU
Bbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource:	X
Dbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource:
R
Cbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource:	¢:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp¢9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp¢;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp
Hbackward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ū
:backward_lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_14_while_placeholderQbackward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0æ
9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOpReadVariableOpDbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ķ
*backward_lstm_14/while/lstm_cell_95/MatMulMatMulAbackward_lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0Abackward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ä
;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOpFbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ō
,backward_lstm_14/while/lstm_cell_95/MatMul_1MatMul$backward_lstm_14_while_placeholder_2Cbackward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ń
'backward_lstm_14/while/lstm_cell_95/addAddV24backward_lstm_14/while/lstm_cell_95/MatMul:product:06backward_lstm_14/while/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’½
:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOpEbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ś
+backward_lstm_14/while/lstm_cell_95/BiasAddBiasAdd+backward_lstm_14/while/lstm_cell_95/add:z:0Bbackward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’u
3backward_lstm_14/while/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¦
)backward_lstm_14/while/lstm_cell_95/splitSplit<backward_lstm_14/while/lstm_cell_95/split/split_dim:output:04backward_lstm_14/while/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
+backward_lstm_14/while/lstm_cell_95/SigmoidSigmoid2backward_lstm_14/while/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
-backward_lstm_14/while/lstm_cell_95/Sigmoid_1Sigmoid2backward_lstm_14/while/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’ŗ
'backward_lstm_14/while/lstm_cell_95/mulMul1backward_lstm_14/while/lstm_cell_95/Sigmoid_1:y:0$backward_lstm_14_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
(backward_lstm_14/while/lstm_cell_95/ReluRelu2backward_lstm_14/while/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ģ
)backward_lstm_14/while/lstm_cell_95/mul_1Mul/backward_lstm_14/while/lstm_cell_95/Sigmoid:y:06backward_lstm_14/while/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Į
)backward_lstm_14/while/lstm_cell_95/add_1AddV2+backward_lstm_14/while/lstm_cell_95/mul:z:0-backward_lstm_14/while/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
-backward_lstm_14/while/lstm_cell_95/Sigmoid_2Sigmoid2backward_lstm_14/while/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
*backward_lstm_14/while/lstm_cell_95/Relu_1Relu-backward_lstm_14/while/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Š
)backward_lstm_14/while/lstm_cell_95/mul_2Mul1backward_lstm_14/while/lstm_cell_95/Sigmoid_2:y:08backward_lstm_14/while/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Abackward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ±
;backward_lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_14_while_placeholder_1Jbackward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/index:output:0-backward_lstm_14/while/lstm_cell_95/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ^
backward_lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_14/while/addAddV2"backward_lstm_14_while_placeholder%backward_lstm_14/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :«
backward_lstm_14/while/add_1AddV2:backward_lstm_14_while_backward_lstm_14_while_loop_counter'backward_lstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_14/while/IdentityIdentity backward_lstm_14/while/add_1:z:0^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ®
!backward_lstm_14/while/Identity_1Identity@backward_lstm_14_while_backward_lstm_14_while_maximum_iterations^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: 
!backward_lstm_14/while/Identity_2Identitybackward_lstm_14/while/add:z:0^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ¹
!backward_lstm_14/while/Identity_3IdentityKbackward_lstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ­
!backward_lstm_14/while/Identity_4Identity-backward_lstm_14/while/lstm_cell_95/mul_2:z:0^backward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’­
!backward_lstm_14/while/Identity_5Identity-backward_lstm_14/while/lstm_cell_95/add_1:z:0^backward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
backward_lstm_14/while/NoOpNoOp;^backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp:^backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp<^backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "t
7backward_lstm_14_while_backward_lstm_14_strided_slice_19backward_lstm_14_while_backward_lstm_14_strided_slice_1_0"K
backward_lstm_14_while_identity(backward_lstm_14/while/Identity:output:0"O
!backward_lstm_14_while_identity_1*backward_lstm_14/while/Identity_1:output:0"O
!backward_lstm_14_while_identity_2*backward_lstm_14/while/Identity_2:output:0"O
!backward_lstm_14_while_identity_3*backward_lstm_14/while/Identity_3:output:0"O
!backward_lstm_14_while_identity_4*backward_lstm_14/while/Identity_4:output:0"O
!backward_lstm_14_while_identity_5*backward_lstm_14/while/Identity_5:output:0"
Cbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resourceEbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0"
Dbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resourceFbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0"
Bbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resourceDbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0"ģ
sbackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensorubackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2x
:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp2v
9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp2z
;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp: 
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
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1558636

inputs*
forward_lstm_14_1558619:	+
forward_lstm_14_1558621:
&
forward_lstm_14_1558623:	+
backward_lstm_14_1558626:	,
backward_lstm_14_1558628:
'
backward_lstm_14_1558630:	
identity¢(backward_lstm_14/StatefulPartitionedCall¢'forward_lstm_14/StatefulPartitionedCall®
'forward_lstm_14/StatefulPartitionedCallStatefulPartitionedCallinputsforward_lstm_14_1558619forward_lstm_14_1558621forward_lstm_14_1558623*
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
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1558605³
(backward_lstm_14/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_lstm_14_1558626backward_lstm_14_1558628backward_lstm_14_1558630*
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
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1558438M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :É
concatConcatV20forward_lstm_14/StatefulPartitionedCall:output:01backward_lstm_14/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp)^backward_lstm_14/StatefulPartitionedCall(^forward_lstm_14/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : : : : 2T
(backward_lstm_14/StatefulPartitionedCall(backward_lstm_14/StatefulPartitionedCall2R
'forward_lstm_14/StatefulPartitionedCall'forward_lstm_14/StatefulPartitionedCall:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
ģ

I__inference_lstm_cell_94_layer_call_and_return_conditional_losses_1557450

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
÷M
¦
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1558252

inputs>
+lstm_cell_95_matmul_readvariableop_resource:	A
-lstm_cell_95_matmul_1_readvariableop_resource:
;
,lstm_cell_95_biasadd_readvariableop_resource:	
identity¢#lstm_cell_95/BiasAdd/ReadVariableOp¢"lstm_cell_95/MatMul/ReadVariableOp¢$lstm_cell_95/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
"lstm_cell_95/MatMul/ReadVariableOpReadVariableOp+lstm_cell_95_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_95/MatMulMatMulstrided_slice_2:output:0*lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_95_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_95/MatMul_1MatMulzeros:output:0,lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_95/addAddV2lstm_cell_95/MatMul:product:0lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_95_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_95/BiasAddBiasAddlstm_cell_95/add:z:0+lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_95/splitSplit%lstm_cell_95/split/split_dim:output:0lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_95/SigmoidSigmoidlstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_95/Sigmoid_1Sigmoidlstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_95/mulMullstm_cell_95/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_95/ReluRelulstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_95/mul_1Mullstm_cell_95/Sigmoid:y:0lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_95/add_1AddV2lstm_cell_95/mul:z:0lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_95/Sigmoid_2Sigmoidlstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_95/Relu_1Relulstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_95/mul_2Mullstm_cell_95/Sigmoid_2:y:0!lstm_cell_95/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_95_matmul_readvariableop_resource-lstm_cell_95_matmul_1_readvariableop_resource,lstm_cell_95_biasadd_readvariableop_resource*
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
while_body_1558167*
condR
while_cond_1558166*M
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
:’’’’’’’’’Ą
NoOpNoOp$^lstm_cell_95/BiasAdd/ReadVariableOp#^lstm_cell_95/MatMul/ReadVariableOp%^lstm_cell_95/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_95/BiasAdd/ReadVariableOp#lstm_cell_95/BiasAdd/ReadVariableOp2H
"lstm_cell_95/MatMul/ReadVariableOp"lstm_cell_95/MatMul/ReadVariableOp2L
$lstm_cell_95/MatMul_1/ReadVariableOp$lstm_cell_95/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
¾
Č
while_cond_1562153
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1562153___redundant_placeholder05
1while_while_cond_1562153___redundant_placeholder15
1while_while_cond_1562153___redundant_placeholder25
1while_while_cond_1562153___redundant_placeholder3
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
æ9
Ó
while_body_1561673
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_94_matmul_readvariableop_resource_0:	I
5while_lstm_cell_94_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_94_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_94_matmul_readvariableop_resource:	G
3while_lstm_cell_94_matmul_1_readvariableop_resource:
A
2while_lstm_cell_94_biasadd_readvariableop_resource:	¢)while/lstm_cell_94/BiasAdd/ReadVariableOp¢(while/lstm_cell_94/MatMul/ReadVariableOp¢*while/lstm_cell_94/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0
(while/lstm_cell_94/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_94_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_94/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_94_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_94/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/addAddV2#while/lstm_cell_94/MatMul:product:0%while/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_94_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_94/BiasAddBiasAddwhile/lstm_cell_94/add:z:01while/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_94/splitSplit+while/lstm_cell_94/split/split_dim:output:0#while/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_94/SigmoidSigmoid!while/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_94/Sigmoid_1Sigmoid!while/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/mulMul while/lstm_cell_94/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_94/ReluRelu!while/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/mul_1Mulwhile/lstm_cell_94/Sigmoid:y:0%while/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/add_1AddV2while/lstm_cell_94/mul:z:0while/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_94/Sigmoid_2Sigmoid!while/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_94/Relu_1Reluwhile/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/mul_2Mul while/lstm_cell_94/Sigmoid_2:y:0'while/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_94/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_94/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_94/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_94/BiasAdd/ReadVariableOp)^while/lstm_cell_94/MatMul/ReadVariableOp+^while/lstm_cell_94/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_94_biasadd_readvariableop_resource4while_lstm_cell_94_biasadd_readvariableop_resource_0"l
3while_lstm_cell_94_matmul_1_readvariableop_resource5while_lstm_cell_94_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_94_matmul_readvariableop_resource3while_lstm_cell_94_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_94/BiasAdd/ReadVariableOp)while/lstm_cell_94/BiasAdd/ReadVariableOp2T
(while/lstm_cell_94/MatMul/ReadVariableOp(while/lstm_cell_94/MatMul/ReadVariableOp2X
*while/lstm_cell_94/MatMul_1/ReadVariableOp*while/lstm_cell_94/MatMul_1/ReadVariableOp: 
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
ō

I__inference_lstm_cell_94_layer_call_and_return_conditional_losses_1562778

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
ŃM
Ø
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1562239
inputs_0>
+lstm_cell_95_matmul_readvariableop_resource:	A
-lstm_cell_95_matmul_1_readvariableop_resource:
;
,lstm_cell_95_biasadd_readvariableop_resource:	
identity¢#lstm_cell_95/BiasAdd/ReadVariableOp¢"lstm_cell_95/MatMul/ReadVariableOp¢$lstm_cell_95/MatMul_1/ReadVariableOp¢while=
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
shrink_axis_mask
"lstm_cell_95/MatMul/ReadVariableOpReadVariableOp+lstm_cell_95_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_95/MatMulMatMulstrided_slice_2:output:0*lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_95_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_95/MatMul_1MatMulzeros:output:0,lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_95/addAddV2lstm_cell_95/MatMul:product:0lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_95_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_95/BiasAddBiasAddlstm_cell_95/add:z:0+lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_95/splitSplit%lstm_cell_95/split/split_dim:output:0lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_95/SigmoidSigmoidlstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_95/Sigmoid_1Sigmoidlstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_95/mulMullstm_cell_95/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_95/ReluRelulstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_95/mul_1Mullstm_cell_95/Sigmoid:y:0lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_95/add_1AddV2lstm_cell_95/mul:z:0lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_95/Sigmoid_2Sigmoidlstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_95/Relu_1Relulstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_95/mul_2Mullstm_cell_95/Sigmoid_2:y:0!lstm_cell_95/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_95_matmul_readvariableop_resource-lstm_cell_95_matmul_1_readvariableop_resource,lstm_cell_95_biasadd_readvariableop_resource*
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
while_body_1562154*
condR
while_cond_1562153*M
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
:’’’’’’’’’Ą
NoOpNoOp$^lstm_cell_95/BiasAdd/ReadVariableOp#^lstm_cell_95/MatMul/ReadVariableOp%^lstm_cell_95/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_95/BiasAdd/ReadVariableOp#lstm_cell_95/BiasAdd/ReadVariableOp2H
"lstm_cell_95/MatMul/ReadVariableOp"lstm_cell_95/MatMul/ReadVariableOp2L
$lstm_cell_95/MatMul_1/ReadVariableOp$lstm_cell_95/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
;

M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1557743

inputs'
lstm_cell_95_1557659:	(
lstm_cell_95_1557661:
#
lstm_cell_95_1557663:	
identity¢$lstm_cell_95/StatefulPartitionedCall¢while;
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
shrink_axis_mask’
$lstm_cell_95/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_95_1557659lstm_cell_95_1557661lstm_cell_95_1557663*
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
GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_95_layer_call_and_return_conditional_losses_1557658n
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
value	B : Ą
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_95_1557659lstm_cell_95_1557661lstm_cell_95_1557663*
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
while_body_1557673*
condR
while_cond_1557672*M
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
:’’’’’’’’’u
NoOpNoOp%^lstm_cell_95/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2L
$lstm_cell_95/StatefulPartitionedCall$lstm_cell_95/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
ū
ų
.__inference_lstm_cell_95_layer_call_fn_1562812

inputs
states_0
states_1
unknown:	
	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCallÆ
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
GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_95_layer_call_and_return_conditional_losses_1557806p
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
ŃM
Ø
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1562386
inputs_0>
+lstm_cell_95_matmul_readvariableop_resource:	A
-lstm_cell_95_matmul_1_readvariableop_resource:
;
,lstm_cell_95_biasadd_readvariableop_resource:	
identity¢#lstm_cell_95/BiasAdd/ReadVariableOp¢"lstm_cell_95/MatMul/ReadVariableOp¢$lstm_cell_95/MatMul_1/ReadVariableOp¢while=
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
shrink_axis_mask
"lstm_cell_95/MatMul/ReadVariableOpReadVariableOp+lstm_cell_95_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_95/MatMulMatMulstrided_slice_2:output:0*lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_95_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_95/MatMul_1MatMulzeros:output:0,lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_95/addAddV2lstm_cell_95/MatMul:product:0lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_95_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_95/BiasAddBiasAddlstm_cell_95/add:z:0+lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_95/splitSplit%lstm_cell_95/split/split_dim:output:0lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_95/SigmoidSigmoidlstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_95/Sigmoid_1Sigmoidlstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_95/mulMullstm_cell_95/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_95/ReluRelulstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_95/mul_1Mullstm_cell_95/Sigmoid:y:0lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_95/add_1AddV2lstm_cell_95/mul:z:0lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_95/Sigmoid_2Sigmoidlstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_95/Relu_1Relulstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_95/mul_2Mullstm_cell_95/Sigmoid_2:y:0!lstm_cell_95/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_95_matmul_readvariableop_resource-lstm_cell_95_matmul_1_readvariableop_resource,lstm_cell_95_biasadd_readvariableop_resource*
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
while_body_1562301*
condR
while_cond_1562300*M
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
:’’’’’’’’’Ą
NoOpNoOp$^lstm_cell_95/BiasAdd/ReadVariableOp#^lstm_cell_95/MatMul/ReadVariableOp%^lstm_cell_95/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_95/BiasAdd/ReadVariableOp#lstm_cell_95/BiasAdd/ReadVariableOp2H
"lstm_cell_95/MatMul/ReadVariableOp"lstm_cell_95/MatMul/ReadVariableOp2L
$lstm_cell_95/MatMul_1/ReadVariableOp$lstm_cell_95/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
ČL
Ó
"forward_lstm_14_while_body_1560595<
8forward_lstm_14_while_forward_lstm_14_while_loop_counterB
>forward_lstm_14_while_forward_lstm_14_while_maximum_iterations%
!forward_lstm_14_while_placeholder'
#forward_lstm_14_while_placeholder_1'
#forward_lstm_14_while_placeholder_2'
#forward_lstm_14_while_placeholder_3;
7forward_lstm_14_while_forward_lstm_14_strided_slice_1_0w
sforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0V
Cforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0:	Y
Eforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0:
S
Dforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0:	"
forward_lstm_14_while_identity$
 forward_lstm_14_while_identity_1$
 forward_lstm_14_while_identity_2$
 forward_lstm_14_while_identity_3$
 forward_lstm_14_while_identity_4$
 forward_lstm_14_while_identity_59
5forward_lstm_14_while_forward_lstm_14_strided_slice_1u
qforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensorT
Aforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource:	W
Cforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource:
Q
Bforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource:	¢9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp¢8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp¢:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp
Gforward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’’
9forward_lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_14_while_placeholderPforward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0½
8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOpReadVariableOpCforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ź
)forward_lstm_14/while/lstm_cell_94/MatMulMatMul@forward_lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0@forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOpEforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ń
+forward_lstm_14/while/lstm_cell_94/MatMul_1MatMul#forward_lstm_14_while_placeholder_2Bforward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ī
&forward_lstm_14/while/lstm_cell_94/addAddV23forward_lstm_14/while/lstm_cell_94/MatMul:product:05forward_lstm_14/while/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’»
9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOpDforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0×
*forward_lstm_14/while/lstm_cell_94/BiasAddBiasAdd*forward_lstm_14/while/lstm_cell_94/add:z:0Aforward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’t
2forward_lstm_14/while/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
(forward_lstm_14/while/lstm_cell_94/splitSplit;forward_lstm_14/while/lstm_cell_94/split/split_dim:output:03forward_lstm_14/while/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
*forward_lstm_14/while/lstm_cell_94/SigmoidSigmoid1forward_lstm_14/while/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
,forward_lstm_14/while/lstm_cell_94/Sigmoid_1Sigmoid1forward_lstm_14/while/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’·
&forward_lstm_14/while/lstm_cell_94/mulMul0forward_lstm_14/while/lstm_cell_94/Sigmoid_1:y:0#forward_lstm_14_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
'forward_lstm_14/while/lstm_cell_94/ReluRelu1forward_lstm_14/while/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’É
(forward_lstm_14/while/lstm_cell_94/mul_1Mul.forward_lstm_14/while/lstm_cell_94/Sigmoid:y:05forward_lstm_14/while/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¾
(forward_lstm_14/while/lstm_cell_94/add_1AddV2*forward_lstm_14/while/lstm_cell_94/mul:z:0,forward_lstm_14/while/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
,forward_lstm_14/while/lstm_cell_94/Sigmoid_2Sigmoid1forward_lstm_14/while/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
)forward_lstm_14/while/lstm_cell_94/Relu_1Relu,forward_lstm_14/while/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ķ
(forward_lstm_14/while/lstm_cell_94/mul_2Mul0forward_lstm_14/while/lstm_cell_94/Sigmoid_2:y:07forward_lstm_14/while/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
@forward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ­
:forward_lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_14_while_placeholder_1Iforward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/index:output:0,forward_lstm_14/while/lstm_cell_94/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ]
forward_lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_14/while/addAddV2!forward_lstm_14_while_placeholder$forward_lstm_14/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :§
forward_lstm_14/while/add_1AddV28forward_lstm_14_while_forward_lstm_14_while_loop_counter&forward_lstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_14/while/IdentityIdentityforward_lstm_14/while/add_1:z:0^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: Ŗ
 forward_lstm_14/while/Identity_1Identity>forward_lstm_14_while_forward_lstm_14_while_maximum_iterations^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: 
 forward_lstm_14/while/Identity_2Identityforward_lstm_14/while/add:z:0^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: ¶
 forward_lstm_14/while/Identity_3IdentityJforward_lstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: Ŗ
 forward_lstm_14/while/Identity_4Identity,forward_lstm_14/while/lstm_cell_94/mul_2:z:0^forward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
 forward_lstm_14/while/Identity_5Identity,forward_lstm_14/while/lstm_cell_94/add_1:z:0^forward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
forward_lstm_14/while/NoOpNoOp:^forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp9^forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp;^forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "p
5forward_lstm_14_while_forward_lstm_14_strided_slice_17forward_lstm_14_while_forward_lstm_14_strided_slice_1_0"I
forward_lstm_14_while_identity'forward_lstm_14/while/Identity:output:0"M
 forward_lstm_14_while_identity_1)forward_lstm_14/while/Identity_1:output:0"M
 forward_lstm_14_while_identity_2)forward_lstm_14/while/Identity_2:output:0"M
 forward_lstm_14_while_identity_3)forward_lstm_14/while/Identity_3:output:0"M
 forward_lstm_14_while_identity_4)forward_lstm_14/while/Identity_4:output:0"M
 forward_lstm_14_while_identity_5)forward_lstm_14/while/Identity_5:output:0"
Bforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resourceDforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0"
Cforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resourceEforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0"
Aforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resourceCforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0"č
qforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensorsforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2v
9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp2t
8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp2x
:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp: 
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
Č9
Ó
while_body_1561818
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_94_matmul_readvariableop_resource_0:	I
5while_lstm_cell_94_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_94_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_94_matmul_readvariableop_resource:	G
3while_lstm_cell_94_matmul_1_readvariableop_resource:
A
2while_lstm_cell_94_biasadd_readvariableop_resource:	¢)while/lstm_cell_94/BiasAdd/ReadVariableOp¢(while/lstm_cell_94/MatMul/ReadVariableOp¢*while/lstm_cell_94/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
(while/lstm_cell_94/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_94_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_94/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_94_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_94/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/addAddV2#while/lstm_cell_94/MatMul:product:0%while/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_94_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_94/BiasAddBiasAddwhile/lstm_cell_94/add:z:01while/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_94/splitSplit+while/lstm_cell_94/split/split_dim:output:0#while/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_94/SigmoidSigmoid!while/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_94/Sigmoid_1Sigmoid!while/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/mulMul while/lstm_cell_94/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_94/ReluRelu!while/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/mul_1Mulwhile/lstm_cell_94/Sigmoid:y:0%while/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/add_1AddV2while/lstm_cell_94/mul:z:0while/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_94/Sigmoid_2Sigmoid!while/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_94/Relu_1Reluwhile/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/mul_2Mul while/lstm_cell_94/Sigmoid_2:y:0'while/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_94/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_94/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_94/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_94/BiasAdd/ReadVariableOp)^while/lstm_cell_94/MatMul/ReadVariableOp+^while/lstm_cell_94/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_94_biasadd_readvariableop_resource4while_lstm_cell_94_biasadd_readvariableop_resource_0"l
3while_lstm_cell_94_matmul_1_readvariableop_resource5while_lstm_cell_94_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_94_matmul_readvariableop_resource3while_lstm_cell_94_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_94/BiasAdd/ReadVariableOp)while/lstm_cell_94/BiasAdd/ReadVariableOp2T
(while/lstm_cell_94/MatMul/ReadVariableOp(while/lstm_cell_94/MatMul/ReadVariableOp2X
*while/lstm_cell_94/MatMul_1/ReadVariableOp*while/lstm_cell_94/MatMul_1/ReadVariableOp: 
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
ČL
Ó
"forward_lstm_14_while_body_1560305<
8forward_lstm_14_while_forward_lstm_14_while_loop_counterB
>forward_lstm_14_while_forward_lstm_14_while_maximum_iterations%
!forward_lstm_14_while_placeholder'
#forward_lstm_14_while_placeholder_1'
#forward_lstm_14_while_placeholder_2'
#forward_lstm_14_while_placeholder_3;
7forward_lstm_14_while_forward_lstm_14_strided_slice_1_0w
sforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0V
Cforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0:	Y
Eforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0:
S
Dforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0:	"
forward_lstm_14_while_identity$
 forward_lstm_14_while_identity_1$
 forward_lstm_14_while_identity_2$
 forward_lstm_14_while_identity_3$
 forward_lstm_14_while_identity_4$
 forward_lstm_14_while_identity_59
5forward_lstm_14_while_forward_lstm_14_strided_slice_1u
qforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensorT
Aforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource:	W
Cforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource:
Q
Bforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource:	¢9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp¢8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp¢:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp
Gforward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’’
9forward_lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_14_while_placeholderPforward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0½
8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOpReadVariableOpCforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ź
)forward_lstm_14/while/lstm_cell_94/MatMulMatMul@forward_lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0@forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOpEforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ń
+forward_lstm_14/while/lstm_cell_94/MatMul_1MatMul#forward_lstm_14_while_placeholder_2Bforward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ī
&forward_lstm_14/while/lstm_cell_94/addAddV23forward_lstm_14/while/lstm_cell_94/MatMul:product:05forward_lstm_14/while/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’»
9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOpDforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0×
*forward_lstm_14/while/lstm_cell_94/BiasAddBiasAdd*forward_lstm_14/while/lstm_cell_94/add:z:0Aforward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’t
2forward_lstm_14/while/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
(forward_lstm_14/while/lstm_cell_94/splitSplit;forward_lstm_14/while/lstm_cell_94/split/split_dim:output:03forward_lstm_14/while/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
*forward_lstm_14/while/lstm_cell_94/SigmoidSigmoid1forward_lstm_14/while/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
,forward_lstm_14/while/lstm_cell_94/Sigmoid_1Sigmoid1forward_lstm_14/while/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’·
&forward_lstm_14/while/lstm_cell_94/mulMul0forward_lstm_14/while/lstm_cell_94/Sigmoid_1:y:0#forward_lstm_14_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
'forward_lstm_14/while/lstm_cell_94/ReluRelu1forward_lstm_14/while/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’É
(forward_lstm_14/while/lstm_cell_94/mul_1Mul.forward_lstm_14/while/lstm_cell_94/Sigmoid:y:05forward_lstm_14/while/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¾
(forward_lstm_14/while/lstm_cell_94/add_1AddV2*forward_lstm_14/while/lstm_cell_94/mul:z:0,forward_lstm_14/while/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
,forward_lstm_14/while/lstm_cell_94/Sigmoid_2Sigmoid1forward_lstm_14/while/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
)forward_lstm_14/while/lstm_cell_94/Relu_1Relu,forward_lstm_14/while/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ķ
(forward_lstm_14/while/lstm_cell_94/mul_2Mul0forward_lstm_14/while/lstm_cell_94/Sigmoid_2:y:07forward_lstm_14/while/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
@forward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ­
:forward_lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_14_while_placeholder_1Iforward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/index:output:0,forward_lstm_14/while/lstm_cell_94/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ]
forward_lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_14/while/addAddV2!forward_lstm_14_while_placeholder$forward_lstm_14/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :§
forward_lstm_14/while/add_1AddV28forward_lstm_14_while_forward_lstm_14_while_loop_counter&forward_lstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_14/while/IdentityIdentityforward_lstm_14/while/add_1:z:0^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: Ŗ
 forward_lstm_14/while/Identity_1Identity>forward_lstm_14_while_forward_lstm_14_while_maximum_iterations^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: 
 forward_lstm_14/while/Identity_2Identityforward_lstm_14/while/add:z:0^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: ¶
 forward_lstm_14/while/Identity_3IdentityJforward_lstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: Ŗ
 forward_lstm_14/while/Identity_4Identity,forward_lstm_14/while/lstm_cell_94/mul_2:z:0^forward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
 forward_lstm_14/while/Identity_5Identity,forward_lstm_14/while/lstm_cell_94/add_1:z:0^forward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
forward_lstm_14/while/NoOpNoOp:^forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp9^forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp;^forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "p
5forward_lstm_14_while_forward_lstm_14_strided_slice_17forward_lstm_14_while_forward_lstm_14_strided_slice_1_0"I
forward_lstm_14_while_identity'forward_lstm_14/while/Identity:output:0"M
 forward_lstm_14_while_identity_1)forward_lstm_14/while/Identity_1:output:0"M
 forward_lstm_14_while_identity_2)forward_lstm_14/while/Identity_2:output:0"M
 forward_lstm_14_while_identity_3)forward_lstm_14/while/Identity_3:output:0"M
 forward_lstm_14_while_identity_4)forward_lstm_14/while/Identity_4:output:0"M
 forward_lstm_14_while_identity_5)forward_lstm_14/while/Identity_5:output:0"
Bforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resourceDforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0"
Cforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resourceEforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0"
Aforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resourceCforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0"č
qforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensorsforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2v
9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp2t
8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp2x
:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp: 
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
ģ

I__inference_lstm_cell_95_layer_call_and_return_conditional_losses_1557658

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
å
Ż
#__inference__traced_restore_1563095
file_prefix3
 assignvariableop_dense_14_kernel:	.
 assignvariableop_1_dense_14_bias:Z
Gassignvariableop_2_bidirectional_14_forward_lstm_14_lstm_cell_94_kernel:	e
Qassignvariableop_3_bidirectional_14_forward_lstm_14_lstm_cell_94_recurrent_kernel:
T
Eassignvariableop_4_bidirectional_14_forward_lstm_14_lstm_cell_94_bias:	[
Hassignvariableop_5_bidirectional_14_backward_lstm_14_lstm_cell_95_kernel:	f
Rassignvariableop_6_bidirectional_14_backward_lstm_14_lstm_cell_95_recurrent_kernel:
U
Fassignvariableop_7_bidirectional_14_backward_lstm_14_lstm_cell_95_bias:	&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: =
*assignvariableop_15_adam_dense_14_kernel_m:	6
(assignvariableop_16_adam_dense_14_bias_m:b
Oassignvariableop_17_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_kernel_m:	m
Yassignvariableop_18_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_recurrent_kernel_m:
\
Massignvariableop_19_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_bias_m:	c
Passignvariableop_20_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_kernel_m:	n
Zassignvariableop_21_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_recurrent_kernel_m:
]
Nassignvariableop_22_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_bias_m:	=
*assignvariableop_23_adam_dense_14_kernel_v:	6
(assignvariableop_24_adam_dense_14_bias_v:b
Oassignvariableop_25_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_kernel_v:	m
Yassignvariableop_26_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_recurrent_kernel_v:
\
Massignvariableop_27_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_bias_v:	c
Passignvariableop_28_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_kernel_v:	n
Zassignvariableop_29_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_recurrent_kernel_v:
]
Nassignvariableop_30_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_bias_v:	
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
AssignVariableOpAssignVariableOp assignvariableop_dense_14_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOp assignvariableop_1_dense_14_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:¶
AssignVariableOp_2AssignVariableOpGassignvariableop_2_bidirectional_14_forward_lstm_14_lstm_cell_94_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:Ą
AssignVariableOp_3AssignVariableOpQassignvariableop_3_bidirectional_14_forward_lstm_14_lstm_cell_94_recurrent_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOp_4AssignVariableOpEassignvariableop_4_bidirectional_14_forward_lstm_14_lstm_cell_94_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:·
AssignVariableOp_5AssignVariableOpHassignvariableop_5_bidirectional_14_backward_lstm_14_lstm_cell_95_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:Į
AssignVariableOp_6AssignVariableOpRassignvariableop_6_bidirectional_14_backward_lstm_14_lstm_cell_95_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_7AssignVariableOpFassignvariableop_7_bidirectional_14_backward_lstm_14_lstm_cell_95_biasIdentity_7:output:0"/device:CPU:0*
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
AssignVariableOp_15AssignVariableOp*assignvariableop_15_adam_dense_14_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp(assignvariableop_16_adam_dense_14_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:Ą
AssignVariableOp_17AssignVariableOpOassignvariableop_17_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Ź
AssignVariableOp_18AssignVariableOpYassignvariableop_18_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_recurrent_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:¾
AssignVariableOp_19AssignVariableOpMassignvariableop_19_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:Į
AssignVariableOp_20AssignVariableOpPassignvariableop_20_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:Ė
AssignVariableOp_21AssignVariableOpZassignvariableop_21_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:æ
AssignVariableOp_22AssignVariableOpNassignvariableop_22_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp*assignvariableop_23_adam_dense_14_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp(assignvariableop_24_adam_dense_14_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:Ą
AssignVariableOp_25AssignVariableOpOassignvariableop_25_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Ź
AssignVariableOp_26AssignVariableOpYassignvariableop_26_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:¾
AssignVariableOp_27AssignVariableOpMassignvariableop_27_adam_bidirectional_14_forward_lstm_14_lstm_cell_94_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:Į
AssignVariableOp_28AssignVariableOpPassignvariableop_28_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:Ė
AssignVariableOp_29AssignVariableOpZassignvariableop_29_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_recurrent_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:æ
AssignVariableOp_30AssignVariableOpNassignvariableop_30_adam_bidirectional_14_backward_lstm_14_lstm_cell_95_bias_vIdentity_30:output:0"/device:CPU:0*
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
Ņ`
÷
3bidirectional_14_forward_lstm_14_while_body_1559919^
Zbidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_while_loop_counterd
`bidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_while_maximum_iterations6
2bidirectional_14_forward_lstm_14_while_placeholder8
4bidirectional_14_forward_lstm_14_while_placeholder_18
4bidirectional_14_forward_lstm_14_while_placeholder_28
4bidirectional_14_forward_lstm_14_while_placeholder_3]
Ybidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_strided_slice_1_0
bidirectional_14_forward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_bidirectional_14_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0g
Tbidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0:	j
Vbidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0:
d
Ubidirectional_14_forward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0:	3
/bidirectional_14_forward_lstm_14_while_identity5
1bidirectional_14_forward_lstm_14_while_identity_15
1bidirectional_14_forward_lstm_14_while_identity_25
1bidirectional_14_forward_lstm_14_while_identity_35
1bidirectional_14_forward_lstm_14_while_identity_45
1bidirectional_14_forward_lstm_14_while_identity_5[
Wbidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_strided_slice_1
bidirectional_14_forward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_bidirectional_14_forward_lstm_14_tensorarrayunstack_tensorlistfromtensore
Rbidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource:	h
Tbidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource:
b
Sbidirectional_14_forward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource:	¢Jbidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp¢Ibidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp¢Kbidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp©
Xbidirectional_14/forward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ģ
Jbidirectional_14/forward_lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_14_forward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_bidirectional_14_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_02bidirectional_14_forward_lstm_14_while_placeholderabidirectional_14/forward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0ß
Ibidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOpReadVariableOpTbidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0
:bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMulMatMulQbidirectional_14/forward_lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0Qbidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ä
Kbidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOpVbidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
<bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1MatMul4bidirectional_14_forward_lstm_14_while_placeholder_2Sbidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
7bidirectional_14/forward_lstm_14/while/lstm_cell_94/addAddV2Dbidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul:product:0Fbidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Ż
Jbidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOpUbidirectional_14_forward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
;bidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAddBiasAdd;bidirectional_14/forward_lstm_14/while/lstm_cell_94/add:z:0Rbidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
Cbidirectional_14/forward_lstm_14/while/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ö
9bidirectional_14/forward_lstm_14/while/lstm_cell_94/splitSplitLbidirectional_14/forward_lstm_14/while/lstm_cell_94/split/split_dim:output:0Dbidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split½
;bidirectional_14/forward_lstm_14/while/lstm_cell_94/SigmoidSigmoidBbidirectional_14/forward_lstm_14/while/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’æ
=bidirectional_14/forward_lstm_14/while/lstm_cell_94/Sigmoid_1SigmoidBbidirectional_14/forward_lstm_14/while/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’ź
7bidirectional_14/forward_lstm_14/while/lstm_cell_94/mulMulAbidirectional_14/forward_lstm_14/while/lstm_cell_94/Sigmoid_1:y:04bidirectional_14_forward_lstm_14_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’·
8bidirectional_14/forward_lstm_14/while/lstm_cell_94/ReluReluBbidirectional_14/forward_lstm_14/while/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ü
9bidirectional_14/forward_lstm_14/while/lstm_cell_94/mul_1Mul?bidirectional_14/forward_lstm_14/while/lstm_cell_94/Sigmoid:y:0Fbidirectional_14/forward_lstm_14/while/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’ń
9bidirectional_14/forward_lstm_14/while/lstm_cell_94/add_1AddV2;bidirectional_14/forward_lstm_14/while/lstm_cell_94/mul:z:0=bidirectional_14/forward_lstm_14/while/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’æ
=bidirectional_14/forward_lstm_14/while/lstm_cell_94/Sigmoid_2SigmoidBbidirectional_14/forward_lstm_14/while/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’“
:bidirectional_14/forward_lstm_14/while/lstm_cell_94/Relu_1Relu=bidirectional_14/forward_lstm_14/while/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
9bidirectional_14/forward_lstm_14/while/lstm_cell_94/mul_2MulAbidirectional_14/forward_lstm_14/while/lstm_cell_94/Sigmoid_2:y:0Hbidirectional_14/forward_lstm_14/while/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Qbidirectional_14/forward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ń
Kbidirectional_14/forward_lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem4bidirectional_14_forward_lstm_14_while_placeholder_1Zbidirectional_14/forward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/index:output:0=bidirectional_14/forward_lstm_14/while/lstm_cell_94/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅn
,bidirectional_14/forward_lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :æ
*bidirectional_14/forward_lstm_14/while/addAddV22bidirectional_14_forward_lstm_14_while_placeholder5bidirectional_14/forward_lstm_14/while/add/y:output:0*
T0*
_output_shapes
: p
.bidirectional_14/forward_lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ė
,bidirectional_14/forward_lstm_14/while/add_1AddV2Zbidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_while_loop_counter7bidirectional_14/forward_lstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: ¼
/bidirectional_14/forward_lstm_14/while/IdentityIdentity0bidirectional_14/forward_lstm_14/while/add_1:z:0,^bidirectional_14/forward_lstm_14/while/NoOp*
T0*
_output_shapes
: ī
1bidirectional_14/forward_lstm_14/while/Identity_1Identity`bidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_while_maximum_iterations,^bidirectional_14/forward_lstm_14/while/NoOp*
T0*
_output_shapes
: ¼
1bidirectional_14/forward_lstm_14/while/Identity_2Identity.bidirectional_14/forward_lstm_14/while/add:z:0,^bidirectional_14/forward_lstm_14/while/NoOp*
T0*
_output_shapes
: é
1bidirectional_14/forward_lstm_14/while/Identity_3Identity[bidirectional_14/forward_lstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0,^bidirectional_14/forward_lstm_14/while/NoOp*
T0*
_output_shapes
: Ż
1bidirectional_14/forward_lstm_14/while/Identity_4Identity=bidirectional_14/forward_lstm_14/while/lstm_cell_94/mul_2:z:0,^bidirectional_14/forward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ż
1bidirectional_14/forward_lstm_14/while/Identity_5Identity=bidirectional_14/forward_lstm_14/while/lstm_cell_94/add_1:z:0,^bidirectional_14/forward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ō
+bidirectional_14/forward_lstm_14/while/NoOpNoOpK^bidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOpJ^bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOpL^bidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "“
Wbidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_strided_slice_1Ybidirectional_14_forward_lstm_14_while_bidirectional_14_forward_lstm_14_strided_slice_1_0"k
/bidirectional_14_forward_lstm_14_while_identity8bidirectional_14/forward_lstm_14/while/Identity:output:0"o
1bidirectional_14_forward_lstm_14_while_identity_1:bidirectional_14/forward_lstm_14/while/Identity_1:output:0"o
1bidirectional_14_forward_lstm_14_while_identity_2:bidirectional_14/forward_lstm_14/while/Identity_2:output:0"o
1bidirectional_14_forward_lstm_14_while_identity_3:bidirectional_14/forward_lstm_14/while/Identity_3:output:0"o
1bidirectional_14_forward_lstm_14_while_identity_4:bidirectional_14/forward_lstm_14/while/Identity_4:output:0"o
1bidirectional_14_forward_lstm_14_while_identity_5:bidirectional_14/forward_lstm_14/while/Identity_5:output:0"¬
Sbidirectional_14_forward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resourceUbidirectional_14_forward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0"®
Tbidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resourceVbidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0"Ŗ
Rbidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resourceTbidirectional_14_forward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0"®
bidirectional_14_forward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_bidirectional_14_forward_lstm_14_tensorarrayunstack_tensorlistfromtensorbidirectional_14_forward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_bidirectional_14_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2
Jbidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOpJbidirectional_14/forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp2
Ibidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOpIbidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp2
Kbidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOpKbidirectional_14/forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp: 
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
Č9
Ó
while_body_1558013
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_94_matmul_readvariableop_resource_0:	I
5while_lstm_cell_94_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_94_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_94_matmul_readvariableop_resource:	G
3while_lstm_cell_94_matmul_1_readvariableop_resource:
A
2while_lstm_cell_94_biasadd_readvariableop_resource:	¢)while/lstm_cell_94/BiasAdd/ReadVariableOp¢(while/lstm_cell_94/MatMul/ReadVariableOp¢*while/lstm_cell_94/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
(while/lstm_cell_94/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_94_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_94/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_94_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_94/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/addAddV2#while/lstm_cell_94/MatMul:product:0%while/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_94_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_94/BiasAddBiasAddwhile/lstm_cell_94/add:z:01while/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_94/splitSplit+while/lstm_cell_94/split/split_dim:output:0#while/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_94/SigmoidSigmoid!while/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_94/Sigmoid_1Sigmoid!while/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/mulMul while/lstm_cell_94/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_94/ReluRelu!while/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/mul_1Mulwhile/lstm_cell_94/Sigmoid:y:0%while/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/add_1AddV2while/lstm_cell_94/mul:z:0while/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_94/Sigmoid_2Sigmoid!while/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_94/Relu_1Reluwhile/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_94/mul_2Mul while/lstm_cell_94/Sigmoid_2:y:0'while/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_94/mul_2:z:0*
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
: z
while/Identity_4Identitywhile/lstm_cell_94/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_94/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_94/BiasAdd/ReadVariableOp)^while/lstm_cell_94/MatMul/ReadVariableOp+^while/lstm_cell_94/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_94_biasadd_readvariableop_resource4while_lstm_cell_94_biasadd_readvariableop_resource_0"l
3while_lstm_cell_94_matmul_1_readvariableop_resource5while_lstm_cell_94_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_94_matmul_readvariableop_resource3while_lstm_cell_94_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_94/BiasAdd/ReadVariableOp)while/lstm_cell_94/BiasAdd/ReadVariableOp2T
(while/lstm_cell_94/MatMul/ReadVariableOp(while/lstm_cell_94/MatMul/ReadVariableOp2X
*while/lstm_cell_94/MatMul_1/ReadVariableOp*while/lstm_cell_94/MatMul_1/ReadVariableOp: 
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
éa

4bidirectional_14_backward_lstm_14_while_body_1560062`
\bidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_while_loop_counterf
bbidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_while_maximum_iterations7
3bidirectional_14_backward_lstm_14_while_placeholder9
5bidirectional_14_backward_lstm_14_while_placeholder_19
5bidirectional_14_backward_lstm_14_while_placeholder_29
5bidirectional_14_backward_lstm_14_while_placeholder_3_
[bidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_strided_slice_1_0
bidirectional_14_backward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_bidirectional_14_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0h
Ubidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0:	k
Wbidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0:
e
Vbidirectional_14_backward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0:	4
0bidirectional_14_backward_lstm_14_while_identity6
2bidirectional_14_backward_lstm_14_while_identity_16
2bidirectional_14_backward_lstm_14_while_identity_26
2bidirectional_14_backward_lstm_14_while_identity_36
2bidirectional_14_backward_lstm_14_while_identity_46
2bidirectional_14_backward_lstm_14_while_identity_5]
Ybidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_strided_slice_1
bidirectional_14_backward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_bidirectional_14_backward_lstm_14_tensorarrayunstack_tensorlistfromtensorf
Sbidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource:	i
Ubidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource:
c
Tbidirectional_14_backward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource:	¢Kbidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp¢Jbidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp¢Lbidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOpŖ
Ybidirectional_14/backward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ń
Kbidirectional_14/backward_lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_14_backward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_bidirectional_14_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_03bidirectional_14_backward_lstm_14_while_placeholderbbidirectional_14/backward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0į
Jbidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOpReadVariableOpUbidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0 
;bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMulMatMulRbidirectional_14/backward_lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0Rbidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ę
Lbidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOpWbidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
=bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1MatMul5bidirectional_14_backward_lstm_14_while_placeholder_2Tbidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
8bidirectional_14/backward_lstm_14/while/lstm_cell_95/addAddV2Ebidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul:product:0Gbidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’ß
Kbidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOpVbidirectional_14_backward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
<bidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAddBiasAdd<bidirectional_14/backward_lstm_14/while/lstm_cell_95/add:z:0Sbidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
Dbidirectional_14/backward_lstm_14/while/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ł
:bidirectional_14/backward_lstm_14/while/lstm_cell_95/splitSplitMbidirectional_14/backward_lstm_14/while/lstm_cell_95/split/split_dim:output:0Ebidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitæ
<bidirectional_14/backward_lstm_14/while/lstm_cell_95/SigmoidSigmoidCbidirectional_14/backward_lstm_14/while/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’Į
>bidirectional_14/backward_lstm_14/while/lstm_cell_95/Sigmoid_1SigmoidCbidirectional_14/backward_lstm_14/while/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’ķ
8bidirectional_14/backward_lstm_14/while/lstm_cell_95/mulMulBbidirectional_14/backward_lstm_14/while/lstm_cell_95/Sigmoid_1:y:05bidirectional_14_backward_lstm_14_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’¹
9bidirectional_14/backward_lstm_14/while/lstm_cell_95/ReluReluCbidirectional_14/backward_lstm_14/while/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’’
:bidirectional_14/backward_lstm_14/while/lstm_cell_95/mul_1Mul@bidirectional_14/backward_lstm_14/while/lstm_cell_95/Sigmoid:y:0Gbidirectional_14/backward_lstm_14/while/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’ō
:bidirectional_14/backward_lstm_14/while/lstm_cell_95/add_1AddV2<bidirectional_14/backward_lstm_14/while/lstm_cell_95/mul:z:0>bidirectional_14/backward_lstm_14/while/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Į
>bidirectional_14/backward_lstm_14/while/lstm_cell_95/Sigmoid_2SigmoidCbidirectional_14/backward_lstm_14/while/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’¶
;bidirectional_14/backward_lstm_14/while/lstm_cell_95/Relu_1Relu>bidirectional_14/backward_lstm_14/while/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
:bidirectional_14/backward_lstm_14/while/lstm_cell_95/mul_2MulBbidirectional_14/backward_lstm_14/while/lstm_cell_95/Sigmoid_2:y:0Ibidirectional_14/backward_lstm_14/while/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Rbidirectional_14/backward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : õ
Lbidirectional_14/backward_lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem5bidirectional_14_backward_lstm_14_while_placeholder_1[bidirectional_14/backward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/index:output:0>bidirectional_14/backward_lstm_14/while/lstm_cell_95/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅo
-bidirectional_14/backward_lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ā
+bidirectional_14/backward_lstm_14/while/addAddV23bidirectional_14_backward_lstm_14_while_placeholder6bidirectional_14/backward_lstm_14/while/add/y:output:0*
T0*
_output_shapes
: q
/bidirectional_14/backward_lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ļ
-bidirectional_14/backward_lstm_14/while/add_1AddV2\bidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_while_loop_counter8bidirectional_14/backward_lstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: æ
0bidirectional_14/backward_lstm_14/while/IdentityIdentity1bidirectional_14/backward_lstm_14/while/add_1:z:0-^bidirectional_14/backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ņ
2bidirectional_14/backward_lstm_14/while/Identity_1Identitybbidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_while_maximum_iterations-^bidirectional_14/backward_lstm_14/while/NoOp*
T0*
_output_shapes
: æ
2bidirectional_14/backward_lstm_14/while/Identity_2Identity/bidirectional_14/backward_lstm_14/while/add:z:0-^bidirectional_14/backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ģ
2bidirectional_14/backward_lstm_14/while/Identity_3Identity\bidirectional_14/backward_lstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0-^bidirectional_14/backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ą
2bidirectional_14/backward_lstm_14/while/Identity_4Identity>bidirectional_14/backward_lstm_14/while/lstm_cell_95/mul_2:z:0-^bidirectional_14/backward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’ą
2bidirectional_14/backward_lstm_14/while/Identity_5Identity>bidirectional_14/backward_lstm_14/while/lstm_cell_95/add_1:z:0-^bidirectional_14/backward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ų
,bidirectional_14/backward_lstm_14/while/NoOpNoOpL^bidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOpK^bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOpM^bidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "ø
Ybidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_strided_slice_1[bidirectional_14_backward_lstm_14_while_bidirectional_14_backward_lstm_14_strided_slice_1_0"m
0bidirectional_14_backward_lstm_14_while_identity9bidirectional_14/backward_lstm_14/while/Identity:output:0"q
2bidirectional_14_backward_lstm_14_while_identity_1;bidirectional_14/backward_lstm_14/while/Identity_1:output:0"q
2bidirectional_14_backward_lstm_14_while_identity_2;bidirectional_14/backward_lstm_14/while/Identity_2:output:0"q
2bidirectional_14_backward_lstm_14_while_identity_3;bidirectional_14/backward_lstm_14/while/Identity_3:output:0"q
2bidirectional_14_backward_lstm_14_while_identity_4;bidirectional_14/backward_lstm_14/while/Identity_4:output:0"q
2bidirectional_14_backward_lstm_14_while_identity_5;bidirectional_14/backward_lstm_14/while/Identity_5:output:0"®
Tbidirectional_14_backward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resourceVbidirectional_14_backward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0"°
Ubidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resourceWbidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0"¬
Sbidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resourceUbidirectional_14_backward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0"²
bidirectional_14_backward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_bidirectional_14_backward_lstm_14_tensorarrayunstack_tensorlistfromtensorbidirectional_14_backward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_bidirectional_14_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2
Kbidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOpKbidirectional_14/backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp2
Jbidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOpJbidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp2
Lbidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOpLbidirectional_14/backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp: 
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
÷M
¦
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1562680

inputs>
+lstm_cell_95_matmul_readvariableop_resource:	A
-lstm_cell_95_matmul_1_readvariableop_resource:
;
,lstm_cell_95_biasadd_readvariableop_resource:	
identity¢#lstm_cell_95/BiasAdd/ReadVariableOp¢"lstm_cell_95/MatMul/ReadVariableOp¢$lstm_cell_95/MatMul_1/ReadVariableOp¢while;
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
shrink_axis_mask
"lstm_cell_95/MatMul/ReadVariableOpReadVariableOp+lstm_cell_95_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_95/MatMulMatMulstrided_slice_2:output:0*lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_95_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_95/MatMul_1MatMulzeros:output:0,lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_95/addAddV2lstm_cell_95/MatMul:product:0lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_95_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_95/BiasAddBiasAddlstm_cell_95/add:z:0+lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_95/splitSplit%lstm_cell_95/split/split_dim:output:0lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_95/SigmoidSigmoidlstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_95/Sigmoid_1Sigmoidlstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_95/mulMullstm_cell_95/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_95/ReluRelulstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_95/mul_1Mullstm_cell_95/Sigmoid:y:0lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_95/add_1AddV2lstm_cell_95/mul:z:0lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_95/Sigmoid_2Sigmoidlstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_95/Relu_1Relulstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_95/mul_2Mullstm_cell_95/Sigmoid_2:y:0!lstm_cell_95/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_95_matmul_readvariableop_resource-lstm_cell_95_matmul_1_readvariableop_resource,lstm_cell_95_biasadd_readvariableop_resource*
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
while_body_1562595*
condR
while_cond_1562594*M
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
:’’’’’’’’’Ą
NoOpNoOp$^lstm_cell_95/BiasAdd/ReadVariableOp#^lstm_cell_95/MatMul/ReadVariableOp%^lstm_cell_95/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_95/BiasAdd/ReadVariableOp#lstm_cell_95/BiasAdd/ReadVariableOp2H
"lstm_cell_95/MatMul/ReadVariableOp"lstm_cell_95/MatMul/ReadVariableOp2L
$lstm_cell_95/MatMul_1/ReadVariableOp$lstm_cell_95/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
Ź

*__inference_dense_14_layer_call_fn_1561414

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
E__inference_dense_14_layer_call_and_return_conditional_losses_1558979o
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
æL
Ó
"forward_lstm_14_while_body_1558725<
8forward_lstm_14_while_forward_lstm_14_while_loop_counterB
>forward_lstm_14_while_forward_lstm_14_while_maximum_iterations%
!forward_lstm_14_while_placeholder'
#forward_lstm_14_while_placeholder_1'
#forward_lstm_14_while_placeholder_2'
#forward_lstm_14_while_placeholder_3;
7forward_lstm_14_while_forward_lstm_14_strided_slice_1_0w
sforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0V
Cforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0:	Y
Eforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0:
S
Dforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0:	"
forward_lstm_14_while_identity$
 forward_lstm_14_while_identity_1$
 forward_lstm_14_while_identity_2$
 forward_lstm_14_while_identity_3$
 forward_lstm_14_while_identity_4$
 forward_lstm_14_while_identity_59
5forward_lstm_14_while_forward_lstm_14_strided_slice_1u
qforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensorT
Aforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource:	W
Cforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource:
Q
Bforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource:	¢9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp¢8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp¢:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp
Gforward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ö
9forward_lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_14_while_placeholderPforward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0½
8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOpReadVariableOpCforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ź
)forward_lstm_14/while/lstm_cell_94/MatMulMatMul@forward_lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0@forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOpEforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ń
+forward_lstm_14/while/lstm_cell_94/MatMul_1MatMul#forward_lstm_14_while_placeholder_2Bforward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ī
&forward_lstm_14/while/lstm_cell_94/addAddV23forward_lstm_14/while/lstm_cell_94/MatMul:product:05forward_lstm_14/while/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’»
9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOpDforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0×
*forward_lstm_14/while/lstm_cell_94/BiasAddBiasAdd*forward_lstm_14/while/lstm_cell_94/add:z:0Aforward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’t
2forward_lstm_14/while/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
(forward_lstm_14/while/lstm_cell_94/splitSplit;forward_lstm_14/while/lstm_cell_94/split/split_dim:output:03forward_lstm_14/while/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
*forward_lstm_14/while/lstm_cell_94/SigmoidSigmoid1forward_lstm_14/while/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
,forward_lstm_14/while/lstm_cell_94/Sigmoid_1Sigmoid1forward_lstm_14/while/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’·
&forward_lstm_14/while/lstm_cell_94/mulMul0forward_lstm_14/while/lstm_cell_94/Sigmoid_1:y:0#forward_lstm_14_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
'forward_lstm_14/while/lstm_cell_94/ReluRelu1forward_lstm_14/while/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’É
(forward_lstm_14/while/lstm_cell_94/mul_1Mul.forward_lstm_14/while/lstm_cell_94/Sigmoid:y:05forward_lstm_14/while/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¾
(forward_lstm_14/while/lstm_cell_94/add_1AddV2*forward_lstm_14/while/lstm_cell_94/mul:z:0,forward_lstm_14/while/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
,forward_lstm_14/while/lstm_cell_94/Sigmoid_2Sigmoid1forward_lstm_14/while/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
)forward_lstm_14/while/lstm_cell_94/Relu_1Relu,forward_lstm_14/while/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ķ
(forward_lstm_14/while/lstm_cell_94/mul_2Mul0forward_lstm_14/while/lstm_cell_94/Sigmoid_2:y:07forward_lstm_14/while/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
@forward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ­
:forward_lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_14_while_placeholder_1Iforward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/index:output:0,forward_lstm_14/while/lstm_cell_94/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ]
forward_lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_14/while/addAddV2!forward_lstm_14_while_placeholder$forward_lstm_14/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :§
forward_lstm_14/while/add_1AddV28forward_lstm_14_while_forward_lstm_14_while_loop_counter&forward_lstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_14/while/IdentityIdentityforward_lstm_14/while/add_1:z:0^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: Ŗ
 forward_lstm_14/while/Identity_1Identity>forward_lstm_14_while_forward_lstm_14_while_maximum_iterations^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: 
 forward_lstm_14/while/Identity_2Identityforward_lstm_14/while/add:z:0^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: ¶
 forward_lstm_14/while/Identity_3IdentityJforward_lstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: Ŗ
 forward_lstm_14/while/Identity_4Identity,forward_lstm_14/while/lstm_cell_94/mul_2:z:0^forward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
 forward_lstm_14/while/Identity_5Identity,forward_lstm_14/while/lstm_cell_94/add_1:z:0^forward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
forward_lstm_14/while/NoOpNoOp:^forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp9^forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp;^forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "p
5forward_lstm_14_while_forward_lstm_14_strided_slice_17forward_lstm_14_while_forward_lstm_14_strided_slice_1_0"I
forward_lstm_14_while_identity'forward_lstm_14/while/Identity:output:0"M
 forward_lstm_14_while_identity_1)forward_lstm_14/while/Identity_1:output:0"M
 forward_lstm_14_while_identity_2)forward_lstm_14/while/Identity_2:output:0"M
 forward_lstm_14_while_identity_3)forward_lstm_14/while/Identity_3:output:0"M
 forward_lstm_14_while_identity_4)forward_lstm_14/while/Identity_4:output:0"M
 forward_lstm_14_while_identity_5)forward_lstm_14/while/Identity_5:output:0"
Bforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resourceDforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0"
Cforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resourceEforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0"
Aforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resourceCforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0"č
qforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensorsforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2v
9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp2t
8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp2x
:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp: 
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


#backward_lstm_14_while_cond_1561027>
:backward_lstm_14_while_backward_lstm_14_while_loop_counterD
@backward_lstm_14_while_backward_lstm_14_while_maximum_iterations&
"backward_lstm_14_while_placeholder(
$backward_lstm_14_while_placeholder_1(
$backward_lstm_14_while_placeholder_2(
$backward_lstm_14_while_placeholder_3@
<backward_lstm_14_while_less_backward_lstm_14_strided_slice_1W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1561027___redundant_placeholder0W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1561027___redundant_placeholder1W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1561027___redundant_placeholder2W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1561027___redundant_placeholder3#
backward_lstm_14_while_identity
¦
backward_lstm_14/while/LessLess"backward_lstm_14_while_placeholder<backward_lstm_14_while_less_backward_lstm_14_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_14/while/IdentityIdentitybackward_lstm_14/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_14_while_identity(backward_lstm_14/while/Identity:output:0*(
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
Ą
Ē
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1559324

inputsN
;forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource:	Q
=forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource:
K
<forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource:	O
<backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource:	R
>backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource:
L
=backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource:	
identity¢4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp¢3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp¢5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp¢backward_lstm_14/while¢3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp¢2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp¢4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp¢forward_lstm_14/whileK
forward_lstm_14/ShapeShapeinputs*
T0*
_output_shapes
:m
#forward_lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%forward_lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%forward_lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
forward_lstm_14/strided_sliceStridedSliceforward_lstm_14/Shape:output:0,forward_lstm_14/strided_slice/stack:output:0.forward_lstm_14/strided_slice/stack_1:output:0.forward_lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
forward_lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :£
forward_lstm_14/zeros/packedPack&forward_lstm_14/strided_slice:output:0'forward_lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
forward_lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_14/zerosFill%forward_lstm_14/zeros/packed:output:0$forward_lstm_14/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
 forward_lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :§
forward_lstm_14/zeros_1/packedPack&forward_lstm_14/strided_slice:output:0)forward_lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
forward_lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
forward_lstm_14/zeros_1Fill'forward_lstm_14/zeros_1/packed:output:0&forward_lstm_14/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
forward_lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm_14/transpose	Transposeinputs'forward_lstm_14/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d
forward_lstm_14/Shape_1Shapeforward_lstm_14/transpose:y:0*
T0*
_output_shapes
:o
%forward_lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
forward_lstm_14/strided_slice_1StridedSlice forward_lstm_14/Shape_1:output:0.forward_lstm_14/strided_slice_1/stack:output:00forward_lstm_14/strided_slice_1/stack_1:output:00forward_lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+forward_lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ä
forward_lstm_14/TensorArrayV2TensorListReserve4forward_lstm_14/TensorArrayV2/element_shape:output:0(forward_lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Eforward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
7forward_lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_14/transpose:y:0Nforward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅo
%forward_lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'forward_lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¹
forward_lstm_14/strided_slice_2StridedSliceforward_lstm_14/transpose:y:0.forward_lstm_14/strided_slice_2/stack:output:00forward_lstm_14/strided_slice_2/stack_1:output:00forward_lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_maskÆ
2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOpReadVariableOp;forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ę
#forward_lstm_14/lstm_cell_94/MatMulMatMul(forward_lstm_14/strided_slice_2:output:0:forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’“
4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOp=forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ą
%forward_lstm_14/lstm_cell_94/MatMul_1MatMulforward_lstm_14/zeros:output:0<forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¼
 forward_lstm_14/lstm_cell_94/addAddV2-forward_lstm_14/lstm_cell_94/MatMul:product:0/forward_lstm_14/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’­
3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOp<forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Å
$forward_lstm_14/lstm_cell_94/BiasAddBiasAdd$forward_lstm_14/lstm_cell_94/add:z:0;forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’n
,forward_lstm_14/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
"forward_lstm_14/lstm_cell_94/splitSplit5forward_lstm_14/lstm_cell_94/split/split_dim:output:0-forward_lstm_14/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
$forward_lstm_14/lstm_cell_94/SigmoidSigmoid+forward_lstm_14/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
&forward_lstm_14/lstm_cell_94/Sigmoid_1Sigmoid+forward_lstm_14/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ø
 forward_lstm_14/lstm_cell_94/mulMul*forward_lstm_14/lstm_cell_94/Sigmoid_1:y:0 forward_lstm_14/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
!forward_lstm_14/lstm_cell_94/ReluRelu+forward_lstm_14/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’·
"forward_lstm_14/lstm_cell_94/mul_1Mul(forward_lstm_14/lstm_cell_94/Sigmoid:y:0/forward_lstm_14/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¬
"forward_lstm_14/lstm_cell_94/add_1AddV2$forward_lstm_14/lstm_cell_94/mul:z:0&forward_lstm_14/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
&forward_lstm_14/lstm_cell_94/Sigmoid_2Sigmoid+forward_lstm_14/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
#forward_lstm_14/lstm_cell_94/Relu_1Relu&forward_lstm_14/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’»
"forward_lstm_14/lstm_cell_94/mul_2Mul*forward_lstm_14/lstm_cell_94/Sigmoid_2:y:01forward_lstm_14/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’~
-forward_lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   n
,forward_lstm_14/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :õ
forward_lstm_14/TensorArrayV2_1TensorListReserve6forward_lstm_14/TensorArrayV2_1/element_shape:output:05forward_lstm_14/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅV
forward_lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(forward_lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’d
"forward_lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : č
forward_lstm_14/whileWhile+forward_lstm_14/while/loop_counter:output:01forward_lstm_14/while/maximum_iterations:output:0forward_lstm_14/time:output:0(forward_lstm_14/TensorArrayV2_1:handle:0forward_lstm_14/zeros:output:0 forward_lstm_14/zeros_1:output:0(forward_lstm_14/strided_slice_1:output:0Gforward_lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0;forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource=forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource<forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource*
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
"forward_lstm_14_while_body_1559094*.
cond&R$
"forward_lstm_14_while_cond_1559093*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
@forward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
2forward_lstm_14/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_14/while:output:3Iforward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsx
%forward_lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’q
'forward_lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'forward_lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ų
forward_lstm_14/strided_slice_3StridedSlice;forward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0.forward_lstm_14/strided_slice_3/stack:output:00forward_lstm_14/strided_slice_3/stack_1:output:00forward_lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_masku
 forward_lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ē
forward_lstm_14/transpose_1	Transpose;forward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0)forward_lstm_14/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’k
forward_lstm_14/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    L
backward_lstm_14/ShapeShapeinputs*
T0*
_output_shapes
:n
$backward_lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&backward_lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&backward_lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
backward_lstm_14/strided_sliceStridedSlicebackward_lstm_14/Shape:output:0-backward_lstm_14/strided_slice/stack:output:0/backward_lstm_14/strided_slice/stack_1:output:0/backward_lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskb
backward_lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :¦
backward_lstm_14/zeros/packedPack'backward_lstm_14/strided_slice:output:0(backward_lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:a
backward_lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
backward_lstm_14/zerosFill&backward_lstm_14/zeros/packed:output:0%backward_lstm_14/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’d
!backward_lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ŗ
backward_lstm_14/zeros_1/packedPack'backward_lstm_14/strided_slice:output:0*backward_lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:c
backward_lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¦
backward_lstm_14/zeros_1Fill(backward_lstm_14/zeros_1/packed:output:0'backward_lstm_14/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’t
backward_lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
backward_lstm_14/transpose	Transposeinputs(backward_lstm_14/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’f
backward_lstm_14/Shape_1Shapebackward_lstm_14/transpose:y:0*
T0*
_output_shapes
:p
&backward_lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:°
 backward_lstm_14/strided_slice_1StridedSlice!backward_lstm_14/Shape_1:output:0/backward_lstm_14/strided_slice_1/stack:output:01backward_lstm_14/strided_slice_1/stack_1:output:01backward_lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskw
,backward_lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ē
backward_lstm_14/TensorArrayV2TensorListReserve5backward_lstm_14/TensorArrayV2/element_shape:output:0)backward_lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅi
backward_lstm_14/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: §
backward_lstm_14/ReverseV2	ReverseV2backward_lstm_14/transpose:y:0(backward_lstm_14/ReverseV2/axis:output:0*
T0*+
_output_shapes
:’’’’’’’’’
Fbackward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
8backward_lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor#backward_lstm_14/ReverseV2:output:0Obackward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅp
&backward_lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:r
(backward_lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¾
 backward_lstm_14/strided_slice_2StridedSlicebackward_lstm_14/transpose:y:0/backward_lstm_14/strided_slice_2/stack:output:01backward_lstm_14/strided_slice_2/stack_1:output:01backward_lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask±
3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOpReadVariableOp<backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0É
$backward_lstm_14/lstm_cell_95/MatMulMatMul)backward_lstm_14/strided_slice_2:output:0;backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¶
5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOp>backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ć
&backward_lstm_14/lstm_cell_95/MatMul_1MatMulbackward_lstm_14/zeros:output:0=backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’æ
!backward_lstm_14/lstm_cell_95/addAddV2.backward_lstm_14/lstm_cell_95/MatMul:product:00backward_lstm_14/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOp=backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Č
%backward_lstm_14/lstm_cell_95/BiasAddBiasAdd%backward_lstm_14/lstm_cell_95/add:z:0<backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’o
-backward_lstm_14/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
#backward_lstm_14/lstm_cell_95/splitSplit6backward_lstm_14/lstm_cell_95/split/split_dim:output:0.backward_lstm_14/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
%backward_lstm_14/lstm_cell_95/SigmoidSigmoid,backward_lstm_14/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
'backward_lstm_14/lstm_cell_95/Sigmoid_1Sigmoid,backward_lstm_14/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’«
!backward_lstm_14/lstm_cell_95/mulMul+backward_lstm_14/lstm_cell_95/Sigmoid_1:y:0!backward_lstm_14/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
"backward_lstm_14/lstm_cell_95/ReluRelu,backward_lstm_14/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ŗ
#backward_lstm_14/lstm_cell_95/mul_1Mul)backward_lstm_14/lstm_cell_95/Sigmoid:y:00backward_lstm_14/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
#backward_lstm_14/lstm_cell_95/add_1AddV2%backward_lstm_14/lstm_cell_95/mul:z:0'backward_lstm_14/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
'backward_lstm_14/lstm_cell_95/Sigmoid_2Sigmoid,backward_lstm_14/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
$backward_lstm_14/lstm_cell_95/Relu_1Relu'backward_lstm_14/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’¾
#backward_lstm_14/lstm_cell_95/mul_2Mul+backward_lstm_14/lstm_cell_95/Sigmoid_2:y:02backward_lstm_14/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
.backward_lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   o
-backward_lstm_14/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ų
 backward_lstm_14/TensorArrayV2_1TensorListReserve7backward_lstm_14/TensorArrayV2_1/element_shape:output:06backward_lstm_14/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅW
backward_lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : t
)backward_lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’e
#backward_lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ö
backward_lstm_14/whileWhile,backward_lstm_14/while/loop_counter:output:02backward_lstm_14/while/maximum_iterations:output:0backward_lstm_14/time:output:0)backward_lstm_14/TensorArrayV2_1:handle:0backward_lstm_14/zeros:output:0!backward_lstm_14/zeros_1:output:0)backward_lstm_14/strided_slice_1:output:0Hbackward_lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0<backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource>backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource=backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource*
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
#backward_lstm_14_while_body_1559237*/
cond'R%
#backward_lstm_14_while_cond_1559236*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
Abackward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
3backward_lstm_14/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_14/while:output:3Jbackward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsy
&backward_lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’r
(backward_lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: r
(backward_lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ż
 backward_lstm_14/strided_slice_3StridedSlice<backward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0/backward_lstm_14/strided_slice_3/stack:output:01backward_lstm_14/strided_slice_3/stack_1:output:01backward_lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maskv
!backward_lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ź
backward_lstm_14/transpose_1	Transpose<backward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0*backward_lstm_14/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’l
backward_lstm_14/runtimeConst"/device:CPU:0*
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
concatConcatV2(forward_lstm_14/strided_slice_3:output:0)backward_lstm_14/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’¾
NoOpNoOp5^backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp4^backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp6^backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp^backward_lstm_14/while4^forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp3^forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp5^forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp^forward_lstm_14/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : 2l
4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp4backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp2j
3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp3backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp2n
5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp5backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp20
backward_lstm_14/whilebackward_lstm_14/while2j
3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp3forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp2h
2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp2forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp2l
4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp4forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp2.
forward_lstm_14/whileforward_lstm_14/while:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ō

I__inference_lstm_cell_95_layer_call_and_return_conditional_losses_1562876

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
æ	

2__inference_bidirectional_14_layer_call_fn_1560211
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
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1558636p
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
õ

a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_1559857

inputs_
Lbidirectional_14_forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource:	b
Nbidirectional_14_forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource:
\
Mbidirectional_14_forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource:	`
Mbidirectional_14_backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource:	c
Obidirectional_14_backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource:
]
Nbidirectional_14_backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource:	:
'dense_14_matmul_readvariableop_resource:	6
(dense_14_biasadd_readvariableop_resource:
identity¢Ebidirectional_14/backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp¢Dbidirectional_14/backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp¢Fbidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp¢'bidirectional_14/backward_lstm_14/while¢Dbidirectional_14/forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp¢Cbidirectional_14/forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp¢Ebidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp¢&bidirectional_14/forward_lstm_14/while¢dense_14/BiasAdd/ReadVariableOp¢dense_14/MatMul/ReadVariableOpc
lambda_14/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
lambda_14/ExpandDims
ExpandDimsinputs!lambda_14/ExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’s
&bidirectional_14/forward_lstm_14/ShapeShapelambda_14/ExpandDims:output:0*
T0*
_output_shapes
:~
4bidirectional_14/forward_lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6bidirectional_14/forward_lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6bidirectional_14/forward_lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ö
.bidirectional_14/forward_lstm_14/strided_sliceStridedSlice/bidirectional_14/forward_lstm_14/Shape:output:0=bidirectional_14/forward_lstm_14/strided_slice/stack:output:0?bidirectional_14/forward_lstm_14/strided_slice/stack_1:output:0?bidirectional_14/forward_lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskr
/bidirectional_14/forward_lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ö
-bidirectional_14/forward_lstm_14/zeros/packedPack7bidirectional_14/forward_lstm_14/strided_slice:output:08bidirectional_14/forward_lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:q
,bidirectional_14/forward_lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Š
&bidirectional_14/forward_lstm_14/zerosFill6bidirectional_14/forward_lstm_14/zeros/packed:output:05bidirectional_14/forward_lstm_14/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’t
1bidirectional_14/forward_lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ś
/bidirectional_14/forward_lstm_14/zeros_1/packedPack7bidirectional_14/forward_lstm_14/strided_slice:output:0:bidirectional_14/forward_lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:s
.bidirectional_14/forward_lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ö
(bidirectional_14/forward_lstm_14/zeros_1Fill8bidirectional_14/forward_lstm_14/zeros_1/packed:output:07bidirectional_14/forward_lstm_14/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’
/bidirectional_14/forward_lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ę
*bidirectional_14/forward_lstm_14/transpose	Transposelambda_14/ExpandDims:output:08bidirectional_14/forward_lstm_14/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’
(bidirectional_14/forward_lstm_14/Shape_1Shape.bidirectional_14/forward_lstm_14/transpose:y:0*
T0*
_output_shapes
:
6bidirectional_14/forward_lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8bidirectional_14/forward_lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8bidirectional_14/forward_lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
0bidirectional_14/forward_lstm_14/strided_slice_1StridedSlice1bidirectional_14/forward_lstm_14/Shape_1:output:0?bidirectional_14/forward_lstm_14/strided_slice_1/stack:output:0Abidirectional_14/forward_lstm_14/strided_slice_1/stack_1:output:0Abidirectional_14/forward_lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
<bidirectional_14/forward_lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
.bidirectional_14/forward_lstm_14/TensorArrayV2TensorListReserveEbidirectional_14/forward_lstm_14/TensorArrayV2/element_shape:output:09bidirectional_14/forward_lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ§
Vbidirectional_14/forward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ć
Hbidirectional_14/forward_lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor.bidirectional_14/forward_lstm_14/transpose:y:0_bidirectional_14/forward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
6bidirectional_14/forward_lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
8bidirectional_14/forward_lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
8bidirectional_14/forward_lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
0bidirectional_14/forward_lstm_14/strided_slice_2StridedSlice.bidirectional_14/forward_lstm_14/transpose:y:0?bidirectional_14/forward_lstm_14/strided_slice_2/stack:output:0Abidirectional_14/forward_lstm_14/strided_slice_2/stack_1:output:0Abidirectional_14/forward_lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_maskŃ
Cbidirectional_14/forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOpReadVariableOpLbidirectional_14_forward_lstm_14_lstm_cell_94_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ł
4bidirectional_14/forward_lstm_14/lstm_cell_94/MatMulMatMul9bidirectional_14/forward_lstm_14/strided_slice_2:output:0Kbidirectional_14/forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ö
Ebidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOpNbidirectional_14_forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0ó
6bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1MatMul/bidirectional_14/forward_lstm_14/zeros:output:0Mbidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ļ
1bidirectional_14/forward_lstm_14/lstm_cell_94/addAddV2>bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul:product:0@bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Ļ
Dbidirectional_14/forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOpMbidirectional_14_forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ų
5bidirectional_14/forward_lstm_14/lstm_cell_94/BiasAddBiasAdd5bidirectional_14/forward_lstm_14/lstm_cell_94/add:z:0Lbidirectional_14/forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
=bidirectional_14/forward_lstm_14/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ä
3bidirectional_14/forward_lstm_14/lstm_cell_94/splitSplitFbidirectional_14/forward_lstm_14/lstm_cell_94/split/split_dim:output:0>bidirectional_14/forward_lstm_14/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split±
5bidirectional_14/forward_lstm_14/lstm_cell_94/SigmoidSigmoid<bidirectional_14/forward_lstm_14/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’³
7bidirectional_14/forward_lstm_14/lstm_cell_94/Sigmoid_1Sigmoid<bidirectional_14/forward_lstm_14/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ū
1bidirectional_14/forward_lstm_14/lstm_cell_94/mulMul;bidirectional_14/forward_lstm_14/lstm_cell_94/Sigmoid_1:y:01bidirectional_14/forward_lstm_14/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’«
2bidirectional_14/forward_lstm_14/lstm_cell_94/ReluRelu<bidirectional_14/forward_lstm_14/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ź
3bidirectional_14/forward_lstm_14/lstm_cell_94/mul_1Mul9bidirectional_14/forward_lstm_14/lstm_cell_94/Sigmoid:y:0@bidirectional_14/forward_lstm_14/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’ß
3bidirectional_14/forward_lstm_14/lstm_cell_94/add_1AddV25bidirectional_14/forward_lstm_14/lstm_cell_94/mul:z:07bidirectional_14/forward_lstm_14/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’³
7bidirectional_14/forward_lstm_14/lstm_cell_94/Sigmoid_2Sigmoid<bidirectional_14/forward_lstm_14/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’Ø
4bidirectional_14/forward_lstm_14/lstm_cell_94/Relu_1Relu7bidirectional_14/forward_lstm_14/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ī
3bidirectional_14/forward_lstm_14/lstm_cell_94/mul_2Mul;bidirectional_14/forward_lstm_14/lstm_cell_94/Sigmoid_2:y:0Bbidirectional_14/forward_lstm_14/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
>bidirectional_14/forward_lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
=bidirectional_14/forward_lstm_14/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :Ø
0bidirectional_14/forward_lstm_14/TensorArrayV2_1TensorListReserveGbidirectional_14/forward_lstm_14/TensorArrayV2_1/element_shape:output:0Fbidirectional_14/forward_lstm_14/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅg
%bidirectional_14/forward_lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : 
9bidirectional_14/forward_lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’u
3bidirectional_14/forward_lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ö	
&bidirectional_14/forward_lstm_14/whileWhile<bidirectional_14/forward_lstm_14/while/loop_counter:output:0Bbidirectional_14/forward_lstm_14/while/maximum_iterations:output:0.bidirectional_14/forward_lstm_14/time:output:09bidirectional_14/forward_lstm_14/TensorArrayV2_1:handle:0/bidirectional_14/forward_lstm_14/zeros:output:01bidirectional_14/forward_lstm_14/zeros_1:output:09bidirectional_14/forward_lstm_14/strided_slice_1:output:0Xbidirectional_14/forward_lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0Lbidirectional_14_forward_lstm_14_lstm_cell_94_matmul_readvariableop_resourceNbidirectional_14_forward_lstm_14_lstm_cell_94_matmul_1_readvariableop_resourceMbidirectional_14_forward_lstm_14_lstm_cell_94_biasadd_readvariableop_resource*
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
3bidirectional_14_forward_lstm_14_while_body_1559621*?
cond7R5
3bidirectional_14_forward_lstm_14_while_cond_1559620*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations ¢
Qbidirectional_14/forward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ŗ
Cbidirectional_14/forward_lstm_14/TensorArrayV2Stack/TensorListStackTensorListStack/bidirectional_14/forward_lstm_14/while:output:3Zbidirectional_14/forward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elements
6bidirectional_14/forward_lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
8bidirectional_14/forward_lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
8bidirectional_14/forward_lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:­
0bidirectional_14/forward_lstm_14/strided_slice_3StridedSliceLbidirectional_14/forward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0?bidirectional_14/forward_lstm_14/strided_slice_3/stack:output:0Abidirectional_14/forward_lstm_14/strided_slice_3/stack_1:output:0Abidirectional_14/forward_lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
1bidirectional_14/forward_lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ś
,bidirectional_14/forward_lstm_14/transpose_1	TransposeLbidirectional_14/forward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0:bidirectional_14/forward_lstm_14/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’|
(bidirectional_14/forward_lstm_14/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    t
'bidirectional_14/backward_lstm_14/ShapeShapelambda_14/ExpandDims:output:0*
T0*
_output_shapes
:
5bidirectional_14/backward_lstm_14/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
7bidirectional_14/backward_lstm_14/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7bidirectional_14/backward_lstm_14/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ū
/bidirectional_14/backward_lstm_14/strided_sliceStridedSlice0bidirectional_14/backward_lstm_14/Shape:output:0>bidirectional_14/backward_lstm_14/strided_slice/stack:output:0@bidirectional_14/backward_lstm_14/strided_slice/stack_1:output:0@bidirectional_14/backward_lstm_14/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masks
0bidirectional_14/backward_lstm_14/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ł
.bidirectional_14/backward_lstm_14/zeros/packedPack8bidirectional_14/backward_lstm_14/strided_slice:output:09bidirectional_14/backward_lstm_14/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:r
-bidirectional_14/backward_lstm_14/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ó
'bidirectional_14/backward_lstm_14/zerosFill7bidirectional_14/backward_lstm_14/zeros/packed:output:06bidirectional_14/backward_lstm_14/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’u
2bidirectional_14/backward_lstm_14/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ż
0bidirectional_14/backward_lstm_14/zeros_1/packedPack8bidirectional_14/backward_lstm_14/strided_slice:output:0;bidirectional_14/backward_lstm_14/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:t
/bidirectional_14/backward_lstm_14/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ł
)bidirectional_14/backward_lstm_14/zeros_1Fill9bidirectional_14/backward_lstm_14/zeros_1/packed:output:08bidirectional_14/backward_lstm_14/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’
0bidirectional_14/backward_lstm_14/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Č
+bidirectional_14/backward_lstm_14/transpose	Transposelambda_14/ExpandDims:output:09bidirectional_14/backward_lstm_14/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’
)bidirectional_14/backward_lstm_14/Shape_1Shape/bidirectional_14/backward_lstm_14/transpose:y:0*
T0*
_output_shapes
:
7bidirectional_14/backward_lstm_14/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9bidirectional_14/backward_lstm_14/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9bidirectional_14/backward_lstm_14/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1bidirectional_14/backward_lstm_14/strided_slice_1StridedSlice2bidirectional_14/backward_lstm_14/Shape_1:output:0@bidirectional_14/backward_lstm_14/strided_slice_1/stack:output:0Bbidirectional_14/backward_lstm_14/strided_slice_1/stack_1:output:0Bbidirectional_14/backward_lstm_14/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
=bidirectional_14/backward_lstm_14/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
/bidirectional_14/backward_lstm_14/TensorArrayV2TensorListReserveFbidirectional_14/backward_lstm_14/TensorArrayV2/element_shape:output:0:bidirectional_14/backward_lstm_14/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅz
0bidirectional_14/backward_lstm_14/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Ś
+bidirectional_14/backward_lstm_14/ReverseV2	ReverseV2/bidirectional_14/backward_lstm_14/transpose:y:09bidirectional_14/backward_lstm_14/ReverseV2/axis:output:0*
T0*+
_output_shapes
:’’’’’’’’’Ø
Wbidirectional_14/backward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ė
Ibidirectional_14/backward_lstm_14/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor4bidirectional_14/backward_lstm_14/ReverseV2:output:0`bidirectional_14/backward_lstm_14/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
7bidirectional_14/backward_lstm_14/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
9bidirectional_14/backward_lstm_14/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
9bidirectional_14/backward_lstm_14/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
1bidirectional_14/backward_lstm_14/strided_slice_2StridedSlice/bidirectional_14/backward_lstm_14/transpose:y:0@bidirectional_14/backward_lstm_14/strided_slice_2/stack:output:0Bbidirectional_14/backward_lstm_14/strided_slice_2/stack_1:output:0Bbidirectional_14/backward_lstm_14/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_maskÓ
Dbidirectional_14/backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOpReadVariableOpMbidirectional_14_backward_lstm_14_lstm_cell_95_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ü
5bidirectional_14/backward_lstm_14/lstm_cell_95/MatMulMatMul:bidirectional_14/backward_lstm_14/strided_slice_2:output:0Lbidirectional_14/backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ų
Fbidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOpObidirectional_14_backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0ö
7bidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1MatMul0bidirectional_14/backward_lstm_14/zeros:output:0Nbidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ņ
2bidirectional_14/backward_lstm_14/lstm_cell_95/addAddV2?bidirectional_14/backward_lstm_14/lstm_cell_95/MatMul:product:0Abidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Ń
Ebidirectional_14/backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOpNbidirectional_14_backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ū
6bidirectional_14/backward_lstm_14/lstm_cell_95/BiasAddBiasAdd6bidirectional_14/backward_lstm_14/lstm_cell_95/add:z:0Mbidirectional_14/backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
>bidirectional_14/backward_lstm_14/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ē
4bidirectional_14/backward_lstm_14/lstm_cell_95/splitSplitGbidirectional_14/backward_lstm_14/lstm_cell_95/split/split_dim:output:0?bidirectional_14/backward_lstm_14/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split³
6bidirectional_14/backward_lstm_14/lstm_cell_95/SigmoidSigmoid=bidirectional_14/backward_lstm_14/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’µ
8bidirectional_14/backward_lstm_14/lstm_cell_95/Sigmoid_1Sigmoid=bidirectional_14/backward_lstm_14/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ž
2bidirectional_14/backward_lstm_14/lstm_cell_95/mulMul<bidirectional_14/backward_lstm_14/lstm_cell_95/Sigmoid_1:y:02bidirectional_14/backward_lstm_14/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’­
3bidirectional_14/backward_lstm_14/lstm_cell_95/ReluRelu=bidirectional_14/backward_lstm_14/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ķ
4bidirectional_14/backward_lstm_14/lstm_cell_95/mul_1Mul:bidirectional_14/backward_lstm_14/lstm_cell_95/Sigmoid:y:0Abidirectional_14/backward_lstm_14/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’ā
4bidirectional_14/backward_lstm_14/lstm_cell_95/add_1AddV26bidirectional_14/backward_lstm_14/lstm_cell_95/mul:z:08bidirectional_14/backward_lstm_14/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’µ
8bidirectional_14/backward_lstm_14/lstm_cell_95/Sigmoid_2Sigmoid=bidirectional_14/backward_lstm_14/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
5bidirectional_14/backward_lstm_14/lstm_cell_95/Relu_1Relu8bidirectional_14/backward_lstm_14/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ń
4bidirectional_14/backward_lstm_14/lstm_cell_95/mul_2Mul<bidirectional_14/backward_lstm_14/lstm_cell_95/Sigmoid_2:y:0Cbidirectional_14/backward_lstm_14/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
?bidirectional_14/backward_lstm_14/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
>bidirectional_14/backward_lstm_14/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :«
1bidirectional_14/backward_lstm_14/TensorArrayV2_1TensorListReserveHbidirectional_14/backward_lstm_14/TensorArrayV2_1/element_shape:output:0Gbidirectional_14/backward_lstm_14/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅh
&bidirectional_14/backward_lstm_14/timeConst*
_output_shapes
: *
dtype0*
value	B : 
:bidirectional_14/backward_lstm_14/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’v
4bidirectional_14/backward_lstm_14/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ä	
'bidirectional_14/backward_lstm_14/whileWhile=bidirectional_14/backward_lstm_14/while/loop_counter:output:0Cbidirectional_14/backward_lstm_14/while/maximum_iterations:output:0/bidirectional_14/backward_lstm_14/time:output:0:bidirectional_14/backward_lstm_14/TensorArrayV2_1:handle:00bidirectional_14/backward_lstm_14/zeros:output:02bidirectional_14/backward_lstm_14/zeros_1:output:0:bidirectional_14/backward_lstm_14/strided_slice_1:output:0Ybidirectional_14/backward_lstm_14/TensorArrayUnstack/TensorListFromTensor:output_handle:0Mbidirectional_14_backward_lstm_14_lstm_cell_95_matmul_readvariableop_resourceObidirectional_14_backward_lstm_14_lstm_cell_95_matmul_1_readvariableop_resourceNbidirectional_14_backward_lstm_14_lstm_cell_95_biasadd_readvariableop_resource*
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
4bidirectional_14_backward_lstm_14_while_body_1559764*@
cond8R6
4bidirectional_14_backward_lstm_14_while_cond_1559763*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations £
Rbidirectional_14/backward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ½
Dbidirectional_14/backward_lstm_14/TensorArrayV2Stack/TensorListStackTensorListStack0bidirectional_14/backward_lstm_14/while:output:3[bidirectional_14/backward_lstm_14/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elements
7bidirectional_14/backward_lstm_14/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
9bidirectional_14/backward_lstm_14/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
9bidirectional_14/backward_lstm_14/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:²
1bidirectional_14/backward_lstm_14/strided_slice_3StridedSliceMbidirectional_14/backward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0@bidirectional_14/backward_lstm_14/strided_slice_3/stack:output:0Bbidirectional_14/backward_lstm_14/strided_slice_3/stack_1:output:0Bbidirectional_14/backward_lstm_14/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
2bidirectional_14/backward_lstm_14/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ż
-bidirectional_14/backward_lstm_14/transpose_1	TransposeMbidirectional_14/backward_lstm_14/TensorArrayV2Stack/TensorListStack:tensor:0;bidirectional_14/backward_lstm_14/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’}
)bidirectional_14/backward_lstm_14/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ^
bidirectional_14/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :ż
bidirectional_14/concatConcatV29bidirectional_14/forward_lstm_14/strided_slice_3:output:0:bidirectional_14/backward_lstm_14/strided_slice_3:output:0%bidirectional_14/concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’
dense_14/MatMul/ReadVariableOpReadVariableOp'dense_14_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_14/MatMulMatMul bidirectional_14/concat:output:0&dense_14/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
dense_14/BiasAdd/ReadVariableOpReadVariableOp(dense_14_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_14/BiasAddBiasAdddense_14/MatMul:product:0'dense_14/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’h
IdentityIdentitydense_14/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
NoOpNoOpF^bidirectional_14/backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOpE^bidirectional_14/backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOpG^bidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp(^bidirectional_14/backward_lstm_14/whileE^bidirectional_14/forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOpD^bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOpF^bidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp'^bidirectional_14/forward_lstm_14/while ^dense_14/BiasAdd/ReadVariableOp^dense_14/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 2
Ebidirectional_14/backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOpEbidirectional_14/backward_lstm_14/lstm_cell_95/BiasAdd/ReadVariableOp2
Dbidirectional_14/backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOpDbidirectional_14/backward_lstm_14/lstm_cell_95/MatMul/ReadVariableOp2
Fbidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOpFbidirectional_14/backward_lstm_14/lstm_cell_95/MatMul_1/ReadVariableOp2R
'bidirectional_14/backward_lstm_14/while'bidirectional_14/backward_lstm_14/while2
Dbidirectional_14/forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOpDbidirectional_14/forward_lstm_14/lstm_cell_94/BiasAdd/ReadVariableOp2
Cbidirectional_14/forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOpCbidirectional_14/forward_lstm_14/lstm_cell_94/MatMul/ReadVariableOp2
Ebidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOpEbidirectional_14/forward_lstm_14/lstm_cell_94/MatMul_1/ReadVariableOp2P
&bidirectional_14/forward_lstm_14/while&bidirectional_14/forward_lstm_14/while2B
dense_14/BiasAdd/ReadVariableOpdense_14/BiasAdd/ReadVariableOp2@
dense_14/MatMul/ReadVariableOpdense_14/MatMul/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
¾
Č
while_cond_1557672
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1557672___redundant_placeholder05
1while_while_cond_1557672___redundant_placeholder15
1while_while_cond_1557672___redundant_placeholder25
1while_while_cond_1557672___redundant_placeholder3
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
while_cond_1562594
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_15
1while_while_cond_1562594___redundant_placeholder05
1while_while_cond_1562594___redundant_placeholder15
1while_while_cond_1562594___redundant_placeholder25
1while_while_cond_1562594___redundant_placeholder3
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
ßM
ó
#backward_lstm_14_while_body_1560448>
:backward_lstm_14_while_backward_lstm_14_while_loop_counterD
@backward_lstm_14_while_backward_lstm_14_while_maximum_iterations&
"backward_lstm_14_while_placeholder(
$backward_lstm_14_while_placeholder_1(
$backward_lstm_14_while_placeholder_2(
$backward_lstm_14_while_placeholder_3=
9backward_lstm_14_while_backward_lstm_14_strided_slice_1_0y
ubackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0W
Dbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0:	Z
Fbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0:
T
Ebackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0:	#
backward_lstm_14_while_identity%
!backward_lstm_14_while_identity_1%
!backward_lstm_14_while_identity_2%
!backward_lstm_14_while_identity_3%
!backward_lstm_14_while_identity_4%
!backward_lstm_14_while_identity_5;
7backward_lstm_14_while_backward_lstm_14_strided_slice_1w
sbackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensorU
Bbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource:	X
Dbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource:
R
Cbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource:	¢:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp¢9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp¢;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp
Hbackward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’
:backward_lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemubackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0"backward_lstm_14_while_placeholderQbackward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0æ
9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOpReadVariableOpDbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ķ
*backward_lstm_14/while/lstm_cell_95/MatMulMatMulAbackward_lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0Abackward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ä
;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOpReadVariableOpFbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ō
,backward_lstm_14/while/lstm_cell_95/MatMul_1MatMul$backward_lstm_14_while_placeholder_2Cbackward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ń
'backward_lstm_14/while/lstm_cell_95/addAddV24backward_lstm_14/while/lstm_cell_95/MatMul:product:06backward_lstm_14/while/lstm_cell_95/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’½
:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOpReadVariableOpEbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ś
+backward_lstm_14/while/lstm_cell_95/BiasAddBiasAdd+backward_lstm_14/while/lstm_cell_95/add:z:0Bbackward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’u
3backward_lstm_14/while/lstm_cell_95/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¦
)backward_lstm_14/while/lstm_cell_95/splitSplit<backward_lstm_14/while/lstm_cell_95/split/split_dim:output:04backward_lstm_14/while/lstm_cell_95/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
+backward_lstm_14/while/lstm_cell_95/SigmoidSigmoid2backward_lstm_14/while/lstm_cell_95/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
-backward_lstm_14/while/lstm_cell_95/Sigmoid_1Sigmoid2backward_lstm_14/while/lstm_cell_95/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’ŗ
'backward_lstm_14/while/lstm_cell_95/mulMul1backward_lstm_14/while/lstm_cell_95/Sigmoid_1:y:0$backward_lstm_14_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
(backward_lstm_14/while/lstm_cell_95/ReluRelu2backward_lstm_14/while/lstm_cell_95/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ģ
)backward_lstm_14/while/lstm_cell_95/mul_1Mul/backward_lstm_14/while/lstm_cell_95/Sigmoid:y:06backward_lstm_14/while/lstm_cell_95/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Į
)backward_lstm_14/while/lstm_cell_95/add_1AddV2+backward_lstm_14/while/lstm_cell_95/mul:z:0-backward_lstm_14/while/lstm_cell_95/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
-backward_lstm_14/while/lstm_cell_95/Sigmoid_2Sigmoid2backward_lstm_14/while/lstm_cell_95/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
*backward_lstm_14/while/lstm_cell_95/Relu_1Relu-backward_lstm_14/while/lstm_cell_95/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Š
)backward_lstm_14/while/lstm_cell_95/mul_2Mul1backward_lstm_14/while/lstm_cell_95/Sigmoid_2:y:08backward_lstm_14/while/lstm_cell_95/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Abackward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ±
;backward_lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem$backward_lstm_14_while_placeholder_1Jbackward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/index:output:0-backward_lstm_14/while/lstm_cell_95/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ^
backward_lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_14/while/addAddV2"backward_lstm_14_while_placeholder%backward_lstm_14/while/add/y:output:0*
T0*
_output_shapes
: `
backward_lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :«
backward_lstm_14/while/add_1AddV2:backward_lstm_14_while_backward_lstm_14_while_loop_counter'backward_lstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_14/while/IdentityIdentity backward_lstm_14/while/add_1:z:0^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ®
!backward_lstm_14/while/Identity_1Identity@backward_lstm_14_while_backward_lstm_14_while_maximum_iterations^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: 
!backward_lstm_14/while/Identity_2Identitybackward_lstm_14/while/add:z:0^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ¹
!backward_lstm_14/while/Identity_3IdentityKbackward_lstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_14/while/NoOp*
T0*
_output_shapes
: ­
!backward_lstm_14/while/Identity_4Identity-backward_lstm_14/while/lstm_cell_95/mul_2:z:0^backward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’­
!backward_lstm_14/while/Identity_5Identity-backward_lstm_14/while/lstm_cell_95/add_1:z:0^backward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
backward_lstm_14/while/NoOpNoOp;^backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp:^backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp<^backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "t
7backward_lstm_14_while_backward_lstm_14_strided_slice_19backward_lstm_14_while_backward_lstm_14_strided_slice_1_0"K
backward_lstm_14_while_identity(backward_lstm_14/while/Identity:output:0"O
!backward_lstm_14_while_identity_1*backward_lstm_14/while/Identity_1:output:0"O
!backward_lstm_14_while_identity_2*backward_lstm_14/while/Identity_2:output:0"O
!backward_lstm_14_while_identity_3*backward_lstm_14/while/Identity_3:output:0"O
!backward_lstm_14_while_identity_4*backward_lstm_14/while/Identity_4:output:0"O
!backward_lstm_14_while_identity_5*backward_lstm_14/while/Identity_5:output:0"
Cbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resourceEbackward_lstm_14_while_lstm_cell_95_biasadd_readvariableop_resource_0"
Dbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resourceFbackward_lstm_14_while_lstm_cell_95_matmul_1_readvariableop_resource_0"
Bbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resourceDbackward_lstm_14_while_lstm_cell_95_matmul_readvariableop_resource_0"ģ
sbackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensorubackward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2x
:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp:backward_lstm_14/while/lstm_cell_95/BiasAdd/ReadVariableOp2v
9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp9backward_lstm_14/while/lstm_cell_95/MatMul/ReadVariableOp2z
;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp;backward_lstm_14/while/lstm_cell_95/MatMul_1/ReadVariableOp: 
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
”$
ģ
while_body_1557868
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0/
while_lstm_cell_95_1557892_0:	0
while_lstm_cell_95_1557894_0:
+
while_lstm_cell_95_1557896_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor-
while_lstm_cell_95_1557892:	.
while_lstm_cell_95_1557894:
)
while_lstm_cell_95_1557896:	¢*while/lstm_cell_95/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0½
*while/lstm_cell_95/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_95_1557892_0while_lstm_cell_95_1557894_0while_lstm_cell_95_1557896_0*
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
GPU2*0J 8 *R
fMRK
I__inference_lstm_cell_95_layer_call_and_return_conditional_losses_1557806r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_95/StatefulPartitionedCall:output:0*
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
: 
while/Identity_4Identity3while/lstm_cell_95/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
while/Identity_5Identity3while/lstm_cell_95/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’y

while/NoOpNoOp+^while/lstm_cell_95/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0":
while_lstm_cell_95_1557892while_lstm_cell_95_1557892_0":
while_lstm_cell_95_1557894while_lstm_cell_95_1557894_0":
while_lstm_cell_95_1557896while_lstm_cell_95_1557896_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2X
*while/lstm_cell_95/StatefulPartitionedCall*while/lstm_cell_95/StatefulPartitionedCall: 
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
2__inference_bidirectional_14_layer_call_fn_1560194
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
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1558263p
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
æL
Ó
"forward_lstm_14_while_body_1560885<
8forward_lstm_14_while_forward_lstm_14_while_loop_counterB
>forward_lstm_14_while_forward_lstm_14_while_maximum_iterations%
!forward_lstm_14_while_placeholder'
#forward_lstm_14_while_placeholder_1'
#forward_lstm_14_while_placeholder_2'
#forward_lstm_14_while_placeholder_3;
7forward_lstm_14_while_forward_lstm_14_strided_slice_1_0w
sforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0V
Cforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0:	Y
Eforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0:
S
Dforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0:	"
forward_lstm_14_while_identity$
 forward_lstm_14_while_identity_1$
 forward_lstm_14_while_identity_2$
 forward_lstm_14_while_identity_3$
 forward_lstm_14_while_identity_4$
 forward_lstm_14_while_identity_59
5forward_lstm_14_while_forward_lstm_14_strided_slice_1u
qforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensorT
Aforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource:	W
Cforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource:
Q
Bforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource:	¢9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp¢8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp¢:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp
Gforward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ö
9forward_lstm_14/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0!forward_lstm_14_while_placeholderPforward_lstm_14/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0½
8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOpReadVariableOpCforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ź
)forward_lstm_14/while/lstm_cell_94/MatMulMatMul@forward_lstm_14/while/TensorArrayV2Read/TensorListGetItem:item:0@forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOpReadVariableOpEforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ń
+forward_lstm_14/while/lstm_cell_94/MatMul_1MatMul#forward_lstm_14_while_placeholder_2Bforward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ī
&forward_lstm_14/while/lstm_cell_94/addAddV23forward_lstm_14/while/lstm_cell_94/MatMul:product:05forward_lstm_14/while/lstm_cell_94/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’»
9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOpReadVariableOpDforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0×
*forward_lstm_14/while/lstm_cell_94/BiasAddBiasAdd*forward_lstm_14/while/lstm_cell_94/add:z:0Aforward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’t
2forward_lstm_14/while/lstm_cell_94/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
(forward_lstm_14/while/lstm_cell_94/splitSplit;forward_lstm_14/while/lstm_cell_94/split/split_dim:output:03forward_lstm_14/while/lstm_cell_94/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
*forward_lstm_14/while/lstm_cell_94/SigmoidSigmoid1forward_lstm_14/while/lstm_cell_94/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
,forward_lstm_14/while/lstm_cell_94/Sigmoid_1Sigmoid1forward_lstm_14/while/lstm_cell_94/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’·
&forward_lstm_14/while/lstm_cell_94/mulMul0forward_lstm_14/while/lstm_cell_94/Sigmoid_1:y:0#forward_lstm_14_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
'forward_lstm_14/while/lstm_cell_94/ReluRelu1forward_lstm_14/while/lstm_cell_94/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’É
(forward_lstm_14/while/lstm_cell_94/mul_1Mul.forward_lstm_14/while/lstm_cell_94/Sigmoid:y:05forward_lstm_14/while/lstm_cell_94/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¾
(forward_lstm_14/while/lstm_cell_94/add_1AddV2*forward_lstm_14/while/lstm_cell_94/mul:z:0,forward_lstm_14/while/lstm_cell_94/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
,forward_lstm_14/while/lstm_cell_94/Sigmoid_2Sigmoid1forward_lstm_14/while/lstm_cell_94/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
)forward_lstm_14/while/lstm_cell_94/Relu_1Relu,forward_lstm_14/while/lstm_cell_94/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ķ
(forward_lstm_14/while/lstm_cell_94/mul_2Mul0forward_lstm_14/while/lstm_cell_94/Sigmoid_2:y:07forward_lstm_14/while/lstm_cell_94/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
@forward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ­
:forward_lstm_14/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#forward_lstm_14_while_placeholder_1Iforward_lstm_14/while/TensorArrayV2Write/TensorListSetItem/index:output:0,forward_lstm_14/while/lstm_cell_94/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ]
forward_lstm_14/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_14/while/addAddV2!forward_lstm_14_while_placeholder$forward_lstm_14/while/add/y:output:0*
T0*
_output_shapes
: _
forward_lstm_14/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :§
forward_lstm_14/while/add_1AddV28forward_lstm_14_while_forward_lstm_14_while_loop_counter&forward_lstm_14/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_14/while/IdentityIdentityforward_lstm_14/while/add_1:z:0^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: Ŗ
 forward_lstm_14/while/Identity_1Identity>forward_lstm_14_while_forward_lstm_14_while_maximum_iterations^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: 
 forward_lstm_14/while/Identity_2Identityforward_lstm_14/while/add:z:0^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: ¶
 forward_lstm_14/while/Identity_3IdentityJforward_lstm_14/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_14/while/NoOp*
T0*
_output_shapes
: Ŗ
 forward_lstm_14/while/Identity_4Identity,forward_lstm_14/while/lstm_cell_94/mul_2:z:0^forward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
 forward_lstm_14/while/Identity_5Identity,forward_lstm_14/while/lstm_cell_94/add_1:z:0^forward_lstm_14/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
forward_lstm_14/while/NoOpNoOp:^forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp9^forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp;^forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "p
5forward_lstm_14_while_forward_lstm_14_strided_slice_17forward_lstm_14_while_forward_lstm_14_strided_slice_1_0"I
forward_lstm_14_while_identity'forward_lstm_14/while/Identity:output:0"M
 forward_lstm_14_while_identity_1)forward_lstm_14/while/Identity_1:output:0"M
 forward_lstm_14_while_identity_2)forward_lstm_14/while/Identity_2:output:0"M
 forward_lstm_14_while_identity_3)forward_lstm_14/while/Identity_3:output:0"M
 forward_lstm_14_while_identity_4)forward_lstm_14/while/Identity_4:output:0"M
 forward_lstm_14_while_identity_5)forward_lstm_14/while/Identity_5:output:0"
Bforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resourceDforward_lstm_14_while_lstm_cell_94_biasadd_readvariableop_resource_0"
Cforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resourceEforward_lstm_14_while_lstm_cell_94_matmul_1_readvariableop_resource_0"
Aforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resourceCforward_lstm_14_while_lstm_cell_94_matmul_readvariableop_resource_0"č
qforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensorsforward_lstm_14_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_14_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2v
9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp9forward_lstm_14/while/lstm_cell_94/BiasAdd/ReadVariableOp2t
8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp8forward_lstm_14/while/lstm_cell_94/MatMul/ReadVariableOp2x
:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp:forward_lstm_14/while/lstm_cell_94/MatMul_1/ReadVariableOp: 
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


#backward_lstm_14_while_cond_1560737>
:backward_lstm_14_while_backward_lstm_14_while_loop_counterD
@backward_lstm_14_while_backward_lstm_14_while_maximum_iterations&
"backward_lstm_14_while_placeholder(
$backward_lstm_14_while_placeholder_1(
$backward_lstm_14_while_placeholder_2(
$backward_lstm_14_while_placeholder_3@
<backward_lstm_14_while_less_backward_lstm_14_strided_slice_1W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1560737___redundant_placeholder0W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1560737___redundant_placeholder1W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1560737___redundant_placeholder2W
Sbackward_lstm_14_while_backward_lstm_14_while_cond_1560737___redundant_placeholder3#
backward_lstm_14_while_identity
¦
backward_lstm_14/while/LessLess"backward_lstm_14_while_placeholder<backward_lstm_14_while_less_backward_lstm_14_strided_slice_1*
T0*
_output_shapes
: m
backward_lstm_14/while/IdentityIdentitybackward_lstm_14/while/Less:z:0*
T0
*
_output_shapes
: "K
backward_lstm_14_while_identity(backward_lstm_14/while/Identity:output:0*(
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
:"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*»
serving_default§
K
lambda_14_input8
!serving_default_lambda_14_input:0’’’’’’’’’<
dense_140
StatefulPartitionedCall:0’’’’’’’’’tensorflow/serving/predict:Į
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
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_1559005
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_1559538
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_1559559
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_1559442æ
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
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_1559857
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_1560155
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_1559465
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_1559488æ
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
"__inference__wrapped_model_1557235lambda_14_input"
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
+__inference_lambda_14_layer_call_fn_1560160
+__inference_lambda_14_layer_call_fn_1560165æ
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
F__inference_lambda_14_layer_call_and_return_conditional_losses_1560171
F__inference_lambda_14_layer_call_and_return_conditional_losses_1560177æ
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
2__inference_bidirectional_14_layer_call_fn_1560194
2__inference_bidirectional_14_layer_call_fn_1560211
2__inference_bidirectional_14_layer_call_fn_1560228
2__inference_bidirectional_14_layer_call_fn_1560245å
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
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1560535
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1560825
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1561115
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1561405å
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
*__inference_dense_14_layer_call_fn_1561414¢
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
E__inference_dense_14_layer_call_and_return_conditional_losses_1561424¢
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
": 	2dense_14/kernel
:2dense_14/bias
G:E	24bidirectional_14/forward_lstm_14/lstm_cell_94/kernel
R:P
2>bidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel
A:?22bidirectional_14/forward_lstm_14/lstm_cell_94/bias
H:F	25bidirectional_14/backward_lstm_14/lstm_cell_95/kernel
S:Q
2?bidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel
B:@23bidirectional_14/backward_lstm_14/lstm_cell_95/bias
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
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_1559005lambda_14_input"æ
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
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_1559538inputs"æ
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
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_1559559inputs"æ
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
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_1559442lambda_14_input"æ
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
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_1559857inputs"æ
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
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_1560155inputs"æ
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
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_1559465lambda_14_input"æ
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
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_1559488lambda_14_input"æ
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
%__inference_signature_wrapper_1559517lambda_14_input"
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
+__inference_lambda_14_layer_call_fn_1560160inputs"æ
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
+__inference_lambda_14_layer_call_fn_1560165inputs"æ
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
F__inference_lambda_14_layer_call_and_return_conditional_losses_1560171inputs"æ
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
F__inference_lambda_14_layer_call_and_return_conditional_losses_1560177inputs"æ
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
2__inference_bidirectional_14_layer_call_fn_1560194inputs/0"å
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
2__inference_bidirectional_14_layer_call_fn_1560211inputs/0"å
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
2__inference_bidirectional_14_layer_call_fn_1560228inputs"å
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
2__inference_bidirectional_14_layer_call_fn_1560245inputs"å
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
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1560535inputs/0"å
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
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1560825inputs/0"å
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
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1561115inputs"å
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
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1561405inputs"å
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
1__inference_forward_lstm_14_layer_call_fn_1561435
1__inference_forward_lstm_14_layer_call_fn_1561446
1__inference_forward_lstm_14_layer_call_fn_1561457
1__inference_forward_lstm_14_layer_call_fn_1561468Ō
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
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1561613
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1561758
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1561903
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1562048Ō
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
2__inference_backward_lstm_14_layer_call_fn_1562059
2__inference_backward_lstm_14_layer_call_fn_1562070
2__inference_backward_lstm_14_layer_call_fn_1562081
2__inference_backward_lstm_14_layer_call_fn_1562092Ō
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
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1562239
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1562386
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1562533
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1562680Ō
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
*__inference_dense_14_layer_call_fn_1561414inputs"¢
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
E__inference_dense_14_layer_call_and_return_conditional_losses_1561424inputs"¢
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
1__inference_forward_lstm_14_layer_call_fn_1561435inputs/0"Ō
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
1__inference_forward_lstm_14_layer_call_fn_1561446inputs/0"Ō
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
1__inference_forward_lstm_14_layer_call_fn_1561457inputs"Ō
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
1__inference_forward_lstm_14_layer_call_fn_1561468inputs"Ō
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
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1561613inputs/0"Ō
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
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1561758inputs/0"Ō
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
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1561903inputs"Ō
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
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1562048inputs"Ō
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
Ū
”trace_0
¢trace_12 
.__inference_lstm_cell_94_layer_call_fn_1562697
.__inference_lstm_cell_94_layer_call_fn_1562714½
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

£trace_0
¤trace_12Ö
I__inference_lstm_cell_94_layer_call_and_return_conditional_losses_1562746
I__inference_lstm_cell_94_layer_call_and_return_conditional_losses_1562778½
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
2__inference_backward_lstm_14_layer_call_fn_1562059inputs/0"Ō
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
2__inference_backward_lstm_14_layer_call_fn_1562070inputs/0"Ō
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
2__inference_backward_lstm_14_layer_call_fn_1562081inputs"Ō
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
2__inference_backward_lstm_14_layer_call_fn_1562092inputs"Ō
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
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1562239inputs/0"Ō
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
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1562386inputs/0"Ō
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
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1562533inputs"Ō
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
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1562680inputs"Ō
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
Ū
Ŗtrace_0
«trace_12 
.__inference_lstm_cell_95_layer_call_fn_1562795
.__inference_lstm_cell_95_layer_call_fn_1562812½
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

¬trace_0
­trace_12Ö
I__inference_lstm_cell_95_layer_call_and_return_conditional_losses_1562844
I__inference_lstm_cell_95_layer_call_and_return_conditional_losses_1562876½
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
B
.__inference_lstm_cell_94_layer_call_fn_1562697inputsstates/0states/1"½
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
B
.__inference_lstm_cell_94_layer_call_fn_1562714inputsstates/0states/1"½
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
¬B©
I__inference_lstm_cell_94_layer_call_and_return_conditional_losses_1562746inputsstates/0states/1"½
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
¬B©
I__inference_lstm_cell_94_layer_call_and_return_conditional_losses_1562778inputsstates/0states/1"½
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
B
.__inference_lstm_cell_95_layer_call_fn_1562795inputsstates/0states/1"½
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
B
.__inference_lstm_cell_95_layer_call_fn_1562812inputsstates/0states/1"½
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
¬B©
I__inference_lstm_cell_95_layer_call_and_return_conditional_losses_1562844inputsstates/0states/1"½
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
¬B©
I__inference_lstm_cell_95_layer_call_and_return_conditional_losses_1562876inputsstates/0states/1"½
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
':%	2Adam/dense_14/kernel/m
 :2Adam/dense_14/bias/m
L:J	2;Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/kernel/m
W:U
2EAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel/m
F:D29Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/bias/m
M:K	2<Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/kernel/m
X:V
2FAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel/m
G:E2:Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/bias/m
':%	2Adam/dense_14/kernel/v
 :2Adam/dense_14/bias/v
L:J	2;Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/kernel/v
W:U
2EAdam/bidirectional_14/forward_lstm_14/lstm_cell_94/recurrent_kernel/v
F:D29Adam/bidirectional_14/forward_lstm_14/lstm_cell_94/bias/v
M:K	2<Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/kernel/v
X:V
2FAdam/bidirectional_14/backward_lstm_14/lstm_cell_95/recurrent_kernel/v
G:E2:Adam/bidirectional_14/backward_lstm_14/lstm_cell_95/bias/v
"__inference__wrapped_model_1557235y#$%&'(!"8¢5
.¢+
)&
lambda_14_input’’’’’’’’’
Ŗ "3Ŗ0
.
dense_14"
dense_14’’’’’’’’’Ļ
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1562239~&'(O¢L
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
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1562386~&'(O¢L
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
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1562533&'(Q¢N
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
M__inference_backward_lstm_14_layer_call_and_return_conditional_losses_1562680&'(Q¢N
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
2__inference_backward_lstm_14_layer_call_fn_1562059q&'(O¢L
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
2__inference_backward_lstm_14_layer_call_fn_1562070q&'(O¢L
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
2__inference_backward_lstm_14_layer_call_fn_1562081s&'(Q¢N
G¢D
63
inputs'’’’’’’’’’’’’’’’’’’’’’’’’’’’

 
p 

 
Ŗ "’’’’’’’’’©
2__inference_backward_lstm_14_layer_call_fn_1562092s&'(Q¢N
G¢D
63
inputs'’’’’’’’’’’’’’’’’’’’’’’’’’’’

 
p

 
Ŗ "’’’’’’’’’ą
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1560535#$%&'(\¢Y
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
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1560825#$%&'(\¢Y
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
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1561115u#$%&'(C¢@
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
M__inference_bidirectional_14_layer_call_and_return_conditional_losses_1561405u#$%&'(C¢@
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
2__inference_bidirectional_14_layer_call_fn_1560194#$%&'(\¢Y
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
2__inference_bidirectional_14_layer_call_fn_1560211#$%&'(\¢Y
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
2__inference_bidirectional_14_layer_call_fn_1560228h#$%&'(C¢@
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
2__inference_bidirectional_14_layer_call_fn_1560245h#$%&'(C¢@
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
E__inference_dense_14_layer_call_and_return_conditional_losses_1561424]!"0¢-
&¢#
!
inputs’’’’’’’’’
Ŗ "%¢"

0’’’’’’’’’
 ~
*__inference_dense_14_layer_call_fn_1561414P!"0¢-
&¢#
!
inputs’’’’’’’’’
Ŗ "’’’’’’’’’Ī
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1561613~#$%O¢L
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
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1561758~#$%O¢L
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
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1561903#$%Q¢N
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
L__inference_forward_lstm_14_layer_call_and_return_conditional_losses_1562048#$%Q¢N
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
1__inference_forward_lstm_14_layer_call_fn_1561435q#$%O¢L
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
1__inference_forward_lstm_14_layer_call_fn_1561446q#$%O¢L
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
1__inference_forward_lstm_14_layer_call_fn_1561457s#$%Q¢N
G¢D
63
inputs'’’’’’’’’’’’’’’’’’’’’’’’’’’’

 
p 

 
Ŗ "’’’’’’’’’Ø
1__inference_forward_lstm_14_layer_call_fn_1561468s#$%Q¢N
G¢D
63
inputs'’’’’’’’’’’’’’’’’’’’’’’’’’’’

 
p

 
Ŗ "’’’’’’’’’®
F__inference_lambda_14_layer_call_and_return_conditional_losses_1560171d7¢4
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
F__inference_lambda_14_layer_call_and_return_conditional_losses_1560177d7¢4
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
+__inference_lambda_14_layer_call_fn_1560160W7¢4
-¢*
 
inputs’’’’’’’’’

 
p 
Ŗ "’’’’’’’’’
+__inference_lambda_14_layer_call_fn_1560165W7¢4
-¢*
 
inputs’’’’’’’’’

 
p
Ŗ "’’’’’’’’’Š
I__inference_lstm_cell_94_layer_call_and_return_conditional_losses_1562746#$%¢
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
 Š
I__inference_lstm_cell_94_layer_call_and_return_conditional_losses_1562778#$%¢
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
 „
.__inference_lstm_cell_94_layer_call_fn_1562697ņ#$%¢
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
1/1’’’’’’’’’„
.__inference_lstm_cell_94_layer_call_fn_1562714ņ#$%¢
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
1/1’’’’’’’’’Š
I__inference_lstm_cell_95_layer_call_and_return_conditional_losses_1562844&'(¢
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
 Š
I__inference_lstm_cell_95_layer_call_and_return_conditional_losses_1562876&'(¢
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
 „
.__inference_lstm_cell_95_layer_call_fn_1562795ņ&'(¢
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
1/1’’’’’’’’’„
.__inference_lstm_cell_95_layer_call_fn_1562812ņ&'(¢
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
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_1559465s#$%&'(!"@¢=
6¢3
)&
lambda_14_input’’’’’’’’’
p 

 
Ŗ "%¢"

0’’’’’’’’’
 Ų
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_1559488s#$%&'(!"@¢=
6¢3
)&
lambda_14_input’’’’’’’’’
p

 
Ŗ "%¢"

0’’’’’’’’’
 Ļ
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_1559857j#$%&'(!"7¢4
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
a__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_1560155j#$%&'(!"7¢4
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
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_1559005f#$%&'(!"@¢=
6¢3
)&
lambda_14_input’’’’’’’’’
p 

 
Ŗ "’’’’’’’’’°
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_1559442f#$%&'(!"@¢=
6¢3
)&
lambda_14_input’’’’’’’’’
p

 
Ŗ "’’’’’’’’’§
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_1559538]#$%&'(!"7¢4
-¢*
 
inputs’’’’’’’’’
p 

 
Ŗ "’’’’’’’’’§
F__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_1559559]#$%&'(!"7¢4
-¢*
 
inputs’’’’’’’’’
p

 
Ŗ "’’’’’’’’’¶
%__inference_signature_wrapper_1559517#$%&'(!"K¢H
¢ 
AŖ>
<
lambda_14_input)&
lambda_14_input’’’’’’’’’"3Ŗ0
.
dense_14"
dense_14’’’’’’’’’