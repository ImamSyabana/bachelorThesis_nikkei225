Ź8
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
"serve*2.10.02v2.10.0-rc3-6-g359c3cdfc5f8÷ģ5
É
8Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*I
shared_name:8Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/bias/v
Ā
LAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/bias/v/Read/ReadVariableOpReadVariableOp8Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/bias/v*
_output_shapes	
:*
dtype0
ę
DAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*U
shared_nameFDAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel/v
ß
XAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel/v/Read/ReadVariableOpReadVariableOpDAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel/v* 
_output_shapes
:
*
dtype0
Ń
:Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*K
shared_name<:Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/kernel/v
Ź
NAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/kernel/v/Read/ReadVariableOpReadVariableOp:Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/kernel/v*
_output_shapes
:	*
dtype0
Ē
7Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*H
shared_name97Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/bias/v
Ą
KAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/bias/v/Read/ReadVariableOpReadVariableOp7Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/bias/v*
_output_shapes	
:*
dtype0
ä
CAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*T
shared_nameECAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel/v
Ż
WAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel/v/Read/ReadVariableOpReadVariableOpCAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel/v* 
_output_shapes
:
*
dtype0
Ļ
9Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*J
shared_name;9Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/kernel/v
Č
MAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/kernel/v/Read/ReadVariableOpReadVariableOp9Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/kernel/v*
_output_shapes
:	*
dtype0
~
Adam/dense_5/bias/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/v
w
'Adam/dense_5/bias/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/v*
_output_shapes
:*
dtype0

Adam/dense_5/kernel/vVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/dense_5/kernel/v

)Adam/dense_5/kernel/v/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/v*
_output_shapes
:	*
dtype0
É
8Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*I
shared_name:8Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/bias/m
Ā
LAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/bias/m/Read/ReadVariableOpReadVariableOp8Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/bias/m*
_output_shapes	
:*
dtype0
ę
DAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*U
shared_nameFDAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel/m
ß
XAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel/m/Read/ReadVariableOpReadVariableOpDAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel/m* 
_output_shapes
:
*
dtype0
Ń
:Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*K
shared_name<:Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/kernel/m
Ź
NAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/kernel/m/Read/ReadVariableOpReadVariableOp:Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/kernel/m*
_output_shapes
:	*
dtype0
Ē
7Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*H
shared_name97Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/bias/m
Ą
KAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/bias/m/Read/ReadVariableOpReadVariableOp7Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/bias/m*
_output_shapes	
:*
dtype0
ä
CAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*T
shared_nameECAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel/m
Ż
WAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel/m/Read/ReadVariableOpReadVariableOpCAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel/m* 
_output_shapes
:
*
dtype0
Ļ
9Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*J
shared_name;9Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/kernel/m
Č
MAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/kernel/m/Read/ReadVariableOpReadVariableOp9Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/kernel/m*
_output_shapes
:	*
dtype0
~
Adam/dense_5/bias/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:*$
shared_nameAdam/dense_5/bias/m
w
'Adam/dense_5/bias/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/bias/m*
_output_shapes
:*
dtype0

Adam/dense_5/kernel/mVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*&
shared_nameAdam/dense_5/kernel/m

)Adam/dense_5/kernel/m/Read/ReadVariableOpReadVariableOpAdam/dense_5/kernel/m*
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
»
1bidirectional_5/backward_lstm_5/lstm_cell_38/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*B
shared_name31bidirectional_5/backward_lstm_5/lstm_cell_38/bias
“
Ebidirectional_5/backward_lstm_5/lstm_cell_38/bias/Read/ReadVariableOpReadVariableOp1bidirectional_5/backward_lstm_5/lstm_cell_38/bias*
_output_shapes	
:*
dtype0
Ų
=bidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*N
shared_name?=bidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel
Ń
Qbidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel/Read/ReadVariableOpReadVariableOp=bidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel* 
_output_shapes
:
*
dtype0
Ć
3bidirectional_5/backward_lstm_5/lstm_cell_38/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*D
shared_name53bidirectional_5/backward_lstm_5/lstm_cell_38/kernel
¼
Gbidirectional_5/backward_lstm_5/lstm_cell_38/kernel/Read/ReadVariableOpReadVariableOp3bidirectional_5/backward_lstm_5/lstm_cell_38/kernel*
_output_shapes
:	*
dtype0
¹
0bidirectional_5/forward_lstm_5/lstm_cell_37/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*A
shared_name20bidirectional_5/forward_lstm_5/lstm_cell_37/bias
²
Dbidirectional_5/forward_lstm_5/lstm_cell_37/bias/Read/ReadVariableOpReadVariableOp0bidirectional_5/forward_lstm_5/lstm_cell_37/bias*
_output_shapes	
:*
dtype0
Ö
<bidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:
*M
shared_name><bidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel
Ļ
Pbidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel/Read/ReadVariableOpReadVariableOp<bidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel* 
_output_shapes
:
*
dtype0
Į
2bidirectional_5/forward_lstm_5/lstm_cell_37/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*C
shared_name42bidirectional_5/forward_lstm_5/lstm_cell_37/kernel
ŗ
Fbidirectional_5/forward_lstm_5/lstm_cell_37/kernel/Read/ReadVariableOpReadVariableOp2bidirectional_5/forward_lstm_5/lstm_cell_37/kernel*
_output_shapes
:	*
dtype0
p
dense_5/biasVarHandleOp*
_output_shapes
: *
dtype0*
shape:*
shared_namedense_5/bias
i
 dense_5/bias/Read/ReadVariableOpReadVariableOpdense_5/bias*
_output_shapes
:*
dtype0
y
dense_5/kernelVarHandleOp*
_output_shapes
: *
dtype0*
shape:	*
shared_namedense_5/kernel
r
"dense_5/kernel/Read/ReadVariableOpReadVariableOpdense_5/kernel*
_output_shapes
:	*
dtype0

serving_default_lambda_5_inputPlaceholder*'
_output_shapes
:’’’’’’’’’*
dtype0*
shape:’’’’’’’’’
µ
StatefulPartitionedCallStatefulPartitionedCallserving_default_lambda_5_input2bidirectional_5/forward_lstm_5/lstm_cell_37/kernel<bidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel0bidirectional_5/forward_lstm_5/lstm_cell_37/bias3bidirectional_5/backward_lstm_5/lstm_cell_38/kernel=bidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel1bidirectional_5/backward_lstm_5/lstm_cell_38/biasdense_5/kerneldense_5/bias*
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
GPU2*0J 8 *-
f(R&
$__inference_signature_wrapper_767548

NoOpNoOp
×M
ConstConst"/device:CPU:0*
_output_shapes
: *
dtype0*M
valueMBM BžL
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
^X
VARIABLE_VALUEdense_5/kernel6layer_with_weights-1/kernel/.ATTRIBUTES/VARIABLE_VALUE*
ZT
VARIABLE_VALUEdense_5/bias4layer_with_weights-1/bias/.ATTRIBUTES/VARIABLE_VALUE*
rl
VARIABLE_VALUE2bidirectional_5/forward_lstm_5/lstm_cell_37/kernel&variables/0/.ATTRIBUTES/VARIABLE_VALUE*
|v
VARIABLE_VALUE<bidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel&variables/1/.ATTRIBUTES/VARIABLE_VALUE*
pj
VARIABLE_VALUE0bidirectional_5/forward_lstm_5/lstm_cell_37/bias&variables/2/.ATTRIBUTES/VARIABLE_VALUE*
sm
VARIABLE_VALUE3bidirectional_5/backward_lstm_5/lstm_cell_38/kernel&variables/3/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUE=bidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel&variables/4/.ATTRIBUTES/VARIABLE_VALUE*
qk
VARIABLE_VALUE1bidirectional_5/backward_lstm_5/lstm_cell_38/bias&variables/5/.ATTRIBUTES/VARIABLE_VALUE*
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
{
VARIABLE_VALUEAdam/dense_5/kernel/mRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/mPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE9Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/kernel/mBvariables/0/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
 
VARIABLE_VALUECAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel/mBvariables/1/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE7Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/bias/mBvariables/2/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE:Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/kernel/mBvariables/3/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
”
VARIABLE_VALUEDAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel/mBvariables/4/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/bias/mBvariables/5/.OPTIMIZER_SLOT/optimizer/m/.ATTRIBUTES/VARIABLE_VALUE*
{
VARIABLE_VALUEAdam/dense_5/kernel/vRlayer_with_weights-1/kernel/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
}w
VARIABLE_VALUEAdam/dense_5/bias/vPlayer_with_weights-1/bias/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE9Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/kernel/vBvariables/0/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
 
VARIABLE_VALUECAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel/vBvariables/1/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE7Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/bias/vBvariables/2/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE:Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/kernel/vBvariables/3/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
”
VARIABLE_VALUEDAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel/vBvariables/4/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*

VARIABLE_VALUE8Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/bias/vBvariables/5/.OPTIMIZER_SLOT/optimizer/v/.ATTRIBUTES/VARIABLE_VALUE*
O
saver_filenamePlaceholder*
_output_shapes
: *
dtype0*
shape: 
§
StatefulPartitionedCall_1StatefulPartitionedCallsaver_filename"dense_5/kernel/Read/ReadVariableOp dense_5/bias/Read/ReadVariableOpFbidirectional_5/forward_lstm_5/lstm_cell_37/kernel/Read/ReadVariableOpPbidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel/Read/ReadVariableOpDbidirectional_5/forward_lstm_5/lstm_cell_37/bias/Read/ReadVariableOpGbidirectional_5/backward_lstm_5/lstm_cell_38/kernel/Read/ReadVariableOpQbidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel/Read/ReadVariableOpEbidirectional_5/backward_lstm_5/lstm_cell_38/bias/Read/ReadVariableOpAdam/iter/Read/ReadVariableOpAdam/beta_1/Read/ReadVariableOpAdam/beta_2/Read/ReadVariableOpAdam/decay/Read/ReadVariableOp&Adam/learning_rate/Read/ReadVariableOptotal/Read/ReadVariableOpcount/Read/ReadVariableOp)Adam/dense_5/kernel/m/Read/ReadVariableOp'Adam/dense_5/bias/m/Read/ReadVariableOpMAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/kernel/m/Read/ReadVariableOpWAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel/m/Read/ReadVariableOpKAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/bias/m/Read/ReadVariableOpNAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/kernel/m/Read/ReadVariableOpXAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel/m/Read/ReadVariableOpLAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/bias/m/Read/ReadVariableOp)Adam/dense_5/kernel/v/Read/ReadVariableOp'Adam/dense_5/bias/v/Read/ReadVariableOpMAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/kernel/v/Read/ReadVariableOpWAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel/v/Read/ReadVariableOpKAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/bias/v/Read/ReadVariableOpNAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/kernel/v/Read/ReadVariableOpXAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel/v/Read/ReadVariableOpLAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/bias/v/Read/ReadVariableOpConst*,
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
GPU2*0J 8 *(
f#R!
__inference__traced_save_771023
¶
StatefulPartitionedCall_2StatefulPartitionedCallsaver_filenamedense_5/kerneldense_5/bias2bidirectional_5/forward_lstm_5/lstm_cell_37/kernel<bidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel0bidirectional_5/forward_lstm_5/lstm_cell_37/bias3bidirectional_5/backward_lstm_5/lstm_cell_38/kernel=bidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel1bidirectional_5/backward_lstm_5/lstm_cell_38/bias	Adam/iterAdam/beta_1Adam/beta_2
Adam/decayAdam/learning_ratetotalcountAdam/dense_5/kernel/mAdam/dense_5/bias/m9Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/kernel/mCAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel/m7Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/bias/m:Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/kernel/mDAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel/m8Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/bias/mAdam/dense_5/kernel/vAdam/dense_5/bias/v9Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/kernel/vCAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel/v7Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/bias/v:Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/kernel/vDAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel/v8Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/bias/v*+
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
GPU2*0J 8 *+
f&R$
"__inference__traced_restore_771126©4
Æ
½
/__inference_forward_lstm_5_layer_call_fn_769499

inputs
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallš
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
GPU2*0J 8 *S
fNRL
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_766636p
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
īK
„
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_769644
inputs_0>
+lstm_cell_37_matmul_readvariableop_resource:	A
-lstm_cell_37_matmul_1_readvariableop_resource:
;
,lstm_cell_37_biasadd_readvariableop_resource:	
identity¢#lstm_cell_37/BiasAdd/ReadVariableOp¢"lstm_cell_37/MatMul/ReadVariableOp¢$lstm_cell_37/MatMul_1/ReadVariableOp¢while=
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
"lstm_cell_37/MatMul/ReadVariableOpReadVariableOp+lstm_cell_37_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_37/MatMulMatMulstrided_slice_2:output:0*lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_37_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_37/MatMul_1MatMulzeros:output:0,lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_37/addAddV2lstm_cell_37/MatMul:product:0lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_37/BiasAddBiasAddlstm_cell_37/add:z:0+lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_37/splitSplit%lstm_cell_37/split/split_dim:output:0lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_37/SigmoidSigmoidlstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_37/Sigmoid_1Sigmoidlstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_37/mulMullstm_cell_37/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_37/ReluRelulstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_37/mul_1Mullstm_cell_37/Sigmoid:y:0lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_37/add_1AddV2lstm_cell_37/mul:z:0lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_37/Sigmoid_2Sigmoidlstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_37/Relu_1Relulstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_37/mul_2Mullstm_cell_37/Sigmoid_2:y:0!lstm_cell_37/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_37_matmul_readvariableop_resource-lstm_cell_37_matmul_1_readvariableop_resource,lstm_cell_37_biasadd_readvariableop_resource*
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
bodyR
while_body_769559*
condR
while_cond_769558*M
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
NoOpNoOp$^lstm_cell_37/BiasAdd/ReadVariableOp#^lstm_cell_37/MatMul/ReadVariableOp%^lstm_cell_37/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_37/BiasAdd/ReadVariableOp#lstm_cell_37/BiasAdd/ReadVariableOp2H
"lstm_cell_37/MatMul/ReadVariableOp"lstm_cell_37/MatMul/ReadVariableOp2L
$lstm_cell_37/MatMul_1/ReadVariableOp$lstm_cell_37/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
Ź	
õ
C__inference_dense_5_layer_call_and_return_conditional_losses_767010

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


`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_767519
lambda_5_input)
bidirectional_5_767500:	*
bidirectional_5_767502:
%
bidirectional_5_767504:	)
bidirectional_5_767506:	*
bidirectional_5_767508:
%
bidirectional_5_767510:	!
dense_5_767513:	
dense_5_767515:
identity¢'bidirectional_5/StatefulPartitionedCall¢dense_5/StatefulPartitionedCallĒ
lambda_5/PartitionedCallPartitionedCalllambda_5_input*
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
GPU2*0J 8 *M
fHRF
D__inference_lambda_5_layer_call_and_return_conditional_losses_767384
'bidirectional_5/StatefulPartitionedCallStatefulPartitionedCall!lambda_5/PartitionedCall:output:0bidirectional_5_767500bidirectional_5_767502bidirectional_5_767504bidirectional_5_767506bidirectional_5_767508bidirectional_5_767510*
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
GPU2*0J 8 *T
fORM
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_767355
dense_5/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_5/StatefulPartitionedCall:output:0dense_5_767513dense_5_767515*
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
GPU2*0J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_767010w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
NoOpNoOp(^bidirectional_5/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 2R
'bidirectional_5/StatefulPartitionedCall'bidirectional_5/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:W S
'
_output_shapes
:’’’’’’’’’
(
_user_specified_namelambda_5_input
Ź	
õ
C__inference_dense_5_layer_call_and_return_conditional_losses_769455

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
Ą½
·
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_766986

inputsM
:forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource:	P
<forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource:
J
;forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource:	N
;backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource:	Q
=backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource:
K
<backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource:	
identity¢3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp¢2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp¢4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp¢backward_lstm_5/while¢2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp¢1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp¢3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp¢forward_lstm_5/whileJ
forward_lstm_5/ShapeShapeinputs*
T0*
_output_shapes
:l
"forward_lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
forward_lstm_5/strided_sliceStridedSliceforward_lstm_5/Shape:output:0+forward_lstm_5/strided_slice/stack:output:0-forward_lstm_5/strided_slice/stack_1:output:0-forward_lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B : 
forward_lstm_5/zeros/packedPack%forward_lstm_5/strided_slice:output:0&forward_lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_5/zerosFill$forward_lstm_5/zeros/packed:output:0#forward_lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’b
forward_lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :¤
forward_lstm_5/zeros_1/packedPack%forward_lstm_5/strided_slice:output:0(forward_lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
forward_lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
forward_lstm_5/zeros_1Fill&forward_lstm_5/zeros_1/packed:output:0%forward_lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’r
forward_lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm_5/transpose	Transposeinputs&forward_lstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’b
forward_lstm_5/Shape_1Shapeforward_lstm_5/transpose:y:0*
T0*
_output_shapes
:n
$forward_lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
forward_lstm_5/strided_slice_1StridedSliceforward_lstm_5/Shape_1:output:0-forward_lstm_5/strided_slice_1/stack:output:0/forward_lstm_5/strided_slice_1/stack_1:output:0/forward_lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*forward_lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’į
forward_lstm_5/TensorArrayV2TensorListReserve3forward_lstm_5/TensorArrayV2/element_shape:output:0'forward_lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Dforward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
6forward_lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_5/transpose:y:0Mforward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅn
$forward_lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:“
forward_lstm_5/strided_slice_2StridedSliceforward_lstm_5/transpose:y:0-forward_lstm_5/strided_slice_2/stack:output:0/forward_lstm_5/strided_slice_2/stack_1:output:0/forward_lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask­
1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOpReadVariableOp:forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ć
"forward_lstm_5/lstm_cell_37/MatMulMatMul'forward_lstm_5/strided_slice_2:output:09forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’²
3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp<forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0½
$forward_lstm_5/lstm_cell_37/MatMul_1MatMulforward_lstm_5/zeros:output:0;forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¹
forward_lstm_5/lstm_cell_37/addAddV2,forward_lstm_5/lstm_cell_37/MatMul:product:0.forward_lstm_5/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’«
2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp;forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ā
#forward_lstm_5/lstm_cell_37/BiasAddBiasAdd#forward_lstm_5/lstm_cell_37/add:z:0:forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’m
+forward_lstm_5/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!forward_lstm_5/lstm_cell_37/splitSplit4forward_lstm_5/lstm_cell_37/split/split_dim:output:0,forward_lstm_5/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
#forward_lstm_5/lstm_cell_37/SigmoidSigmoid*forward_lstm_5/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
%forward_lstm_5/lstm_cell_37/Sigmoid_1Sigmoid*forward_lstm_5/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’„
forward_lstm_5/lstm_cell_37/mulMul)forward_lstm_5/lstm_cell_37/Sigmoid_1:y:0forward_lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
 forward_lstm_5/lstm_cell_37/ReluRelu*forward_lstm_5/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’“
!forward_lstm_5/lstm_cell_37/mul_1Mul'forward_lstm_5/lstm_cell_37/Sigmoid:y:0.forward_lstm_5/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’©
!forward_lstm_5/lstm_cell_37/add_1AddV2#forward_lstm_5/lstm_cell_37/mul:z:0%forward_lstm_5/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
%forward_lstm_5/lstm_cell_37/Sigmoid_2Sigmoid*forward_lstm_5/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
"forward_lstm_5/lstm_cell_37/Relu_1Relu%forward_lstm_5/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ø
!forward_lstm_5/lstm_cell_37/mul_2Mul)forward_lstm_5/lstm_cell_37/Sigmoid_2:y:00forward_lstm_5/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’}
,forward_lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   m
+forward_lstm_5/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ņ
forward_lstm_5/TensorArrayV2_1TensorListReserve5forward_lstm_5/TensorArrayV2_1/element_shape:output:04forward_lstm_5/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅU
forward_lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'forward_lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’c
!forward_lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ų
forward_lstm_5/whileWhile*forward_lstm_5/while/loop_counter:output:00forward_lstm_5/while/maximum_iterations:output:0forward_lstm_5/time:output:0'forward_lstm_5/TensorArrayV2_1:handle:0forward_lstm_5/zeros:output:0forward_lstm_5/zeros_1:output:0'forward_lstm_5/strided_slice_1:output:0Fforward_lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0:forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource<forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource;forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *,
body$R"
 forward_lstm_5_while_body_766756*,
cond$R"
 forward_lstm_5_while_cond_766755*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
?forward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
1forward_lstm_5/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_5/while:output:3Hforward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsw
$forward_lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’p
&forward_lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
forward_lstm_5/strided_slice_3StridedSlice:forward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0-forward_lstm_5/strided_slice_3/stack:output:0/forward_lstm_5/strided_slice_3/stack_1:output:0/forward_lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maskt
forward_lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ä
forward_lstm_5/transpose_1	Transpose:forward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0(forward_lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’j
forward_lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    K
backward_lstm_5/ShapeShapeinputs*
T0*
_output_shapes
:m
#backward_lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
backward_lstm_5/strided_sliceStridedSlicebackward_lstm_5/Shape:output:0,backward_lstm_5/strided_slice/stack:output:0.backward_lstm_5/strided_slice/stack_1:output:0.backward_lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :£
backward_lstm_5/zeros/packedPack&backward_lstm_5/strided_slice:output:0'backward_lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm_5/zerosFill%backward_lstm_5/zeros/packed:output:0$backward_lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
 backward_lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :§
backward_lstm_5/zeros_1/packedPack&backward_lstm_5/strided_slice:output:0)backward_lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
backward_lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
backward_lstm_5/zeros_1Fill'backward_lstm_5/zeros_1/packed:output:0&backward_lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
backward_lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
backward_lstm_5/transpose	Transposeinputs'backward_lstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d
backward_lstm_5/Shape_1Shapebackward_lstm_5/transpose:y:0*
T0*
_output_shapes
:o
%backward_lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
backward_lstm_5/strided_slice_1StridedSlice backward_lstm_5/Shape_1:output:0.backward_lstm_5/strided_slice_1/stack:output:00backward_lstm_5/strided_slice_1/stack_1:output:00backward_lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+backward_lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ä
backward_lstm_5/TensorArrayV2TensorListReserve4backward_lstm_5/TensorArrayV2/element_shape:output:0(backward_lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅh
backward_lstm_5/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ¤
backward_lstm_5/ReverseV2	ReverseV2backward_lstm_5/transpose:y:0'backward_lstm_5/ReverseV2/axis:output:0*
T0*+
_output_shapes
:’’’’’’’’’
Ebackward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
7backward_lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"backward_lstm_5/ReverseV2:output:0Nbackward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅo
%backward_lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¹
backward_lstm_5/strided_slice_2StridedSlicebackward_lstm_5/transpose:y:0.backward_lstm_5/strided_slice_2/stack:output:00backward_lstm_5/strided_slice_2/stack_1:output:00backward_lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_maskÆ
2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOpReadVariableOp;backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ę
#backward_lstm_5/lstm_cell_38/MatMulMatMul(backward_lstm_5/strided_slice_2:output:0:backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’“
4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp=backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ą
%backward_lstm_5/lstm_cell_38/MatMul_1MatMulbackward_lstm_5/zeros:output:0<backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¼
 backward_lstm_5/lstm_cell_38/addAddV2-backward_lstm_5/lstm_cell_38/MatMul:product:0/backward_lstm_5/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’­
3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp<backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Å
$backward_lstm_5/lstm_cell_38/BiasAddBiasAdd$backward_lstm_5/lstm_cell_38/add:z:0;backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’n
,backward_lstm_5/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
"backward_lstm_5/lstm_cell_38/splitSplit5backward_lstm_5/lstm_cell_38/split/split_dim:output:0-backward_lstm_5/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
$backward_lstm_5/lstm_cell_38/SigmoidSigmoid+backward_lstm_5/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
&backward_lstm_5/lstm_cell_38/Sigmoid_1Sigmoid+backward_lstm_5/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ø
 backward_lstm_5/lstm_cell_38/mulMul*backward_lstm_5/lstm_cell_38/Sigmoid_1:y:0 backward_lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
!backward_lstm_5/lstm_cell_38/ReluRelu+backward_lstm_5/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’·
"backward_lstm_5/lstm_cell_38/mul_1Mul(backward_lstm_5/lstm_cell_38/Sigmoid:y:0/backward_lstm_5/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¬
"backward_lstm_5/lstm_cell_38/add_1AddV2$backward_lstm_5/lstm_cell_38/mul:z:0&backward_lstm_5/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
&backward_lstm_5/lstm_cell_38/Sigmoid_2Sigmoid+backward_lstm_5/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
#backward_lstm_5/lstm_cell_38/Relu_1Relu&backward_lstm_5/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’»
"backward_lstm_5/lstm_cell_38/mul_2Mul*backward_lstm_5/lstm_cell_38/Sigmoid_2:y:01backward_lstm_5/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’~
-backward_lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   n
,backward_lstm_5/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :õ
backward_lstm_5/TensorArrayV2_1TensorListReserve6backward_lstm_5/TensorArrayV2_1/element_shape:output:05backward_lstm_5/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅV
backward_lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(backward_lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’d
"backward_lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ę
backward_lstm_5/whileWhile+backward_lstm_5/while/loop_counter:output:01backward_lstm_5/while/maximum_iterations:output:0backward_lstm_5/time:output:0(backward_lstm_5/TensorArrayV2_1:handle:0backward_lstm_5/zeros:output:0 backward_lstm_5/zeros_1:output:0(backward_lstm_5/strided_slice_1:output:0Gbackward_lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0;backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource=backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource<backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *-
body%R#
!backward_lstm_5_while_body_766899*-
cond%R#
!backward_lstm_5_while_cond_766898*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
@backward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
2backward_lstm_5/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_5/while:output:3Ibackward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsx
%backward_lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’q
'backward_lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ų
backward_lstm_5/strided_slice_3StridedSlice;backward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0.backward_lstm_5/strided_slice_3/stack:output:00backward_lstm_5/strided_slice_3/stack_1:output:00backward_lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_masku
 backward_lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ē
backward_lstm_5/transpose_1	Transpose;backward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0)backward_lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’k
backward_lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :·
concatConcatV2'forward_lstm_5/strided_slice_3:output:0(backward_lstm_5/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’¶
NoOpNoOp4^backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp3^backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp5^backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp^backward_lstm_5/while3^forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp2^forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp4^forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp^forward_lstm_5/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : 2j
3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp2h
2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp2l
4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp2.
backward_lstm_5/whilebackward_lstm_5/while2h
2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp2f
1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp2j
3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp2,
forward_lstm_5/whileforward_lstm_5/while:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
9

J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_765611

inputs&
lstm_cell_37_765527:	'
lstm_cell_37_765529:
"
lstm_cell_37_765531:	
identity¢$lstm_cell_37/StatefulPartitionedCall¢while;
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
shrink_axis_maskū
$lstm_cell_37/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_37_765527lstm_cell_37_765529lstm_cell_37_765531*
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
GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_765481n
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
value	B : »
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_37_765527lstm_cell_37_765529lstm_cell_37_765531*
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
bodyR
while_body_765541*
condR
while_cond_765540*M
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
NoOpNoOp%^lstm_cell_37/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2L
$lstm_cell_37/StatefulPartitionedCall$lstm_cell_37/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
ė

H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_765837

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
¹
Ć
while_cond_770331
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_770331___redundant_placeholder04
0while_while_cond_770331___redundant_placeholder14
0while_while_cond_770331___redundant_placeholder24
0while_while_cond_770331___redundant_placeholder3
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
óM
¤
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_766469

inputs>
+lstm_cell_38_matmul_readvariableop_resource:	A
-lstm_cell_38_matmul_1_readvariableop_resource:
;
,lstm_cell_38_biasadd_readvariableop_resource:	
identity¢#lstm_cell_38/BiasAdd/ReadVariableOp¢"lstm_cell_38/MatMul/ReadVariableOp¢$lstm_cell_38/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_38/MatMul/ReadVariableOpReadVariableOp+lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_38/MatMulMatMulstrided_slice_2:output:0*lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_38_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_38/MatMul_1MatMulzeros:output:0,lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_38/addAddV2lstm_cell_38/MatMul:product:0lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_38/BiasAddBiasAddlstm_cell_38/add:z:0+lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_38/splitSplit%lstm_cell_38/split/split_dim:output:0lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_38/SigmoidSigmoidlstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_38/Sigmoid_1Sigmoidlstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_38/mulMullstm_cell_38/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_38/ReluRelulstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_38/mul_1Mullstm_cell_38/Sigmoid:y:0lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_38/add_1AddV2lstm_cell_38/mul:z:0lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_38/Sigmoid_2Sigmoidlstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_38/Relu_1Relulstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_38/mul_2Mullstm_cell_38/Sigmoid_2:y:0!lstm_cell_38/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_38_matmul_readvariableop_resource-lstm_cell_38_matmul_1_readvariableop_resource,lstm_cell_38_biasadd_readvariableop_resource*
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
bodyR
while_body_766384*
condR
while_cond_766383*M
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
NoOpNoOp$^lstm_cell_38/BiasAdd/ReadVariableOp#^lstm_cell_38/MatMul/ReadVariableOp%^lstm_cell_38/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_38/BiasAdd/ReadVariableOp#lstm_cell_38/BiasAdd/ReadVariableOp2H
"lstm_cell_38/MatMul/ReadVariableOp"lstm_cell_38/MatMul/ReadVariableOp2L
$lstm_cell_38/MatMul_1/ReadVariableOp$lstm_cell_38/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
óM
¤
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_766283

inputs>
+lstm_cell_38_matmul_readvariableop_resource:	A
-lstm_cell_38_matmul_1_readvariableop_resource:
;
,lstm_cell_38_biasadd_readvariableop_resource:	
identity¢#lstm_cell_38/BiasAdd/ReadVariableOp¢"lstm_cell_38/MatMul/ReadVariableOp¢$lstm_cell_38/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_38/MatMul/ReadVariableOpReadVariableOp+lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_38/MatMulMatMulstrided_slice_2:output:0*lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_38_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_38/MatMul_1MatMulzeros:output:0,lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_38/addAddV2lstm_cell_38/MatMul:product:0lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_38/BiasAddBiasAddlstm_cell_38/add:z:0+lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_38/splitSplit%lstm_cell_38/split/split_dim:output:0lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_38/SigmoidSigmoidlstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_38/Sigmoid_1Sigmoidlstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_38/mulMullstm_cell_38/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_38/ReluRelulstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_38/mul_1Mullstm_cell_38/Sigmoid:y:0lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_38/add_1AddV2lstm_cell_38/mul:z:0lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_38/Sigmoid_2Sigmoidlstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_38/Relu_1Relulstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_38/mul_2Mullstm_cell_38/Sigmoid_2:y:0!lstm_cell_38/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_38_matmul_readvariableop_resource-lstm_cell_38_matmul_1_readvariableop_resource,lstm_cell_38_biasadd_readvariableop_resource*
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
bodyR
while_body_766198*
condR
while_cond_766197*M
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
NoOpNoOp$^lstm_cell_38/BiasAdd/ReadVariableOp#^lstm_cell_38/MatMul/ReadVariableOp%^lstm_cell_38/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_38/BiasAdd/ReadVariableOp#lstm_cell_38/BiasAdd/ReadVariableOp2H
"lstm_cell_38/MatMul/ReadVariableOp"lstm_cell_38/MatMul/ReadVariableOp2L
$lstm_cell_38/MatMul_1/ReadVariableOp$lstm_cell_38/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
Ž
ļ
 forward_lstm_5_while_cond_766755:
6forward_lstm_5_while_forward_lstm_5_while_loop_counter@
<forward_lstm_5_while_forward_lstm_5_while_maximum_iterations$
 forward_lstm_5_while_placeholder&
"forward_lstm_5_while_placeholder_1&
"forward_lstm_5_while_placeholder_2&
"forward_lstm_5_while_placeholder_3<
8forward_lstm_5_while_less_forward_lstm_5_strided_slice_1R
Nforward_lstm_5_while_forward_lstm_5_while_cond_766755___redundant_placeholder0R
Nforward_lstm_5_while_forward_lstm_5_while_cond_766755___redundant_placeholder1R
Nforward_lstm_5_while_forward_lstm_5_while_cond_766755___redundant_placeholder2R
Nforward_lstm_5_while_forward_lstm_5_while_cond_766755___redundant_placeholder3!
forward_lstm_5_while_identity

forward_lstm_5/while/LessLess forward_lstm_5_while_placeholder8forward_lstm_5_while_less_forward_lstm_5_strided_slice_1*
T0*
_output_shapes
: i
forward_lstm_5/while/IdentityIdentityforward_lstm_5/while/Less:z:0*
T0
*
_output_shapes
: "G
forward_lstm_5_while_identity&forward_lstm_5/while/Identity:output:0*(
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


į
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_767569

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
identity¢StatefulPartitionedCallĘ
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
GPU2*0J 8 *i
fdRb
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_767017o
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
Ą½
·
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_769436

inputsM
:forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource:	P
<forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource:
J
;forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource:	N
;backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource:	Q
=backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource:
K
<backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource:	
identity¢3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp¢2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp¢4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp¢backward_lstm_5/while¢2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp¢1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp¢3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp¢forward_lstm_5/whileJ
forward_lstm_5/ShapeShapeinputs*
T0*
_output_shapes
:l
"forward_lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
forward_lstm_5/strided_sliceStridedSliceforward_lstm_5/Shape:output:0+forward_lstm_5/strided_slice/stack:output:0-forward_lstm_5/strided_slice/stack_1:output:0-forward_lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B : 
forward_lstm_5/zeros/packedPack%forward_lstm_5/strided_slice:output:0&forward_lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_5/zerosFill$forward_lstm_5/zeros/packed:output:0#forward_lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’b
forward_lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :¤
forward_lstm_5/zeros_1/packedPack%forward_lstm_5/strided_slice:output:0(forward_lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
forward_lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
forward_lstm_5/zeros_1Fill&forward_lstm_5/zeros_1/packed:output:0%forward_lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’r
forward_lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm_5/transpose	Transposeinputs&forward_lstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’b
forward_lstm_5/Shape_1Shapeforward_lstm_5/transpose:y:0*
T0*
_output_shapes
:n
$forward_lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
forward_lstm_5/strided_slice_1StridedSliceforward_lstm_5/Shape_1:output:0-forward_lstm_5/strided_slice_1/stack:output:0/forward_lstm_5/strided_slice_1/stack_1:output:0/forward_lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*forward_lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’į
forward_lstm_5/TensorArrayV2TensorListReserve3forward_lstm_5/TensorArrayV2/element_shape:output:0'forward_lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Dforward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
6forward_lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_5/transpose:y:0Mforward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅn
$forward_lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:“
forward_lstm_5/strided_slice_2StridedSliceforward_lstm_5/transpose:y:0-forward_lstm_5/strided_slice_2/stack:output:0/forward_lstm_5/strided_slice_2/stack_1:output:0/forward_lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask­
1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOpReadVariableOp:forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ć
"forward_lstm_5/lstm_cell_37/MatMulMatMul'forward_lstm_5/strided_slice_2:output:09forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’²
3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp<forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0½
$forward_lstm_5/lstm_cell_37/MatMul_1MatMulforward_lstm_5/zeros:output:0;forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¹
forward_lstm_5/lstm_cell_37/addAddV2,forward_lstm_5/lstm_cell_37/MatMul:product:0.forward_lstm_5/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’«
2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp;forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ā
#forward_lstm_5/lstm_cell_37/BiasAddBiasAdd#forward_lstm_5/lstm_cell_37/add:z:0:forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’m
+forward_lstm_5/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!forward_lstm_5/lstm_cell_37/splitSplit4forward_lstm_5/lstm_cell_37/split/split_dim:output:0,forward_lstm_5/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
#forward_lstm_5/lstm_cell_37/SigmoidSigmoid*forward_lstm_5/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
%forward_lstm_5/lstm_cell_37/Sigmoid_1Sigmoid*forward_lstm_5/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’„
forward_lstm_5/lstm_cell_37/mulMul)forward_lstm_5/lstm_cell_37/Sigmoid_1:y:0forward_lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
 forward_lstm_5/lstm_cell_37/ReluRelu*forward_lstm_5/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’“
!forward_lstm_5/lstm_cell_37/mul_1Mul'forward_lstm_5/lstm_cell_37/Sigmoid:y:0.forward_lstm_5/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’©
!forward_lstm_5/lstm_cell_37/add_1AddV2#forward_lstm_5/lstm_cell_37/mul:z:0%forward_lstm_5/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
%forward_lstm_5/lstm_cell_37/Sigmoid_2Sigmoid*forward_lstm_5/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
"forward_lstm_5/lstm_cell_37/Relu_1Relu%forward_lstm_5/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ø
!forward_lstm_5/lstm_cell_37/mul_2Mul)forward_lstm_5/lstm_cell_37/Sigmoid_2:y:00forward_lstm_5/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’}
,forward_lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   m
+forward_lstm_5/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ņ
forward_lstm_5/TensorArrayV2_1TensorListReserve5forward_lstm_5/TensorArrayV2_1/element_shape:output:04forward_lstm_5/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅU
forward_lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'forward_lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’c
!forward_lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ų
forward_lstm_5/whileWhile*forward_lstm_5/while/loop_counter:output:00forward_lstm_5/while/maximum_iterations:output:0forward_lstm_5/time:output:0'forward_lstm_5/TensorArrayV2_1:handle:0forward_lstm_5/zeros:output:0forward_lstm_5/zeros_1:output:0'forward_lstm_5/strided_slice_1:output:0Fforward_lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0:forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource<forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource;forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *,
body$R"
 forward_lstm_5_while_body_769206*,
cond$R"
 forward_lstm_5_while_cond_769205*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
?forward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
1forward_lstm_5/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_5/while:output:3Hforward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsw
$forward_lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’p
&forward_lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
forward_lstm_5/strided_slice_3StridedSlice:forward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0-forward_lstm_5/strided_slice_3/stack:output:0/forward_lstm_5/strided_slice_3/stack_1:output:0/forward_lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maskt
forward_lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ä
forward_lstm_5/transpose_1	Transpose:forward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0(forward_lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’j
forward_lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    K
backward_lstm_5/ShapeShapeinputs*
T0*
_output_shapes
:m
#backward_lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
backward_lstm_5/strided_sliceStridedSlicebackward_lstm_5/Shape:output:0,backward_lstm_5/strided_slice/stack:output:0.backward_lstm_5/strided_slice/stack_1:output:0.backward_lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :£
backward_lstm_5/zeros/packedPack&backward_lstm_5/strided_slice:output:0'backward_lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm_5/zerosFill%backward_lstm_5/zeros/packed:output:0$backward_lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
 backward_lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :§
backward_lstm_5/zeros_1/packedPack&backward_lstm_5/strided_slice:output:0)backward_lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
backward_lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
backward_lstm_5/zeros_1Fill'backward_lstm_5/zeros_1/packed:output:0&backward_lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
backward_lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
backward_lstm_5/transpose	Transposeinputs'backward_lstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d
backward_lstm_5/Shape_1Shapebackward_lstm_5/transpose:y:0*
T0*
_output_shapes
:o
%backward_lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
backward_lstm_5/strided_slice_1StridedSlice backward_lstm_5/Shape_1:output:0.backward_lstm_5/strided_slice_1/stack:output:00backward_lstm_5/strided_slice_1/stack_1:output:00backward_lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+backward_lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ä
backward_lstm_5/TensorArrayV2TensorListReserve4backward_lstm_5/TensorArrayV2/element_shape:output:0(backward_lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅh
backward_lstm_5/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ¤
backward_lstm_5/ReverseV2	ReverseV2backward_lstm_5/transpose:y:0'backward_lstm_5/ReverseV2/axis:output:0*
T0*+
_output_shapes
:’’’’’’’’’
Ebackward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
7backward_lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"backward_lstm_5/ReverseV2:output:0Nbackward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅo
%backward_lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¹
backward_lstm_5/strided_slice_2StridedSlicebackward_lstm_5/transpose:y:0.backward_lstm_5/strided_slice_2/stack:output:00backward_lstm_5/strided_slice_2/stack_1:output:00backward_lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_maskÆ
2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOpReadVariableOp;backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ę
#backward_lstm_5/lstm_cell_38/MatMulMatMul(backward_lstm_5/strided_slice_2:output:0:backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’“
4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp=backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ą
%backward_lstm_5/lstm_cell_38/MatMul_1MatMulbackward_lstm_5/zeros:output:0<backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¼
 backward_lstm_5/lstm_cell_38/addAddV2-backward_lstm_5/lstm_cell_38/MatMul:product:0/backward_lstm_5/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’­
3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp<backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Å
$backward_lstm_5/lstm_cell_38/BiasAddBiasAdd$backward_lstm_5/lstm_cell_38/add:z:0;backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’n
,backward_lstm_5/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
"backward_lstm_5/lstm_cell_38/splitSplit5backward_lstm_5/lstm_cell_38/split/split_dim:output:0-backward_lstm_5/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
$backward_lstm_5/lstm_cell_38/SigmoidSigmoid+backward_lstm_5/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
&backward_lstm_5/lstm_cell_38/Sigmoid_1Sigmoid+backward_lstm_5/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ø
 backward_lstm_5/lstm_cell_38/mulMul*backward_lstm_5/lstm_cell_38/Sigmoid_1:y:0 backward_lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
!backward_lstm_5/lstm_cell_38/ReluRelu+backward_lstm_5/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’·
"backward_lstm_5/lstm_cell_38/mul_1Mul(backward_lstm_5/lstm_cell_38/Sigmoid:y:0/backward_lstm_5/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¬
"backward_lstm_5/lstm_cell_38/add_1AddV2$backward_lstm_5/lstm_cell_38/mul:z:0&backward_lstm_5/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
&backward_lstm_5/lstm_cell_38/Sigmoid_2Sigmoid+backward_lstm_5/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
#backward_lstm_5/lstm_cell_38/Relu_1Relu&backward_lstm_5/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’»
"backward_lstm_5/lstm_cell_38/mul_2Mul*backward_lstm_5/lstm_cell_38/Sigmoid_2:y:01backward_lstm_5/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’~
-backward_lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   n
,backward_lstm_5/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :õ
backward_lstm_5/TensorArrayV2_1TensorListReserve6backward_lstm_5/TensorArrayV2_1/element_shape:output:05backward_lstm_5/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅV
backward_lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(backward_lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’d
"backward_lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ę
backward_lstm_5/whileWhile+backward_lstm_5/while/loop_counter:output:01backward_lstm_5/while/maximum_iterations:output:0backward_lstm_5/time:output:0(backward_lstm_5/TensorArrayV2_1:handle:0backward_lstm_5/zeros:output:0 backward_lstm_5/zeros_1:output:0(backward_lstm_5/strided_slice_1:output:0Gbackward_lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0;backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource=backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource<backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *-
body%R#
!backward_lstm_5_while_body_769349*-
cond%R#
!backward_lstm_5_while_cond_769348*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
@backward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
2backward_lstm_5/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_5/while:output:3Ibackward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsx
%backward_lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’q
'backward_lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ų
backward_lstm_5/strided_slice_3StridedSlice;backward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0.backward_lstm_5/strided_slice_3/stack:output:00backward_lstm_5/strided_slice_3/stack_1:output:00backward_lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_masku
 backward_lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ē
backward_lstm_5/transpose_1	Transpose;backward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0)backward_lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’k
backward_lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :·
concatConcatV2'forward_lstm_5/strided_slice_3:output:0(backward_lstm_5/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’¶
NoOpNoOp4^backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp3^backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp5^backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp^backward_lstm_5/while3^forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp2^forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp4^forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp^forward_lstm_5/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : 2j
3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp2h
2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp2l
4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp2.
backward_lstm_5/whilebackward_lstm_5/while2h
2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp2f
1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp2j
3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp2,
forward_lstm_5/whileforward_lstm_5/while:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ą½
·
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_767355

inputsM
:forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource:	P
<forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource:
J
;forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource:	N
;backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource:	Q
=backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource:
K
<backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource:	
identity¢3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp¢2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp¢4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp¢backward_lstm_5/while¢2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp¢1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp¢3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp¢forward_lstm_5/whileJ
forward_lstm_5/ShapeShapeinputs*
T0*
_output_shapes
:l
"forward_lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
forward_lstm_5/strided_sliceStridedSliceforward_lstm_5/Shape:output:0+forward_lstm_5/strided_slice/stack:output:0-forward_lstm_5/strided_slice/stack_1:output:0-forward_lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B : 
forward_lstm_5/zeros/packedPack%forward_lstm_5/strided_slice:output:0&forward_lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_5/zerosFill$forward_lstm_5/zeros/packed:output:0#forward_lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’b
forward_lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :¤
forward_lstm_5/zeros_1/packedPack%forward_lstm_5/strided_slice:output:0(forward_lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
forward_lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
forward_lstm_5/zeros_1Fill&forward_lstm_5/zeros_1/packed:output:0%forward_lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’r
forward_lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm_5/transpose	Transposeinputs&forward_lstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’b
forward_lstm_5/Shape_1Shapeforward_lstm_5/transpose:y:0*
T0*
_output_shapes
:n
$forward_lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
forward_lstm_5/strided_slice_1StridedSliceforward_lstm_5/Shape_1:output:0-forward_lstm_5/strided_slice_1/stack:output:0/forward_lstm_5/strided_slice_1/stack_1:output:0/forward_lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*forward_lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’į
forward_lstm_5/TensorArrayV2TensorListReserve3forward_lstm_5/TensorArrayV2/element_shape:output:0'forward_lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Dforward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
6forward_lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_5/transpose:y:0Mforward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅn
$forward_lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:“
forward_lstm_5/strided_slice_2StridedSliceforward_lstm_5/transpose:y:0-forward_lstm_5/strided_slice_2/stack:output:0/forward_lstm_5/strided_slice_2/stack_1:output:0/forward_lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask­
1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOpReadVariableOp:forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ć
"forward_lstm_5/lstm_cell_37/MatMulMatMul'forward_lstm_5/strided_slice_2:output:09forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’²
3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp<forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0½
$forward_lstm_5/lstm_cell_37/MatMul_1MatMulforward_lstm_5/zeros:output:0;forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¹
forward_lstm_5/lstm_cell_37/addAddV2,forward_lstm_5/lstm_cell_37/MatMul:product:0.forward_lstm_5/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’«
2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp;forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ā
#forward_lstm_5/lstm_cell_37/BiasAddBiasAdd#forward_lstm_5/lstm_cell_37/add:z:0:forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’m
+forward_lstm_5/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!forward_lstm_5/lstm_cell_37/splitSplit4forward_lstm_5/lstm_cell_37/split/split_dim:output:0,forward_lstm_5/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
#forward_lstm_5/lstm_cell_37/SigmoidSigmoid*forward_lstm_5/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
%forward_lstm_5/lstm_cell_37/Sigmoid_1Sigmoid*forward_lstm_5/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’„
forward_lstm_5/lstm_cell_37/mulMul)forward_lstm_5/lstm_cell_37/Sigmoid_1:y:0forward_lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
 forward_lstm_5/lstm_cell_37/ReluRelu*forward_lstm_5/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’“
!forward_lstm_5/lstm_cell_37/mul_1Mul'forward_lstm_5/lstm_cell_37/Sigmoid:y:0.forward_lstm_5/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’©
!forward_lstm_5/lstm_cell_37/add_1AddV2#forward_lstm_5/lstm_cell_37/mul:z:0%forward_lstm_5/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
%forward_lstm_5/lstm_cell_37/Sigmoid_2Sigmoid*forward_lstm_5/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
"forward_lstm_5/lstm_cell_37/Relu_1Relu%forward_lstm_5/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ø
!forward_lstm_5/lstm_cell_37/mul_2Mul)forward_lstm_5/lstm_cell_37/Sigmoid_2:y:00forward_lstm_5/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’}
,forward_lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   m
+forward_lstm_5/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ņ
forward_lstm_5/TensorArrayV2_1TensorListReserve5forward_lstm_5/TensorArrayV2_1/element_shape:output:04forward_lstm_5/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅU
forward_lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'forward_lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’c
!forward_lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ų
forward_lstm_5/whileWhile*forward_lstm_5/while/loop_counter:output:00forward_lstm_5/while/maximum_iterations:output:0forward_lstm_5/time:output:0'forward_lstm_5/TensorArrayV2_1:handle:0forward_lstm_5/zeros:output:0forward_lstm_5/zeros_1:output:0'forward_lstm_5/strided_slice_1:output:0Fforward_lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0:forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource<forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource;forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *,
body$R"
 forward_lstm_5_while_body_767125*,
cond$R"
 forward_lstm_5_while_cond_767124*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
?forward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
1forward_lstm_5/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_5/while:output:3Hforward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsw
$forward_lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’p
&forward_lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
forward_lstm_5/strided_slice_3StridedSlice:forward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0-forward_lstm_5/strided_slice_3/stack:output:0/forward_lstm_5/strided_slice_3/stack_1:output:0/forward_lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maskt
forward_lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ä
forward_lstm_5/transpose_1	Transpose:forward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0(forward_lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’j
forward_lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    K
backward_lstm_5/ShapeShapeinputs*
T0*
_output_shapes
:m
#backward_lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
backward_lstm_5/strided_sliceStridedSlicebackward_lstm_5/Shape:output:0,backward_lstm_5/strided_slice/stack:output:0.backward_lstm_5/strided_slice/stack_1:output:0.backward_lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :£
backward_lstm_5/zeros/packedPack&backward_lstm_5/strided_slice:output:0'backward_lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm_5/zerosFill%backward_lstm_5/zeros/packed:output:0$backward_lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
 backward_lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :§
backward_lstm_5/zeros_1/packedPack&backward_lstm_5/strided_slice:output:0)backward_lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
backward_lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
backward_lstm_5/zeros_1Fill'backward_lstm_5/zeros_1/packed:output:0&backward_lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
backward_lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
backward_lstm_5/transpose	Transposeinputs'backward_lstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d
backward_lstm_5/Shape_1Shapebackward_lstm_5/transpose:y:0*
T0*
_output_shapes
:o
%backward_lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
backward_lstm_5/strided_slice_1StridedSlice backward_lstm_5/Shape_1:output:0.backward_lstm_5/strided_slice_1/stack:output:00backward_lstm_5/strided_slice_1/stack_1:output:00backward_lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+backward_lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ä
backward_lstm_5/TensorArrayV2TensorListReserve4backward_lstm_5/TensorArrayV2/element_shape:output:0(backward_lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅh
backward_lstm_5/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ¤
backward_lstm_5/ReverseV2	ReverseV2backward_lstm_5/transpose:y:0'backward_lstm_5/ReverseV2/axis:output:0*
T0*+
_output_shapes
:’’’’’’’’’
Ebackward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
7backward_lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"backward_lstm_5/ReverseV2:output:0Nbackward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅo
%backward_lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¹
backward_lstm_5/strided_slice_2StridedSlicebackward_lstm_5/transpose:y:0.backward_lstm_5/strided_slice_2/stack:output:00backward_lstm_5/strided_slice_2/stack_1:output:00backward_lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_maskÆ
2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOpReadVariableOp;backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ę
#backward_lstm_5/lstm_cell_38/MatMulMatMul(backward_lstm_5/strided_slice_2:output:0:backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’“
4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp=backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ą
%backward_lstm_5/lstm_cell_38/MatMul_1MatMulbackward_lstm_5/zeros:output:0<backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¼
 backward_lstm_5/lstm_cell_38/addAddV2-backward_lstm_5/lstm_cell_38/MatMul:product:0/backward_lstm_5/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’­
3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp<backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Å
$backward_lstm_5/lstm_cell_38/BiasAddBiasAdd$backward_lstm_5/lstm_cell_38/add:z:0;backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’n
,backward_lstm_5/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
"backward_lstm_5/lstm_cell_38/splitSplit5backward_lstm_5/lstm_cell_38/split/split_dim:output:0-backward_lstm_5/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
$backward_lstm_5/lstm_cell_38/SigmoidSigmoid+backward_lstm_5/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
&backward_lstm_5/lstm_cell_38/Sigmoid_1Sigmoid+backward_lstm_5/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ø
 backward_lstm_5/lstm_cell_38/mulMul*backward_lstm_5/lstm_cell_38/Sigmoid_1:y:0 backward_lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
!backward_lstm_5/lstm_cell_38/ReluRelu+backward_lstm_5/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’·
"backward_lstm_5/lstm_cell_38/mul_1Mul(backward_lstm_5/lstm_cell_38/Sigmoid:y:0/backward_lstm_5/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¬
"backward_lstm_5/lstm_cell_38/add_1AddV2$backward_lstm_5/lstm_cell_38/mul:z:0&backward_lstm_5/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
&backward_lstm_5/lstm_cell_38/Sigmoid_2Sigmoid+backward_lstm_5/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
#backward_lstm_5/lstm_cell_38/Relu_1Relu&backward_lstm_5/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’»
"backward_lstm_5/lstm_cell_38/mul_2Mul*backward_lstm_5/lstm_cell_38/Sigmoid_2:y:01backward_lstm_5/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’~
-backward_lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   n
,backward_lstm_5/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :õ
backward_lstm_5/TensorArrayV2_1TensorListReserve6backward_lstm_5/TensorArrayV2_1/element_shape:output:05backward_lstm_5/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅV
backward_lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(backward_lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’d
"backward_lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ę
backward_lstm_5/whileWhile+backward_lstm_5/while/loop_counter:output:01backward_lstm_5/while/maximum_iterations:output:0backward_lstm_5/time:output:0(backward_lstm_5/TensorArrayV2_1:handle:0backward_lstm_5/zeros:output:0 backward_lstm_5/zeros_1:output:0(backward_lstm_5/strided_slice_1:output:0Gbackward_lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0;backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource=backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource<backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *-
body%R#
!backward_lstm_5_while_body_767268*-
cond%R#
!backward_lstm_5_while_cond_767267*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
@backward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
2backward_lstm_5/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_5/while:output:3Ibackward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsx
%backward_lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’q
'backward_lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ų
backward_lstm_5/strided_slice_3StridedSlice;backward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0.backward_lstm_5/strided_slice_3/stack:output:00backward_lstm_5/strided_slice_3/stack_1:output:00backward_lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_masku
 backward_lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ē
backward_lstm_5/transpose_1	Transpose;backward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0)backward_lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’k
backward_lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :·
concatConcatV2'forward_lstm_5/strided_slice_3:output:0(backward_lstm_5/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’¶
NoOpNoOp4^backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp3^backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp5^backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp^backward_lstm_5/while3^forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp2^forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp4^forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp^forward_lstm_5/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : 2j
3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp2h
2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp2l
4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp2.
backward_lstm_5/whilebackward_lstm_5/while2h
2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp2f
1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp2j
3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp2,
forward_lstm_5/whileforward_lstm_5/while:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
¾L
Ņ
!backward_lstm_5_while_body_766899<
8backward_lstm_5_while_backward_lstm_5_while_loop_counterB
>backward_lstm_5_while_backward_lstm_5_while_maximum_iterations%
!backward_lstm_5_while_placeholder'
#backward_lstm_5_while_placeholder_1'
#backward_lstm_5_while_placeholder_2'
#backward_lstm_5_while_placeholder_3;
7backward_lstm_5_while_backward_lstm_5_strided_slice_1_0w
sbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0V
Cbackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0:	Y
Ebackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0:
S
Dbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0:	"
backward_lstm_5_while_identity$
 backward_lstm_5_while_identity_1$
 backward_lstm_5_while_identity_2$
 backward_lstm_5_while_identity_3$
 backward_lstm_5_while_identity_4$
 backward_lstm_5_while_identity_59
5backward_lstm_5_while_backward_lstm_5_strided_slice_1u
qbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensorT
Abackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource:	W
Cbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource:
Q
Bbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource:	¢9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp¢8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp¢:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp
Gbackward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ö
9backward_lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0!backward_lstm_5_while_placeholderPbackward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0½
8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOpCbackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ź
)backward_lstm_5/while/lstm_cell_38/MatMulMatMul@backward_lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0@backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOpEbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ń
+backward_lstm_5/while/lstm_cell_38/MatMul_1MatMul#backward_lstm_5_while_placeholder_2Bbackward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ī
&backward_lstm_5/while/lstm_cell_38/addAddV23backward_lstm_5/while/lstm_cell_38/MatMul:product:05backward_lstm_5/while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’»
9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOpDbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0×
*backward_lstm_5/while/lstm_cell_38/BiasAddBiasAdd*backward_lstm_5/while/lstm_cell_38/add:z:0Abackward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’t
2backward_lstm_5/while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
(backward_lstm_5/while/lstm_cell_38/splitSplit;backward_lstm_5/while/lstm_cell_38/split/split_dim:output:03backward_lstm_5/while/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
*backward_lstm_5/while/lstm_cell_38/SigmoidSigmoid1backward_lstm_5/while/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
,backward_lstm_5/while/lstm_cell_38/Sigmoid_1Sigmoid1backward_lstm_5/while/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’·
&backward_lstm_5/while/lstm_cell_38/mulMul0backward_lstm_5/while/lstm_cell_38/Sigmoid_1:y:0#backward_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
'backward_lstm_5/while/lstm_cell_38/ReluRelu1backward_lstm_5/while/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’É
(backward_lstm_5/while/lstm_cell_38/mul_1Mul.backward_lstm_5/while/lstm_cell_38/Sigmoid:y:05backward_lstm_5/while/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¾
(backward_lstm_5/while/lstm_cell_38/add_1AddV2*backward_lstm_5/while/lstm_cell_38/mul:z:0,backward_lstm_5/while/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
,backward_lstm_5/while/lstm_cell_38/Sigmoid_2Sigmoid1backward_lstm_5/while/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
)backward_lstm_5/while/lstm_cell_38/Relu_1Relu,backward_lstm_5/while/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ķ
(backward_lstm_5/while/lstm_cell_38/mul_2Mul0backward_lstm_5/while/lstm_cell_38/Sigmoid_2:y:07backward_lstm_5/while/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
@backward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ­
:backward_lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#backward_lstm_5_while_placeholder_1Ibackward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/index:output:0,backward_lstm_5/while/lstm_cell_38/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ]
backward_lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_5/while/addAddV2!backward_lstm_5_while_placeholder$backward_lstm_5/while/add/y:output:0*
T0*
_output_shapes
: _
backward_lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :§
backward_lstm_5/while/add_1AddV28backward_lstm_5_while_backward_lstm_5_while_loop_counter&backward_lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_5/while/IdentityIdentitybackward_lstm_5/while/add_1:z:0^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: Ŗ
 backward_lstm_5/while/Identity_1Identity>backward_lstm_5_while_backward_lstm_5_while_maximum_iterations^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: 
 backward_lstm_5/while/Identity_2Identitybackward_lstm_5/while/add:z:0^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: ¶
 backward_lstm_5/while/Identity_3IdentityJbackward_lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: Ŗ
 backward_lstm_5/while/Identity_4Identity,backward_lstm_5/while/lstm_cell_38/mul_2:z:0^backward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
 backward_lstm_5/while/Identity_5Identity,backward_lstm_5/while/lstm_cell_38/add_1:z:0^backward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
backward_lstm_5/while/NoOpNoOp:^backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp9^backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp;^backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "p
5backward_lstm_5_while_backward_lstm_5_strided_slice_17backward_lstm_5_while_backward_lstm_5_strided_slice_1_0"I
backward_lstm_5_while_identity'backward_lstm_5/while/Identity:output:0"M
 backward_lstm_5_while_identity_1)backward_lstm_5/while/Identity_1:output:0"M
 backward_lstm_5_while_identity_2)backward_lstm_5/while/Identity_2:output:0"M
 backward_lstm_5_while_identity_3)backward_lstm_5/while/Identity_3:output:0"M
 backward_lstm_5_while_identity_4)backward_lstm_5/while/Identity_4:output:0"M
 backward_lstm_5_while_identity_5)backward_lstm_5/while/Identity_5:output:0"
Bbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resourceDbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0"
Cbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resourceEbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0"
Abackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resourceCbackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0"č
qbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensorsbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2v
9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp2t
8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp2x
:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp: 
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
°K
²
 forward_lstm_5_while_body_768336:
6forward_lstm_5_while_forward_lstm_5_while_loop_counter@
<forward_lstm_5_while_forward_lstm_5_while_maximum_iterations$
 forward_lstm_5_while_placeholder&
"forward_lstm_5_while_placeholder_1&
"forward_lstm_5_while_placeholder_2&
"forward_lstm_5_while_placeholder_39
5forward_lstm_5_while_forward_lstm_5_strided_slice_1_0u
qforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0U
Bforward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0:	X
Dforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0:
R
Cforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0:	!
forward_lstm_5_while_identity#
forward_lstm_5_while_identity_1#
forward_lstm_5_while_identity_2#
forward_lstm_5_while_identity_3#
forward_lstm_5_while_identity_4#
forward_lstm_5_while_identity_57
3forward_lstm_5_while_forward_lstm_5_strided_slice_1s
oforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensorS
@forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource:	V
Bforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource:
P
Aforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource:	¢8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp¢7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp¢9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp
Fforward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’ś
8forward_lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0 forward_lstm_5_while_placeholderOforward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0»
7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOpBforward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ē
(forward_lstm_5/while/lstm_cell_37/MatMulMatMul?forward_lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0?forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ą
9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOpDforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ī
*forward_lstm_5/while/lstm_cell_37/MatMul_1MatMul"forward_lstm_5_while_placeholder_2Aforward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ė
%forward_lstm_5/while/lstm_cell_37/addAddV22forward_lstm_5/while/lstm_cell_37/MatMul:product:04forward_lstm_5/while/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’¹
8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOpCforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ō
)forward_lstm_5/while/lstm_cell_37/BiasAddBiasAdd)forward_lstm_5/while/lstm_cell_37/add:z:0@forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’s
1forward_lstm_5/while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
'forward_lstm_5/while/lstm_cell_37/splitSplit:forward_lstm_5/while/lstm_cell_37/split/split_dim:output:02forward_lstm_5/while/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
)forward_lstm_5/while/lstm_cell_37/SigmoidSigmoid0forward_lstm_5/while/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
+forward_lstm_5/while/lstm_cell_37/Sigmoid_1Sigmoid0forward_lstm_5/while/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’“
%forward_lstm_5/while/lstm_cell_37/mulMul/forward_lstm_5/while/lstm_cell_37/Sigmoid_1:y:0"forward_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
&forward_lstm_5/while/lstm_cell_37/ReluRelu0forward_lstm_5/while/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ę
'forward_lstm_5/while/lstm_cell_37/mul_1Mul-forward_lstm_5/while/lstm_cell_37/Sigmoid:y:04forward_lstm_5/while/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’»
'forward_lstm_5/while/lstm_cell_37/add_1AddV2)forward_lstm_5/while/lstm_cell_37/mul:z:0+forward_lstm_5/while/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
+forward_lstm_5/while/lstm_cell_37/Sigmoid_2Sigmoid0forward_lstm_5/while/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
(forward_lstm_5/while/lstm_cell_37/Relu_1Relu+forward_lstm_5/while/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ź
'forward_lstm_5/while/lstm_cell_37/mul_2Mul/forward_lstm_5/while/lstm_cell_37/Sigmoid_2:y:06forward_lstm_5/while/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
?forward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ©
9forward_lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"forward_lstm_5_while_placeholder_1Hforward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/index:output:0+forward_lstm_5/while/lstm_cell_37/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ\
forward_lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_5/while/addAddV2 forward_lstm_5_while_placeholder#forward_lstm_5/while/add/y:output:0*
T0*
_output_shapes
: ^
forward_lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :£
forward_lstm_5/while/add_1AddV26forward_lstm_5_while_forward_lstm_5_while_loop_counter%forward_lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_5/while/IdentityIdentityforward_lstm_5/while/add_1:z:0^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: ¦
forward_lstm_5/while/Identity_1Identity<forward_lstm_5_while_forward_lstm_5_while_maximum_iterations^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: 
forward_lstm_5/while/Identity_2Identityforward_lstm_5/while/add:z:0^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: ³
forward_lstm_5/while/Identity_3IdentityIforward_lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: §
forward_lstm_5/while/Identity_4Identity+forward_lstm_5/while/lstm_cell_37/mul_2:z:0^forward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’§
forward_lstm_5/while/Identity_5Identity+forward_lstm_5/while/lstm_cell_37/add_1:z:0^forward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
forward_lstm_5/while/NoOpNoOp9^forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp8^forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp:^forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "l
3forward_lstm_5_while_forward_lstm_5_strided_slice_15forward_lstm_5_while_forward_lstm_5_strided_slice_1_0"G
forward_lstm_5_while_identity&forward_lstm_5/while/Identity:output:0"K
forward_lstm_5_while_identity_1(forward_lstm_5/while/Identity_1:output:0"K
forward_lstm_5_while_identity_2(forward_lstm_5/while/Identity_2:output:0"K
forward_lstm_5_while_identity_3(forward_lstm_5/while/Identity_3:output:0"K
forward_lstm_5_while_identity_4(forward_lstm_5/while/Identity_4:output:0"K
forward_lstm_5_while_identity_5(forward_lstm_5/while/Identity_5:output:0"
Aforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resourceCforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0"
Bforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resourceDforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0"
@forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resourceBforward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0"ä
oforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensorqforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2t
8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp2r
7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp2v
9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp: 
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
L
£
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_770079

inputs>
+lstm_cell_37_matmul_readvariableop_resource:	A
-lstm_cell_37_matmul_1_readvariableop_resource:
;
,lstm_cell_37_biasadd_readvariableop_resource:	
identity¢#lstm_cell_37/BiasAdd/ReadVariableOp¢"lstm_cell_37/MatMul/ReadVariableOp¢$lstm_cell_37/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_37/MatMul/ReadVariableOpReadVariableOp+lstm_cell_37_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_37/MatMulMatMulstrided_slice_2:output:0*lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_37_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_37/MatMul_1MatMulzeros:output:0,lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_37/addAddV2lstm_cell_37/MatMul:product:0lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_37/BiasAddBiasAddlstm_cell_37/add:z:0+lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_37/splitSplit%lstm_cell_37/split/split_dim:output:0lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_37/SigmoidSigmoidlstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_37/Sigmoid_1Sigmoidlstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_37/mulMullstm_cell_37/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_37/ReluRelulstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_37/mul_1Mullstm_cell_37/Sigmoid:y:0lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_37/add_1AddV2lstm_cell_37/mul:z:0lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_37/Sigmoid_2Sigmoidlstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_37/Relu_1Relulstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_37/mul_2Mullstm_cell_37/Sigmoid_2:y:0!lstm_cell_37/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_37_matmul_readvariableop_resource-lstm_cell_37_matmul_1_readvariableop_resource,lstm_cell_37_biasadd_readvariableop_resource*
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
bodyR
while_body_769994*
condR
while_cond_769993*M
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
NoOpNoOp$^lstm_cell_37/BiasAdd/ReadVariableOp#^lstm_cell_37/MatMul/ReadVariableOp%^lstm_cell_37/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_37/BiasAdd/ReadVariableOp#lstm_cell_37/BiasAdd/ReadVariableOp2H
"lstm_cell_37/MatMul/ReadVariableOp"lstm_cell_37/MatMul/ReadVariableOp2L
$lstm_cell_37/MatMul_1/ReadVariableOp$lstm_cell_37/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
ĒL
Ņ
!backward_lstm_5_while_body_768769<
8backward_lstm_5_while_backward_lstm_5_while_loop_counterB
>backward_lstm_5_while_backward_lstm_5_while_maximum_iterations%
!backward_lstm_5_while_placeholder'
#backward_lstm_5_while_placeholder_1'
#backward_lstm_5_while_placeholder_2'
#backward_lstm_5_while_placeholder_3;
7backward_lstm_5_while_backward_lstm_5_strided_slice_1_0w
sbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0V
Cbackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0:	Y
Ebackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0:
S
Dbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0:	"
backward_lstm_5_while_identity$
 backward_lstm_5_while_identity_1$
 backward_lstm_5_while_identity_2$
 backward_lstm_5_while_identity_3$
 backward_lstm_5_while_identity_4$
 backward_lstm_5_while_identity_59
5backward_lstm_5_while_backward_lstm_5_strided_slice_1u
qbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensorT
Abackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource:	W
Cbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource:
Q
Bbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource:	¢9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp¢8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp¢:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp
Gbackward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’’
9backward_lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0!backward_lstm_5_while_placeholderPbackward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0½
8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOpCbackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ź
)backward_lstm_5/while/lstm_cell_38/MatMulMatMul@backward_lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0@backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOpEbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ń
+backward_lstm_5/while/lstm_cell_38/MatMul_1MatMul#backward_lstm_5_while_placeholder_2Bbackward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ī
&backward_lstm_5/while/lstm_cell_38/addAddV23backward_lstm_5/while/lstm_cell_38/MatMul:product:05backward_lstm_5/while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’»
9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOpDbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0×
*backward_lstm_5/while/lstm_cell_38/BiasAddBiasAdd*backward_lstm_5/while/lstm_cell_38/add:z:0Abackward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’t
2backward_lstm_5/while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
(backward_lstm_5/while/lstm_cell_38/splitSplit;backward_lstm_5/while/lstm_cell_38/split/split_dim:output:03backward_lstm_5/while/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
*backward_lstm_5/while/lstm_cell_38/SigmoidSigmoid1backward_lstm_5/while/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
,backward_lstm_5/while/lstm_cell_38/Sigmoid_1Sigmoid1backward_lstm_5/while/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’·
&backward_lstm_5/while/lstm_cell_38/mulMul0backward_lstm_5/while/lstm_cell_38/Sigmoid_1:y:0#backward_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
'backward_lstm_5/while/lstm_cell_38/ReluRelu1backward_lstm_5/while/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’É
(backward_lstm_5/while/lstm_cell_38/mul_1Mul.backward_lstm_5/while/lstm_cell_38/Sigmoid:y:05backward_lstm_5/while/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¾
(backward_lstm_5/while/lstm_cell_38/add_1AddV2*backward_lstm_5/while/lstm_cell_38/mul:z:0,backward_lstm_5/while/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
,backward_lstm_5/while/lstm_cell_38/Sigmoid_2Sigmoid1backward_lstm_5/while/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
)backward_lstm_5/while/lstm_cell_38/Relu_1Relu,backward_lstm_5/while/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ķ
(backward_lstm_5/while/lstm_cell_38/mul_2Mul0backward_lstm_5/while/lstm_cell_38/Sigmoid_2:y:07backward_lstm_5/while/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
@backward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ­
:backward_lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#backward_lstm_5_while_placeholder_1Ibackward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/index:output:0,backward_lstm_5/while/lstm_cell_38/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ]
backward_lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_5/while/addAddV2!backward_lstm_5_while_placeholder$backward_lstm_5/while/add/y:output:0*
T0*
_output_shapes
: _
backward_lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :§
backward_lstm_5/while/add_1AddV28backward_lstm_5_while_backward_lstm_5_while_loop_counter&backward_lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_5/while/IdentityIdentitybackward_lstm_5/while/add_1:z:0^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: Ŗ
 backward_lstm_5/while/Identity_1Identity>backward_lstm_5_while_backward_lstm_5_while_maximum_iterations^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: 
 backward_lstm_5/while/Identity_2Identitybackward_lstm_5/while/add:z:0^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: ¶
 backward_lstm_5/while/Identity_3IdentityJbackward_lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: Ŗ
 backward_lstm_5/while/Identity_4Identity,backward_lstm_5/while/lstm_cell_38/mul_2:z:0^backward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
 backward_lstm_5/while/Identity_5Identity,backward_lstm_5/while/lstm_cell_38/add_1:z:0^backward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
backward_lstm_5/while/NoOpNoOp:^backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp9^backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp;^backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "p
5backward_lstm_5_while_backward_lstm_5_strided_slice_17backward_lstm_5_while_backward_lstm_5_strided_slice_1_0"I
backward_lstm_5_while_identity'backward_lstm_5/while/Identity:output:0"M
 backward_lstm_5_while_identity_1)backward_lstm_5/while/Identity_1:output:0"M
 backward_lstm_5_while_identity_2)backward_lstm_5/while/Identity_2:output:0"M
 backward_lstm_5_while_identity_3)backward_lstm_5/while/Identity_3:output:0"M
 backward_lstm_5_while_identity_4)backward_lstm_5/while/Identity_4:output:0"M
 backward_lstm_5_while_identity_5)backward_lstm_5/while/Identity_5:output:0"
Bbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resourceDbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0"
Cbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resourceEbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0"
Abackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resourceCbackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0"č
qbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensorsbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2v
9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp2t
8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp2x
:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp: 
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
ó

H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_770809

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
£^
¶
0bidirectional_5_forward_lstm_5_while_body_767950Z
Vbidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_while_loop_counter`
\bidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_while_maximum_iterations4
0bidirectional_5_forward_lstm_5_while_placeholder6
2bidirectional_5_forward_lstm_5_while_placeholder_16
2bidirectional_5_forward_lstm_5_while_placeholder_26
2bidirectional_5_forward_lstm_5_while_placeholder_3Y
Ubidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_strided_slice_1_0
bidirectional_5_forward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0e
Rbidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0:	h
Tbidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0:
b
Sbidirectional_5_forward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0:	1
-bidirectional_5_forward_lstm_5_while_identity3
/bidirectional_5_forward_lstm_5_while_identity_13
/bidirectional_5_forward_lstm_5_while_identity_23
/bidirectional_5_forward_lstm_5_while_identity_33
/bidirectional_5_forward_lstm_5_while_identity_43
/bidirectional_5_forward_lstm_5_while_identity_5W
Sbidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_strided_slice_1
bidirectional_5_forward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_forward_lstm_5_tensorarrayunstack_tensorlistfromtensorc
Pbidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource:	f
Rbidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource:
`
Qbidirectional_5_forward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource:	¢Hbidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp¢Gbidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp¢Ibidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp§
Vbidirectional_5/forward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ā
Hbidirectional_5/forward_lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_5_forward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_00bidirectional_5_forward_lstm_5_while_placeholder_bidirectional_5/forward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0Ū
Gbidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOpRbidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0
8bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMulMatMulObidirectional_5/forward_lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0Obidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ą
Ibidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOpTbidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0ž
:bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1MatMul2bidirectional_5_forward_lstm_5_while_placeholder_2Qbidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ū
5bidirectional_5/forward_lstm_5/while/lstm_cell_37/addAddV2Bbidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul:product:0Dbidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Ł
Hbidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOpSbidirectional_5_forward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
9bidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAddBiasAdd9bidirectional_5/forward_lstm_5/while/lstm_cell_37/add:z:0Pbidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
Abidirectional_5/forward_lstm_5/while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Š
7bidirectional_5/forward_lstm_5/while/lstm_cell_37/splitSplitJbidirectional_5/forward_lstm_5/while/lstm_cell_37/split/split_dim:output:0Bbidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split¹
9bidirectional_5/forward_lstm_5/while/lstm_cell_37/SigmoidSigmoid@bidirectional_5/forward_lstm_5/while/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’»
;bidirectional_5/forward_lstm_5/while/lstm_cell_37/Sigmoid_1Sigmoid@bidirectional_5/forward_lstm_5/while/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’ä
5bidirectional_5/forward_lstm_5/while/lstm_cell_37/mulMul?bidirectional_5/forward_lstm_5/while/lstm_cell_37/Sigmoid_1:y:02bidirectional_5_forward_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’³
6bidirectional_5/forward_lstm_5/while/lstm_cell_37/ReluRelu@bidirectional_5/forward_lstm_5/while/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ö
7bidirectional_5/forward_lstm_5/while/lstm_cell_37/mul_1Mul=bidirectional_5/forward_lstm_5/while/lstm_cell_37/Sigmoid:y:0Dbidirectional_5/forward_lstm_5/while/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’ė
7bidirectional_5/forward_lstm_5/while/lstm_cell_37/add_1AddV29bidirectional_5/forward_lstm_5/while/lstm_cell_37/mul:z:0;bidirectional_5/forward_lstm_5/while/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’»
;bidirectional_5/forward_lstm_5/while/lstm_cell_37/Sigmoid_2Sigmoid@bidirectional_5/forward_lstm_5/while/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’°
8bidirectional_5/forward_lstm_5/while/lstm_cell_37/Relu_1Relu;bidirectional_5/forward_lstm_5/while/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ś
7bidirectional_5/forward_lstm_5/while/lstm_cell_37/mul_2Mul?bidirectional_5/forward_lstm_5/while/lstm_cell_37/Sigmoid_2:y:0Fbidirectional_5/forward_lstm_5/while/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Obidirectional_5/forward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : é
Ibidirectional_5/forward_lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem2bidirectional_5_forward_lstm_5_while_placeholder_1Xbidirectional_5/forward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/index:output:0;bidirectional_5/forward_lstm_5/while/lstm_cell_37/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅl
*bidirectional_5/forward_lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¹
(bidirectional_5/forward_lstm_5/while/addAddV20bidirectional_5_forward_lstm_5_while_placeholder3bidirectional_5/forward_lstm_5/while/add/y:output:0*
T0*
_output_shapes
: n
,bidirectional_5/forward_lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ć
*bidirectional_5/forward_lstm_5/while/add_1AddV2Vbidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_while_loop_counter5bidirectional_5/forward_lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: ¶
-bidirectional_5/forward_lstm_5/while/IdentityIdentity.bidirectional_5/forward_lstm_5/while/add_1:z:0*^bidirectional_5/forward_lstm_5/while/NoOp*
T0*
_output_shapes
: ę
/bidirectional_5/forward_lstm_5/while/Identity_1Identity\bidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_while_maximum_iterations*^bidirectional_5/forward_lstm_5/while/NoOp*
T0*
_output_shapes
: ¶
/bidirectional_5/forward_lstm_5/while/Identity_2Identity,bidirectional_5/forward_lstm_5/while/add:z:0*^bidirectional_5/forward_lstm_5/while/NoOp*
T0*
_output_shapes
: ć
/bidirectional_5/forward_lstm_5/while/Identity_3IdentityYbidirectional_5/forward_lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^bidirectional_5/forward_lstm_5/while/NoOp*
T0*
_output_shapes
: ×
/bidirectional_5/forward_lstm_5/while/Identity_4Identity;bidirectional_5/forward_lstm_5/while/lstm_cell_37/mul_2:z:0*^bidirectional_5/forward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’×
/bidirectional_5/forward_lstm_5/while/Identity_5Identity;bidirectional_5/forward_lstm_5/while/lstm_cell_37/add_1:z:0*^bidirectional_5/forward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ģ
)bidirectional_5/forward_lstm_5/while/NoOpNoOpI^bidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOpH^bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOpJ^bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "¬
Sbidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_strided_slice_1Ubidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_strided_slice_1_0"g
-bidirectional_5_forward_lstm_5_while_identity6bidirectional_5/forward_lstm_5/while/Identity:output:0"k
/bidirectional_5_forward_lstm_5_while_identity_18bidirectional_5/forward_lstm_5/while/Identity_1:output:0"k
/bidirectional_5_forward_lstm_5_while_identity_28bidirectional_5/forward_lstm_5/while/Identity_2:output:0"k
/bidirectional_5_forward_lstm_5_while_identity_38bidirectional_5/forward_lstm_5/while/Identity_3:output:0"k
/bidirectional_5_forward_lstm_5_while_identity_48bidirectional_5/forward_lstm_5/while/Identity_4:output:0"k
/bidirectional_5_forward_lstm_5_while_identity_58bidirectional_5/forward_lstm_5/while/Identity_5:output:0"Ø
Qbidirectional_5_forward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resourceSbidirectional_5_forward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0"Ŗ
Rbidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resourceTbidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0"¦
Pbidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resourceRbidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0"¦
bidirectional_5_forward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_forward_lstm_5_tensorarrayunstack_tensorlistfromtensorbidirectional_5_forward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2
Hbidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOpHbidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp2
Gbidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOpGbidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp2
Ibidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOpIbidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp: 
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
Ä
¶
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_766667

inputs(
forward_lstm_5_766650:	)
forward_lstm_5_766652:
$
forward_lstm_5_766654:	)
backward_lstm_5_766657:	*
backward_lstm_5_766659:
%
backward_lstm_5_766661:	
identity¢'backward_lstm_5/StatefulPartitionedCall¢&forward_lstm_5/StatefulPartitionedCall„
&forward_lstm_5/StatefulPartitionedCallStatefulPartitionedCallinputsforward_lstm_5_766650forward_lstm_5_766652forward_lstm_5_766654*
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
GPU2*0J 8 *S
fNRL
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_766636Ŗ
'backward_lstm_5/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_lstm_5_766657backward_lstm_5_766659backward_lstm_5_766661*
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
GPU2*0J 8 *T
fORM
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_766469M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ē
concatConcatV2/forward_lstm_5/StatefulPartitionedCall:output:00backward_lstm_5/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp(^backward_lstm_5/StatefulPartitionedCall'^forward_lstm_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : : : : 2R
'backward_lstm_5/StatefulPartitionedCall'backward_lstm_5/StatefulPartitionedCall2P
&forward_lstm_5/StatefulPartitionedCall&forward_lstm_5/StatefulPartitionedCall:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
„
Ą
0__inference_backward_lstm_5_layer_call_fn_770101
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCalló
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
GPU2*0J 8 *T
fORM
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_765969p
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
§K
²
 forward_lstm_5_while_body_766756:
6forward_lstm_5_while_forward_lstm_5_while_loop_counter@
<forward_lstm_5_while_forward_lstm_5_while_maximum_iterations$
 forward_lstm_5_while_placeholder&
"forward_lstm_5_while_placeholder_1&
"forward_lstm_5_while_placeholder_2&
"forward_lstm_5_while_placeholder_39
5forward_lstm_5_while_forward_lstm_5_strided_slice_1_0u
qforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0U
Bforward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0:	X
Dforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0:
R
Cforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0:	!
forward_lstm_5_while_identity#
forward_lstm_5_while_identity_1#
forward_lstm_5_while_identity_2#
forward_lstm_5_while_identity_3#
forward_lstm_5_while_identity_4#
forward_lstm_5_while_identity_57
3forward_lstm_5_while_forward_lstm_5_strided_slice_1s
oforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensorS
@forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource:	V
Bforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource:
P
Aforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource:	¢8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp¢7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp¢9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp
Fforward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ń
8forward_lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0 forward_lstm_5_while_placeholderOforward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0»
7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOpBforward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ē
(forward_lstm_5/while/lstm_cell_37/MatMulMatMul?forward_lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0?forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ą
9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOpDforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ī
*forward_lstm_5/while/lstm_cell_37/MatMul_1MatMul"forward_lstm_5_while_placeholder_2Aforward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ė
%forward_lstm_5/while/lstm_cell_37/addAddV22forward_lstm_5/while/lstm_cell_37/MatMul:product:04forward_lstm_5/while/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’¹
8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOpCforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ō
)forward_lstm_5/while/lstm_cell_37/BiasAddBiasAdd)forward_lstm_5/while/lstm_cell_37/add:z:0@forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’s
1forward_lstm_5/while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
'forward_lstm_5/while/lstm_cell_37/splitSplit:forward_lstm_5/while/lstm_cell_37/split/split_dim:output:02forward_lstm_5/while/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
)forward_lstm_5/while/lstm_cell_37/SigmoidSigmoid0forward_lstm_5/while/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
+forward_lstm_5/while/lstm_cell_37/Sigmoid_1Sigmoid0forward_lstm_5/while/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’“
%forward_lstm_5/while/lstm_cell_37/mulMul/forward_lstm_5/while/lstm_cell_37/Sigmoid_1:y:0"forward_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
&forward_lstm_5/while/lstm_cell_37/ReluRelu0forward_lstm_5/while/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ę
'forward_lstm_5/while/lstm_cell_37/mul_1Mul-forward_lstm_5/while/lstm_cell_37/Sigmoid:y:04forward_lstm_5/while/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’»
'forward_lstm_5/while/lstm_cell_37/add_1AddV2)forward_lstm_5/while/lstm_cell_37/mul:z:0+forward_lstm_5/while/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
+forward_lstm_5/while/lstm_cell_37/Sigmoid_2Sigmoid0forward_lstm_5/while/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
(forward_lstm_5/while/lstm_cell_37/Relu_1Relu+forward_lstm_5/while/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ź
'forward_lstm_5/while/lstm_cell_37/mul_2Mul/forward_lstm_5/while/lstm_cell_37/Sigmoid_2:y:06forward_lstm_5/while/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
?forward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ©
9forward_lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"forward_lstm_5_while_placeholder_1Hforward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/index:output:0+forward_lstm_5/while/lstm_cell_37/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ\
forward_lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_5/while/addAddV2 forward_lstm_5_while_placeholder#forward_lstm_5/while/add/y:output:0*
T0*
_output_shapes
: ^
forward_lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :£
forward_lstm_5/while/add_1AddV26forward_lstm_5_while_forward_lstm_5_while_loop_counter%forward_lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_5/while/IdentityIdentityforward_lstm_5/while/add_1:z:0^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: ¦
forward_lstm_5/while/Identity_1Identity<forward_lstm_5_while_forward_lstm_5_while_maximum_iterations^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: 
forward_lstm_5/while/Identity_2Identityforward_lstm_5/while/add:z:0^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: ³
forward_lstm_5/while/Identity_3IdentityIforward_lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: §
forward_lstm_5/while/Identity_4Identity+forward_lstm_5/while/lstm_cell_37/mul_2:z:0^forward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’§
forward_lstm_5/while/Identity_5Identity+forward_lstm_5/while/lstm_cell_37/add_1:z:0^forward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
forward_lstm_5/while/NoOpNoOp9^forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp8^forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp:^forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "l
3forward_lstm_5_while_forward_lstm_5_strided_slice_15forward_lstm_5_while_forward_lstm_5_strided_slice_1_0"G
forward_lstm_5_while_identity&forward_lstm_5/while/Identity:output:0"K
forward_lstm_5_while_identity_1(forward_lstm_5/while/Identity_1:output:0"K
forward_lstm_5_while_identity_2(forward_lstm_5/while/Identity_2:output:0"K
forward_lstm_5_while_identity_3(forward_lstm_5/while/Identity_3:output:0"K
forward_lstm_5_while_identity_4(forward_lstm_5/while/Identity_4:output:0"K
forward_lstm_5_while_identity_5(forward_lstm_5/while/Identity_5:output:0"
Aforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resourceCforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0"
Bforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resourceDforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0"
@forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resourceBforward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0"ä
oforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensorqforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2t
8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp2r
7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp2v
9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp: 
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
Ń
`
D__inference_lambda_5_layer_call_and_return_conditional_losses_768202

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
Æ
½
/__inference_forward_lstm_5_layer_call_fn_769488

inputs
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallš
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
GPU2*0J 8 *S
fNRL
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_766129p
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
¾	
Č
$__inference_signature_wrapper_767548
lambda_5_input
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
identity¢StatefulPartitionedCall
StatefulPartitionedCallStatefulPartitionedCalllambda_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU2*0J 8 **
f%R#
!__inference__wrapped_model_765266o
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
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:’’’’’’’’’
(
_user_specified_namelambda_5_input
īK
„
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_769789
inputs_0>
+lstm_cell_37_matmul_readvariableop_resource:	A
-lstm_cell_37_matmul_1_readvariableop_resource:
;
,lstm_cell_37_biasadd_readvariableop_resource:	
identity¢#lstm_cell_37/BiasAdd/ReadVariableOp¢"lstm_cell_37/MatMul/ReadVariableOp¢$lstm_cell_37/MatMul_1/ReadVariableOp¢while=
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
"lstm_cell_37/MatMul/ReadVariableOpReadVariableOp+lstm_cell_37_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_37/MatMulMatMulstrided_slice_2:output:0*lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_37_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_37/MatMul_1MatMulzeros:output:0,lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_37/addAddV2lstm_cell_37/MatMul:product:0lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_37/BiasAddBiasAddlstm_cell_37/add:z:0+lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_37/splitSplit%lstm_cell_37/split/split_dim:output:0lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_37/SigmoidSigmoidlstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_37/Sigmoid_1Sigmoidlstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_37/mulMullstm_cell_37/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_37/ReluRelulstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_37/mul_1Mullstm_cell_37/Sigmoid:y:0lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_37/add_1AddV2lstm_cell_37/mul:z:0lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_37/Sigmoid_2Sigmoidlstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_37/Relu_1Relulstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_37/mul_2Mullstm_cell_37/Sigmoid_2:y:0!lstm_cell_37/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_37_matmul_readvariableop_resource-lstm_cell_37_matmul_1_readvariableop_resource,lstm_cell_37_biasadd_readvariableop_resource*
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
bodyR
while_body_769704*
condR
while_cond_769703*M
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
NoOpNoOp$^lstm_cell_37/BiasAdd/ReadVariableOp#^lstm_cell_37/MatMul/ReadVariableOp%^lstm_cell_37/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_37/BiasAdd/ReadVariableOp#lstm_cell_37/BiasAdd/ReadVariableOp2H
"lstm_cell_37/MatMul/ReadVariableOp"lstm_cell_37/MatMul/ReadVariableOp2L
$lstm_cell_37/MatMul_1/ReadVariableOp$lstm_cell_37/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0


`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_767496
lambda_5_input)
bidirectional_5_767477:	*
bidirectional_5_767479:
%
bidirectional_5_767481:	)
bidirectional_5_767483:	*
bidirectional_5_767485:
%
bidirectional_5_767487:	!
dense_5_767490:	
dense_5_767492:
identity¢'bidirectional_5/StatefulPartitionedCall¢dense_5/StatefulPartitionedCallĒ
lambda_5/PartitionedCallPartitionedCalllambda_5_input*
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
GPU2*0J 8 *M
fHRF
D__inference_lambda_5_layer_call_and_return_conditional_losses_766695
'bidirectional_5/StatefulPartitionedCallStatefulPartitionedCall!lambda_5/PartitionedCall:output:0bidirectional_5_767477bidirectional_5_767479bidirectional_5_767481bidirectional_5_767483bidirectional_5_767485bidirectional_5_767487*
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
GPU2*0J 8 *T
fORM
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_766986
dense_5/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_5/StatefulPartitionedCall:output:0dense_5_767490dense_5_767492*
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
GPU2*0J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_767010w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
NoOpNoOp(^bidirectional_5/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 2R
'bidirectional_5/StatefulPartitionedCall'bidirectional_5/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:W S
'
_output_shapes
:’’’’’’’’’
(
_user_specified_namelambda_5_input
Ē9
Ņ
while_body_770626
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_38_matmul_readvariableop_resource_0:	I
5while_lstm_cell_38_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_38_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_38_matmul_readvariableop_resource:	G
3while_lstm_cell_38_matmul_1_readvariableop_resource:
A
2while_lstm_cell_38_biasadd_readvariableop_resource:	¢)while/lstm_cell_38/BiasAdd/ReadVariableOp¢(while/lstm_cell_38/MatMul/ReadVariableOp¢*while/lstm_cell_38/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
(while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_38/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_38_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_38/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/addAddV2#while/lstm_cell_38/MatMul:product:0%while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_38/BiasAddBiasAddwhile/lstm_cell_38/add:z:01while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_38/splitSplit+while/lstm_cell_38/split/split_dim:output:0#while/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_38/SigmoidSigmoid!while/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_38/Sigmoid_1Sigmoid!while/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/mulMul while/lstm_cell_38/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_38/ReluRelu!while/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/mul_1Mulwhile/lstm_cell_38/Sigmoid:y:0%while/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/add_1AddV2while/lstm_cell_38/mul:z:0while/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_38/Sigmoid_2Sigmoid!while/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_38/Relu_1Reluwhile/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/mul_2Mul while/lstm_cell_38/Sigmoid_2:y:0'while/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_38/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_38/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_38/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_38_biasadd_readvariableop_resource4while_lstm_cell_38_biasadd_readvariableop_resource_0"l
3while_lstm_cell_38_matmul_1_readvariableop_resource5while_lstm_cell_38_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_38_matmul_readvariableop_resource3while_lstm_cell_38_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_38/BiasAdd/ReadVariableOp)while/lstm_cell_38/BiasAdd/ReadVariableOp2T
(while/lstm_cell_38/MatMul/ReadVariableOp(while/lstm_cell_38/MatMul/ReadVariableOp2X
*while/lstm_cell_38/MatMul_1/ReadVariableOp*while/lstm_cell_38/MatMul_1/ReadVariableOp: 
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
Ē9
Ņ
while_body_770479
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_38_matmul_readvariableop_resource_0:	I
5while_lstm_cell_38_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_38_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_38_matmul_readvariableop_resource:	G
3while_lstm_cell_38_matmul_1_readvariableop_resource:
A
2while_lstm_cell_38_biasadd_readvariableop_resource:	¢)while/lstm_cell_38/BiasAdd/ReadVariableOp¢(while/lstm_cell_38/MatMul/ReadVariableOp¢*while/lstm_cell_38/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
(while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_38/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_38_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_38/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/addAddV2#while/lstm_cell_38/MatMul:product:0%while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_38/BiasAddBiasAddwhile/lstm_cell_38/add:z:01while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_38/splitSplit+while/lstm_cell_38/split/split_dim:output:0#while/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_38/SigmoidSigmoid!while/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_38/Sigmoid_1Sigmoid!while/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/mulMul while/lstm_cell_38/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_38/ReluRelu!while/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/mul_1Mulwhile/lstm_cell_38/Sigmoid:y:0%while/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/add_1AddV2while/lstm_cell_38/mul:z:0while/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_38/Sigmoid_2Sigmoid!while/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_38/Relu_1Reluwhile/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/mul_2Mul while/lstm_cell_38/Sigmoid_2:y:0'while/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_38/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_38/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_38/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_38_biasadd_readvariableop_resource4while_lstm_cell_38_biasadd_readvariableop_resource_0"l
3while_lstm_cell_38_matmul_1_readvariableop_resource5while_lstm_cell_38_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_38_matmul_readvariableop_resource3while_lstm_cell_38_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_38/BiasAdd/ReadVariableOp)while/lstm_cell_38/BiasAdd/ReadVariableOp2T
(while/lstm_cell_38/MatMul/ReadVariableOp(while/lstm_cell_38/MatMul/ReadVariableOp2X
*while/lstm_cell_38/MatMul_1/ReadVariableOp*while/lstm_cell_38/MatMul_1/ReadVariableOp: 
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
¾L
Ņ
!backward_lstm_5_while_body_767268<
8backward_lstm_5_while_backward_lstm_5_while_loop_counterB
>backward_lstm_5_while_backward_lstm_5_while_maximum_iterations%
!backward_lstm_5_while_placeholder'
#backward_lstm_5_while_placeholder_1'
#backward_lstm_5_while_placeholder_2'
#backward_lstm_5_while_placeholder_3;
7backward_lstm_5_while_backward_lstm_5_strided_slice_1_0w
sbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0V
Cbackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0:	Y
Ebackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0:
S
Dbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0:	"
backward_lstm_5_while_identity$
 backward_lstm_5_while_identity_1$
 backward_lstm_5_while_identity_2$
 backward_lstm_5_while_identity_3$
 backward_lstm_5_while_identity_4$
 backward_lstm_5_while_identity_59
5backward_lstm_5_while_backward_lstm_5_strided_slice_1u
qbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensorT
Abackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource:	W
Cbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource:
Q
Bbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource:	¢9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp¢8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp¢:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp
Gbackward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ö
9backward_lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0!backward_lstm_5_while_placeholderPbackward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0½
8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOpCbackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ź
)backward_lstm_5/while/lstm_cell_38/MatMulMatMul@backward_lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0@backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOpEbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ń
+backward_lstm_5/while/lstm_cell_38/MatMul_1MatMul#backward_lstm_5_while_placeholder_2Bbackward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ī
&backward_lstm_5/while/lstm_cell_38/addAddV23backward_lstm_5/while/lstm_cell_38/MatMul:product:05backward_lstm_5/while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’»
9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOpDbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0×
*backward_lstm_5/while/lstm_cell_38/BiasAddBiasAdd*backward_lstm_5/while/lstm_cell_38/add:z:0Abackward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’t
2backward_lstm_5/while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
(backward_lstm_5/while/lstm_cell_38/splitSplit;backward_lstm_5/while/lstm_cell_38/split/split_dim:output:03backward_lstm_5/while/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
*backward_lstm_5/while/lstm_cell_38/SigmoidSigmoid1backward_lstm_5/while/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
,backward_lstm_5/while/lstm_cell_38/Sigmoid_1Sigmoid1backward_lstm_5/while/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’·
&backward_lstm_5/while/lstm_cell_38/mulMul0backward_lstm_5/while/lstm_cell_38/Sigmoid_1:y:0#backward_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
'backward_lstm_5/while/lstm_cell_38/ReluRelu1backward_lstm_5/while/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’É
(backward_lstm_5/while/lstm_cell_38/mul_1Mul.backward_lstm_5/while/lstm_cell_38/Sigmoid:y:05backward_lstm_5/while/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¾
(backward_lstm_5/while/lstm_cell_38/add_1AddV2*backward_lstm_5/while/lstm_cell_38/mul:z:0,backward_lstm_5/while/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
,backward_lstm_5/while/lstm_cell_38/Sigmoid_2Sigmoid1backward_lstm_5/while/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
)backward_lstm_5/while/lstm_cell_38/Relu_1Relu,backward_lstm_5/while/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ķ
(backward_lstm_5/while/lstm_cell_38/mul_2Mul0backward_lstm_5/while/lstm_cell_38/Sigmoid_2:y:07backward_lstm_5/while/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
@backward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ­
:backward_lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#backward_lstm_5_while_placeholder_1Ibackward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/index:output:0,backward_lstm_5/while/lstm_cell_38/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ]
backward_lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_5/while/addAddV2!backward_lstm_5_while_placeholder$backward_lstm_5/while/add/y:output:0*
T0*
_output_shapes
: _
backward_lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :§
backward_lstm_5/while/add_1AddV28backward_lstm_5_while_backward_lstm_5_while_loop_counter&backward_lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_5/while/IdentityIdentitybackward_lstm_5/while/add_1:z:0^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: Ŗ
 backward_lstm_5/while/Identity_1Identity>backward_lstm_5_while_backward_lstm_5_while_maximum_iterations^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: 
 backward_lstm_5/while/Identity_2Identitybackward_lstm_5/while/add:z:0^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: ¶
 backward_lstm_5/while/Identity_3IdentityJbackward_lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: Ŗ
 backward_lstm_5/while/Identity_4Identity,backward_lstm_5/while/lstm_cell_38/mul_2:z:0^backward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
 backward_lstm_5/while/Identity_5Identity,backward_lstm_5/while/lstm_cell_38/add_1:z:0^backward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
backward_lstm_5/while/NoOpNoOp:^backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp9^backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp;^backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "p
5backward_lstm_5_while_backward_lstm_5_strided_slice_17backward_lstm_5_while_backward_lstm_5_strided_slice_1_0"I
backward_lstm_5_while_identity'backward_lstm_5/while/Identity:output:0"M
 backward_lstm_5_while_identity_1)backward_lstm_5/while/Identity_1:output:0"M
 backward_lstm_5_while_identity_2)backward_lstm_5/while/Identity_2:output:0"M
 backward_lstm_5_while_identity_3)backward_lstm_5/while/Identity_3:output:0"M
 backward_lstm_5_while_identity_4)backward_lstm_5/while/Identity_4:output:0"M
 backward_lstm_5_while_identity_5)backward_lstm_5/while/Identity_5:output:0"
Bbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resourceDbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0"
Cbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resourceEbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0"
Abackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resourceCbackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0"č
qbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensorsbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2v
9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp2t
8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp2x
:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp: 
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
£
æ
/__inference_forward_lstm_5_layer_call_fn_769466
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallņ
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
GPU2*0J 8 *S
fNRL
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_765418p
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
»
Ć
1bidirectional_5_backward_lstm_5_while_cond_768092\
Xbidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_while_loop_counterb
^bidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_while_maximum_iterations5
1bidirectional_5_backward_lstm_5_while_placeholder7
3bidirectional_5_backward_lstm_5_while_placeholder_17
3bidirectional_5_backward_lstm_5_while_placeholder_27
3bidirectional_5_backward_lstm_5_while_placeholder_3^
Zbidirectional_5_backward_lstm_5_while_less_bidirectional_5_backward_lstm_5_strided_slice_1t
pbidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_while_cond_768092___redundant_placeholder0t
pbidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_while_cond_768092___redundant_placeholder1t
pbidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_while_cond_768092___redundant_placeholder2t
pbidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_while_cond_768092___redundant_placeholder32
.bidirectional_5_backward_lstm_5_while_identity
ā
*bidirectional_5/backward_lstm_5/while/LessLess1bidirectional_5_backward_lstm_5_while_placeholderZbidirectional_5_backward_lstm_5_while_less_bidirectional_5_backward_lstm_5_strided_slice_1*
T0*
_output_shapes
: 
.bidirectional_5/backward_lstm_5/while/IdentityIdentity.bidirectional_5/backward_lstm_5/while/Less:z:0*
T0
*
_output_shapes
: "i
.bidirectional_5_backward_lstm_5_while_identity7bidirectional_5/backward_lstm_5/while/Identity:output:0*(
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
īL
«
__inference__traced_save_771023
file_prefix-
)savev2_dense_5_kernel_read_readvariableop+
'savev2_dense_5_bias_read_readvariableopQ
Msavev2_bidirectional_5_forward_lstm_5_lstm_cell_37_kernel_read_readvariableop[
Wsavev2_bidirectional_5_forward_lstm_5_lstm_cell_37_recurrent_kernel_read_readvariableopO
Ksavev2_bidirectional_5_forward_lstm_5_lstm_cell_37_bias_read_readvariableopR
Nsavev2_bidirectional_5_backward_lstm_5_lstm_cell_38_kernel_read_readvariableop\
Xsavev2_bidirectional_5_backward_lstm_5_lstm_cell_38_recurrent_kernel_read_readvariableopP
Lsavev2_bidirectional_5_backward_lstm_5_lstm_cell_38_bias_read_readvariableop(
$savev2_adam_iter_read_readvariableop	*
&savev2_adam_beta_1_read_readvariableop*
&savev2_adam_beta_2_read_readvariableop)
%savev2_adam_decay_read_readvariableop1
-savev2_adam_learning_rate_read_readvariableop$
 savev2_total_read_readvariableop$
 savev2_count_read_readvariableop4
0savev2_adam_dense_5_kernel_m_read_readvariableop2
.savev2_adam_dense_5_bias_m_read_readvariableopX
Tsavev2_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_kernel_m_read_readvariableopb
^savev2_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_recurrent_kernel_m_read_readvariableopV
Rsavev2_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_bias_m_read_readvariableopY
Usavev2_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_kernel_m_read_readvariableopc
_savev2_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_recurrent_kernel_m_read_readvariableopW
Ssavev2_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_bias_m_read_readvariableop4
0savev2_adam_dense_5_kernel_v_read_readvariableop2
.savev2_adam_dense_5_bias_v_read_readvariableopX
Tsavev2_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_kernel_v_read_readvariableopb
^savev2_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_recurrent_kernel_v_read_readvariableopV
Rsavev2_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_bias_v_read_readvariableopY
Usavev2_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_kernel_v_read_readvariableopc
_savev2_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_recurrent_kernel_v_read_readvariableopW
Ssavev2_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_bias_v_read_readvariableop
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
valueJBH B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B B 
SaveV2SaveV2ShardedFilename:filename:0SaveV2/tensor_names:output:0 SaveV2/shape_and_slices:output:0)savev2_dense_5_kernel_read_readvariableop'savev2_dense_5_bias_read_readvariableopMsavev2_bidirectional_5_forward_lstm_5_lstm_cell_37_kernel_read_readvariableopWsavev2_bidirectional_5_forward_lstm_5_lstm_cell_37_recurrent_kernel_read_readvariableopKsavev2_bidirectional_5_forward_lstm_5_lstm_cell_37_bias_read_readvariableopNsavev2_bidirectional_5_backward_lstm_5_lstm_cell_38_kernel_read_readvariableopXsavev2_bidirectional_5_backward_lstm_5_lstm_cell_38_recurrent_kernel_read_readvariableopLsavev2_bidirectional_5_backward_lstm_5_lstm_cell_38_bias_read_readvariableop$savev2_adam_iter_read_readvariableop&savev2_adam_beta_1_read_readvariableop&savev2_adam_beta_2_read_readvariableop%savev2_adam_decay_read_readvariableop-savev2_adam_learning_rate_read_readvariableop savev2_total_read_readvariableop savev2_count_read_readvariableop0savev2_adam_dense_5_kernel_m_read_readvariableop.savev2_adam_dense_5_bias_m_read_readvariableopTsavev2_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_kernel_m_read_readvariableop^savev2_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_recurrent_kernel_m_read_readvariableopRsavev2_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_bias_m_read_readvariableopUsavev2_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_kernel_m_read_readvariableop_savev2_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_recurrent_kernel_m_read_readvariableopSsavev2_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_bias_m_read_readvariableop0savev2_adam_dense_5_kernel_v_read_readvariableop.savev2_adam_dense_5_bias_v_read_readvariableopTsavev2_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_kernel_v_read_readvariableop^savev2_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_recurrent_kernel_v_read_readvariableopRsavev2_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_bias_v_read_readvariableopUsavev2_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_kernel_v_read_readvariableop_savev2_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_recurrent_kernel_v_read_readvariableopSsavev2_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_bias_v_read_readvariableopsavev2_const"/device:CPU:0*
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
Ē9
Ņ
while_body_769849
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_37_matmul_readvariableop_resource_0:	I
5while_lstm_cell_37_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_37_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_37_matmul_readvariableop_resource:	G
3while_lstm_cell_37_matmul_1_readvariableop_resource:
A
2while_lstm_cell_37_biasadd_readvariableop_resource:	¢)while/lstm_cell_37/BiasAdd/ReadVariableOp¢(while/lstm_cell_37/MatMul/ReadVariableOp¢*while/lstm_cell_37/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
(while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_37/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_37_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_37/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/addAddV2#while/lstm_cell_37/MatMul:product:0%while/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_37/BiasAddBiasAddwhile/lstm_cell_37/add:z:01while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_37/splitSplit+while/lstm_cell_37/split/split_dim:output:0#while/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_37/SigmoidSigmoid!while/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_37/Sigmoid_1Sigmoid!while/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/mulMul while/lstm_cell_37/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_37/ReluRelu!while/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/mul_1Mulwhile/lstm_cell_37/Sigmoid:y:0%while/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/add_1AddV2while/lstm_cell_37/mul:z:0while/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_37/Sigmoid_2Sigmoid!while/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_37/Relu_1Reluwhile/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/mul_2Mul while/lstm_cell_37/Sigmoid_2:y:0'while/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_37/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_37/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_37/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_37/BiasAdd/ReadVariableOp)^while/lstm_cell_37/MatMul/ReadVariableOp+^while/lstm_cell_37/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_37_biasadd_readvariableop_resource4while_lstm_cell_37_biasadd_readvariableop_resource_0"l
3while_lstm_cell_37_matmul_1_readvariableop_resource5while_lstm_cell_37_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_37_matmul_readvariableop_resource3while_lstm_cell_37_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_37/BiasAdd/ReadVariableOp)while/lstm_cell_37/BiasAdd/ReadVariableOp2T
(while/lstm_cell_37/MatMul/ReadVariableOp(while/lstm_cell_37/MatMul/ReadVariableOp2X
*while/lstm_cell_37/MatMul_1/ReadVariableOp*while/lstm_cell_37/MatMul_1/ReadVariableOp: 
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
ł
÷
-__inference_lstm_cell_38_layer_call_fn_770843

inputs
states_0
states_1
unknown:	
	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall®
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
GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_765837p
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
$
å
while_body_765704
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_38_765728_0:	/
while_lstm_cell_38_765730_0:
*
while_lstm_cell_38_765732_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_38_765728:	-
while_lstm_cell_38_765730:
(
while_lstm_cell_38_765732:	¢*while/lstm_cell_38/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0¹
*while/lstm_cell_38/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_38_765728_0while_lstm_cell_38_765730_0while_lstm_cell_38_765732_0*
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
GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_765689r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_38/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_38/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
while/Identity_5Identity3while/lstm_cell_38/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’y

while/NoOpNoOp+^while/lstm_cell_38/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_38_765728while_lstm_cell_38_765728_0"8
while_lstm_cell_38_765730while_lstm_cell_38_765730_0"8
while_lstm_cell_38_765732while_lstm_cell_38_765732_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2X
*while/lstm_cell_38/StatefulPartitionedCall*while/lstm_cell_38/StatefulPartitionedCall: 
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
¾L
Ņ
!backward_lstm_5_while_body_769059<
8backward_lstm_5_while_backward_lstm_5_while_loop_counterB
>backward_lstm_5_while_backward_lstm_5_while_maximum_iterations%
!backward_lstm_5_while_placeholder'
#backward_lstm_5_while_placeholder_1'
#backward_lstm_5_while_placeholder_2'
#backward_lstm_5_while_placeholder_3;
7backward_lstm_5_while_backward_lstm_5_strided_slice_1_0w
sbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0V
Cbackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0:	Y
Ebackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0:
S
Dbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0:	"
backward_lstm_5_while_identity$
 backward_lstm_5_while_identity_1$
 backward_lstm_5_while_identity_2$
 backward_lstm_5_while_identity_3$
 backward_lstm_5_while_identity_4$
 backward_lstm_5_while_identity_59
5backward_lstm_5_while_backward_lstm_5_strided_slice_1u
qbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensorT
Abackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource:	W
Cbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource:
Q
Bbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource:	¢9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp¢8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp¢:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp
Gbackward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ö
9backward_lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0!backward_lstm_5_while_placeholderPbackward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0½
8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOpCbackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ź
)backward_lstm_5/while/lstm_cell_38/MatMulMatMul@backward_lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0@backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOpEbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ń
+backward_lstm_5/while/lstm_cell_38/MatMul_1MatMul#backward_lstm_5_while_placeholder_2Bbackward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ī
&backward_lstm_5/while/lstm_cell_38/addAddV23backward_lstm_5/while/lstm_cell_38/MatMul:product:05backward_lstm_5/while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’»
9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOpDbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0×
*backward_lstm_5/while/lstm_cell_38/BiasAddBiasAdd*backward_lstm_5/while/lstm_cell_38/add:z:0Abackward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’t
2backward_lstm_5/while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
(backward_lstm_5/while/lstm_cell_38/splitSplit;backward_lstm_5/while/lstm_cell_38/split/split_dim:output:03backward_lstm_5/while/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
*backward_lstm_5/while/lstm_cell_38/SigmoidSigmoid1backward_lstm_5/while/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
,backward_lstm_5/while/lstm_cell_38/Sigmoid_1Sigmoid1backward_lstm_5/while/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’·
&backward_lstm_5/while/lstm_cell_38/mulMul0backward_lstm_5/while/lstm_cell_38/Sigmoid_1:y:0#backward_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
'backward_lstm_5/while/lstm_cell_38/ReluRelu1backward_lstm_5/while/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’É
(backward_lstm_5/while/lstm_cell_38/mul_1Mul.backward_lstm_5/while/lstm_cell_38/Sigmoid:y:05backward_lstm_5/while/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¾
(backward_lstm_5/while/lstm_cell_38/add_1AddV2*backward_lstm_5/while/lstm_cell_38/mul:z:0,backward_lstm_5/while/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
,backward_lstm_5/while/lstm_cell_38/Sigmoid_2Sigmoid1backward_lstm_5/while/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
)backward_lstm_5/while/lstm_cell_38/Relu_1Relu,backward_lstm_5/while/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ķ
(backward_lstm_5/while/lstm_cell_38/mul_2Mul0backward_lstm_5/while/lstm_cell_38/Sigmoid_2:y:07backward_lstm_5/while/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
@backward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ­
:backward_lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#backward_lstm_5_while_placeholder_1Ibackward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/index:output:0,backward_lstm_5/while/lstm_cell_38/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ]
backward_lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_5/while/addAddV2!backward_lstm_5_while_placeholder$backward_lstm_5/while/add/y:output:0*
T0*
_output_shapes
: _
backward_lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :§
backward_lstm_5/while/add_1AddV28backward_lstm_5_while_backward_lstm_5_while_loop_counter&backward_lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_5/while/IdentityIdentitybackward_lstm_5/while/add_1:z:0^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: Ŗ
 backward_lstm_5/while/Identity_1Identity>backward_lstm_5_while_backward_lstm_5_while_maximum_iterations^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: 
 backward_lstm_5/while/Identity_2Identitybackward_lstm_5/while/add:z:0^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: ¶
 backward_lstm_5/while/Identity_3IdentityJbackward_lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: Ŗ
 backward_lstm_5/while/Identity_4Identity,backward_lstm_5/while/lstm_cell_38/mul_2:z:0^backward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
 backward_lstm_5/while/Identity_5Identity,backward_lstm_5/while/lstm_cell_38/add_1:z:0^backward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
backward_lstm_5/while/NoOpNoOp:^backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp9^backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp;^backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "p
5backward_lstm_5_while_backward_lstm_5_strided_slice_17backward_lstm_5_while_backward_lstm_5_strided_slice_1_0"I
backward_lstm_5_while_identity'backward_lstm_5/while/Identity:output:0"M
 backward_lstm_5_while_identity_1)backward_lstm_5/while/Identity_1:output:0"M
 backward_lstm_5_while_identity_2)backward_lstm_5/while/Identity_2:output:0"M
 backward_lstm_5_while_identity_3)backward_lstm_5/while/Identity_3:output:0"M
 backward_lstm_5_while_identity_4)backward_lstm_5/while/Identity_4:output:0"M
 backward_lstm_5_while_identity_5)backward_lstm_5/while/Identity_5:output:0"
Bbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resourceDbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0"
Cbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resourceEbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0"
Abackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resourceCbackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0"č
qbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensorsbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2v
9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp2t
8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp2x
:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp: 
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
÷

`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_767017

inputs)
bidirectional_5_766987:	*
bidirectional_5_766989:
%
bidirectional_5_766991:	)
bidirectional_5_766993:	*
bidirectional_5_766995:
%
bidirectional_5_766997:	!
dense_5_767011:	
dense_5_767013:
identity¢'bidirectional_5/StatefulPartitionedCall¢dense_5/StatefulPartitionedCallæ
lambda_5/PartitionedCallPartitionedCallinputs*
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
GPU2*0J 8 *M
fHRF
D__inference_lambda_5_layer_call_and_return_conditional_losses_766695
'bidirectional_5/StatefulPartitionedCallStatefulPartitionedCall!lambda_5/PartitionedCall:output:0bidirectional_5_766987bidirectional_5_766989bidirectional_5_766991bidirectional_5_766993bidirectional_5_766995bidirectional_5_766997*
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
GPU2*0J 8 *T
fORM
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_766986
dense_5/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_5/StatefulPartitionedCall:output:0dense_5_767011dense_5_767013*
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
GPU2*0J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_767010w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
NoOpNoOp(^bidirectional_5/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 2R
'bidirectional_5/StatefulPartitionedCall'bidirectional_5/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
¹
Ć
while_cond_765347
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_765347___redundant_placeholder04
0while_while_cond_765347___redundant_placeholder14
0while_while_cond_765347___redundant_placeholder24
0while_while_cond_765347___redundant_placeholder3
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
»
”
Umodel_9_bidirectionalLSTM_univariate_bidirectional_5_forward_lstm_5_while_cond_765029„
 model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_loop_counter«
¦model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_maximum_iterationsY
Umodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_placeholder[
Wmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_placeholder_1[
Wmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_placeholder_2[
Wmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_placeholder_3§
¢model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_less_model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_strided_slice_1½
ømodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_cond_765029___redundant_placeholder0½
ømodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_cond_765029___redundant_placeholder1½
ømodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_cond_765029___redundant_placeholder2½
ømodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_cond_765029___redundant_placeholder3V
Rmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_identity
ó
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/LessLessUmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_placeholder¢model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_less_model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_strided_slice_1*
T0*
_output_shapes
: Ó
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/IdentityIdentityRmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/Less:z:0*
T0
*
_output_shapes
: "±
Rmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_identity[model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/Identity:output:0*(
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
¹
Ć
while_cond_765703
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_765703___redundant_placeholder04
0while_while_cond_765703___redundant_placeholder14
0while_while_cond_765703___redundant_placeholder24
0while_while_cond_765703___redundant_placeholder3
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
¾9
Ņ
while_body_770332
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_38_matmul_readvariableop_resource_0:	I
5while_lstm_cell_38_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_38_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_38_matmul_readvariableop_resource:	G
3while_lstm_cell_38_matmul_1_readvariableop_resource:
A
2while_lstm_cell_38_biasadd_readvariableop_resource:	¢)while/lstm_cell_38/BiasAdd/ReadVariableOp¢(while/lstm_cell_38/MatMul/ReadVariableOp¢*while/lstm_cell_38/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0
(while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_38/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_38_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_38/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/addAddV2#while/lstm_cell_38/MatMul:product:0%while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_38/BiasAddBiasAddwhile/lstm_cell_38/add:z:01while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_38/splitSplit+while/lstm_cell_38/split/split_dim:output:0#while/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_38/SigmoidSigmoid!while/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_38/Sigmoid_1Sigmoid!while/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/mulMul while/lstm_cell_38/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_38/ReluRelu!while/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/mul_1Mulwhile/lstm_cell_38/Sigmoid:y:0%while/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/add_1AddV2while/lstm_cell_38/mul:z:0while/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_38/Sigmoid_2Sigmoid!while/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_38/Relu_1Reluwhile/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/mul_2Mul while/lstm_cell_38/Sigmoid_2:y:0'while/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_38/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_38/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_38/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_38_biasadd_readvariableop_resource4while_lstm_cell_38_biasadd_readvariableop_resource_0"l
3while_lstm_cell_38_matmul_1_readvariableop_resource5while_lstm_cell_38_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_38_matmul_readvariableop_resource3while_lstm_cell_38_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_38/BiasAdd/ReadVariableOp)while/lstm_cell_38/BiasAdd/ReadVariableOp2T
(while/lstm_cell_38/MatMul/ReadVariableOp(while/lstm_cell_38/MatMul/ReadVariableOp2X
*while/lstm_cell_38/MatMul_1/ReadVariableOp*while/lstm_cell_38/MatMul_1/ReadVariableOp: 
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
L
£
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_766636

inputs>
+lstm_cell_37_matmul_readvariableop_resource:	A
-lstm_cell_37_matmul_1_readvariableop_resource:
;
,lstm_cell_37_biasadd_readvariableop_resource:	
identity¢#lstm_cell_37/BiasAdd/ReadVariableOp¢"lstm_cell_37/MatMul/ReadVariableOp¢$lstm_cell_37/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_37/MatMul/ReadVariableOpReadVariableOp+lstm_cell_37_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_37/MatMulMatMulstrided_slice_2:output:0*lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_37_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_37/MatMul_1MatMulzeros:output:0,lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_37/addAddV2lstm_cell_37/MatMul:product:0lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_37/BiasAddBiasAddlstm_cell_37/add:z:0+lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_37/splitSplit%lstm_cell_37/split/split_dim:output:0lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_37/SigmoidSigmoidlstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_37/Sigmoid_1Sigmoidlstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_37/mulMullstm_cell_37/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_37/ReluRelulstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_37/mul_1Mullstm_cell_37/Sigmoid:y:0lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_37/add_1AddV2lstm_cell_37/mul:z:0lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_37/Sigmoid_2Sigmoidlstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_37/Relu_1Relulstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_37/mul_2Mullstm_cell_37/Sigmoid_2:y:0!lstm_cell_37/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_37_matmul_readvariableop_resource-lstm_cell_37_matmul_1_readvariableop_resource,lstm_cell_37_biasadd_readvariableop_resource*
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
bodyR
while_body_766551*
condR
while_cond_766550*M
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
NoOpNoOp$^lstm_cell_37/BiasAdd/ReadVariableOp#^lstm_cell_37/MatMul/ReadVariableOp%^lstm_cell_37/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_37/BiasAdd/ReadVariableOp#lstm_cell_37/BiasAdd/ReadVariableOp2H
"lstm_cell_37/MatMul/ReadVariableOp"lstm_cell_37/MatMul/ReadVariableOp2L
$lstm_cell_37/MatMul_1/ReadVariableOp$lstm_cell_37/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
¹
Ć
while_cond_766197
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_766197___redundant_placeholder04
0while_while_cond_766197___redundant_placeholder14
0while_while_cond_766197___redundant_placeholder24
0while_while_cond_766197___redundant_placeholder3
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
ś

!backward_lstm_5_while_cond_769058<
8backward_lstm_5_while_backward_lstm_5_while_loop_counterB
>backward_lstm_5_while_backward_lstm_5_while_maximum_iterations%
!backward_lstm_5_while_placeholder'
#backward_lstm_5_while_placeholder_1'
#backward_lstm_5_while_placeholder_2'
#backward_lstm_5_while_placeholder_3>
:backward_lstm_5_while_less_backward_lstm_5_strided_slice_1T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_769058___redundant_placeholder0T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_769058___redundant_placeholder1T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_769058___redundant_placeholder2T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_769058___redundant_placeholder3"
backward_lstm_5_while_identity
¢
backward_lstm_5/while/LessLess!backward_lstm_5_while_placeholder:backward_lstm_5_while_less_backward_lstm_5_strided_slice_1*
T0*
_output_shapes
: k
backward_lstm_5/while/IdentityIdentitybackward_lstm_5/while/Less:z:0*
T0
*
_output_shapes
: "I
backward_lstm_5_while_identity'backward_lstm_5/while/Identity:output:0*(
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
ó

H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_770907

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
¾9
Ņ
while_body_769704
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_37_matmul_readvariableop_resource_0:	I
5while_lstm_cell_37_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_37_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_37_matmul_readvariableop_resource:	G
3while_lstm_cell_37_matmul_1_readvariableop_resource:
A
2while_lstm_cell_37_biasadd_readvariableop_resource:	¢)while/lstm_cell_37/BiasAdd/ReadVariableOp¢(while/lstm_cell_37/MatMul/ReadVariableOp¢*while/lstm_cell_37/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0
(while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_37/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_37_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_37/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/addAddV2#while/lstm_cell_37/MatMul:product:0%while/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_37/BiasAddBiasAddwhile/lstm_cell_37/add:z:01while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_37/splitSplit+while/lstm_cell_37/split/split_dim:output:0#while/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_37/SigmoidSigmoid!while/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_37/Sigmoid_1Sigmoid!while/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/mulMul while/lstm_cell_37/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_37/ReluRelu!while/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/mul_1Mulwhile/lstm_cell_37/Sigmoid:y:0%while/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/add_1AddV2while/lstm_cell_37/mul:z:0while/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_37/Sigmoid_2Sigmoid!while/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_37/Relu_1Reluwhile/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/mul_2Mul while/lstm_cell_37/Sigmoid_2:y:0'while/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_37/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_37/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_37/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_37/BiasAdd/ReadVariableOp)^while/lstm_cell_37/MatMul/ReadVariableOp+^while/lstm_cell_37/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_37_biasadd_readvariableop_resource4while_lstm_cell_37_biasadd_readvariableop_resource_0"l
3while_lstm_cell_37_matmul_1_readvariableop_resource5while_lstm_cell_37_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_37_matmul_readvariableop_resource3while_lstm_cell_37_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_37/BiasAdd/ReadVariableOp)while/lstm_cell_37/BiasAdd/ReadVariableOp2T
(while/lstm_cell_37/MatMul/ReadVariableOp(while/lstm_cell_37/MatMul/ReadVariableOp2X
*while/lstm_cell_37/MatMul_1/ReadVariableOp*while/lstm_cell_37/MatMul_1/ReadVariableOp: 
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

Æ
0bidirectional_5_forward_lstm_5_while_cond_767651Z
Vbidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_while_loop_counter`
\bidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_while_maximum_iterations4
0bidirectional_5_forward_lstm_5_while_placeholder6
2bidirectional_5_forward_lstm_5_while_placeholder_16
2bidirectional_5_forward_lstm_5_while_placeholder_26
2bidirectional_5_forward_lstm_5_while_placeholder_3\
Xbidirectional_5_forward_lstm_5_while_less_bidirectional_5_forward_lstm_5_strided_slice_1r
nbidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_while_cond_767651___redundant_placeholder0r
nbidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_while_cond_767651___redundant_placeholder1r
nbidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_while_cond_767651___redundant_placeholder2r
nbidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_while_cond_767651___redundant_placeholder31
-bidirectional_5_forward_lstm_5_while_identity
Ž
)bidirectional_5/forward_lstm_5/while/LessLess0bidirectional_5_forward_lstm_5_while_placeholderXbidirectional_5_forward_lstm_5_while_less_bidirectional_5_forward_lstm_5_strided_slice_1*
T0*
_output_shapes
: 
-bidirectional_5/forward_lstm_5/while/IdentityIdentity-bidirectional_5/forward_lstm_5/while/Less:z:0*
T0
*
_output_shapes
: "g
-bidirectional_5_forward_lstm_5_while_identity6bidirectional_5/forward_lstm_5/while/Identity:output:0*(
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
ŗ_
Ö
1bidirectional_5_backward_lstm_5_while_body_767795\
Xbidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_while_loop_counterb
^bidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_while_maximum_iterations5
1bidirectional_5_backward_lstm_5_while_placeholder7
3bidirectional_5_backward_lstm_5_while_placeholder_17
3bidirectional_5_backward_lstm_5_while_placeholder_27
3bidirectional_5_backward_lstm_5_while_placeholder_3[
Wbidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_strided_slice_1_0
bidirectional_5_backward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0f
Sbidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0:	i
Ubidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0:
c
Tbidirectional_5_backward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0:	2
.bidirectional_5_backward_lstm_5_while_identity4
0bidirectional_5_backward_lstm_5_while_identity_14
0bidirectional_5_backward_lstm_5_while_identity_24
0bidirectional_5_backward_lstm_5_while_identity_34
0bidirectional_5_backward_lstm_5_while_identity_44
0bidirectional_5_backward_lstm_5_while_identity_5Y
Ubidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_strided_slice_1
bidirectional_5_backward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_backward_lstm_5_tensorarrayunstack_tensorlistfromtensord
Qbidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource:	g
Sbidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource:
a
Rbidirectional_5_backward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource:	¢Ibidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp¢Hbidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp¢Jbidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOpØ
Wbidirectional_5/backward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ē
Ibidirectional_5/backward_lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_5_backward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_01bidirectional_5_backward_lstm_5_while_placeholder`bidirectional_5/backward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0Ż
Hbidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOpSbidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0
9bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMulMatMulPbidirectional_5/backward_lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0Pbidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ā
Jbidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOpUbidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
;bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1MatMul3bidirectional_5_backward_lstm_5_while_placeholder_2Rbidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ž
6bidirectional_5/backward_lstm_5/while/lstm_cell_38/addAddV2Cbidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul:product:0Ebidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Ū
Ibidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOpTbidirectional_5_backward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
:bidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAddBiasAdd:bidirectional_5/backward_lstm_5/while/lstm_cell_38/add:z:0Qbidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
Bbidirectional_5/backward_lstm_5/while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ó
8bidirectional_5/backward_lstm_5/while/lstm_cell_38/splitSplitKbidirectional_5/backward_lstm_5/while/lstm_cell_38/split/split_dim:output:0Cbidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split»
:bidirectional_5/backward_lstm_5/while/lstm_cell_38/SigmoidSigmoidAbidirectional_5/backward_lstm_5/while/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’½
<bidirectional_5/backward_lstm_5/while/lstm_cell_38/Sigmoid_1SigmoidAbidirectional_5/backward_lstm_5/while/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’ē
6bidirectional_5/backward_lstm_5/while/lstm_cell_38/mulMul@bidirectional_5/backward_lstm_5/while/lstm_cell_38/Sigmoid_1:y:03bidirectional_5_backward_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’µ
7bidirectional_5/backward_lstm_5/while/lstm_cell_38/ReluReluAbidirectional_5/backward_lstm_5/while/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ł
8bidirectional_5/backward_lstm_5/while/lstm_cell_38/mul_1Mul>bidirectional_5/backward_lstm_5/while/lstm_cell_38/Sigmoid:y:0Ebidirectional_5/backward_lstm_5/while/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’ī
8bidirectional_5/backward_lstm_5/while/lstm_cell_38/add_1AddV2:bidirectional_5/backward_lstm_5/while/lstm_cell_38/mul:z:0<bidirectional_5/backward_lstm_5/while/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’½
<bidirectional_5/backward_lstm_5/while/lstm_cell_38/Sigmoid_2SigmoidAbidirectional_5/backward_lstm_5/while/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’²
9bidirectional_5/backward_lstm_5/while/lstm_cell_38/Relu_1Relu<bidirectional_5/backward_lstm_5/while/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ż
8bidirectional_5/backward_lstm_5/while/lstm_cell_38/mul_2Mul@bidirectional_5/backward_lstm_5/while/lstm_cell_38/Sigmoid_2:y:0Gbidirectional_5/backward_lstm_5/while/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Pbidirectional_5/backward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
Jbidirectional_5/backward_lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem3bidirectional_5_backward_lstm_5_while_placeholder_1Ybidirectional_5/backward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/index:output:0<bidirectional_5/backward_lstm_5/while/lstm_cell_38/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅm
+bidirectional_5/backward_lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¼
)bidirectional_5/backward_lstm_5/while/addAddV21bidirectional_5_backward_lstm_5_while_placeholder4bidirectional_5/backward_lstm_5/while/add/y:output:0*
T0*
_output_shapes
: o
-bidirectional_5/backward_lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ē
+bidirectional_5/backward_lstm_5/while/add_1AddV2Xbidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_while_loop_counter6bidirectional_5/backward_lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: ¹
.bidirectional_5/backward_lstm_5/while/IdentityIdentity/bidirectional_5/backward_lstm_5/while/add_1:z:0+^bidirectional_5/backward_lstm_5/while/NoOp*
T0*
_output_shapes
: ź
0bidirectional_5/backward_lstm_5/while/Identity_1Identity^bidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_while_maximum_iterations+^bidirectional_5/backward_lstm_5/while/NoOp*
T0*
_output_shapes
: ¹
0bidirectional_5/backward_lstm_5/while/Identity_2Identity-bidirectional_5/backward_lstm_5/while/add:z:0+^bidirectional_5/backward_lstm_5/while/NoOp*
T0*
_output_shapes
: ę
0bidirectional_5/backward_lstm_5/while/Identity_3IdentityZbidirectional_5/backward_lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^bidirectional_5/backward_lstm_5/while/NoOp*
T0*
_output_shapes
: Ś
0bidirectional_5/backward_lstm_5/while/Identity_4Identity<bidirectional_5/backward_lstm_5/while/lstm_cell_38/mul_2:z:0+^bidirectional_5/backward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ś
0bidirectional_5/backward_lstm_5/while/Identity_5Identity<bidirectional_5/backward_lstm_5/while/lstm_cell_38/add_1:z:0+^bidirectional_5/backward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š
*bidirectional_5/backward_lstm_5/while/NoOpNoOpJ^bidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOpI^bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOpK^bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "°
Ubidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_strided_slice_1Wbidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_strided_slice_1_0"i
.bidirectional_5_backward_lstm_5_while_identity7bidirectional_5/backward_lstm_5/while/Identity:output:0"m
0bidirectional_5_backward_lstm_5_while_identity_19bidirectional_5/backward_lstm_5/while/Identity_1:output:0"m
0bidirectional_5_backward_lstm_5_while_identity_29bidirectional_5/backward_lstm_5/while/Identity_2:output:0"m
0bidirectional_5_backward_lstm_5_while_identity_39bidirectional_5/backward_lstm_5/while/Identity_3:output:0"m
0bidirectional_5_backward_lstm_5_while_identity_49bidirectional_5/backward_lstm_5/while/Identity_4:output:0"m
0bidirectional_5_backward_lstm_5_while_identity_59bidirectional_5/backward_lstm_5/while/Identity_5:output:0"Ŗ
Rbidirectional_5_backward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resourceTbidirectional_5_backward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0"¬
Sbidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resourceUbidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0"Ø
Qbidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resourceSbidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0"Ŗ
bidirectional_5_backward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_backward_lstm_5_tensorarrayunstack_tensorlistfromtensorbidirectional_5_backward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2
Ibidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOpIbidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp2
Hbidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOpHbidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp2
Jbidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOpJbidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp: 
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
Ē9
Ņ
while_body_766198
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_38_matmul_readvariableop_resource_0:	I
5while_lstm_cell_38_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_38_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_38_matmul_readvariableop_resource:	G
3while_lstm_cell_38_matmul_1_readvariableop_resource:
A
2while_lstm_cell_38_biasadd_readvariableop_resource:	¢)while/lstm_cell_38/BiasAdd/ReadVariableOp¢(while/lstm_cell_38/MatMul/ReadVariableOp¢*while/lstm_cell_38/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
(while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_38/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_38_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_38/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/addAddV2#while/lstm_cell_38/MatMul:product:0%while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_38/BiasAddBiasAddwhile/lstm_cell_38/add:z:01while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_38/splitSplit+while/lstm_cell_38/split/split_dim:output:0#while/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_38/SigmoidSigmoid!while/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_38/Sigmoid_1Sigmoid!while/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/mulMul while/lstm_cell_38/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_38/ReluRelu!while/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/mul_1Mulwhile/lstm_cell_38/Sigmoid:y:0%while/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/add_1AddV2while/lstm_cell_38/mul:z:0while/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_38/Sigmoid_2Sigmoid!while/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_38/Relu_1Reluwhile/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/mul_2Mul while/lstm_cell_38/Sigmoid_2:y:0'while/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_38/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_38/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_38/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_38_biasadd_readvariableop_resource4while_lstm_cell_38_biasadd_readvariableop_resource_0"l
3while_lstm_cell_38_matmul_1_readvariableop_resource5while_lstm_cell_38_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_38_matmul_readvariableop_resource3while_lstm_cell_38_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_38/BiasAdd/ReadVariableOp)while/lstm_cell_38/BiasAdd/ReadVariableOp2T
(while/lstm_cell_38/MatMul/ReadVariableOp(while/lstm_cell_38/MatMul/ReadVariableOp2X
*while/lstm_cell_38/MatMul_1/ReadVariableOp*while/lstm_cell_38/MatMul_1/ReadVariableOp: 
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
Ž
ļ
 forward_lstm_5_while_cond_768625:
6forward_lstm_5_while_forward_lstm_5_while_loop_counter@
<forward_lstm_5_while_forward_lstm_5_while_maximum_iterations$
 forward_lstm_5_while_placeholder&
"forward_lstm_5_while_placeholder_1&
"forward_lstm_5_while_placeholder_2&
"forward_lstm_5_while_placeholder_3<
8forward_lstm_5_while_less_forward_lstm_5_strided_slice_1R
Nforward_lstm_5_while_forward_lstm_5_while_cond_768625___redundant_placeholder0R
Nforward_lstm_5_while_forward_lstm_5_while_cond_768625___redundant_placeholder1R
Nforward_lstm_5_while_forward_lstm_5_while_cond_768625___redundant_placeholder2R
Nforward_lstm_5_while_forward_lstm_5_while_cond_768625___redundant_placeholder3!
forward_lstm_5_while_identity

forward_lstm_5/while/LessLess forward_lstm_5_while_placeholder8forward_lstm_5_while_less_forward_lstm_5_strided_slice_1*
T0*
_output_shapes
: i
forward_lstm_5/while/IdentityIdentityforward_lstm_5/while/Less:z:0*
T0
*
_output_shapes
: "G
forward_lstm_5_while_identity&forward_lstm_5/while/Identity:output:0*(
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
Ą½
·
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_769146

inputsM
:forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource:	P
<forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource:
J
;forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource:	N
;backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource:	Q
=backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource:
K
<backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource:	
identity¢3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp¢2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp¢4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp¢backward_lstm_5/while¢2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp¢1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp¢3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp¢forward_lstm_5/whileJ
forward_lstm_5/ShapeShapeinputs*
T0*
_output_shapes
:l
"forward_lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
forward_lstm_5/strided_sliceStridedSliceforward_lstm_5/Shape:output:0+forward_lstm_5/strided_slice/stack:output:0-forward_lstm_5/strided_slice/stack_1:output:0-forward_lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B : 
forward_lstm_5/zeros/packedPack%forward_lstm_5/strided_slice:output:0&forward_lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_5/zerosFill$forward_lstm_5/zeros/packed:output:0#forward_lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’b
forward_lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :¤
forward_lstm_5/zeros_1/packedPack%forward_lstm_5/strided_slice:output:0(forward_lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
forward_lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
forward_lstm_5/zeros_1Fill&forward_lstm_5/zeros_1/packed:output:0%forward_lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’r
forward_lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm_5/transpose	Transposeinputs&forward_lstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’b
forward_lstm_5/Shape_1Shapeforward_lstm_5/transpose:y:0*
T0*
_output_shapes
:n
$forward_lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
forward_lstm_5/strided_slice_1StridedSliceforward_lstm_5/Shape_1:output:0-forward_lstm_5/strided_slice_1/stack:output:0/forward_lstm_5/strided_slice_1/stack_1:output:0/forward_lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*forward_lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’į
forward_lstm_5/TensorArrayV2TensorListReserve3forward_lstm_5/TensorArrayV2/element_shape:output:0'forward_lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Dforward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
6forward_lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_5/transpose:y:0Mforward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅn
$forward_lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:“
forward_lstm_5/strided_slice_2StridedSliceforward_lstm_5/transpose:y:0-forward_lstm_5/strided_slice_2/stack:output:0/forward_lstm_5/strided_slice_2/stack_1:output:0/forward_lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask­
1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOpReadVariableOp:forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ć
"forward_lstm_5/lstm_cell_37/MatMulMatMul'forward_lstm_5/strided_slice_2:output:09forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’²
3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp<forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0½
$forward_lstm_5/lstm_cell_37/MatMul_1MatMulforward_lstm_5/zeros:output:0;forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¹
forward_lstm_5/lstm_cell_37/addAddV2,forward_lstm_5/lstm_cell_37/MatMul:product:0.forward_lstm_5/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’«
2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp;forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ā
#forward_lstm_5/lstm_cell_37/BiasAddBiasAdd#forward_lstm_5/lstm_cell_37/add:z:0:forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’m
+forward_lstm_5/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!forward_lstm_5/lstm_cell_37/splitSplit4forward_lstm_5/lstm_cell_37/split/split_dim:output:0,forward_lstm_5/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
#forward_lstm_5/lstm_cell_37/SigmoidSigmoid*forward_lstm_5/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
%forward_lstm_5/lstm_cell_37/Sigmoid_1Sigmoid*forward_lstm_5/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’„
forward_lstm_5/lstm_cell_37/mulMul)forward_lstm_5/lstm_cell_37/Sigmoid_1:y:0forward_lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
 forward_lstm_5/lstm_cell_37/ReluRelu*forward_lstm_5/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’“
!forward_lstm_5/lstm_cell_37/mul_1Mul'forward_lstm_5/lstm_cell_37/Sigmoid:y:0.forward_lstm_5/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’©
!forward_lstm_5/lstm_cell_37/add_1AddV2#forward_lstm_5/lstm_cell_37/mul:z:0%forward_lstm_5/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
%forward_lstm_5/lstm_cell_37/Sigmoid_2Sigmoid*forward_lstm_5/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
"forward_lstm_5/lstm_cell_37/Relu_1Relu%forward_lstm_5/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ø
!forward_lstm_5/lstm_cell_37/mul_2Mul)forward_lstm_5/lstm_cell_37/Sigmoid_2:y:00forward_lstm_5/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’}
,forward_lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   m
+forward_lstm_5/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ņ
forward_lstm_5/TensorArrayV2_1TensorListReserve5forward_lstm_5/TensorArrayV2_1/element_shape:output:04forward_lstm_5/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅU
forward_lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'forward_lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’c
!forward_lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ų
forward_lstm_5/whileWhile*forward_lstm_5/while/loop_counter:output:00forward_lstm_5/while/maximum_iterations:output:0forward_lstm_5/time:output:0'forward_lstm_5/TensorArrayV2_1:handle:0forward_lstm_5/zeros:output:0forward_lstm_5/zeros_1:output:0'forward_lstm_5/strided_slice_1:output:0Fforward_lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0:forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource<forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource;forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *,
body$R"
 forward_lstm_5_while_body_768916*,
cond$R"
 forward_lstm_5_while_cond_768915*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
?forward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
1forward_lstm_5/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_5/while:output:3Hforward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsw
$forward_lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’p
&forward_lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
forward_lstm_5/strided_slice_3StridedSlice:forward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0-forward_lstm_5/strided_slice_3/stack:output:0/forward_lstm_5/strided_slice_3/stack_1:output:0/forward_lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maskt
forward_lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ä
forward_lstm_5/transpose_1	Transpose:forward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0(forward_lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’j
forward_lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    K
backward_lstm_5/ShapeShapeinputs*
T0*
_output_shapes
:m
#backward_lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
backward_lstm_5/strided_sliceStridedSlicebackward_lstm_5/Shape:output:0,backward_lstm_5/strided_slice/stack:output:0.backward_lstm_5/strided_slice/stack_1:output:0.backward_lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :£
backward_lstm_5/zeros/packedPack&backward_lstm_5/strided_slice:output:0'backward_lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm_5/zerosFill%backward_lstm_5/zeros/packed:output:0$backward_lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
 backward_lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :§
backward_lstm_5/zeros_1/packedPack&backward_lstm_5/strided_slice:output:0)backward_lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
backward_lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
backward_lstm_5/zeros_1Fill'backward_lstm_5/zeros_1/packed:output:0&backward_lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
backward_lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
backward_lstm_5/transpose	Transposeinputs'backward_lstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’d
backward_lstm_5/Shape_1Shapebackward_lstm_5/transpose:y:0*
T0*
_output_shapes
:o
%backward_lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
backward_lstm_5/strided_slice_1StridedSlice backward_lstm_5/Shape_1:output:0.backward_lstm_5/strided_slice_1/stack:output:00backward_lstm_5/strided_slice_1/stack_1:output:00backward_lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+backward_lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ä
backward_lstm_5/TensorArrayV2TensorListReserve4backward_lstm_5/TensorArrayV2/element_shape:output:0(backward_lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅh
backward_lstm_5/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ¤
backward_lstm_5/ReverseV2	ReverseV2backward_lstm_5/transpose:y:0'backward_lstm_5/ReverseV2/axis:output:0*
T0*+
_output_shapes
:’’’’’’’’’
Ebackward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
7backward_lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"backward_lstm_5/ReverseV2:output:0Nbackward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅo
%backward_lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¹
backward_lstm_5/strided_slice_2StridedSlicebackward_lstm_5/transpose:y:0.backward_lstm_5/strided_slice_2/stack:output:00backward_lstm_5/strided_slice_2/stack_1:output:00backward_lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_maskÆ
2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOpReadVariableOp;backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ę
#backward_lstm_5/lstm_cell_38/MatMulMatMul(backward_lstm_5/strided_slice_2:output:0:backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’“
4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp=backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ą
%backward_lstm_5/lstm_cell_38/MatMul_1MatMulbackward_lstm_5/zeros:output:0<backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¼
 backward_lstm_5/lstm_cell_38/addAddV2-backward_lstm_5/lstm_cell_38/MatMul:product:0/backward_lstm_5/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’­
3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp<backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Å
$backward_lstm_5/lstm_cell_38/BiasAddBiasAdd$backward_lstm_5/lstm_cell_38/add:z:0;backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’n
,backward_lstm_5/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
"backward_lstm_5/lstm_cell_38/splitSplit5backward_lstm_5/lstm_cell_38/split/split_dim:output:0-backward_lstm_5/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
$backward_lstm_5/lstm_cell_38/SigmoidSigmoid+backward_lstm_5/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
&backward_lstm_5/lstm_cell_38/Sigmoid_1Sigmoid+backward_lstm_5/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ø
 backward_lstm_5/lstm_cell_38/mulMul*backward_lstm_5/lstm_cell_38/Sigmoid_1:y:0 backward_lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
!backward_lstm_5/lstm_cell_38/ReluRelu+backward_lstm_5/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’·
"backward_lstm_5/lstm_cell_38/mul_1Mul(backward_lstm_5/lstm_cell_38/Sigmoid:y:0/backward_lstm_5/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¬
"backward_lstm_5/lstm_cell_38/add_1AddV2$backward_lstm_5/lstm_cell_38/mul:z:0&backward_lstm_5/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
&backward_lstm_5/lstm_cell_38/Sigmoid_2Sigmoid+backward_lstm_5/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
#backward_lstm_5/lstm_cell_38/Relu_1Relu&backward_lstm_5/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’»
"backward_lstm_5/lstm_cell_38/mul_2Mul*backward_lstm_5/lstm_cell_38/Sigmoid_2:y:01backward_lstm_5/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’~
-backward_lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   n
,backward_lstm_5/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :õ
backward_lstm_5/TensorArrayV2_1TensorListReserve6backward_lstm_5/TensorArrayV2_1/element_shape:output:05backward_lstm_5/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅV
backward_lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(backward_lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’d
"backward_lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ę
backward_lstm_5/whileWhile+backward_lstm_5/while/loop_counter:output:01backward_lstm_5/while/maximum_iterations:output:0backward_lstm_5/time:output:0(backward_lstm_5/TensorArrayV2_1:handle:0backward_lstm_5/zeros:output:0 backward_lstm_5/zeros_1:output:0(backward_lstm_5/strided_slice_1:output:0Gbackward_lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0;backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource=backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource<backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *-
body%R#
!backward_lstm_5_while_body_769059*-
cond%R#
!backward_lstm_5_while_cond_769058*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
@backward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
2backward_lstm_5/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_5/while:output:3Ibackward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsx
%backward_lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’q
'backward_lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ų
backward_lstm_5/strided_slice_3StridedSlice;backward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0.backward_lstm_5/strided_slice_3/stack:output:00backward_lstm_5/strided_slice_3/stack_1:output:00backward_lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_masku
 backward_lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ē
backward_lstm_5/transpose_1	Transpose;backward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0)backward_lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’k
backward_lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :·
concatConcatV2'forward_lstm_5/strided_slice_3:output:0(backward_lstm_5/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’¶
NoOpNoOp4^backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp3^backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp5^backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp^backward_lstm_5/while3^forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp2^forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp4^forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp^forward_lstm_5/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : 2j
3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp2h
2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp2l
4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp2.
backward_lstm_5/whilebackward_lstm_5/while2h
2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp2f
1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp2j
3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp2,
forward_lstm_5/whileforward_lstm_5/while:S O
+
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ž
ļ
 forward_lstm_5_while_cond_767124:
6forward_lstm_5_while_forward_lstm_5_while_loop_counter@
<forward_lstm_5_while_forward_lstm_5_while_maximum_iterations$
 forward_lstm_5_while_placeholder&
"forward_lstm_5_while_placeholder_1&
"forward_lstm_5_while_placeholder_2&
"forward_lstm_5_while_placeholder_3<
8forward_lstm_5_while_less_forward_lstm_5_strided_slice_1R
Nforward_lstm_5_while_forward_lstm_5_while_cond_767124___redundant_placeholder0R
Nforward_lstm_5_while_forward_lstm_5_while_cond_767124___redundant_placeholder1R
Nforward_lstm_5_while_forward_lstm_5_while_cond_767124___redundant_placeholder2R
Nforward_lstm_5_while_forward_lstm_5_while_cond_767124___redundant_placeholder3!
forward_lstm_5_while_identity

forward_lstm_5/while/LessLess forward_lstm_5_while_placeholder8forward_lstm_5_while_less_forward_lstm_5_strided_slice_1*
T0*
_output_shapes
: i
forward_lstm_5/while/IdentityIdentityforward_lstm_5/while/Less:z:0*
T0
*
_output_shapes
: "G
forward_lstm_5_while_identity&forward_lstm_5/while/Identity:output:0*(
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


é
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_767036
lambda_5_input
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
identity¢StatefulPartitionedCallĪ
StatefulPartitionedCallStatefulPartitionedCalllambda_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU2*0J 8 *i
fdRb
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_767017o
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
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:’’’’’’’’’
(
_user_specified_namelambda_5_input
Ē9
Ņ
while_body_769994
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_37_matmul_readvariableop_resource_0:	I
5while_lstm_cell_37_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_37_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_37_matmul_readvariableop_resource:	G
3while_lstm_cell_37_matmul_1_readvariableop_resource:
A
2while_lstm_cell_37_biasadd_readvariableop_resource:	¢)while/lstm_cell_37/BiasAdd/ReadVariableOp¢(while/lstm_cell_37/MatMul/ReadVariableOp¢*while/lstm_cell_37/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
(while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_37/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_37_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_37/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/addAddV2#while/lstm_cell_37/MatMul:product:0%while/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_37/BiasAddBiasAddwhile/lstm_cell_37/add:z:01while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_37/splitSplit+while/lstm_cell_37/split/split_dim:output:0#while/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_37/SigmoidSigmoid!while/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_37/Sigmoid_1Sigmoid!while/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/mulMul while/lstm_cell_37/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_37/ReluRelu!while/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/mul_1Mulwhile/lstm_cell_37/Sigmoid:y:0%while/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/add_1AddV2while/lstm_cell_37/mul:z:0while/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_37/Sigmoid_2Sigmoid!while/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_37/Relu_1Reluwhile/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/mul_2Mul while/lstm_cell_37/Sigmoid_2:y:0'while/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_37/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_37/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_37/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_37/BiasAdd/ReadVariableOp)^while/lstm_cell_37/MatMul/ReadVariableOp+^while/lstm_cell_37/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_37_biasadd_readvariableop_resource4while_lstm_cell_37_biasadd_readvariableop_resource_0"l
3while_lstm_cell_37_matmul_1_readvariableop_resource5while_lstm_cell_37_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_37_matmul_readvariableop_resource3while_lstm_cell_37_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_37/BiasAdd/ReadVariableOp)while/lstm_cell_37/BiasAdd/ReadVariableOp2T
(while/lstm_cell_37/MatMul/ReadVariableOp(while/lstm_cell_37/MatMul/ReadVariableOp2X
*while/lstm_cell_37/MatMul_1/ReadVariableOp*while/lstm_cell_37/MatMul_1/ReadVariableOp: 
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
¹
Ć
while_cond_770184
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_770184___redundant_placeholder04
0while_while_cond_770184___redundant_placeholder14
0while_while_cond_770184___redundant_placeholder24
0while_while_cond_770184___redundant_placeholder3
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
$
å
while_body_765899
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_38_765923_0:	/
while_lstm_cell_38_765925_0:
*
while_lstm_cell_38_765927_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_38_765923:	-
while_lstm_cell_38_765925:
(
while_lstm_cell_38_765927:	¢*while/lstm_cell_38/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0¹
*while/lstm_cell_38/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_38_765923_0while_lstm_cell_38_765925_0while_lstm_cell_38_765927_0*
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
GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_765837r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_38/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_38/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
while/Identity_5Identity3while/lstm_cell_38/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’y

while/NoOpNoOp+^while/lstm_cell_38/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_38_765923while_lstm_cell_38_765923_0"8
while_lstm_cell_38_765925while_lstm_cell_38_765925_0"8
while_lstm_cell_38_765927while_lstm_cell_38_765927_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2X
*while/lstm_cell_38/StatefulPartitionedCall*while/lstm_cell_38/StatefulPartitionedCall: 
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
L
£
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_769934

inputs>
+lstm_cell_37_matmul_readvariableop_resource:	A
-lstm_cell_37_matmul_1_readvariableop_resource:
;
,lstm_cell_37_biasadd_readvariableop_resource:	
identity¢#lstm_cell_37/BiasAdd/ReadVariableOp¢"lstm_cell_37/MatMul/ReadVariableOp¢$lstm_cell_37/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_37/MatMul/ReadVariableOpReadVariableOp+lstm_cell_37_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_37/MatMulMatMulstrided_slice_2:output:0*lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_37_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_37/MatMul_1MatMulzeros:output:0,lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_37/addAddV2lstm_cell_37/MatMul:product:0lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_37/BiasAddBiasAddlstm_cell_37/add:z:0+lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_37/splitSplit%lstm_cell_37/split/split_dim:output:0lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_37/SigmoidSigmoidlstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_37/Sigmoid_1Sigmoidlstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_37/mulMullstm_cell_37/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_37/ReluRelulstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_37/mul_1Mullstm_cell_37/Sigmoid:y:0lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_37/add_1AddV2lstm_cell_37/mul:z:0lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_37/Sigmoid_2Sigmoidlstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_37/Relu_1Relulstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_37/mul_2Mullstm_cell_37/Sigmoid_2:y:0!lstm_cell_37/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_37_matmul_readvariableop_resource-lstm_cell_37_matmul_1_readvariableop_resource,lstm_cell_37_biasadd_readvariableop_resource*
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
bodyR
while_body_769849*
condR
while_cond_769848*M
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
NoOpNoOp$^lstm_cell_37/BiasAdd/ReadVariableOp#^lstm_cell_37/MatMul/ReadVariableOp%^lstm_cell_37/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_37/BiasAdd/ReadVariableOp#lstm_cell_37/BiasAdd/ReadVariableOp2H
"lstm_cell_37/MatMul/ReadVariableOp"lstm_cell_37/MatMul/ReadVariableOp2L
$lstm_cell_37/MatMul_1/ReadVariableOp$lstm_cell_37/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs


é
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_767473
lambda_5_input
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
identity¢StatefulPartitionedCallĪ
StatefulPartitionedCallStatefulPartitionedCalllambda_5_inputunknown	unknown_0	unknown_1	unknown_2	unknown_3	unknown_4	unknown_5	unknown_6*
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
GPU2*0J 8 *i
fdRb
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_767433o
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
StatefulPartitionedCallStatefulPartitionedCall:W S
'
_output_shapes
:’’’’’’’’’
(
_user_specified_namelambda_5_input
Ä
¶
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_766294

inputs(
forward_lstm_5_766130:	)
forward_lstm_5_766132:
$
forward_lstm_5_766134:	)
backward_lstm_5_766284:	*
backward_lstm_5_766286:
%
backward_lstm_5_766288:	
identity¢'backward_lstm_5/StatefulPartitionedCall¢&forward_lstm_5/StatefulPartitionedCall„
&forward_lstm_5/StatefulPartitionedCallStatefulPartitionedCallinputsforward_lstm_5_766130forward_lstm_5_766132forward_lstm_5_766134*
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
GPU2*0J 8 *S
fNRL
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_766129Ŗ
'backward_lstm_5/StatefulPartitionedCallStatefulPartitionedCallinputsbackward_lstm_5_766284backward_lstm_5_766286backward_lstm_5_766288*
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
GPU2*0J 8 *T
fORM
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_766283M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :Ē
concatConcatV2/forward_lstm_5/StatefulPartitionedCall:output:00backward_lstm_5/StatefulPartitionedCall:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’
NoOpNoOp(^backward_lstm_5/StatefulPartitionedCall'^forward_lstm_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : : : : 2R
'backward_lstm_5/StatefulPartitionedCall'backward_lstm_5/StatefulPartitionedCall2P
&forward_lstm_5/StatefulPartitionedCall&forward_lstm_5/StatefulPartitionedCall:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
ł
÷
-__inference_lstm_cell_37_layer_call_fn_770728

inputs
states_0
states_1
unknown:	
	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall®
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
GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_765333p
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
Ž
ļ
 forward_lstm_5_while_cond_768915:
6forward_lstm_5_while_forward_lstm_5_while_loop_counter@
<forward_lstm_5_while_forward_lstm_5_while_maximum_iterations$
 forward_lstm_5_while_placeholder&
"forward_lstm_5_while_placeholder_1&
"forward_lstm_5_while_placeholder_2&
"forward_lstm_5_while_placeholder_3<
8forward_lstm_5_while_less_forward_lstm_5_strided_slice_1R
Nforward_lstm_5_while_forward_lstm_5_while_cond_768915___redundant_placeholder0R
Nforward_lstm_5_while_forward_lstm_5_while_cond_768915___redundant_placeholder1R
Nforward_lstm_5_while_forward_lstm_5_while_cond_768915___redundant_placeholder2R
Nforward_lstm_5_while_forward_lstm_5_while_cond_768915___redundant_placeholder3!
forward_lstm_5_while_identity

forward_lstm_5/while/LessLess forward_lstm_5_while_placeholder8forward_lstm_5_while_less_forward_lstm_5_strided_slice_1*
T0*
_output_shapes
: i
forward_lstm_5/while/IdentityIdentityforward_lstm_5/while/Less:z:0*
T0
*
_output_shapes
: "G
forward_lstm_5_while_identity&forward_lstm_5/while/Identity:output:0*(
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
¾9
Ņ
while_body_770185
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_38_matmul_readvariableop_resource_0:	I
5while_lstm_cell_38_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_38_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_38_matmul_readvariableop_resource:	G
3while_lstm_cell_38_matmul_1_readvariableop_resource:
A
2while_lstm_cell_38_biasadd_readvariableop_resource:	¢)while/lstm_cell_38/BiasAdd/ReadVariableOp¢(while/lstm_cell_38/MatMul/ReadVariableOp¢*while/lstm_cell_38/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0
(while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_38/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_38_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_38/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/addAddV2#while/lstm_cell_38/MatMul:product:0%while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_38/BiasAddBiasAddwhile/lstm_cell_38/add:z:01while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_38/splitSplit+while/lstm_cell_38/split/split_dim:output:0#while/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_38/SigmoidSigmoid!while/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_38/Sigmoid_1Sigmoid!while/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/mulMul while/lstm_cell_38/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_38/ReluRelu!while/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/mul_1Mulwhile/lstm_cell_38/Sigmoid:y:0%while/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/add_1AddV2while/lstm_cell_38/mul:z:0while/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_38/Sigmoid_2Sigmoid!while/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_38/Relu_1Reluwhile/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/mul_2Mul while/lstm_cell_38/Sigmoid_2:y:0'while/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_38/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_38/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_38/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_38_biasadd_readvariableop_resource4while_lstm_cell_38_biasadd_readvariableop_resource_0"l
3while_lstm_cell_38_matmul_1_readvariableop_resource5while_lstm_cell_38_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_38_matmul_readvariableop_resource3while_lstm_cell_38_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_38/BiasAdd/ReadVariableOp)while/lstm_cell_38/BiasAdd/ReadVariableOp2T
(while/lstm_cell_38/MatMul/ReadVariableOp(while/lstm_cell_38/MatMul/ReadVariableOp2X
*while/lstm_cell_38/MatMul_1/ReadVariableOp*while/lstm_cell_38/MatMul_1/ReadVariableOp: 
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
ś

!backward_lstm_5_while_cond_768768<
8backward_lstm_5_while_backward_lstm_5_while_loop_counterB
>backward_lstm_5_while_backward_lstm_5_while_maximum_iterations%
!backward_lstm_5_while_placeholder'
#backward_lstm_5_while_placeholder_1'
#backward_lstm_5_while_placeholder_2'
#backward_lstm_5_while_placeholder_3>
:backward_lstm_5_while_less_backward_lstm_5_strided_slice_1T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_768768___redundant_placeholder0T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_768768___redundant_placeholder1T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_768768___redundant_placeholder2T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_768768___redundant_placeholder3"
backward_lstm_5_while_identity
¢
backward_lstm_5/while/LessLess!backward_lstm_5_while_placeholder:backward_lstm_5_while_less_backward_lstm_5_strided_slice_1*
T0*
_output_shapes
: k
backward_lstm_5/while/IdentityIdentitybackward_lstm_5/while/Less:z:0*
T0
*
_output_shapes
: "I
backward_lstm_5_while_identity'backward_lstm_5/while/Identity:output:0*(
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
ė

H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_765333

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
ņļ
ß

`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_768186

inputs]
Jbidirectional_5_forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource:	`
Lbidirectional_5_forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource:
Z
Kbidirectional_5_forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource:	^
Kbidirectional_5_backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource:	a
Mbidirectional_5_backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource:
[
Lbidirectional_5_backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource:	9
&dense_5_matmul_readvariableop_resource:	5
'dense_5_biasadd_readvariableop_resource:
identity¢Cbidirectional_5/backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp¢Bbidirectional_5/backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp¢Dbidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp¢%bidirectional_5/backward_lstm_5/while¢Bbidirectional_5/forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp¢Abidirectional_5/forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp¢Cbidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp¢$bidirectional_5/forward_lstm_5/while¢dense_5/BiasAdd/ReadVariableOp¢dense_5/MatMul/ReadVariableOpb
lambda_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
lambda_5/ExpandDims
ExpandDimsinputs lambda_5/ExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’p
$bidirectional_5/forward_lstm_5/ShapeShapelambda_5/ExpandDims:output:0*
T0*
_output_shapes
:|
2bidirectional_5/forward_lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4bidirectional_5/forward_lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4bidirectional_5/forward_lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ģ
,bidirectional_5/forward_lstm_5/strided_sliceStridedSlice-bidirectional_5/forward_lstm_5/Shape:output:0;bidirectional_5/forward_lstm_5/strided_slice/stack:output:0=bidirectional_5/forward_lstm_5/strided_slice/stack_1:output:0=bidirectional_5/forward_lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
-bidirectional_5/forward_lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Š
+bidirectional_5/forward_lstm_5/zeros/packedPack5bidirectional_5/forward_lstm_5/strided_slice:output:06bidirectional_5/forward_lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:o
*bidirectional_5/forward_lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ź
$bidirectional_5/forward_lstm_5/zerosFill4bidirectional_5/forward_lstm_5/zeros/packed:output:03bidirectional_5/forward_lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’r
/bidirectional_5/forward_lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ō
-bidirectional_5/forward_lstm_5/zeros_1/packedPack5bidirectional_5/forward_lstm_5/strided_slice:output:08bidirectional_5/forward_lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:q
,bidirectional_5/forward_lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Š
&bidirectional_5/forward_lstm_5/zeros_1Fill6bidirectional_5/forward_lstm_5/zeros_1/packed:output:05bidirectional_5/forward_lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’
-bidirectional_5/forward_lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Į
(bidirectional_5/forward_lstm_5/transpose	Transposelambda_5/ExpandDims:output:06bidirectional_5/forward_lstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’
&bidirectional_5/forward_lstm_5/Shape_1Shape,bidirectional_5/forward_lstm_5/transpose:y:0*
T0*
_output_shapes
:~
4bidirectional_5/forward_lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6bidirectional_5/forward_lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6bidirectional_5/forward_lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ö
.bidirectional_5/forward_lstm_5/strided_slice_1StridedSlice/bidirectional_5/forward_lstm_5/Shape_1:output:0=bidirectional_5/forward_lstm_5/strided_slice_1/stack:output:0?bidirectional_5/forward_lstm_5/strided_slice_1/stack_1:output:0?bidirectional_5/forward_lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
:bidirectional_5/forward_lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
,bidirectional_5/forward_lstm_5/TensorArrayV2TensorListReserveCbidirectional_5/forward_lstm_5/TensorArrayV2/element_shape:output:07bidirectional_5/forward_lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ„
Tbidirectional_5/forward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ½
Fbidirectional_5/forward_lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor,bidirectional_5/forward_lstm_5/transpose:y:0]bidirectional_5/forward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ~
4bidirectional_5/forward_lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6bidirectional_5/forward_lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6bidirectional_5/forward_lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
.bidirectional_5/forward_lstm_5/strided_slice_2StridedSlice,bidirectional_5/forward_lstm_5/transpose:y:0=bidirectional_5/forward_lstm_5/strided_slice_2/stack:output:0?bidirectional_5/forward_lstm_5/strided_slice_2/stack_1:output:0?bidirectional_5/forward_lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_maskĶ
Abidirectional_5/forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOpReadVariableOpJbidirectional_5_forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ó
2bidirectional_5/forward_lstm_5/lstm_cell_37/MatMulMatMul7bidirectional_5/forward_lstm_5/strided_slice_2:output:0Ibidirectional_5/forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ņ
Cbidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOpLbidirectional_5_forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0ķ
4bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1MatMul-bidirectional_5/forward_lstm_5/zeros:output:0Kbidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’é
/bidirectional_5/forward_lstm_5/lstm_cell_37/addAddV2<bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul:product:0>bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Ė
Bbidirectional_5/forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOpKbidirectional_5_forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ņ
3bidirectional_5/forward_lstm_5/lstm_cell_37/BiasAddBiasAdd3bidirectional_5/forward_lstm_5/lstm_cell_37/add:z:0Jbidirectional_5/forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’}
;bidirectional_5/forward_lstm_5/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¾
1bidirectional_5/forward_lstm_5/lstm_cell_37/splitSplitDbidirectional_5/forward_lstm_5/lstm_cell_37/split/split_dim:output:0<bidirectional_5/forward_lstm_5/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split­
3bidirectional_5/forward_lstm_5/lstm_cell_37/SigmoidSigmoid:bidirectional_5/forward_lstm_5/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
5bidirectional_5/forward_lstm_5/lstm_cell_37/Sigmoid_1Sigmoid:bidirectional_5/forward_lstm_5/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Õ
/bidirectional_5/forward_lstm_5/lstm_cell_37/mulMul9bidirectional_5/forward_lstm_5/lstm_cell_37/Sigmoid_1:y:0/bidirectional_5/forward_lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’§
0bidirectional_5/forward_lstm_5/lstm_cell_37/ReluRelu:bidirectional_5/forward_lstm_5/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ä
1bidirectional_5/forward_lstm_5/lstm_cell_37/mul_1Mul7bidirectional_5/forward_lstm_5/lstm_cell_37/Sigmoid:y:0>bidirectional_5/forward_lstm_5/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Ł
1bidirectional_5/forward_lstm_5/lstm_cell_37/add_1AddV23bidirectional_5/forward_lstm_5/lstm_cell_37/mul:z:05bidirectional_5/forward_lstm_5/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
5bidirectional_5/forward_lstm_5/lstm_cell_37/Sigmoid_2Sigmoid:bidirectional_5/forward_lstm_5/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’¤
2bidirectional_5/forward_lstm_5/lstm_cell_37/Relu_1Relu5bidirectional_5/forward_lstm_5/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’č
1bidirectional_5/forward_lstm_5/lstm_cell_37/mul_2Mul9bidirectional_5/forward_lstm_5/lstm_cell_37/Sigmoid_2:y:0@bidirectional_5/forward_lstm_5/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
<bidirectional_5/forward_lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   }
;bidirectional_5/forward_lstm_5/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :¢
.bidirectional_5/forward_lstm_5/TensorArrayV2_1TensorListReserveEbidirectional_5/forward_lstm_5/TensorArrayV2_1/element_shape:output:0Dbidirectional_5/forward_lstm_5/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅe
#bidirectional_5/forward_lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : 
7bidirectional_5/forward_lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’s
1bidirectional_5/forward_lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ø	
$bidirectional_5/forward_lstm_5/whileWhile:bidirectional_5/forward_lstm_5/while/loop_counter:output:0@bidirectional_5/forward_lstm_5/while/maximum_iterations:output:0,bidirectional_5/forward_lstm_5/time:output:07bidirectional_5/forward_lstm_5/TensorArrayV2_1:handle:0-bidirectional_5/forward_lstm_5/zeros:output:0/bidirectional_5/forward_lstm_5/zeros_1:output:07bidirectional_5/forward_lstm_5/strided_slice_1:output:0Vbidirectional_5/forward_lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0Jbidirectional_5_forward_lstm_5_lstm_cell_37_matmul_readvariableop_resourceLbidirectional_5_forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resourceKbidirectional_5_forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *<
body4R2
0bidirectional_5_forward_lstm_5_while_body_767950*<
cond4R2
0bidirectional_5_forward_lstm_5_while_cond_767949*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations  
Obidirectional_5/forward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   “
Abidirectional_5/forward_lstm_5/TensorArrayV2Stack/TensorListStackTensorListStack-bidirectional_5/forward_lstm_5/while:output:3Xbidirectional_5/forward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elements
4bidirectional_5/forward_lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
6bidirectional_5/forward_lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
6bidirectional_5/forward_lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:£
.bidirectional_5/forward_lstm_5/strided_slice_3StridedSliceJbidirectional_5/forward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0=bidirectional_5/forward_lstm_5/strided_slice_3/stack:output:0?bidirectional_5/forward_lstm_5/strided_slice_3/stack_1:output:0?bidirectional_5/forward_lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
/bidirectional_5/forward_lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ō
*bidirectional_5/forward_lstm_5/transpose_1	TransposeJbidirectional_5/forward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:08bidirectional_5/forward_lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’z
&bidirectional_5/forward_lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    q
%bidirectional_5/backward_lstm_5/ShapeShapelambda_5/ExpandDims:output:0*
T0*
_output_shapes
:}
3bidirectional_5/backward_lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5bidirectional_5/backward_lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5bidirectional_5/backward_lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ń
-bidirectional_5/backward_lstm_5/strided_sliceStridedSlice.bidirectional_5/backward_lstm_5/Shape:output:0<bidirectional_5/backward_lstm_5/strided_slice/stack:output:0>bidirectional_5/backward_lstm_5/strided_slice/stack_1:output:0>bidirectional_5/backward_lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
.bidirectional_5/backward_lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ó
,bidirectional_5/backward_lstm_5/zeros/packedPack6bidirectional_5/backward_lstm_5/strided_slice:output:07bidirectional_5/backward_lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:p
+bidirectional_5/backward_lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ķ
%bidirectional_5/backward_lstm_5/zerosFill5bidirectional_5/backward_lstm_5/zeros/packed:output:04bidirectional_5/backward_lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
0bidirectional_5/backward_lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :×
.bidirectional_5/backward_lstm_5/zeros_1/packedPack6bidirectional_5/backward_lstm_5/strided_slice:output:09bidirectional_5/backward_lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:r
-bidirectional_5/backward_lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ó
'bidirectional_5/backward_lstm_5/zeros_1Fill7bidirectional_5/backward_lstm_5/zeros_1/packed:output:06bidirectional_5/backward_lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’
.bidirectional_5/backward_lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ć
)bidirectional_5/backward_lstm_5/transpose	Transposelambda_5/ExpandDims:output:07bidirectional_5/backward_lstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’
'bidirectional_5/backward_lstm_5/Shape_1Shape-bidirectional_5/backward_lstm_5/transpose:y:0*
T0*
_output_shapes
:
5bidirectional_5/backward_lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
7bidirectional_5/backward_lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7bidirectional_5/backward_lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ū
/bidirectional_5/backward_lstm_5/strided_slice_1StridedSlice0bidirectional_5/backward_lstm_5/Shape_1:output:0>bidirectional_5/backward_lstm_5/strided_slice_1/stack:output:0@bidirectional_5/backward_lstm_5/strided_slice_1/stack_1:output:0@bidirectional_5/backward_lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
;bidirectional_5/backward_lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
-bidirectional_5/backward_lstm_5/TensorArrayV2TensorListReserveDbidirectional_5/backward_lstm_5/TensorArrayV2/element_shape:output:08bidirectional_5/backward_lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅx
.bidirectional_5/backward_lstm_5/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Ō
)bidirectional_5/backward_lstm_5/ReverseV2	ReverseV2-bidirectional_5/backward_lstm_5/transpose:y:07bidirectional_5/backward_lstm_5/ReverseV2/axis:output:0*
T0*+
_output_shapes
:’’’’’’’’’¦
Ubidirectional_5/backward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Å
Gbidirectional_5/backward_lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor2bidirectional_5/backward_lstm_5/ReverseV2:output:0^bidirectional_5/backward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5bidirectional_5/backward_lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
7bidirectional_5/backward_lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7bidirectional_5/backward_lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
/bidirectional_5/backward_lstm_5/strided_slice_2StridedSlice-bidirectional_5/backward_lstm_5/transpose:y:0>bidirectional_5/backward_lstm_5/strided_slice_2/stack:output:0@bidirectional_5/backward_lstm_5/strided_slice_2/stack_1:output:0@bidirectional_5/backward_lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_maskĻ
Bbidirectional_5/backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOpReadVariableOpKbidirectional_5_backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ö
3bidirectional_5/backward_lstm_5/lstm_cell_38/MatMulMatMul8bidirectional_5/backward_lstm_5/strided_slice_2:output:0Jbidirectional_5/backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ō
Dbidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOpMbidirectional_5_backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0š
5bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1MatMul.bidirectional_5/backward_lstm_5/zeros:output:0Lbidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ģ
0bidirectional_5/backward_lstm_5/lstm_cell_38/addAddV2=bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul:product:0?bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Ķ
Cbidirectional_5/backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOpLbidirectional_5_backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0õ
4bidirectional_5/backward_lstm_5/lstm_cell_38/BiasAddBiasAdd4bidirectional_5/backward_lstm_5/lstm_cell_38/add:z:0Kbidirectional_5/backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’~
<bidirectional_5/backward_lstm_5/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Į
2bidirectional_5/backward_lstm_5/lstm_cell_38/splitSplitEbidirectional_5/backward_lstm_5/lstm_cell_38/split/split_dim:output:0=bidirectional_5/backward_lstm_5/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitÆ
4bidirectional_5/backward_lstm_5/lstm_cell_38/SigmoidSigmoid;bidirectional_5/backward_lstm_5/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’±
6bidirectional_5/backward_lstm_5/lstm_cell_38/Sigmoid_1Sigmoid;bidirectional_5/backward_lstm_5/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ų
0bidirectional_5/backward_lstm_5/lstm_cell_38/mulMul:bidirectional_5/backward_lstm_5/lstm_cell_38/Sigmoid_1:y:00bidirectional_5/backward_lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’©
1bidirectional_5/backward_lstm_5/lstm_cell_38/ReluRelu;bidirectional_5/backward_lstm_5/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ē
2bidirectional_5/backward_lstm_5/lstm_cell_38/mul_1Mul8bidirectional_5/backward_lstm_5/lstm_cell_38/Sigmoid:y:0?bidirectional_5/backward_lstm_5/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Ü
2bidirectional_5/backward_lstm_5/lstm_cell_38/add_1AddV24bidirectional_5/backward_lstm_5/lstm_cell_38/mul:z:06bidirectional_5/backward_lstm_5/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’±
6bidirectional_5/backward_lstm_5/lstm_cell_38/Sigmoid_2Sigmoid;bidirectional_5/backward_lstm_5/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’¦
3bidirectional_5/backward_lstm_5/lstm_cell_38/Relu_1Relu6bidirectional_5/backward_lstm_5/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ė
2bidirectional_5/backward_lstm_5/lstm_cell_38/mul_2Mul:bidirectional_5/backward_lstm_5/lstm_cell_38/Sigmoid_2:y:0Abidirectional_5/backward_lstm_5/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
=bidirectional_5/backward_lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ~
<bidirectional_5/backward_lstm_5/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :„
/bidirectional_5/backward_lstm_5/TensorArrayV2_1TensorListReserveFbidirectional_5/backward_lstm_5/TensorArrayV2_1/element_shape:output:0Ebidirectional_5/backward_lstm_5/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅf
$bidirectional_5/backward_lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : 
8bidirectional_5/backward_lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’t
2bidirectional_5/backward_lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ę	
%bidirectional_5/backward_lstm_5/whileWhile;bidirectional_5/backward_lstm_5/while/loop_counter:output:0Abidirectional_5/backward_lstm_5/while/maximum_iterations:output:0-bidirectional_5/backward_lstm_5/time:output:08bidirectional_5/backward_lstm_5/TensorArrayV2_1:handle:0.bidirectional_5/backward_lstm_5/zeros:output:00bidirectional_5/backward_lstm_5/zeros_1:output:08bidirectional_5/backward_lstm_5/strided_slice_1:output:0Wbidirectional_5/backward_lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0Kbidirectional_5_backward_lstm_5_lstm_cell_38_matmul_readvariableop_resourceMbidirectional_5_backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resourceLbidirectional_5_backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *=
body5R3
1bidirectional_5_backward_lstm_5_while_body_768093*=
cond5R3
1bidirectional_5_backward_lstm_5_while_cond_768092*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations ”
Pbidirectional_5/backward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ·
Bbidirectional_5/backward_lstm_5/TensorArrayV2Stack/TensorListStackTensorListStack.bidirectional_5/backward_lstm_5/while:output:3Ybidirectional_5/backward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elements
5bidirectional_5/backward_lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
7bidirectional_5/backward_lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
7bidirectional_5/backward_lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
/bidirectional_5/backward_lstm_5/strided_slice_3StridedSliceKbidirectional_5/backward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0>bidirectional_5/backward_lstm_5/strided_slice_3/stack:output:0@bidirectional_5/backward_lstm_5/strided_slice_3/stack_1:output:0@bidirectional_5/backward_lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
0bidirectional_5/backward_lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ÷
+bidirectional_5/backward_lstm_5/transpose_1	TransposeKbidirectional_5/backward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:09bidirectional_5/backward_lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’{
'bidirectional_5/backward_lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
bidirectional_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :÷
bidirectional_5/concatConcatV27bidirectional_5/forward_lstm_5/strided_slice_3:output:08bidirectional_5/backward_lstm_5/strided_slice_3:output:0$bidirectional_5/concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_5/MatMulMatMulbidirectional_5/concat:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’g
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’÷
NoOpNoOpD^bidirectional_5/backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOpC^bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOpE^bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp&^bidirectional_5/backward_lstm_5/whileC^bidirectional_5/forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOpB^bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOpD^bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp%^bidirectional_5/forward_lstm_5/while^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 2
Cbidirectional_5/backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOpCbidirectional_5/backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp2
Bbidirectional_5/backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOpBbidirectional_5/backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp2
Dbidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOpDbidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp2N
%bidirectional_5/backward_lstm_5/while%bidirectional_5/backward_lstm_5/while2
Bbidirectional_5/forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOpBbidirectional_5/forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp2
Abidirectional_5/forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOpAbidirectional_5/forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp2
Cbidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOpCbidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp2L
$bidirectional_5/forward_lstm_5/while$bidirectional_5/forward_lstm_5/while2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
ö:

K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_765774

inputs&
lstm_cell_38_765690:	'
lstm_cell_38_765692:
"
lstm_cell_38_765694:	
identity¢$lstm_cell_38/StatefulPartitionedCall¢while;
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
shrink_axis_maskū
$lstm_cell_38/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_38_765690lstm_cell_38_765692lstm_cell_38_765694*
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
GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_765689n
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
value	B : »
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_38_765690lstm_cell_38_765692lstm_cell_38_765694*
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
bodyR
while_body_765704*
condR
while_cond_765703*M
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
NoOpNoOp%^lstm_cell_38/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2L
$lstm_cell_38/StatefulPartitionedCall$lstm_cell_38/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
9

J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_765418

inputs&
lstm_cell_37_765334:	'
lstm_cell_37_765336:
"
lstm_cell_37_765338:	
identity¢$lstm_cell_37/StatefulPartitionedCall¢while;
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
shrink_axis_maskū
$lstm_cell_37/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_37_765334lstm_cell_37_765336lstm_cell_37_765338*
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
GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_765333n
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
value	B : »
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_37_765334lstm_cell_37_765336lstm_cell_37_765338*
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
bodyR
while_body_765348*
condR
while_cond_765347*M
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
NoOpNoOp%^lstm_cell_37/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2L
$lstm_cell_37/StatefulPartitionedCall$lstm_cell_37/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
±
¾
0__inference_backward_lstm_5_layer_call_fn_770112

inputs
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallń
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
GPU2*0J 8 *T
fORM
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_766283p
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
£
æ
/__inference_forward_lstm_5_layer_call_fn_769477
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallņ
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
GPU2*0J 8 *S
fNRL
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_765611p
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
¹
Ć
while_cond_766383
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_766383___redundant_placeholder04
0while_while_cond_766383___redundant_placeholder14
0while_while_cond_766383___redundant_placeholder24
0while_while_cond_766383___redundant_placeholder3
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
$
å
while_body_765348
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_37_765372_0:	/
while_lstm_cell_37_765374_0:
*
while_lstm_cell_37_765376_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_37_765372:	-
while_lstm_cell_37_765374:
(
while_lstm_cell_37_765376:	¢*while/lstm_cell_37/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0¹
*while/lstm_cell_37/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_37_765372_0while_lstm_cell_37_765374_0while_lstm_cell_37_765376_0*
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
GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_765333r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_37/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_37/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
while/Identity_5Identity3while/lstm_cell_37/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’y

while/NoOpNoOp+^while/lstm_cell_37/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_37_765372while_lstm_cell_37_765372_0"8
while_lstm_cell_37_765374while_lstm_cell_37_765374_0"8
while_lstm_cell_37_765376while_lstm_cell_37_765376_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2X
*while/lstm_cell_37/StatefulPartitionedCall*while/lstm_cell_37/StatefulPartitionedCall: 
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
°K
²
 forward_lstm_5_while_body_768626:
6forward_lstm_5_while_forward_lstm_5_while_loop_counter@
<forward_lstm_5_while_forward_lstm_5_while_maximum_iterations$
 forward_lstm_5_while_placeholder&
"forward_lstm_5_while_placeholder_1&
"forward_lstm_5_while_placeholder_2&
"forward_lstm_5_while_placeholder_39
5forward_lstm_5_while_forward_lstm_5_strided_slice_1_0u
qforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0U
Bforward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0:	X
Dforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0:
R
Cforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0:	!
forward_lstm_5_while_identity#
forward_lstm_5_while_identity_1#
forward_lstm_5_while_identity_2#
forward_lstm_5_while_identity_3#
forward_lstm_5_while_identity_4#
forward_lstm_5_while_identity_57
3forward_lstm_5_while_forward_lstm_5_strided_slice_1s
oforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensorS
@forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource:	V
Bforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource:
P
Aforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource:	¢8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp¢7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp¢9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp
Fforward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’ś
8forward_lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0 forward_lstm_5_while_placeholderOforward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0»
7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOpBforward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ē
(forward_lstm_5/while/lstm_cell_37/MatMulMatMul?forward_lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0?forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ą
9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOpDforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ī
*forward_lstm_5/while/lstm_cell_37/MatMul_1MatMul"forward_lstm_5_while_placeholder_2Aforward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ė
%forward_lstm_5/while/lstm_cell_37/addAddV22forward_lstm_5/while/lstm_cell_37/MatMul:product:04forward_lstm_5/while/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’¹
8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOpCforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ō
)forward_lstm_5/while/lstm_cell_37/BiasAddBiasAdd)forward_lstm_5/while/lstm_cell_37/add:z:0@forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’s
1forward_lstm_5/while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
'forward_lstm_5/while/lstm_cell_37/splitSplit:forward_lstm_5/while/lstm_cell_37/split/split_dim:output:02forward_lstm_5/while/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
)forward_lstm_5/while/lstm_cell_37/SigmoidSigmoid0forward_lstm_5/while/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
+forward_lstm_5/while/lstm_cell_37/Sigmoid_1Sigmoid0forward_lstm_5/while/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’“
%forward_lstm_5/while/lstm_cell_37/mulMul/forward_lstm_5/while/lstm_cell_37/Sigmoid_1:y:0"forward_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
&forward_lstm_5/while/lstm_cell_37/ReluRelu0forward_lstm_5/while/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ę
'forward_lstm_5/while/lstm_cell_37/mul_1Mul-forward_lstm_5/while/lstm_cell_37/Sigmoid:y:04forward_lstm_5/while/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’»
'forward_lstm_5/while/lstm_cell_37/add_1AddV2)forward_lstm_5/while/lstm_cell_37/mul:z:0+forward_lstm_5/while/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
+forward_lstm_5/while/lstm_cell_37/Sigmoid_2Sigmoid0forward_lstm_5/while/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
(forward_lstm_5/while/lstm_cell_37/Relu_1Relu+forward_lstm_5/while/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ź
'forward_lstm_5/while/lstm_cell_37/mul_2Mul/forward_lstm_5/while/lstm_cell_37/Sigmoid_2:y:06forward_lstm_5/while/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
?forward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ©
9forward_lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"forward_lstm_5_while_placeholder_1Hforward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/index:output:0+forward_lstm_5/while/lstm_cell_37/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ\
forward_lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_5/while/addAddV2 forward_lstm_5_while_placeholder#forward_lstm_5/while/add/y:output:0*
T0*
_output_shapes
: ^
forward_lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :£
forward_lstm_5/while/add_1AddV26forward_lstm_5_while_forward_lstm_5_while_loop_counter%forward_lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_5/while/IdentityIdentityforward_lstm_5/while/add_1:z:0^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: ¦
forward_lstm_5/while/Identity_1Identity<forward_lstm_5_while_forward_lstm_5_while_maximum_iterations^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: 
forward_lstm_5/while/Identity_2Identityforward_lstm_5/while/add:z:0^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: ³
forward_lstm_5/while/Identity_3IdentityIforward_lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: §
forward_lstm_5/while/Identity_4Identity+forward_lstm_5/while/lstm_cell_37/mul_2:z:0^forward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’§
forward_lstm_5/while/Identity_5Identity+forward_lstm_5/while/lstm_cell_37/add_1:z:0^forward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
forward_lstm_5/while/NoOpNoOp9^forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp8^forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp:^forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "l
3forward_lstm_5_while_forward_lstm_5_strided_slice_15forward_lstm_5_while_forward_lstm_5_strided_slice_1_0"G
forward_lstm_5_while_identity&forward_lstm_5/while/Identity:output:0"K
forward_lstm_5_while_identity_1(forward_lstm_5/while/Identity_1:output:0"K
forward_lstm_5_while_identity_2(forward_lstm_5/while/Identity_2:output:0"K
forward_lstm_5_while_identity_3(forward_lstm_5/while/Identity_3:output:0"K
forward_lstm_5_while_identity_4(forward_lstm_5/while/Identity_4:output:0"K
forward_lstm_5_while_identity_5(forward_lstm_5/while/Identity_5:output:0"
Aforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resourceCforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0"
Bforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resourceDforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0"
@forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resourceBforward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0"ä
oforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensorqforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2t
8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp2r
7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp2v
9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp: 
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
ĒL
Ņ
!backward_lstm_5_while_body_768479<
8backward_lstm_5_while_backward_lstm_5_while_loop_counterB
>backward_lstm_5_while_backward_lstm_5_while_maximum_iterations%
!backward_lstm_5_while_placeholder'
#backward_lstm_5_while_placeholder_1'
#backward_lstm_5_while_placeholder_2'
#backward_lstm_5_while_placeholder_3;
7backward_lstm_5_while_backward_lstm_5_strided_slice_1_0w
sbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0V
Cbackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0:	Y
Ebackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0:
S
Dbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0:	"
backward_lstm_5_while_identity$
 backward_lstm_5_while_identity_1$
 backward_lstm_5_while_identity_2$
 backward_lstm_5_while_identity_3$
 backward_lstm_5_while_identity_4$
 backward_lstm_5_while_identity_59
5backward_lstm_5_while_backward_lstm_5_strided_slice_1u
qbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensorT
Abackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource:	W
Cbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource:
Q
Bbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource:	¢9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp¢8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp¢:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp
Gbackward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’’
9backward_lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0!backward_lstm_5_while_placeholderPbackward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0½
8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOpCbackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ź
)backward_lstm_5/while/lstm_cell_38/MatMulMatMul@backward_lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0@backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOpEbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ń
+backward_lstm_5/while/lstm_cell_38/MatMul_1MatMul#backward_lstm_5_while_placeholder_2Bbackward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ī
&backward_lstm_5/while/lstm_cell_38/addAddV23backward_lstm_5/while/lstm_cell_38/MatMul:product:05backward_lstm_5/while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’»
9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOpDbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0×
*backward_lstm_5/while/lstm_cell_38/BiasAddBiasAdd*backward_lstm_5/while/lstm_cell_38/add:z:0Abackward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’t
2backward_lstm_5/while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
(backward_lstm_5/while/lstm_cell_38/splitSplit;backward_lstm_5/while/lstm_cell_38/split/split_dim:output:03backward_lstm_5/while/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
*backward_lstm_5/while/lstm_cell_38/SigmoidSigmoid1backward_lstm_5/while/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
,backward_lstm_5/while/lstm_cell_38/Sigmoid_1Sigmoid1backward_lstm_5/while/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’·
&backward_lstm_5/while/lstm_cell_38/mulMul0backward_lstm_5/while/lstm_cell_38/Sigmoid_1:y:0#backward_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
'backward_lstm_5/while/lstm_cell_38/ReluRelu1backward_lstm_5/while/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’É
(backward_lstm_5/while/lstm_cell_38/mul_1Mul.backward_lstm_5/while/lstm_cell_38/Sigmoid:y:05backward_lstm_5/while/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¾
(backward_lstm_5/while/lstm_cell_38/add_1AddV2*backward_lstm_5/while/lstm_cell_38/mul:z:0,backward_lstm_5/while/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
,backward_lstm_5/while/lstm_cell_38/Sigmoid_2Sigmoid1backward_lstm_5/while/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
)backward_lstm_5/while/lstm_cell_38/Relu_1Relu,backward_lstm_5/while/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ķ
(backward_lstm_5/while/lstm_cell_38/mul_2Mul0backward_lstm_5/while/lstm_cell_38/Sigmoid_2:y:07backward_lstm_5/while/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
@backward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ­
:backward_lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#backward_lstm_5_while_placeholder_1Ibackward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/index:output:0,backward_lstm_5/while/lstm_cell_38/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ]
backward_lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_5/while/addAddV2!backward_lstm_5_while_placeholder$backward_lstm_5/while/add/y:output:0*
T0*
_output_shapes
: _
backward_lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :§
backward_lstm_5/while/add_1AddV28backward_lstm_5_while_backward_lstm_5_while_loop_counter&backward_lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_5/while/IdentityIdentitybackward_lstm_5/while/add_1:z:0^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: Ŗ
 backward_lstm_5/while/Identity_1Identity>backward_lstm_5_while_backward_lstm_5_while_maximum_iterations^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: 
 backward_lstm_5/while/Identity_2Identitybackward_lstm_5/while/add:z:0^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: ¶
 backward_lstm_5/while/Identity_3IdentityJbackward_lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: Ŗ
 backward_lstm_5/while/Identity_4Identity,backward_lstm_5/while/lstm_cell_38/mul_2:z:0^backward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
 backward_lstm_5/while/Identity_5Identity,backward_lstm_5/while/lstm_cell_38/add_1:z:0^backward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
backward_lstm_5/while/NoOpNoOp:^backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp9^backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp;^backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "p
5backward_lstm_5_while_backward_lstm_5_strided_slice_17backward_lstm_5_while_backward_lstm_5_strided_slice_1_0"I
backward_lstm_5_while_identity'backward_lstm_5/while/Identity:output:0"M
 backward_lstm_5_while_identity_1)backward_lstm_5/while/Identity_1:output:0"M
 backward_lstm_5_while_identity_2)backward_lstm_5/while/Identity_2:output:0"M
 backward_lstm_5_while_identity_3)backward_lstm_5/while/Identity_3:output:0"M
 backward_lstm_5_while_identity_4)backward_lstm_5/while/Identity_4:output:0"M
 backward_lstm_5_while_identity_5)backward_lstm_5/while/Identity_5:output:0"
Bbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resourceDbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0"
Cbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resourceEbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0"
Abackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resourceCbackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0"č
qbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensorsbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2v
9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp2t
8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp2x
:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp: 
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
Ē9
Ņ
while_body_766551
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_37_matmul_readvariableop_resource_0:	I
5while_lstm_cell_37_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_37_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_37_matmul_readvariableop_resource:	G
3while_lstm_cell_37_matmul_1_readvariableop_resource:
A
2while_lstm_cell_37_biasadd_readvariableop_resource:	¢)while/lstm_cell_37/BiasAdd/ReadVariableOp¢(while/lstm_cell_37/MatMul/ReadVariableOp¢*while/lstm_cell_37/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
(while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_37/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_37_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_37/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/addAddV2#while/lstm_cell_37/MatMul:product:0%while/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_37/BiasAddBiasAddwhile/lstm_cell_37/add:z:01while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_37/splitSplit+while/lstm_cell_37/split/split_dim:output:0#while/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_37/SigmoidSigmoid!while/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_37/Sigmoid_1Sigmoid!while/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/mulMul while/lstm_cell_37/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_37/ReluRelu!while/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/mul_1Mulwhile/lstm_cell_37/Sigmoid:y:0%while/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/add_1AddV2while/lstm_cell_37/mul:z:0while/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_37/Sigmoid_2Sigmoid!while/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_37/Relu_1Reluwhile/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/mul_2Mul while/lstm_cell_37/Sigmoid_2:y:0'while/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_37/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_37/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_37/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_37/BiasAdd/ReadVariableOp)^while/lstm_cell_37/MatMul/ReadVariableOp+^while/lstm_cell_37/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_37_biasadd_readvariableop_resource4while_lstm_cell_37_biasadd_readvariableop_resource_0"l
3while_lstm_cell_37_matmul_1_readvariableop_resource5while_lstm_cell_37_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_37_matmul_readvariableop_resource3while_lstm_cell_37_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_37/BiasAdd/ReadVariableOp)while/lstm_cell_37/BiasAdd/ReadVariableOp2T
(while/lstm_cell_37/MatMul/ReadVariableOp(while/lstm_cell_37/MatMul/ReadVariableOp2X
*while/lstm_cell_37/MatMul_1/ReadVariableOp*while/lstm_cell_37/MatMul_1/ReadVariableOp: 
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
ś

!backward_lstm_5_while_cond_767267<
8backward_lstm_5_while_backward_lstm_5_while_loop_counterB
>backward_lstm_5_while_backward_lstm_5_while_maximum_iterations%
!backward_lstm_5_while_placeholder'
#backward_lstm_5_while_placeholder_1'
#backward_lstm_5_while_placeholder_2'
#backward_lstm_5_while_placeholder_3>
:backward_lstm_5_while_less_backward_lstm_5_strided_slice_1T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_767267___redundant_placeholder0T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_767267___redundant_placeholder1T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_767267___redundant_placeholder2T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_767267___redundant_placeholder3"
backward_lstm_5_while_identity
¢
backward_lstm_5/while/LessLess!backward_lstm_5_while_placeholder:backward_lstm_5_while_less_backward_lstm_5_strided_slice_1*
T0*
_output_shapes
: k
backward_lstm_5/while/IdentityIdentitybackward_lstm_5/while/Less:z:0*
T0
*
_output_shapes
: "I
backward_lstm_5_while_identity'backward_lstm_5/while/Identity:output:0*(
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
$
å
while_body_765541
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0.
while_lstm_cell_37_765565_0:	/
while_lstm_cell_37_765567_0:
*
while_lstm_cell_37_765569_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor,
while_lstm_cell_37_765565:	-
while_lstm_cell_37_765567:
(
while_lstm_cell_37_765569:	¢*while/lstm_cell_37/StatefulPartitionedCall
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0¹
*while/lstm_cell_37/StatefulPartitionedCallStatefulPartitionedCall0while/TensorArrayV2Read/TensorListGetItem:item:0while_placeholder_2while_placeholder_3while_lstm_cell_37_765565_0while_lstm_cell_37_765567_0while_lstm_cell_37_765569_0*
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
GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_765481r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:03while/lstm_cell_37/StatefulPartitionedCall:output:0*
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
while/Identity_4Identity3while/lstm_cell_37/StatefulPartitionedCall:output:1^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
while/Identity_5Identity3while/lstm_cell_37/StatefulPartitionedCall:output:2^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’y

while/NoOpNoOp+^while/lstm_cell_37/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"8
while_lstm_cell_37_765565while_lstm_cell_37_765565_0"8
while_lstm_cell_37_765567while_lstm_cell_37_765567_0"8
while_lstm_cell_37_765569while_lstm_cell_37_765569_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2X
*while/lstm_cell_37/StatefulPartitionedCall*while/lstm_cell_37/StatefulPartitionedCall: 
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
¹
Ć
while_cond_770625
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_770625___redundant_placeholder04
0while_while_cond_770625___redundant_placeholder14
0while_while_cond_770625___redundant_placeholder24
0while_while_cond_770625___redundant_placeholder3
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
ś

!backward_lstm_5_while_cond_769348<
8backward_lstm_5_while_backward_lstm_5_while_loop_counterB
>backward_lstm_5_while_backward_lstm_5_while_maximum_iterations%
!backward_lstm_5_while_placeholder'
#backward_lstm_5_while_placeholder_1'
#backward_lstm_5_while_placeholder_2'
#backward_lstm_5_while_placeholder_3>
:backward_lstm_5_while_less_backward_lstm_5_strided_slice_1T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_769348___redundant_placeholder0T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_769348___redundant_placeholder1T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_769348___redundant_placeholder2T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_769348___redundant_placeholder3"
backward_lstm_5_while_identity
¢
backward_lstm_5/while/LessLess!backward_lstm_5_while_placeholder:backward_lstm_5_while_less_backward_lstm_5_strided_slice_1*
T0*
_output_shapes
: k
backward_lstm_5/while/IdentityIdentitybackward_lstm_5/while/Less:z:0*
T0
*
_output_shapes
: "I
backward_lstm_5_while_identity'backward_lstm_5/while/Identity:output:0*(
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
L
£
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_766129

inputs>
+lstm_cell_37_matmul_readvariableop_resource:	A
-lstm_cell_37_matmul_1_readvariableop_resource:
;
,lstm_cell_37_biasadd_readvariableop_resource:	
identity¢#lstm_cell_37/BiasAdd/ReadVariableOp¢"lstm_cell_37/MatMul/ReadVariableOp¢$lstm_cell_37/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_37/MatMul/ReadVariableOpReadVariableOp+lstm_cell_37_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_37/MatMulMatMulstrided_slice_2:output:0*lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_37_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_37/MatMul_1MatMulzeros:output:0,lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_37/addAddV2lstm_cell_37/MatMul:product:0lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_37/BiasAddBiasAddlstm_cell_37/add:z:0+lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_37/splitSplit%lstm_cell_37/split/split_dim:output:0lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_37/SigmoidSigmoidlstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_37/Sigmoid_1Sigmoidlstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_37/mulMullstm_cell_37/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_37/ReluRelulstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_37/mul_1Mullstm_cell_37/Sigmoid:y:0lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_37/add_1AddV2lstm_cell_37/mul:z:0lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_37/Sigmoid_2Sigmoidlstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_37/Relu_1Relulstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_37/mul_2Mullstm_cell_37/Sigmoid_2:y:0!lstm_cell_37/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_37_matmul_readvariableop_resource-lstm_cell_37_matmul_1_readvariableop_resource,lstm_cell_37_biasadd_readvariableop_resource*
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
bodyR
while_body_766044*
condR
while_cond_766043*M
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
NoOpNoOp$^lstm_cell_37/BiasAdd/ReadVariableOp#^lstm_cell_37/MatMul/ReadVariableOp%^lstm_cell_37/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_37/BiasAdd/ReadVariableOp#lstm_cell_37/BiasAdd/ReadVariableOp2H
"lstm_cell_37/MatMul/ReadVariableOp"lstm_cell_37/MatMul/ReadVariableOp2L
$lstm_cell_37/MatMul_1/ReadVariableOp$lstm_cell_37/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
ŗ_
Ö
1bidirectional_5_backward_lstm_5_while_body_768093\
Xbidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_while_loop_counterb
^bidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_while_maximum_iterations5
1bidirectional_5_backward_lstm_5_while_placeholder7
3bidirectional_5_backward_lstm_5_while_placeholder_17
3bidirectional_5_backward_lstm_5_while_placeholder_27
3bidirectional_5_backward_lstm_5_while_placeholder_3[
Wbidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_strided_slice_1_0
bidirectional_5_backward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0f
Sbidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0:	i
Ubidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0:
c
Tbidirectional_5_backward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0:	2
.bidirectional_5_backward_lstm_5_while_identity4
0bidirectional_5_backward_lstm_5_while_identity_14
0bidirectional_5_backward_lstm_5_while_identity_24
0bidirectional_5_backward_lstm_5_while_identity_34
0bidirectional_5_backward_lstm_5_while_identity_44
0bidirectional_5_backward_lstm_5_while_identity_5Y
Ubidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_strided_slice_1
bidirectional_5_backward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_backward_lstm_5_tensorarrayunstack_tensorlistfromtensord
Qbidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource:	g
Sbidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource:
a
Rbidirectional_5_backward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource:	¢Ibidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp¢Hbidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp¢Jbidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOpØ
Wbidirectional_5/backward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ē
Ibidirectional_5/backward_lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_5_backward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_01bidirectional_5_backward_lstm_5_while_placeholder`bidirectional_5/backward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0Ż
Hbidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOpSbidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0
9bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMulMatMulPbidirectional_5/backward_lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0Pbidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ā
Jbidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOpUbidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0
;bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1MatMul3bidirectional_5_backward_lstm_5_while_placeholder_2Rbidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ž
6bidirectional_5/backward_lstm_5/while/lstm_cell_38/addAddV2Cbidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul:product:0Ebidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Ū
Ibidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOpTbidirectional_5_backward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
:bidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAddBiasAdd:bidirectional_5/backward_lstm_5/while/lstm_cell_38/add:z:0Qbidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
Bbidirectional_5/backward_lstm_5/while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ó
8bidirectional_5/backward_lstm_5/while/lstm_cell_38/splitSplitKbidirectional_5/backward_lstm_5/while/lstm_cell_38/split/split_dim:output:0Cbidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split»
:bidirectional_5/backward_lstm_5/while/lstm_cell_38/SigmoidSigmoidAbidirectional_5/backward_lstm_5/while/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’½
<bidirectional_5/backward_lstm_5/while/lstm_cell_38/Sigmoid_1SigmoidAbidirectional_5/backward_lstm_5/while/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’ē
6bidirectional_5/backward_lstm_5/while/lstm_cell_38/mulMul@bidirectional_5/backward_lstm_5/while/lstm_cell_38/Sigmoid_1:y:03bidirectional_5_backward_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’µ
7bidirectional_5/backward_lstm_5/while/lstm_cell_38/ReluReluAbidirectional_5/backward_lstm_5/while/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ł
8bidirectional_5/backward_lstm_5/while/lstm_cell_38/mul_1Mul>bidirectional_5/backward_lstm_5/while/lstm_cell_38/Sigmoid:y:0Ebidirectional_5/backward_lstm_5/while/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’ī
8bidirectional_5/backward_lstm_5/while/lstm_cell_38/add_1AddV2:bidirectional_5/backward_lstm_5/while/lstm_cell_38/mul:z:0<bidirectional_5/backward_lstm_5/while/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’½
<bidirectional_5/backward_lstm_5/while/lstm_cell_38/Sigmoid_2SigmoidAbidirectional_5/backward_lstm_5/while/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’²
9bidirectional_5/backward_lstm_5/while/lstm_cell_38/Relu_1Relu<bidirectional_5/backward_lstm_5/while/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ż
8bidirectional_5/backward_lstm_5/while/lstm_cell_38/mul_2Mul@bidirectional_5/backward_lstm_5/while/lstm_cell_38/Sigmoid_2:y:0Gbidirectional_5/backward_lstm_5/while/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Pbidirectional_5/backward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
Jbidirectional_5/backward_lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem3bidirectional_5_backward_lstm_5_while_placeholder_1Ybidirectional_5/backward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/index:output:0<bidirectional_5/backward_lstm_5/while/lstm_cell_38/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅm
+bidirectional_5/backward_lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¼
)bidirectional_5/backward_lstm_5/while/addAddV21bidirectional_5_backward_lstm_5_while_placeholder4bidirectional_5/backward_lstm_5/while/add/y:output:0*
T0*
_output_shapes
: o
-bidirectional_5/backward_lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ē
+bidirectional_5/backward_lstm_5/while/add_1AddV2Xbidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_while_loop_counter6bidirectional_5/backward_lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: ¹
.bidirectional_5/backward_lstm_5/while/IdentityIdentity/bidirectional_5/backward_lstm_5/while/add_1:z:0+^bidirectional_5/backward_lstm_5/while/NoOp*
T0*
_output_shapes
: ź
0bidirectional_5/backward_lstm_5/while/Identity_1Identity^bidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_while_maximum_iterations+^bidirectional_5/backward_lstm_5/while/NoOp*
T0*
_output_shapes
: ¹
0bidirectional_5/backward_lstm_5/while/Identity_2Identity-bidirectional_5/backward_lstm_5/while/add:z:0+^bidirectional_5/backward_lstm_5/while/NoOp*
T0*
_output_shapes
: ę
0bidirectional_5/backward_lstm_5/while/Identity_3IdentityZbidirectional_5/backward_lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0+^bidirectional_5/backward_lstm_5/while/NoOp*
T0*
_output_shapes
: Ś
0bidirectional_5/backward_lstm_5/while/Identity_4Identity<bidirectional_5/backward_lstm_5/while/lstm_cell_38/mul_2:z:0+^bidirectional_5/backward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ś
0bidirectional_5/backward_lstm_5/while/Identity_5Identity<bidirectional_5/backward_lstm_5/while/lstm_cell_38/add_1:z:0+^bidirectional_5/backward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š
*bidirectional_5/backward_lstm_5/while/NoOpNoOpJ^bidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOpI^bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOpK^bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "°
Ubidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_strided_slice_1Wbidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_strided_slice_1_0"i
.bidirectional_5_backward_lstm_5_while_identity7bidirectional_5/backward_lstm_5/while/Identity:output:0"m
0bidirectional_5_backward_lstm_5_while_identity_19bidirectional_5/backward_lstm_5/while/Identity_1:output:0"m
0bidirectional_5_backward_lstm_5_while_identity_29bidirectional_5/backward_lstm_5/while/Identity_2:output:0"m
0bidirectional_5_backward_lstm_5_while_identity_39bidirectional_5/backward_lstm_5/while/Identity_3:output:0"m
0bidirectional_5_backward_lstm_5_while_identity_49bidirectional_5/backward_lstm_5/while/Identity_4:output:0"m
0bidirectional_5_backward_lstm_5_while_identity_59bidirectional_5/backward_lstm_5/while/Identity_5:output:0"Ŗ
Rbidirectional_5_backward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resourceTbidirectional_5_backward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0"¬
Sbidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resourceUbidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0"Ø
Qbidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resourceSbidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0"Ŗ
bidirectional_5_backward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_backward_lstm_5_tensorarrayunstack_tensorlistfromtensorbidirectional_5_backward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2
Ibidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOpIbidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp2
Hbidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOpHbidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp2
Jbidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOpJbidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp: 
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
§K
²
 forward_lstm_5_while_body_767125:
6forward_lstm_5_while_forward_lstm_5_while_loop_counter@
<forward_lstm_5_while_forward_lstm_5_while_maximum_iterations$
 forward_lstm_5_while_placeholder&
"forward_lstm_5_while_placeholder_1&
"forward_lstm_5_while_placeholder_2&
"forward_lstm_5_while_placeholder_39
5forward_lstm_5_while_forward_lstm_5_strided_slice_1_0u
qforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0U
Bforward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0:	X
Dforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0:
R
Cforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0:	!
forward_lstm_5_while_identity#
forward_lstm_5_while_identity_1#
forward_lstm_5_while_identity_2#
forward_lstm_5_while_identity_3#
forward_lstm_5_while_identity_4#
forward_lstm_5_while_identity_57
3forward_lstm_5_while_forward_lstm_5_strided_slice_1s
oforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensorS
@forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource:	V
Bforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource:
P
Aforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource:	¢8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp¢7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp¢9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp
Fforward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ń
8forward_lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0 forward_lstm_5_while_placeholderOforward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0»
7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOpBforward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ē
(forward_lstm_5/while/lstm_cell_37/MatMulMatMul?forward_lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0?forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ą
9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOpDforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ī
*forward_lstm_5/while/lstm_cell_37/MatMul_1MatMul"forward_lstm_5_while_placeholder_2Aforward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ė
%forward_lstm_5/while/lstm_cell_37/addAddV22forward_lstm_5/while/lstm_cell_37/MatMul:product:04forward_lstm_5/while/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’¹
8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOpCforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ō
)forward_lstm_5/while/lstm_cell_37/BiasAddBiasAdd)forward_lstm_5/while/lstm_cell_37/add:z:0@forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’s
1forward_lstm_5/while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
'forward_lstm_5/while/lstm_cell_37/splitSplit:forward_lstm_5/while/lstm_cell_37/split/split_dim:output:02forward_lstm_5/while/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
)forward_lstm_5/while/lstm_cell_37/SigmoidSigmoid0forward_lstm_5/while/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
+forward_lstm_5/while/lstm_cell_37/Sigmoid_1Sigmoid0forward_lstm_5/while/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’“
%forward_lstm_5/while/lstm_cell_37/mulMul/forward_lstm_5/while/lstm_cell_37/Sigmoid_1:y:0"forward_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
&forward_lstm_5/while/lstm_cell_37/ReluRelu0forward_lstm_5/while/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ę
'forward_lstm_5/while/lstm_cell_37/mul_1Mul-forward_lstm_5/while/lstm_cell_37/Sigmoid:y:04forward_lstm_5/while/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’»
'forward_lstm_5/while/lstm_cell_37/add_1AddV2)forward_lstm_5/while/lstm_cell_37/mul:z:0+forward_lstm_5/while/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
+forward_lstm_5/while/lstm_cell_37/Sigmoid_2Sigmoid0forward_lstm_5/while/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
(forward_lstm_5/while/lstm_cell_37/Relu_1Relu+forward_lstm_5/while/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ź
'forward_lstm_5/while/lstm_cell_37/mul_2Mul/forward_lstm_5/while/lstm_cell_37/Sigmoid_2:y:06forward_lstm_5/while/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
?forward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ©
9forward_lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"forward_lstm_5_while_placeholder_1Hforward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/index:output:0+forward_lstm_5/while/lstm_cell_37/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ\
forward_lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_5/while/addAddV2 forward_lstm_5_while_placeholder#forward_lstm_5/while/add/y:output:0*
T0*
_output_shapes
: ^
forward_lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :£
forward_lstm_5/while/add_1AddV26forward_lstm_5_while_forward_lstm_5_while_loop_counter%forward_lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_5/while/IdentityIdentityforward_lstm_5/while/add_1:z:0^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: ¦
forward_lstm_5/while/Identity_1Identity<forward_lstm_5_while_forward_lstm_5_while_maximum_iterations^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: 
forward_lstm_5/while/Identity_2Identityforward_lstm_5/while/add:z:0^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: ³
forward_lstm_5/while/Identity_3IdentityIforward_lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: §
forward_lstm_5/while/Identity_4Identity+forward_lstm_5/while/lstm_cell_37/mul_2:z:0^forward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’§
forward_lstm_5/while/Identity_5Identity+forward_lstm_5/while/lstm_cell_37/add_1:z:0^forward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
forward_lstm_5/while/NoOpNoOp9^forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp8^forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp:^forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "l
3forward_lstm_5_while_forward_lstm_5_strided_slice_15forward_lstm_5_while_forward_lstm_5_strided_slice_1_0"G
forward_lstm_5_while_identity&forward_lstm_5/while/Identity:output:0"K
forward_lstm_5_while_identity_1(forward_lstm_5/while/Identity_1:output:0"K
forward_lstm_5_while_identity_2(forward_lstm_5/while/Identity_2:output:0"K
forward_lstm_5_while_identity_3(forward_lstm_5/while/Identity_3:output:0"K
forward_lstm_5_while_identity_4(forward_lstm_5/while/Identity_4:output:0"K
forward_lstm_5_while_identity_5(forward_lstm_5/while/Identity_5:output:0"
Aforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resourceCforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0"
Bforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resourceDforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0"
@forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resourceBforward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0"ä
oforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensorqforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2t
8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp2r
7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp2v
9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp: 
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
ĶM
¦
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_770417
inputs_0>
+lstm_cell_38_matmul_readvariableop_resource:	A
-lstm_cell_38_matmul_1_readvariableop_resource:
;
,lstm_cell_38_biasadd_readvariableop_resource:	
identity¢#lstm_cell_38/BiasAdd/ReadVariableOp¢"lstm_cell_38/MatMul/ReadVariableOp¢$lstm_cell_38/MatMul_1/ReadVariableOp¢while=
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
"lstm_cell_38/MatMul/ReadVariableOpReadVariableOp+lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_38/MatMulMatMulstrided_slice_2:output:0*lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_38_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_38/MatMul_1MatMulzeros:output:0,lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_38/addAddV2lstm_cell_38/MatMul:product:0lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_38/BiasAddBiasAddlstm_cell_38/add:z:0+lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_38/splitSplit%lstm_cell_38/split/split_dim:output:0lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_38/SigmoidSigmoidlstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_38/Sigmoid_1Sigmoidlstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_38/mulMullstm_cell_38/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_38/ReluRelulstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_38/mul_1Mullstm_cell_38/Sigmoid:y:0lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_38/add_1AddV2lstm_cell_38/mul:z:0lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_38/Sigmoid_2Sigmoidlstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_38/Relu_1Relulstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_38/mul_2Mullstm_cell_38/Sigmoid_2:y:0!lstm_cell_38/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_38_matmul_readvariableop_resource-lstm_cell_38_matmul_1_readvariableop_resource,lstm_cell_38_biasadd_readvariableop_resource*
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
bodyR
while_body_770332*
condR
while_cond_770331*M
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
NoOpNoOp$^lstm_cell_38/BiasAdd/ReadVariableOp#^lstm_cell_38/MatMul/ReadVariableOp%^lstm_cell_38/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_38/BiasAdd/ReadVariableOp#lstm_cell_38/BiasAdd/ReadVariableOp2H
"lstm_cell_38/MatMul/ReadVariableOp"lstm_cell_38/MatMul/ReadVariableOp2L
$lstm_cell_38/MatMul_1/ReadVariableOp$lstm_cell_38/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
Ē9
Ņ
while_body_766384
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_38_matmul_readvariableop_resource_0:	I
5while_lstm_cell_38_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_38_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_38_matmul_readvariableop_resource:	G
3while_lstm_cell_38_matmul_1_readvariableop_resource:
A
2while_lstm_cell_38_biasadd_readvariableop_resource:	¢)while/lstm_cell_38/BiasAdd/ReadVariableOp¢(while/lstm_cell_38/MatMul/ReadVariableOp¢*while/lstm_cell_38/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
(while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_38/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_38_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_38/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/addAddV2#while/lstm_cell_38/MatMul:product:0%while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_38/BiasAddBiasAddwhile/lstm_cell_38/add:z:01while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_38/splitSplit+while/lstm_cell_38/split/split_dim:output:0#while/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_38/SigmoidSigmoid!while/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_38/Sigmoid_1Sigmoid!while/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/mulMul while/lstm_cell_38/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_38/ReluRelu!while/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/mul_1Mulwhile/lstm_cell_38/Sigmoid:y:0%while/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/add_1AddV2while/lstm_cell_38/mul:z:0while/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_38/Sigmoid_2Sigmoid!while/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_38/Relu_1Reluwhile/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_38/mul_2Mul while/lstm_cell_38/Sigmoid_2:y:0'while/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_38/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_38/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_38/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_38/BiasAdd/ReadVariableOp)^while/lstm_cell_38/MatMul/ReadVariableOp+^while/lstm_cell_38/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_38_biasadd_readvariableop_resource4while_lstm_cell_38_biasadd_readvariableop_resource_0"l
3while_lstm_cell_38_matmul_1_readvariableop_resource5while_lstm_cell_38_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_38_matmul_readvariableop_resource3while_lstm_cell_38_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_38/BiasAdd/ReadVariableOp)while/lstm_cell_38/BiasAdd/ReadVariableOp2T
(while/lstm_cell_38/MatMul/ReadVariableOp(while/lstm_cell_38/MatMul/ReadVariableOp2X
*while/lstm_cell_38/MatMul_1/ReadVariableOp*while/lstm_cell_38/MatMul_1/ReadVariableOp: 
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
¹
Ć
while_cond_769848
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_769848___redundant_placeholder04
0while_while_cond_769848___redundant_placeholder14
0while_while_cond_769848___redundant_placeholder24
0while_while_cond_769848___redundant_placeholder3
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

Æ
0bidirectional_5_forward_lstm_5_while_cond_767949Z
Vbidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_while_loop_counter`
\bidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_while_maximum_iterations4
0bidirectional_5_forward_lstm_5_while_placeholder6
2bidirectional_5_forward_lstm_5_while_placeholder_16
2bidirectional_5_forward_lstm_5_while_placeholder_26
2bidirectional_5_forward_lstm_5_while_placeholder_3\
Xbidirectional_5_forward_lstm_5_while_less_bidirectional_5_forward_lstm_5_strided_slice_1r
nbidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_while_cond_767949___redundant_placeholder0r
nbidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_while_cond_767949___redundant_placeholder1r
nbidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_while_cond_767949___redundant_placeholder2r
nbidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_while_cond_767949___redundant_placeholder31
-bidirectional_5_forward_lstm_5_while_identity
Ž
)bidirectional_5/forward_lstm_5/while/LessLess0bidirectional_5_forward_lstm_5_while_placeholderXbidirectional_5_forward_lstm_5_while_less_bidirectional_5_forward_lstm_5_strided_slice_1*
T0*
_output_shapes
: 
-bidirectional_5/forward_lstm_5/while/IdentityIdentity-bidirectional_5/forward_lstm_5/while/Less:z:0*
T0
*
_output_shapes
: "g
-bidirectional_5_forward_lstm_5_while_identity6bidirectional_5/forward_lstm_5/while/Identity:output:0*(
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
ś

!backward_lstm_5_while_cond_768478<
8backward_lstm_5_while_backward_lstm_5_while_loop_counterB
>backward_lstm_5_while_backward_lstm_5_while_maximum_iterations%
!backward_lstm_5_while_placeholder'
#backward_lstm_5_while_placeholder_1'
#backward_lstm_5_while_placeholder_2'
#backward_lstm_5_while_placeholder_3>
:backward_lstm_5_while_less_backward_lstm_5_strided_slice_1T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_768478___redundant_placeholder0T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_768478___redundant_placeholder1T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_768478___redundant_placeholder2T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_768478___redundant_placeholder3"
backward_lstm_5_while_identity
¢
backward_lstm_5/while/LessLess!backward_lstm_5_while_placeholder:backward_lstm_5_while_less_backward_lstm_5_strided_slice_1*
T0*
_output_shapes
: k
backward_lstm_5/while/IdentityIdentitybackward_lstm_5/while/Less:z:0*
T0
*
_output_shapes
: "I
backward_lstm_5_while_identity'backward_lstm_5/while/Identity:output:0*(
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
éŌ
Ē
!__inference__wrapped_model_765266
lambda_5_input
omodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource:	
qmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource:

pmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource:	
pmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource:	
rmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource:

qmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource:	^
Kmodel_9_bidirectionallstm_univariate_dense_5_matmul_readvariableop_resource:	Z
Lmodel_9_bidirectionallstm_univariate_dense_5_biasadd_readvariableop_resource:
identity¢hmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp¢gmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp¢imodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp¢Jmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while¢gmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp¢fmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp¢hmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp¢Imodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while¢Cmodel_9_bidirectionalLSTM_univariate/dense_5/BiasAdd/ReadVariableOp¢Bmodel_9_bidirectionalLSTM_univariate/dense_5/MatMul/ReadVariableOp
<model_9_bidirectionalLSTM_univariate/lambda_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’Ó
8model_9_bidirectionalLSTM_univariate/lambda_5/ExpandDims
ExpandDimslambda_5_inputEmodel_9_bidirectionalLSTM_univariate/lambda_5/ExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’ŗ
Imodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/ShapeShapeAmodel_9_bidirectionalLSTM_univariate/lambda_5/ExpandDims:output:0*
T0*
_output_shapes
:”
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: £
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:£
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:„
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_sliceStridedSliceRmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/Shape:output:0`model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice/stack:output:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice/stack_1:output:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :æ
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/zeros/packedPackZmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice:output:0[model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
Omodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¹
Imodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/zerosFillYmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/zeros/packed:output:0Xmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ć
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/zeros_1/packedPackZmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    æ
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/zeros_1Fill[model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/zeros_1/packed:output:0Zmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’§
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          °
Mmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/transpose	TransposeAmodel_9_bidirectionalLSTM_univariate/lambda_5/ExpandDims:output:0[model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’Ģ
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/Shape_1ShapeQmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/transpose:y:0*
T0*
_output_shapes
:£
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: „
[model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:„
[model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Æ
Smodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_1StridedSliceTmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/Shape_1:output:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_1/stack:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_1/stack_1:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskŖ
_model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/TensorArrayV2TensorListReservehmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/TensorArrayV2/element_shape:output:0\model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅŹ
ymodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ­
kmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorQmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/transpose:y:0model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ£
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: „
[model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:„
[model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
Smodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_2StridedSliceQmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/transpose:y:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_2/stack:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_2/stack_1:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
fmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOpReadVariableOpomodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ā
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/MatMulMatMul\model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_2:output:0nmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
hmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOpqmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ü
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1MatMulRmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/zeros:output:0pmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ų
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/addAddV2amodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul:product:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
gmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOppmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0į
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/BiasAddBiasAddXmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/add:z:0omodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
`model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :­
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/splitSplitimodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/split/split_dim:output:0amodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split÷
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/SigmoidSigmoid_model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’ł
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/Sigmoid_1Sigmoid_model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ä
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/mulMul^model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/Sigmoid_1:y:0Tmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’ń
Umodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/ReluRelu_model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ó
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/mul_1Mul\model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/Sigmoid:y:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Č
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/add_1AddV2Xmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/mul:z:0Zmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ł
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/Sigmoid_2Sigmoid_model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’ī
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/Relu_1ReluZmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’×
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/mul_2Mul^model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/Sigmoid_2:y:0emodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’²
amodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¢
`model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :
Smodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/TensorArrayV2_1TensorListReservejmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/TensorArrayV2_1/element_shape:output:0imodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Hmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : §
\model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ¾
Imodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/whileWhile_model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/loop_counter:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/maximum_iterations:output:0Qmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/time:output:0\model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/TensorArrayV2_1:handle:0Rmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/zeros:output:0Tmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/zeros_1:output:0\model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_1:output:0{model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0omodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_lstm_cell_37_matmul_readvariableop_resourceqmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resourcepmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *a
bodyYRW
Umodel_9_bidirectionalLSTM_univariate_bidirectional_5_forward_lstm_5_while_body_765030*a
condYRW
Umodel_9_bidirectionalLSTM_univariate_bidirectional_5_forward_lstm_5_while_cond_765029*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations Å
tmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   £
fmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/TensorArrayV2Stack/TensorListStackTensorListStackRmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while:output:3}model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elements¬
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’„
[model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: „
[model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ü
Smodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_3StridedSliceomodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_3/stack:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_3/stack_1:output:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask©
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ć
Omodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/transpose_1	Transposeomodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0]model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’
Kmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    »
Jmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/ShapeShapeAmodel_9_bidirectionalLSTM_univariate/lambda_5/ExpandDims:output:0*
T0*
_output_shapes
:¢
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ¤
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¤
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ŗ
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_sliceStridedSliceSmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/Shape:output:0amodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice/stack:output:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice/stack_1:output:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
Smodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ā
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/zeros/packedPack[model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice:output:0\model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    ¼
Jmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/zerosFillZmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/zeros/packed:output:0Ymodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’
Umodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ę
Smodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/zeros_1/packedPack[model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice:output:0^model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ā
Lmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/zeros_1Fill\model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/zeros_1/packed:output:0[model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’Ø
Smodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ²
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/transpose	TransposeAmodel_9_bidirectionalLSTM_univariate/lambda_5/ExpandDims:output:0\model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’Ī
Lmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/Shape_1ShapeRmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/transpose:y:0*
T0*
_output_shapes
:¤
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: ¦
\model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¦
\model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:“
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_1StridedSliceUmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/Shape_1:output:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_1/stack:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_1/stack_1:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask«
`model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/TensorArrayV2TensorListReserveimodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/TensorArrayV2/element_shape:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Smodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Ć
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/ReverseV2	ReverseV2Rmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/transpose:y:0\model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/ReverseV2/axis:output:0*
T0*+
_output_shapes
:’’’’’’’’’Ė
zmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   µ
lmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorWmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/ReverseV2:output:0model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ¤
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: ¦
\model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:¦
\model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ā
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_2StridedSliceRmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/transpose:y:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_2/stack:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_2/stack_1:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
gmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOpReadVariableOppmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0å
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/MatMulMatMul]model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_2:output:0omodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
imodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOprmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0ß
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1MatMulSmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/zeros:output:0qmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ū
Umodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/addAddV2bmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul:product:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
hmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOpqmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ä
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/BiasAddBiasAddYmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/add:z:0pmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’£
amodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :°
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/splitSplitjmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/split/split_dim:output:0bmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitł
Ymodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/SigmoidSigmoid`model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’ū
[model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/Sigmoid_1Sigmoid`model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ē
Umodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/mulMul_model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/Sigmoid_1:y:0Umodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’ó
Vmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/ReluRelu`model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ö
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/mul_1Mul]model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/Sigmoid:y:0dmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Ė
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/add_1AddV2Ymodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/mul:z:0[model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ū
[model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/Sigmoid_2Sigmoid`model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’š
Xmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/Relu_1Relu[model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ś
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/mul_2Mul_model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/Sigmoid_2:y:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’³
bmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   £
amodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/TensorArrayV2_1TensorListReservekmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/TensorArrayV2_1/element_shape:output:0jmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Imodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : Ø
]model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
Wmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ģ
Jmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/whileWhile`model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/loop_counter:output:0fmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/maximum_iterations:output:0Rmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/time:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/TensorArrayV2_1:handle:0Smodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/zeros:output:0Umodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/zeros_1:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_1:output:0|model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0pmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_lstm_cell_38_matmul_readvariableop_resourcermodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resourceqmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *b
bodyZRX
Vmodel_9_bidirectionalLSTM_univariate_bidirectional_5_backward_lstm_5_while_body_765173*b
condZRX
Vmodel_9_bidirectionalLSTM_univariate_bidirectional_5_backward_lstm_5_while_cond_765172*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations Ę
umodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
gmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/TensorArrayV2Stack/TensorListStackTensorListStackSmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while:output:3~model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elements­
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’¦
\model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: ¦
\model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:į
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_3StridedSlicepmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0cmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_3/stack:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_3/stack_1:output:0emodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maskŖ
Umodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ę
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/transpose_1	Transposepmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0^model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’ 
Lmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    
@model_9_bidirectionalLSTM_univariate/bidirectional_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :
;model_9_bidirectionalLSTM_univariate/bidirectional_5/concatConcatV2\model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/strided_slice_3:output:0]model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/strided_slice_3:output:0Imodel_9_bidirectionalLSTM_univariate/bidirectional_5/concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’Ļ
Bmodel_9_bidirectionalLSTM_univariate/dense_5/MatMul/ReadVariableOpReadVariableOpKmodel_9_bidirectionallstm_univariate_dense_5_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
3model_9_bidirectionalLSTM_univariate/dense_5/MatMulMatMulDmodel_9_bidirectionalLSTM_univariate/bidirectional_5/concat:output:0Jmodel_9_bidirectionalLSTM_univariate/dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’Ģ
Cmodel_9_bidirectionalLSTM_univariate/dense_5/BiasAdd/ReadVariableOpReadVariableOpLmodel_9_bidirectionallstm_univariate_dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0ż
4model_9_bidirectionalLSTM_univariate/dense_5/BiasAddBiasAdd=model_9_bidirectionalLSTM_univariate/dense_5/MatMul:product:0Kmodel_9_bidirectionalLSTM_univariate/dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
IdentityIdentity=model_9_bidirectionalLSTM_univariate/dense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’é
NoOpNoOpi^model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOph^model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOpj^model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOpK^model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/whileh^model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOpg^model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOpi^model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOpJ^model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/whileD^model_9_bidirectionalLSTM_univariate/dense_5/BiasAdd/ReadVariableOpC^model_9_bidirectionalLSTM_univariate/dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 2Ō
hmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOphmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp2Ņ
gmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOpgmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp2Ö
imodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOpimodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp2
Jmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/whileJmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while2Ņ
gmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOpgmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp2Š
fmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOpfmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp2Ō
hmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOphmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp2
Imodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/whileImodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while2
Cmodel_9_bidirectionalLSTM_univariate/dense_5/BiasAdd/ReadVariableOpCmodel_9_bidirectionalLSTM_univariate/dense_5/BiasAdd/ReadVariableOp2
Bmodel_9_bidirectionalLSTM_univariate/dense_5/MatMul/ReadVariableOpBmodel_9_bidirectionalLSTM_univariate/dense_5/MatMul/ReadVariableOp:W S
'
_output_shapes
:’’’’’’’’’
(
_user_specified_namelambda_5_input
§K
²
 forward_lstm_5_while_body_769206:
6forward_lstm_5_while_forward_lstm_5_while_loop_counter@
<forward_lstm_5_while_forward_lstm_5_while_maximum_iterations$
 forward_lstm_5_while_placeholder&
"forward_lstm_5_while_placeholder_1&
"forward_lstm_5_while_placeholder_2&
"forward_lstm_5_while_placeholder_39
5forward_lstm_5_while_forward_lstm_5_strided_slice_1_0u
qforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0U
Bforward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0:	X
Dforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0:
R
Cforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0:	!
forward_lstm_5_while_identity#
forward_lstm_5_while_identity_1#
forward_lstm_5_while_identity_2#
forward_lstm_5_while_identity_3#
forward_lstm_5_while_identity_4#
forward_lstm_5_while_identity_57
3forward_lstm_5_while_forward_lstm_5_strided_slice_1s
oforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensorS
@forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource:	V
Bforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource:
P
Aforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource:	¢8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp¢7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp¢9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp
Fforward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ń
8forward_lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0 forward_lstm_5_while_placeholderOforward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0»
7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOpBforward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ē
(forward_lstm_5/while/lstm_cell_37/MatMulMatMul?forward_lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0?forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ą
9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOpDforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ī
*forward_lstm_5/while/lstm_cell_37/MatMul_1MatMul"forward_lstm_5_while_placeholder_2Aforward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ė
%forward_lstm_5/while/lstm_cell_37/addAddV22forward_lstm_5/while/lstm_cell_37/MatMul:product:04forward_lstm_5/while/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’¹
8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOpCforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ō
)forward_lstm_5/while/lstm_cell_37/BiasAddBiasAdd)forward_lstm_5/while/lstm_cell_37/add:z:0@forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’s
1forward_lstm_5/while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
'forward_lstm_5/while/lstm_cell_37/splitSplit:forward_lstm_5/while/lstm_cell_37/split/split_dim:output:02forward_lstm_5/while/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
)forward_lstm_5/while/lstm_cell_37/SigmoidSigmoid0forward_lstm_5/while/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
+forward_lstm_5/while/lstm_cell_37/Sigmoid_1Sigmoid0forward_lstm_5/while/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’“
%forward_lstm_5/while/lstm_cell_37/mulMul/forward_lstm_5/while/lstm_cell_37/Sigmoid_1:y:0"forward_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
&forward_lstm_5/while/lstm_cell_37/ReluRelu0forward_lstm_5/while/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ę
'forward_lstm_5/while/lstm_cell_37/mul_1Mul-forward_lstm_5/while/lstm_cell_37/Sigmoid:y:04forward_lstm_5/while/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’»
'forward_lstm_5/while/lstm_cell_37/add_1AddV2)forward_lstm_5/while/lstm_cell_37/mul:z:0+forward_lstm_5/while/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
+forward_lstm_5/while/lstm_cell_37/Sigmoid_2Sigmoid0forward_lstm_5/while/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
(forward_lstm_5/while/lstm_cell_37/Relu_1Relu+forward_lstm_5/while/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ź
'forward_lstm_5/while/lstm_cell_37/mul_2Mul/forward_lstm_5/while/lstm_cell_37/Sigmoid_2:y:06forward_lstm_5/while/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
?forward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ©
9forward_lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"forward_lstm_5_while_placeholder_1Hforward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/index:output:0+forward_lstm_5/while/lstm_cell_37/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ\
forward_lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_5/while/addAddV2 forward_lstm_5_while_placeholder#forward_lstm_5/while/add/y:output:0*
T0*
_output_shapes
: ^
forward_lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :£
forward_lstm_5/while/add_1AddV26forward_lstm_5_while_forward_lstm_5_while_loop_counter%forward_lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_5/while/IdentityIdentityforward_lstm_5/while/add_1:z:0^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: ¦
forward_lstm_5/while/Identity_1Identity<forward_lstm_5_while_forward_lstm_5_while_maximum_iterations^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: 
forward_lstm_5/while/Identity_2Identityforward_lstm_5/while/add:z:0^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: ³
forward_lstm_5/while/Identity_3IdentityIforward_lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: §
forward_lstm_5/while/Identity_4Identity+forward_lstm_5/while/lstm_cell_37/mul_2:z:0^forward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’§
forward_lstm_5/while/Identity_5Identity+forward_lstm_5/while/lstm_cell_37/add_1:z:0^forward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
forward_lstm_5/while/NoOpNoOp9^forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp8^forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp:^forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "l
3forward_lstm_5_while_forward_lstm_5_strided_slice_15forward_lstm_5_while_forward_lstm_5_strided_slice_1_0"G
forward_lstm_5_while_identity&forward_lstm_5/while/Identity:output:0"K
forward_lstm_5_while_identity_1(forward_lstm_5/while/Identity_1:output:0"K
forward_lstm_5_while_identity_2(forward_lstm_5/while/Identity_2:output:0"K
forward_lstm_5_while_identity_3(forward_lstm_5/while/Identity_3:output:0"K
forward_lstm_5_while_identity_4(forward_lstm_5/while/Identity_4:output:0"K
forward_lstm_5_while_identity_5(forward_lstm_5/while/Identity_5:output:0"
Aforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resourceCforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0"
Bforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resourceDforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0"
@forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resourceBforward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0"ä
oforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensorqforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2t
8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp2r
7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp2v
9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp: 
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
Ø
E
)__inference_lambda_5_layer_call_fn_768196

inputs
identity¶
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
GPU2*0J 8 *M
fHRF
D__inference_lambda_5_layer_call_and_return_conditional_losses_767384d
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

²
"__inference__traced_restore_771126
file_prefix2
assignvariableop_dense_5_kernel:	-
assignvariableop_1_dense_5_bias:X
Eassignvariableop_2_bidirectional_5_forward_lstm_5_lstm_cell_37_kernel:	c
Oassignvariableop_3_bidirectional_5_forward_lstm_5_lstm_cell_37_recurrent_kernel:
R
Cassignvariableop_4_bidirectional_5_forward_lstm_5_lstm_cell_37_bias:	Y
Fassignvariableop_5_bidirectional_5_backward_lstm_5_lstm_cell_38_kernel:	d
Passignvariableop_6_bidirectional_5_backward_lstm_5_lstm_cell_38_recurrent_kernel:
S
Dassignvariableop_7_bidirectional_5_backward_lstm_5_lstm_cell_38_bias:	&
assignvariableop_8_adam_iter:	 (
assignvariableop_9_adam_beta_1: )
assignvariableop_10_adam_beta_2: (
assignvariableop_11_adam_decay: 0
&assignvariableop_12_adam_learning_rate: #
assignvariableop_13_total: #
assignvariableop_14_count: <
)assignvariableop_15_adam_dense_5_kernel_m:	5
'assignvariableop_16_adam_dense_5_bias_m:`
Massignvariableop_17_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_kernel_m:	k
Wassignvariableop_18_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_recurrent_kernel_m:
Z
Kassignvariableop_19_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_bias_m:	a
Nassignvariableop_20_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_kernel_m:	l
Xassignvariableop_21_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_recurrent_kernel_m:
[
Lassignvariableop_22_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_bias_m:	<
)assignvariableop_23_adam_dense_5_kernel_v:	5
'assignvariableop_24_adam_dense_5_bias_v:`
Massignvariableop_25_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_kernel_v:	k
Wassignvariableop_26_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_recurrent_kernel_v:
Z
Kassignvariableop_27_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_bias_v:	a
Nassignvariableop_28_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_kernel_v:	l
Xassignvariableop_29_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_recurrent_kernel_v:
[
Lassignvariableop_30_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_bias_v:	
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
:
AssignVariableOpAssignVariableOpassignvariableop_dense_5_kernelIdentity:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_1IdentityRestoreV2:tensors:1"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_1AssignVariableOpassignvariableop_1_dense_5_biasIdentity_1:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_2IdentityRestoreV2:tensors:2"/device:CPU:0*
T0*
_output_shapes
:“
AssignVariableOp_2AssignVariableOpEassignvariableop_2_bidirectional_5_forward_lstm_5_lstm_cell_37_kernelIdentity_2:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_3IdentityRestoreV2:tensors:3"/device:CPU:0*
T0*
_output_shapes
:¾
AssignVariableOp_3AssignVariableOpOassignvariableop_3_bidirectional_5_forward_lstm_5_lstm_cell_37_recurrent_kernelIdentity_3:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_4IdentityRestoreV2:tensors:4"/device:CPU:0*
T0*
_output_shapes
:²
AssignVariableOp_4AssignVariableOpCassignvariableop_4_bidirectional_5_forward_lstm_5_lstm_cell_37_biasIdentity_4:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_5IdentityRestoreV2:tensors:5"/device:CPU:0*
T0*
_output_shapes
:µ
AssignVariableOp_5AssignVariableOpFassignvariableop_5_bidirectional_5_backward_lstm_5_lstm_cell_38_kernelIdentity_5:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_6IdentityRestoreV2:tensors:6"/device:CPU:0*
T0*
_output_shapes
:æ
AssignVariableOp_6AssignVariableOpPassignvariableop_6_bidirectional_5_backward_lstm_5_lstm_cell_38_recurrent_kernelIdentity_6:output:0"/device:CPU:0*
_output_shapes
 *
dtype0]

Identity_7IdentityRestoreV2:tensors:7"/device:CPU:0*
T0*
_output_shapes
:³
AssignVariableOp_7AssignVariableOpDassignvariableop_7_bidirectional_5_backward_lstm_5_lstm_cell_38_biasIdentity_7:output:0"/device:CPU:0*
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
:
AssignVariableOp_15AssignVariableOp)assignvariableop_15_adam_dense_5_kernel_mIdentity_15:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_16IdentityRestoreV2:tensors:16"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_16AssignVariableOp'assignvariableop_16_adam_dense_5_bias_mIdentity_16:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_17IdentityRestoreV2:tensors:17"/device:CPU:0*
T0*
_output_shapes
:¾
AssignVariableOp_17AssignVariableOpMassignvariableop_17_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_kernel_mIdentity_17:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_18IdentityRestoreV2:tensors:18"/device:CPU:0*
T0*
_output_shapes
:Č
AssignVariableOp_18AssignVariableOpWassignvariableop_18_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_recurrent_kernel_mIdentity_18:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_19IdentityRestoreV2:tensors:19"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_19AssignVariableOpKassignvariableop_19_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_bias_mIdentity_19:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_20IdentityRestoreV2:tensors:20"/device:CPU:0*
T0*
_output_shapes
:æ
AssignVariableOp_20AssignVariableOpNassignvariableop_20_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_kernel_mIdentity_20:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_21IdentityRestoreV2:tensors:21"/device:CPU:0*
T0*
_output_shapes
:É
AssignVariableOp_21AssignVariableOpXassignvariableop_21_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_recurrent_kernel_mIdentity_21:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_22IdentityRestoreV2:tensors:22"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_22AssignVariableOpLassignvariableop_22_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_bias_mIdentity_22:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_23IdentityRestoreV2:tensors:23"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_23AssignVariableOp)assignvariableop_23_adam_dense_5_kernel_vIdentity_23:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_24IdentityRestoreV2:tensors:24"/device:CPU:0*
T0*
_output_shapes
:
AssignVariableOp_24AssignVariableOp'assignvariableop_24_adam_dense_5_bias_vIdentity_24:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_25IdentityRestoreV2:tensors:25"/device:CPU:0*
T0*
_output_shapes
:¾
AssignVariableOp_25AssignVariableOpMassignvariableop_25_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_kernel_vIdentity_25:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_26IdentityRestoreV2:tensors:26"/device:CPU:0*
T0*
_output_shapes
:Č
AssignVariableOp_26AssignVariableOpWassignvariableop_26_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_recurrent_kernel_vIdentity_26:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_27IdentityRestoreV2:tensors:27"/device:CPU:0*
T0*
_output_shapes
:¼
AssignVariableOp_27AssignVariableOpKassignvariableop_27_adam_bidirectional_5_forward_lstm_5_lstm_cell_37_bias_vIdentity_27:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_28IdentityRestoreV2:tensors:28"/device:CPU:0*
T0*
_output_shapes
:æ
AssignVariableOp_28AssignVariableOpNassignvariableop_28_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_kernel_vIdentity_28:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_29IdentityRestoreV2:tensors:29"/device:CPU:0*
T0*
_output_shapes
:É
AssignVariableOp_29AssignVariableOpXassignvariableop_29_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_recurrent_kernel_vIdentity_29:output:0"/device:CPU:0*
_output_shapes
 *
dtype0_
Identity_30IdentityRestoreV2:tensors:30"/device:CPU:0*
T0*
_output_shapes
:½
AssignVariableOp_30AssignVariableOpLassignvariableop_30_adam_bidirectional_5_backward_lstm_5_lstm_cell_38_bias_vIdentity_30:output:0"/device:CPU:0*
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
»
Ć
1bidirectional_5_backward_lstm_5_while_cond_767794\
Xbidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_while_loop_counterb
^bidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_while_maximum_iterations5
1bidirectional_5_backward_lstm_5_while_placeholder7
3bidirectional_5_backward_lstm_5_while_placeholder_17
3bidirectional_5_backward_lstm_5_while_placeholder_27
3bidirectional_5_backward_lstm_5_while_placeholder_3^
Zbidirectional_5_backward_lstm_5_while_less_bidirectional_5_backward_lstm_5_strided_slice_1t
pbidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_while_cond_767794___redundant_placeholder0t
pbidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_while_cond_767794___redundant_placeholder1t
pbidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_while_cond_767794___redundant_placeholder2t
pbidirectional_5_backward_lstm_5_while_bidirectional_5_backward_lstm_5_while_cond_767794___redundant_placeholder32
.bidirectional_5_backward_lstm_5_while_identity
ā
*bidirectional_5/backward_lstm_5/while/LessLess1bidirectional_5_backward_lstm_5_while_placeholderZbidirectional_5_backward_lstm_5_while_less_bidirectional_5_backward_lstm_5_strided_slice_1*
T0*
_output_shapes
: 
.bidirectional_5/backward_lstm_5/while/IdentityIdentity.bidirectional_5/backward_lstm_5/while/Less:z:0*
T0
*
_output_shapes
: "i
.bidirectional_5_backward_lstm_5_while_identity7bidirectional_5/backward_lstm_5/while/Identity:output:0*(
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
Ø

Vmodel_9_bidirectionalLSTM_univariate_bidirectional_5_backward_lstm_5_while_body_765173§
¢model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_loop_counter­
Ømodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_maximum_iterationsZ
Vmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_placeholder\
Xmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_placeholder_1\
Xmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_placeholder_2\
Xmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_placeholder_3¦
”model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_strided_slice_1_0ā
Żmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0
xmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0:	
zmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0:

ymodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0:	W
Smodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_identityY
Umodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_identity_1Y
Umodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_identity_2Y
Umodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_identity_3Y
Umodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_identity_4Y
Umodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_identity_5¤
model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_strided_slice_1ą
Ūmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor
vmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource:	
xmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource:

wmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource:	¢nmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp¢mmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp¢omodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOpĶ
|model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
nmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemŻmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0Vmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_placeholdermodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0§
mmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOpxmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0
^model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMulMatMulumodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0umodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¬
omodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOpzmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0š
`model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1MatMulXmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_placeholder_2wmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ķ
[model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/addAddV2hmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul:product:0jmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’„
nmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOpymodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ö
_model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAddBiasAdd_model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/add:z:0vmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’©
gmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Ā
]model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/splitSplitpmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/split/split_dim:output:0hmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
_model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/SigmoidSigmoidfmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
amodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/Sigmoid_1Sigmoidfmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ö
[model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/mulMulemodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/Sigmoid_1:y:0Xmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’’
\model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/ReluRelufmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’č
]model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/mul_1Mulcmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/Sigmoid:y:0jmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Ż
]model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/add_1AddV2_model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/mul:z:0amodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
amodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/Sigmoid_2Sigmoidfmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’ü
^model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/Relu_1Reluamodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ģ
]model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/mul_2Mulemodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/Sigmoid_2:y:0lmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’·
umodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : 
omodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemXmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_placeholder_1~model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/index:output:0amodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :«
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/addAddV2Vmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_placeholderYmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/add/y:output:0*
T0*
_output_shapes
: 
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ü
Pmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/add_1AddV2¢model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_loop_counter[model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: Ø
Smodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/IdentityIdentityTmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/add_1:z:0P^model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/NoOp*
T0*
_output_shapes
: ’
Umodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/Identity_1IdentityØmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_maximum_iterationsP^model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/NoOp*
T0*
_output_shapes
: Ø
Umodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/Identity_2IdentityRmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/add:z:0P^model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/NoOp*
T0*
_output_shapes
: Õ
Umodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/Identity_3Identitymodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0P^model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/NoOp*
T0*
_output_shapes
: É
Umodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/Identity_4Identityamodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/mul_2:z:0P^model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’É
Umodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/Identity_5Identityamodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/add_1:z:0P^model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’ä
Omodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/NoOpNoOpo^model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOpn^model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOpp^model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "³
Smodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_identity\model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/Identity:output:0"·
Umodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_identity_1^model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/Identity_1:output:0"·
Umodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_identity_2^model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/Identity_2:output:0"·
Umodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_identity_3^model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/Identity_3:output:0"·
Umodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_identity_4^model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/Identity_4:output:0"·
Umodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_identity_5^model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/Identity_5:output:0"ō
wmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resourceymodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0"ö
xmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resourcezmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0"ņ
vmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resourcexmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0"Ę
model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_strided_slice_1”model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_strided_slice_1_0"¾
Ūmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_tensorarrayunstack_tensorlistfromtensorŻmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2ą
nmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOpnmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp2Ž
mmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOpmmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp2ā
omodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOpomodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp: 
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
¹
Ć
while_cond_765540
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_765540___redundant_placeholder04
0while_while_cond_765540___redundant_placeholder14
0while_while_cond_765540___redundant_placeholder24
0while_while_cond_765540___redundant_placeholder3
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
ø¾
¹
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_768566
inputs_0M
:forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource:	P
<forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource:
J
;forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource:	N
;backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource:	Q
=backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource:
K
<backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource:	
identity¢3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp¢2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp¢4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp¢backward_lstm_5/while¢2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp¢1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp¢3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp¢forward_lstm_5/whileL
forward_lstm_5/ShapeShapeinputs_0*
T0*
_output_shapes
:l
"forward_lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
forward_lstm_5/strided_sliceStridedSliceforward_lstm_5/Shape:output:0+forward_lstm_5/strided_slice/stack:output:0-forward_lstm_5/strided_slice/stack_1:output:0-forward_lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B : 
forward_lstm_5/zeros/packedPack%forward_lstm_5/strided_slice:output:0&forward_lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_5/zerosFill$forward_lstm_5/zeros/packed:output:0#forward_lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’b
forward_lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :¤
forward_lstm_5/zeros_1/packedPack%forward_lstm_5/strided_slice:output:0(forward_lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
forward_lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
forward_lstm_5/zeros_1Fill&forward_lstm_5/zeros_1/packed:output:0%forward_lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’r
forward_lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm_5/transpose	Transposeinputs_0&forward_lstm_5/transpose/perm:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’b
forward_lstm_5/Shape_1Shapeforward_lstm_5/transpose:y:0*
T0*
_output_shapes
:n
$forward_lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
forward_lstm_5/strided_slice_1StridedSliceforward_lstm_5/Shape_1:output:0-forward_lstm_5/strided_slice_1/stack:output:0/forward_lstm_5/strided_slice_1/stack_1:output:0/forward_lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*forward_lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’į
forward_lstm_5/TensorArrayV2TensorListReserve3forward_lstm_5/TensorArrayV2/element_shape:output:0'forward_lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Dforward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’
6forward_lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_5/transpose:y:0Mforward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅn
$forward_lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
forward_lstm_5/strided_slice_2StridedSliceforward_lstm_5/transpose:y:0-forward_lstm_5/strided_slice_2/stack:output:0/forward_lstm_5/strided_slice_2/stack_1:output:0/forward_lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
shrink_axis_mask­
1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOpReadVariableOp:forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ć
"forward_lstm_5/lstm_cell_37/MatMulMatMul'forward_lstm_5/strided_slice_2:output:09forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’²
3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp<forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0½
$forward_lstm_5/lstm_cell_37/MatMul_1MatMulforward_lstm_5/zeros:output:0;forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¹
forward_lstm_5/lstm_cell_37/addAddV2,forward_lstm_5/lstm_cell_37/MatMul:product:0.forward_lstm_5/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’«
2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp;forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ā
#forward_lstm_5/lstm_cell_37/BiasAddBiasAdd#forward_lstm_5/lstm_cell_37/add:z:0:forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’m
+forward_lstm_5/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!forward_lstm_5/lstm_cell_37/splitSplit4forward_lstm_5/lstm_cell_37/split/split_dim:output:0,forward_lstm_5/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
#forward_lstm_5/lstm_cell_37/SigmoidSigmoid*forward_lstm_5/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
%forward_lstm_5/lstm_cell_37/Sigmoid_1Sigmoid*forward_lstm_5/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’„
forward_lstm_5/lstm_cell_37/mulMul)forward_lstm_5/lstm_cell_37/Sigmoid_1:y:0forward_lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
 forward_lstm_5/lstm_cell_37/ReluRelu*forward_lstm_5/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’“
!forward_lstm_5/lstm_cell_37/mul_1Mul'forward_lstm_5/lstm_cell_37/Sigmoid:y:0.forward_lstm_5/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’©
!forward_lstm_5/lstm_cell_37/add_1AddV2#forward_lstm_5/lstm_cell_37/mul:z:0%forward_lstm_5/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
%forward_lstm_5/lstm_cell_37/Sigmoid_2Sigmoid*forward_lstm_5/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
"forward_lstm_5/lstm_cell_37/Relu_1Relu%forward_lstm_5/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ø
!forward_lstm_5/lstm_cell_37/mul_2Mul)forward_lstm_5/lstm_cell_37/Sigmoid_2:y:00forward_lstm_5/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’}
,forward_lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   m
+forward_lstm_5/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ņ
forward_lstm_5/TensorArrayV2_1TensorListReserve5forward_lstm_5/TensorArrayV2_1/element_shape:output:04forward_lstm_5/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅU
forward_lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'forward_lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’c
!forward_lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ų
forward_lstm_5/whileWhile*forward_lstm_5/while/loop_counter:output:00forward_lstm_5/while/maximum_iterations:output:0forward_lstm_5/time:output:0'forward_lstm_5/TensorArrayV2_1:handle:0forward_lstm_5/zeros:output:0forward_lstm_5/zeros_1:output:0'forward_lstm_5/strided_slice_1:output:0Fforward_lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0:forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource<forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource;forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *,
body$R"
 forward_lstm_5_while_body_768336*,
cond$R"
 forward_lstm_5_while_cond_768335*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
?forward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
1forward_lstm_5/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_5/while:output:3Hforward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsw
$forward_lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’p
&forward_lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
forward_lstm_5/strided_slice_3StridedSlice:forward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0-forward_lstm_5/strided_slice_3/stack:output:0/forward_lstm_5/strided_slice_3/stack_1:output:0/forward_lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maskt
forward_lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ä
forward_lstm_5/transpose_1	Transpose:forward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0(forward_lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’j
forward_lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
backward_lstm_5/ShapeShapeinputs_0*
T0*
_output_shapes
:m
#backward_lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
backward_lstm_5/strided_sliceStridedSlicebackward_lstm_5/Shape:output:0,backward_lstm_5/strided_slice/stack:output:0.backward_lstm_5/strided_slice/stack_1:output:0.backward_lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :£
backward_lstm_5/zeros/packedPack&backward_lstm_5/strided_slice:output:0'backward_lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm_5/zerosFill%backward_lstm_5/zeros/packed:output:0$backward_lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
 backward_lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :§
backward_lstm_5/zeros_1/packedPack&backward_lstm_5/strided_slice:output:0)backward_lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
backward_lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
backward_lstm_5/zeros_1Fill'backward_lstm_5/zeros_1/packed:output:0&backward_lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
backward_lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ”
backward_lstm_5/transpose	Transposeinputs_0'backward_lstm_5/transpose/perm:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’d
backward_lstm_5/Shape_1Shapebackward_lstm_5/transpose:y:0*
T0*
_output_shapes
:o
%backward_lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
backward_lstm_5/strided_slice_1StridedSlice backward_lstm_5/Shape_1:output:0.backward_lstm_5/strided_slice_1/stack:output:00backward_lstm_5/strided_slice_1/stack_1:output:00backward_lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+backward_lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ä
backward_lstm_5/TensorArrayV2TensorListReserve4backward_lstm_5/TensorArrayV2/element_shape:output:0(backward_lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅh
backward_lstm_5/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ¶
backward_lstm_5/ReverseV2	ReverseV2backward_lstm_5/transpose:y:0'backward_lstm_5/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
Ebackward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’
7backward_lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"backward_lstm_5/ReverseV2:output:0Nbackward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅo
%backward_lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ā
backward_lstm_5/strided_slice_2StridedSlicebackward_lstm_5/transpose:y:0.backward_lstm_5/strided_slice_2/stack:output:00backward_lstm_5/strided_slice_2/stack_1:output:00backward_lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
shrink_axis_maskÆ
2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOpReadVariableOp;backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ę
#backward_lstm_5/lstm_cell_38/MatMulMatMul(backward_lstm_5/strided_slice_2:output:0:backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’“
4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp=backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ą
%backward_lstm_5/lstm_cell_38/MatMul_1MatMulbackward_lstm_5/zeros:output:0<backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¼
 backward_lstm_5/lstm_cell_38/addAddV2-backward_lstm_5/lstm_cell_38/MatMul:product:0/backward_lstm_5/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’­
3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp<backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Å
$backward_lstm_5/lstm_cell_38/BiasAddBiasAdd$backward_lstm_5/lstm_cell_38/add:z:0;backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’n
,backward_lstm_5/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
"backward_lstm_5/lstm_cell_38/splitSplit5backward_lstm_5/lstm_cell_38/split/split_dim:output:0-backward_lstm_5/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
$backward_lstm_5/lstm_cell_38/SigmoidSigmoid+backward_lstm_5/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
&backward_lstm_5/lstm_cell_38/Sigmoid_1Sigmoid+backward_lstm_5/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ø
 backward_lstm_5/lstm_cell_38/mulMul*backward_lstm_5/lstm_cell_38/Sigmoid_1:y:0 backward_lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
!backward_lstm_5/lstm_cell_38/ReluRelu+backward_lstm_5/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’·
"backward_lstm_5/lstm_cell_38/mul_1Mul(backward_lstm_5/lstm_cell_38/Sigmoid:y:0/backward_lstm_5/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¬
"backward_lstm_5/lstm_cell_38/add_1AddV2$backward_lstm_5/lstm_cell_38/mul:z:0&backward_lstm_5/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
&backward_lstm_5/lstm_cell_38/Sigmoid_2Sigmoid+backward_lstm_5/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
#backward_lstm_5/lstm_cell_38/Relu_1Relu&backward_lstm_5/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’»
"backward_lstm_5/lstm_cell_38/mul_2Mul*backward_lstm_5/lstm_cell_38/Sigmoid_2:y:01backward_lstm_5/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’~
-backward_lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   n
,backward_lstm_5/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :õ
backward_lstm_5/TensorArrayV2_1TensorListReserve6backward_lstm_5/TensorArrayV2_1/element_shape:output:05backward_lstm_5/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅV
backward_lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(backward_lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’d
"backward_lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ę
backward_lstm_5/whileWhile+backward_lstm_5/while/loop_counter:output:01backward_lstm_5/while/maximum_iterations:output:0backward_lstm_5/time:output:0(backward_lstm_5/TensorArrayV2_1:handle:0backward_lstm_5/zeros:output:0 backward_lstm_5/zeros_1:output:0(backward_lstm_5/strided_slice_1:output:0Gbackward_lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0;backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource=backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource<backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *-
body%R#
!backward_lstm_5_while_body_768479*-
cond%R#
!backward_lstm_5_while_cond_768478*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
@backward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
2backward_lstm_5/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_5/while:output:3Ibackward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsx
%backward_lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’q
'backward_lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ų
backward_lstm_5/strided_slice_3StridedSlice;backward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0.backward_lstm_5/strided_slice_3/stack:output:00backward_lstm_5/strided_slice_3/stack_1:output:00backward_lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_masku
 backward_lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ē
backward_lstm_5/transpose_1	Transpose;backward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0)backward_lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’k
backward_lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :·
concatConcatV2'forward_lstm_5/strided_slice_3:output:0(backward_lstm_5/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’¶
NoOpNoOp4^backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp3^backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp5^backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp^backward_lstm_5/while3^forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp2^forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp4^forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp^forward_lstm_5/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : : : : 2j
3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp2h
2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp2l
4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp2.
backward_lstm_5/whilebackward_lstm_5/while2h
2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp2f
1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp2j
3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp2,
forward_lstm_5/whileforward_lstm_5/while:g c
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
ł
÷
-__inference_lstm_cell_38_layer_call_fn_770826

inputs
states_0
states_1
unknown:	
	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall®
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
GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_765689p
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
ė

H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_765689

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
¹
Ć
while_cond_769993
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_769993___redundant_placeholder04
0while_while_cond_769993___redundant_placeholder14
0while_while_cond_769993___redundant_placeholder24
0while_while_cond_769993___redundant_placeholder3
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
»	

0__inference_bidirectional_5_layer_call_fn_768242
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall
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
GPU2*0J 8 *T
fORM
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_766667p
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
ĶM
¦
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_770270
inputs_0>
+lstm_cell_38_matmul_readvariableop_resource:	A
-lstm_cell_38_matmul_1_readvariableop_resource:
;
,lstm_cell_38_biasadd_readvariableop_resource:	
identity¢#lstm_cell_38/BiasAdd/ReadVariableOp¢"lstm_cell_38/MatMul/ReadVariableOp¢$lstm_cell_38/MatMul_1/ReadVariableOp¢while=
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
"lstm_cell_38/MatMul/ReadVariableOpReadVariableOp+lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_38/MatMulMatMulstrided_slice_2:output:0*lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_38_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_38/MatMul_1MatMulzeros:output:0,lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_38/addAddV2lstm_cell_38/MatMul:product:0lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_38/BiasAddBiasAddlstm_cell_38/add:z:0+lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_38/splitSplit%lstm_cell_38/split/split_dim:output:0lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_38/SigmoidSigmoidlstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_38/Sigmoid_1Sigmoidlstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_38/mulMullstm_cell_38/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_38/ReluRelulstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_38/mul_1Mullstm_cell_38/Sigmoid:y:0lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_38/add_1AddV2lstm_cell_38/mul:z:0lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_38/Sigmoid_2Sigmoidlstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_38/Relu_1Relulstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_38/mul_2Mullstm_cell_38/Sigmoid_2:y:0!lstm_cell_38/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_38_matmul_readvariableop_resource-lstm_cell_38_matmul_1_readvariableop_resource,lstm_cell_38_biasadd_readvariableop_resource*
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
bodyR
while_body_770185*
condR
while_cond_770184*M
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
NoOpNoOp$^lstm_cell_38/BiasAdd/ReadVariableOp#^lstm_cell_38/MatMul/ReadVariableOp%^lstm_cell_38/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_38/BiasAdd/ReadVariableOp#lstm_cell_38/BiasAdd/ReadVariableOp2H
"lstm_cell_38/MatMul/ReadVariableOp"lstm_cell_38/MatMul/ReadVariableOp2L
$lstm_cell_38/MatMul_1/ReadVariableOp$lstm_cell_38/MatMul_1/ReadVariableOp2
whilewhile:^ Z
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
Ń
`
D__inference_lambda_5_layer_call_and_return_conditional_losses_767384

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
¾L
Ņ
!backward_lstm_5_while_body_769349<
8backward_lstm_5_while_backward_lstm_5_while_loop_counterB
>backward_lstm_5_while_backward_lstm_5_while_maximum_iterations%
!backward_lstm_5_while_placeholder'
#backward_lstm_5_while_placeholder_1'
#backward_lstm_5_while_placeholder_2'
#backward_lstm_5_while_placeholder_3;
7backward_lstm_5_while_backward_lstm_5_strided_slice_1_0w
sbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0V
Cbackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0:	Y
Ebackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0:
S
Dbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0:	"
backward_lstm_5_while_identity$
 backward_lstm_5_while_identity_1$
 backward_lstm_5_while_identity_2$
 backward_lstm_5_while_identity_3$
 backward_lstm_5_while_identity_4$
 backward_lstm_5_while_identity_59
5backward_lstm_5_while_backward_lstm_5_strided_slice_1u
qbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensorT
Abackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource:	W
Cbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource:
Q
Bbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource:	¢9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp¢8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp¢:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp
Gbackward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ö
9backward_lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemsbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0!backward_lstm_5_while_placeholderPbackward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0½
8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOpReadVariableOpCbackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ź
)backward_lstm_5/while/lstm_cell_38/MatMulMatMul@backward_lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0@backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ā
:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOpEbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ń
+backward_lstm_5/while/lstm_cell_38/MatMul_1MatMul#backward_lstm_5_while_placeholder_2Bbackward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ī
&backward_lstm_5/while/lstm_cell_38/addAddV23backward_lstm_5/while/lstm_cell_38/MatMul:product:05backward_lstm_5/while/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’»
9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOpDbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0×
*backward_lstm_5/while/lstm_cell_38/BiasAddBiasAdd*backward_lstm_5/while/lstm_cell_38/add:z:0Abackward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’t
2backward_lstm_5/while/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :£
(backward_lstm_5/while/lstm_cell_38/splitSplit;backward_lstm_5/while/lstm_cell_38/split/split_dim:output:03backward_lstm_5/while/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
*backward_lstm_5/while/lstm_cell_38/SigmoidSigmoid1backward_lstm_5/while/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
,backward_lstm_5/while/lstm_cell_38/Sigmoid_1Sigmoid1backward_lstm_5/while/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’·
&backward_lstm_5/while/lstm_cell_38/mulMul0backward_lstm_5/while/lstm_cell_38/Sigmoid_1:y:0#backward_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
'backward_lstm_5/while/lstm_cell_38/ReluRelu1backward_lstm_5/while/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’É
(backward_lstm_5/while/lstm_cell_38/mul_1Mul.backward_lstm_5/while/lstm_cell_38/Sigmoid:y:05backward_lstm_5/while/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¾
(backward_lstm_5/while/lstm_cell_38/add_1AddV2*backward_lstm_5/while/lstm_cell_38/mul:z:0,backward_lstm_5/while/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
,backward_lstm_5/while/lstm_cell_38/Sigmoid_2Sigmoid1backward_lstm_5/while/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
)backward_lstm_5/while/lstm_cell_38/Relu_1Relu,backward_lstm_5/while/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ķ
(backward_lstm_5/while/lstm_cell_38/mul_2Mul0backward_lstm_5/while/lstm_cell_38/Sigmoid_2:y:07backward_lstm_5/while/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
@backward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ­
:backward_lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem#backward_lstm_5_while_placeholder_1Ibackward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/index:output:0,backward_lstm_5/while/lstm_cell_38/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ]
backward_lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
backward_lstm_5/while/addAddV2!backward_lstm_5_while_placeholder$backward_lstm_5/while/add/y:output:0*
T0*
_output_shapes
: _
backward_lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :§
backward_lstm_5/while/add_1AddV28backward_lstm_5_while_backward_lstm_5_while_loop_counter&backward_lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 
backward_lstm_5/while/IdentityIdentitybackward_lstm_5/while/add_1:z:0^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: Ŗ
 backward_lstm_5/while/Identity_1Identity>backward_lstm_5_while_backward_lstm_5_while_maximum_iterations^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: 
 backward_lstm_5/while/Identity_2Identitybackward_lstm_5/while/add:z:0^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: ¶
 backward_lstm_5/while/Identity_3IdentityJbackward_lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^backward_lstm_5/while/NoOp*
T0*
_output_shapes
: Ŗ
 backward_lstm_5/while/Identity_4Identity,backward_lstm_5/while/lstm_cell_38/mul_2:z:0^backward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
 backward_lstm_5/while/Identity_5Identity,backward_lstm_5/while/lstm_cell_38/add_1:z:0^backward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
backward_lstm_5/while/NoOpNoOp:^backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp9^backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp;^backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "p
5backward_lstm_5_while_backward_lstm_5_strided_slice_17backward_lstm_5_while_backward_lstm_5_strided_slice_1_0"I
backward_lstm_5_while_identity'backward_lstm_5/while/Identity:output:0"M
 backward_lstm_5_while_identity_1)backward_lstm_5/while/Identity_1:output:0"M
 backward_lstm_5_while_identity_2)backward_lstm_5/while/Identity_2:output:0"M
 backward_lstm_5_while_identity_3)backward_lstm_5/while/Identity_3:output:0"M
 backward_lstm_5_while_identity_4)backward_lstm_5/while/Identity_4:output:0"M
 backward_lstm_5_while_identity_5)backward_lstm_5/while/Identity_5:output:0"
Bbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resourceDbackward_lstm_5_while_lstm_cell_38_biasadd_readvariableop_resource_0"
Cbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resourceEbackward_lstm_5_while_lstm_cell_38_matmul_1_readvariableop_resource_0"
Abackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resourceCbackward_lstm_5_while_lstm_cell_38_matmul_readvariableop_resource_0"č
qbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensorsbackward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_backward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2v
9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp9backward_lstm_5/while/lstm_cell_38/BiasAdd/ReadVariableOp2t
8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp8backward_lstm_5/while/lstm_cell_38/MatMul/ReadVariableOp2x
:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp:backward_lstm_5/while/lstm_cell_38/MatMul_1/ReadVariableOp: 
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
±
¾
0__inference_backward_lstm_5_layer_call_fn_770123

inputs
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCallń
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
GPU2*0J 8 *T
fORM
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_766469p
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
Ń
`
D__inference_lambda_5_layer_call_and_return_conditional_losses_768208

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
÷

`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_767433

inputs)
bidirectional_5_767414:	*
bidirectional_5_767416:
%
bidirectional_5_767418:	)
bidirectional_5_767420:	*
bidirectional_5_767422:
%
bidirectional_5_767424:	!
dense_5_767427:	
dense_5_767429:
identity¢'bidirectional_5/StatefulPartitionedCall¢dense_5/StatefulPartitionedCallæ
lambda_5/PartitionedCallPartitionedCallinputs*
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
GPU2*0J 8 *M
fHRF
D__inference_lambda_5_layer_call_and_return_conditional_losses_767384
'bidirectional_5/StatefulPartitionedCallStatefulPartitionedCall!lambda_5/PartitionedCall:output:0bidirectional_5_767414bidirectional_5_767416bidirectional_5_767418bidirectional_5_767420bidirectional_5_767422bidirectional_5_767424*
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
GPU2*0J 8 *T
fORM
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_767355
dense_5/StatefulPartitionedCallStatefulPartitionedCall0bidirectional_5/StatefulPartitionedCall:output:0dense_5_767427dense_5_767429*
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
GPU2*0J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_767010w
IdentityIdentity(dense_5/StatefulPartitionedCall:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’
NoOpNoOp(^bidirectional_5/StatefulPartitionedCall ^dense_5/StatefulPartitionedCall*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 2R
'bidirectional_5/StatefulPartitionedCall'bidirectional_5/StatefulPartitionedCall2B
dense_5/StatefulPartitionedCalldense_5/StatefulPartitionedCall:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs

ä
Umodel_9_bidirectionalLSTM_univariate_bidirectional_5_forward_lstm_5_while_body_765030„
 model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_loop_counter«
¦model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_maximum_iterationsY
Umodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_placeholder[
Wmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_placeholder_1[
Wmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_placeholder_2[
Wmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_placeholder_3¤
model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_strided_slice_1_0ą
Ūmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0
wmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0:	
ymodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0:

xmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0:	V
Rmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_identityX
Tmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_identity_1X
Tmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_identity_2X
Tmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_identity_3X
Tmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_identity_4X
Tmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_identity_5¢
model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_strided_slice_1Ž
Łmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor
umodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource:	
wmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource:

vmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource:	¢mmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp¢lmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp¢nmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOpĢ
{model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ü
mmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemŪmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0Umodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_placeholdermodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0„
lmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOpwmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0
]model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMulMatMultmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0tmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ŗ
nmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOpymodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0ķ
_model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1MatMulWmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_placeholder_2vmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ź
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/addAddV2gmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul:product:0imodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’£
mmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOpxmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0ó
^model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAddBiasAdd^model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/add:z:0umodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ø
fmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :æ
\model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/splitSplitomodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/split/split_dim:output:0gmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
^model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/SigmoidSigmoidemodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
`model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/Sigmoid_1Sigmoidemodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ó
Zmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/mulMuldmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/Sigmoid_1:y:0Wmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’ż
[model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/ReluReluemodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’å
\model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/mul_1Mulbmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/Sigmoid:y:0imodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Ś
\model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/add_1AddV2^model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/mul:z:0`model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
`model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/Sigmoid_2Sigmoidemodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’ś
]model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/Relu_1Relu`model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’é
\model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/mul_2Muldmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/Sigmoid_2:y:0kmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¶
tmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ż
nmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItemWmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_placeholder_1}model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/index:output:0`model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ
Omodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :Ø
Mmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/addAddV2Umodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_placeholderXmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/add/y:output:0*
T0*
_output_shapes
: 
Qmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ų
Omodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/add_1AddV2 model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_loop_counterZmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: „
Rmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/IdentityIdentitySmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/add_1:z:0O^model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/NoOp*
T0*
_output_shapes
: ū
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/Identity_1Identity¦model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_maximum_iterationsO^model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/NoOp*
T0*
_output_shapes
: „
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/Identity_2IdentityQmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/add:z:0O^model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/NoOp*
T0*
_output_shapes
: Ņ
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/Identity_3Identity~model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0O^model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/NoOp*
T0*
_output_shapes
: Ę
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/Identity_4Identity`model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/mul_2:z:0O^model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ę
Tmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/Identity_5Identity`model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/add_1:z:0O^model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’ą
Nmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/NoOpNoOpn^model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOpm^model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOpo^model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "±
Rmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_identity[model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/Identity:output:0"µ
Tmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_identity_1]model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/Identity_1:output:0"µ
Tmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_identity_2]model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/Identity_2:output:0"µ
Tmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_identity_3]model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/Identity_3:output:0"µ
Tmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_identity_4]model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/Identity_4:output:0"µ
Tmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_identity_5]model_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/Identity_5:output:0"ņ
vmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resourcexmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0"ō
wmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resourceymodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0"š
umodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resourcewmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0"Ā
model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_strided_slice_1model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_strided_slice_1_0"ŗ
Łmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_tensorarrayunstack_tensorlistfromtensorŪmodel_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_model_9_bidirectionallstm_univariate_bidirectional_5_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2Ž
mmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOpmmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp2Ü
lmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOplmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp2ą
nmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOpnmodel_9_bidirectionalLSTM_univariate/bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp: 
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
ó

H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_770875

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
¹
Ć
while_cond_769558
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_769558___redundant_placeholder04
0while_while_cond_769558___redundant_placeholder14
0while_while_cond_769558___redundant_placeholder24
0while_while_cond_769558___redundant_placeholder3
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
£^
¶
0bidirectional_5_forward_lstm_5_while_body_767652Z
Vbidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_while_loop_counter`
\bidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_while_maximum_iterations4
0bidirectional_5_forward_lstm_5_while_placeholder6
2bidirectional_5_forward_lstm_5_while_placeholder_16
2bidirectional_5_forward_lstm_5_while_placeholder_26
2bidirectional_5_forward_lstm_5_while_placeholder_3Y
Ubidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_strided_slice_1_0
bidirectional_5_forward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0e
Rbidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0:	h
Tbidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0:
b
Sbidirectional_5_forward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0:	1
-bidirectional_5_forward_lstm_5_while_identity3
/bidirectional_5_forward_lstm_5_while_identity_13
/bidirectional_5_forward_lstm_5_while_identity_23
/bidirectional_5_forward_lstm_5_while_identity_33
/bidirectional_5_forward_lstm_5_while_identity_43
/bidirectional_5_forward_lstm_5_while_identity_5W
Sbidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_strided_slice_1
bidirectional_5_forward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_forward_lstm_5_tensorarrayunstack_tensorlistfromtensorc
Pbidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource:	f
Rbidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource:
`
Qbidirectional_5_forward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource:	¢Hbidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp¢Gbidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp¢Ibidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp§
Vbidirectional_5/forward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Ā
Hbidirectional_5/forward_lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItembidirectional_5_forward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_00bidirectional_5_forward_lstm_5_while_placeholder_bidirectional_5/forward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0Ū
Gbidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOpRbidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0
8bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMulMatMulObidirectional_5/forward_lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0Obidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ą
Ibidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOpTbidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0ž
:bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1MatMul2bidirectional_5_forward_lstm_5_while_placeholder_2Qbidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ū
5bidirectional_5/forward_lstm_5/while/lstm_cell_37/addAddV2Bbidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul:product:0Dbidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Ł
Hbidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOpSbidirectional_5_forward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0
9bidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAddBiasAdd9bidirectional_5/forward_lstm_5/while/lstm_cell_37/add:z:0Pbidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
Abidirectional_5/forward_lstm_5/while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Š
7bidirectional_5/forward_lstm_5/while/lstm_cell_37/splitSplitJbidirectional_5/forward_lstm_5/while/lstm_cell_37/split/split_dim:output:0Bbidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split¹
9bidirectional_5/forward_lstm_5/while/lstm_cell_37/SigmoidSigmoid@bidirectional_5/forward_lstm_5/while/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’»
;bidirectional_5/forward_lstm_5/while/lstm_cell_37/Sigmoid_1Sigmoid@bidirectional_5/forward_lstm_5/while/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’ä
5bidirectional_5/forward_lstm_5/while/lstm_cell_37/mulMul?bidirectional_5/forward_lstm_5/while/lstm_cell_37/Sigmoid_1:y:02bidirectional_5_forward_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’³
6bidirectional_5/forward_lstm_5/while/lstm_cell_37/ReluRelu@bidirectional_5/forward_lstm_5/while/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ö
7bidirectional_5/forward_lstm_5/while/lstm_cell_37/mul_1Mul=bidirectional_5/forward_lstm_5/while/lstm_cell_37/Sigmoid:y:0Dbidirectional_5/forward_lstm_5/while/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’ė
7bidirectional_5/forward_lstm_5/while/lstm_cell_37/add_1AddV29bidirectional_5/forward_lstm_5/while/lstm_cell_37/mul:z:0;bidirectional_5/forward_lstm_5/while/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’»
;bidirectional_5/forward_lstm_5/while/lstm_cell_37/Sigmoid_2Sigmoid@bidirectional_5/forward_lstm_5/while/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’°
8bidirectional_5/forward_lstm_5/while/lstm_cell_37/Relu_1Relu;bidirectional_5/forward_lstm_5/while/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ś
7bidirectional_5/forward_lstm_5/while/lstm_cell_37/mul_2Mul?bidirectional_5/forward_lstm_5/while/lstm_cell_37/Sigmoid_2:y:0Fbidirectional_5/forward_lstm_5/while/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
Obidirectional_5/forward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : é
Ibidirectional_5/forward_lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem2bidirectional_5_forward_lstm_5_while_placeholder_1Xbidirectional_5/forward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/index:output:0;bidirectional_5/forward_lstm_5/while/lstm_cell_37/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅl
*bidirectional_5/forward_lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :¹
(bidirectional_5/forward_lstm_5/while/addAddV20bidirectional_5_forward_lstm_5_while_placeholder3bidirectional_5/forward_lstm_5/while/add/y:output:0*
T0*
_output_shapes
: n
,bidirectional_5/forward_lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :ć
*bidirectional_5/forward_lstm_5/while/add_1AddV2Vbidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_while_loop_counter5bidirectional_5/forward_lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: ¶
-bidirectional_5/forward_lstm_5/while/IdentityIdentity.bidirectional_5/forward_lstm_5/while/add_1:z:0*^bidirectional_5/forward_lstm_5/while/NoOp*
T0*
_output_shapes
: ę
/bidirectional_5/forward_lstm_5/while/Identity_1Identity\bidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_while_maximum_iterations*^bidirectional_5/forward_lstm_5/while/NoOp*
T0*
_output_shapes
: ¶
/bidirectional_5/forward_lstm_5/while/Identity_2Identity,bidirectional_5/forward_lstm_5/while/add:z:0*^bidirectional_5/forward_lstm_5/while/NoOp*
T0*
_output_shapes
: ć
/bidirectional_5/forward_lstm_5/while/Identity_3IdentityYbidirectional_5/forward_lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0*^bidirectional_5/forward_lstm_5/while/NoOp*
T0*
_output_shapes
: ×
/bidirectional_5/forward_lstm_5/while/Identity_4Identity;bidirectional_5/forward_lstm_5/while/lstm_cell_37/mul_2:z:0*^bidirectional_5/forward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’×
/bidirectional_5/forward_lstm_5/while/Identity_5Identity;bidirectional_5/forward_lstm_5/while/lstm_cell_37/add_1:z:0*^bidirectional_5/forward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Ģ
)bidirectional_5/forward_lstm_5/while/NoOpNoOpI^bidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOpH^bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOpJ^bidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "¬
Sbidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_strided_slice_1Ubidirectional_5_forward_lstm_5_while_bidirectional_5_forward_lstm_5_strided_slice_1_0"g
-bidirectional_5_forward_lstm_5_while_identity6bidirectional_5/forward_lstm_5/while/Identity:output:0"k
/bidirectional_5_forward_lstm_5_while_identity_18bidirectional_5/forward_lstm_5/while/Identity_1:output:0"k
/bidirectional_5_forward_lstm_5_while_identity_28bidirectional_5/forward_lstm_5/while/Identity_2:output:0"k
/bidirectional_5_forward_lstm_5_while_identity_38bidirectional_5/forward_lstm_5/while/Identity_3:output:0"k
/bidirectional_5_forward_lstm_5_while_identity_48bidirectional_5/forward_lstm_5/while/Identity_4:output:0"k
/bidirectional_5_forward_lstm_5_while_identity_58bidirectional_5/forward_lstm_5/while/Identity_5:output:0"Ø
Qbidirectional_5_forward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resourceSbidirectional_5_forward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0"Ŗ
Rbidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resourceTbidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0"¦
Pbidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resourceRbidirectional_5_forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0"¦
bidirectional_5_forward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_forward_lstm_5_tensorarrayunstack_tensorlistfromtensorbidirectional_5_forward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_bidirectional_5_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2
Hbidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOpHbidirectional_5/forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp2
Gbidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOpGbidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp2
Ibidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOpIbidirectional_5/forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp: 
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
»	

0__inference_bidirectional_5_layer_call_fn_768225
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall
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
GPU2*0J 8 *T
fORM
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_766294p
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
¹
Ć
while_cond_766043
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_766043___redundant_placeholder04
0while_while_cond_766043___redundant_placeholder14
0while_while_cond_766043___redundant_placeholder24
0while_while_cond_766043___redundant_placeholder3
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
ö:

K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_765969

inputs&
lstm_cell_38_765885:	'
lstm_cell_38_765887:
"
lstm_cell_38_765889:	
identity¢$lstm_cell_38/StatefulPartitionedCall¢while;
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
shrink_axis_maskū
$lstm_cell_38/StatefulPartitionedCallStatefulPartitionedCallstrided_slice_2:output:0zeros:output:0zeros_1:output:0lstm_cell_38_765885lstm_cell_38_765887lstm_cell_38_765889*
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
GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_765837n
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
value	B : »
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0lstm_cell_38_765885lstm_cell_38_765887lstm_cell_38_765889*
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
bodyR
while_body_765899*
condR
while_cond_765898*M
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
NoOpNoOp%^lstm_cell_38/StatefulPartitionedCall^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*9
_input_shapes(
&:’’’’’’’’’’’’’’’’’’: : : 2L
$lstm_cell_38/StatefulPartitionedCall$lstm_cell_38/StatefulPartitionedCall2
whilewhile:\ X
4
_output_shapes"
 :’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
ė

H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_765481

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
×
µ
Vmodel_9_bidirectionalLSTM_univariate_bidirectional_5_backward_lstm_5_while_cond_765172§
¢model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_loop_counter­
Ømodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_maximum_iterationsZ
Vmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_placeholder\
Xmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_placeholder_1\
Xmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_placeholder_2\
Xmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_placeholder_3©
¤model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_less_model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_strided_slice_1æ
ŗmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_cond_765172___redundant_placeholder0æ
ŗmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_cond_765172___redundant_placeholder1æ
ŗmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_cond_765172___redundant_placeholder2æ
ŗmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_cond_765172___redundant_placeholder3W
Smodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_identity
÷
Omodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/LessLessVmodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_placeholder¤model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_less_model_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_strided_slice_1*
T0*
_output_shapes
: Õ
Smodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/IdentityIdentitySmodel_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/Less:z:0*
T0
*
_output_shapes
: "³
Smodel_9_bidirectionallstm_univariate_bidirectional_5_backward_lstm_5_while_identity\model_9_bidirectionalLSTM_univariate/bidirectional_5/backward_lstm_5/while/Identity:output:0*(
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
óM
¤
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_770564

inputs>
+lstm_cell_38_matmul_readvariableop_resource:	A
-lstm_cell_38_matmul_1_readvariableop_resource:
;
,lstm_cell_38_biasadd_readvariableop_resource:	
identity¢#lstm_cell_38/BiasAdd/ReadVariableOp¢"lstm_cell_38/MatMul/ReadVariableOp¢$lstm_cell_38/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_38/MatMul/ReadVariableOpReadVariableOp+lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_38/MatMulMatMulstrided_slice_2:output:0*lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_38_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_38/MatMul_1MatMulzeros:output:0,lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_38/addAddV2lstm_cell_38/MatMul:product:0lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_38/BiasAddBiasAddlstm_cell_38/add:z:0+lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_38/splitSplit%lstm_cell_38/split/split_dim:output:0lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_38/SigmoidSigmoidlstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_38/Sigmoid_1Sigmoidlstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_38/mulMullstm_cell_38/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_38/ReluRelulstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_38/mul_1Mullstm_cell_38/Sigmoid:y:0lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_38/add_1AddV2lstm_cell_38/mul:z:0lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_38/Sigmoid_2Sigmoidlstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_38/Relu_1Relulstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_38/mul_2Mullstm_cell_38/Sigmoid_2:y:0!lstm_cell_38/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_38_matmul_readvariableop_resource-lstm_cell_38_matmul_1_readvariableop_resource,lstm_cell_38_biasadd_readvariableop_resource*
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
bodyR
while_body_770479*
condR
while_cond_770478*M
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
NoOpNoOp$^lstm_cell_38/BiasAdd/ReadVariableOp#^lstm_cell_38/MatMul/ReadVariableOp%^lstm_cell_38/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_38/BiasAdd/ReadVariableOp#lstm_cell_38/BiasAdd/ReadVariableOp2H
"lstm_cell_38/MatMul/ReadVariableOp"lstm_cell_38/MatMul/ReadVariableOp2L
$lstm_cell_38/MatMul_1/ReadVariableOp$lstm_cell_38/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
Ē9
Ņ
while_body_766044
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_37_matmul_readvariableop_resource_0:	I
5while_lstm_cell_37_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_37_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_37_matmul_readvariableop_resource:	G
3while_lstm_cell_37_matmul_1_readvariableop_resource:
A
2while_lstm_cell_37_biasadd_readvariableop_resource:	¢)while/lstm_cell_37/BiasAdd/ReadVariableOp¢(while/lstm_cell_37/MatMul/ReadVariableOp¢*while/lstm_cell_37/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’Æ
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
element_dtype0
(while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_37/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_37_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_37/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/addAddV2#while/lstm_cell_37/MatMul:product:0%while/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_37/BiasAddBiasAddwhile/lstm_cell_37/add:z:01while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_37/splitSplit+while/lstm_cell_37/split/split_dim:output:0#while/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_37/SigmoidSigmoid!while/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_37/Sigmoid_1Sigmoid!while/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/mulMul while/lstm_cell_37/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_37/ReluRelu!while/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/mul_1Mulwhile/lstm_cell_37/Sigmoid:y:0%while/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/add_1AddV2while/lstm_cell_37/mul:z:0while/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_37/Sigmoid_2Sigmoid!while/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_37/Relu_1Reluwhile/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/mul_2Mul while/lstm_cell_37/Sigmoid_2:y:0'while/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_37/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_37/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_37/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_37/BiasAdd/ReadVariableOp)^while/lstm_cell_37/MatMul/ReadVariableOp+^while/lstm_cell_37/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_37_biasadd_readvariableop_resource4while_lstm_cell_37_biasadd_readvariableop_resource_0"l
3while_lstm_cell_37_matmul_1_readvariableop_resource5while_lstm_cell_37_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_37_matmul_readvariableop_resource3while_lstm_cell_37_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_37/BiasAdd/ReadVariableOp)while/lstm_cell_37/BiasAdd/ReadVariableOp2T
(while/lstm_cell_37/MatMul/ReadVariableOp(while/lstm_cell_37/MatMul/ReadVariableOp2X
*while/lstm_cell_37/MatMul_1/ReadVariableOp*while/lstm_cell_37/MatMul_1/ReadVariableOp: 
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
¹
Ć
while_cond_770478
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_770478___redundant_placeholder04
0while_while_cond_770478___redundant_placeholder14
0while_while_cond_770478___redundant_placeholder24
0while_while_cond_770478___redundant_placeholder3
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
¹
Ć
while_cond_766550
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_766550___redundant_placeholder04
0while_while_cond_766550___redundant_placeholder14
0while_while_cond_766550___redundant_placeholder24
0while_while_cond_766550___redundant_placeholder3
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
¹
Ć
while_cond_765898
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_765898___redundant_placeholder04
0while_while_cond_765898___redundant_placeholder14
0while_while_cond_765898___redundant_placeholder24
0while_while_cond_765898___redundant_placeholder3
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
¹
Ć
while_cond_769703
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_less_strided_slice_14
0while_while_cond_769703___redundant_placeholder04
0while_while_cond_769703___redundant_placeholder14
0while_while_cond_769703___redundant_placeholder24
0while_while_cond_769703___redundant_placeholder3
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
§K
²
 forward_lstm_5_while_body_768916:
6forward_lstm_5_while_forward_lstm_5_while_loop_counter@
<forward_lstm_5_while_forward_lstm_5_while_maximum_iterations$
 forward_lstm_5_while_placeholder&
"forward_lstm_5_while_placeholder_1&
"forward_lstm_5_while_placeholder_2&
"forward_lstm_5_while_placeholder_39
5forward_lstm_5_while_forward_lstm_5_strided_slice_1_0u
qforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0U
Bforward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0:	X
Dforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0:
R
Cforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0:	!
forward_lstm_5_while_identity#
forward_lstm_5_while_identity_1#
forward_lstm_5_while_identity_2#
forward_lstm_5_while_identity_3#
forward_lstm_5_while_identity_4#
forward_lstm_5_while_identity_57
3forward_lstm_5_while_forward_lstm_5_strided_slice_1s
oforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensorS
@forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource:	V
Bforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource:
P
Aforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource:	¢8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp¢7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp¢9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp
Fforward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ń
8forward_lstm_5/while/TensorArrayV2Read/TensorListGetItemTensorListGetItemqforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0 forward_lstm_5_while_placeholderOforward_lstm_5/while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0»
7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOpBforward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ē
(forward_lstm_5/while/lstm_cell_37/MatMulMatMul?forward_lstm_5/while/TensorArrayV2Read/TensorListGetItem:item:0?forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ą
9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOpDforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0Ī
*forward_lstm_5/while/lstm_cell_37/MatMul_1MatMul"forward_lstm_5_while_placeholder_2Aforward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ė
%forward_lstm_5/while/lstm_cell_37/addAddV22forward_lstm_5/while/lstm_cell_37/MatMul:product:04forward_lstm_5/while/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’¹
8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOpCforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0Ō
)forward_lstm_5/while/lstm_cell_37/BiasAddBiasAdd)forward_lstm_5/while/lstm_cell_37/add:z:0@forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’s
1forward_lstm_5/while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B : 
'forward_lstm_5/while/lstm_cell_37/splitSplit:forward_lstm_5/while/lstm_cell_37/split/split_dim:output:02forward_lstm_5/while/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
)forward_lstm_5/while/lstm_cell_37/SigmoidSigmoid0forward_lstm_5/while/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
+forward_lstm_5/while/lstm_cell_37/Sigmoid_1Sigmoid0forward_lstm_5/while/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’“
%forward_lstm_5/while/lstm_cell_37/mulMul/forward_lstm_5/while/lstm_cell_37/Sigmoid_1:y:0"forward_lstm_5_while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’
&forward_lstm_5/while/lstm_cell_37/ReluRelu0forward_lstm_5/while/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’Ę
'forward_lstm_5/while/lstm_cell_37/mul_1Mul-forward_lstm_5/while/lstm_cell_37/Sigmoid:y:04forward_lstm_5/while/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’»
'forward_lstm_5/while/lstm_cell_37/add_1AddV2)forward_lstm_5/while/lstm_cell_37/mul:z:0+forward_lstm_5/while/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
+forward_lstm_5/while/lstm_cell_37/Sigmoid_2Sigmoid0forward_lstm_5/while/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
(forward_lstm_5/while/lstm_cell_37/Relu_1Relu+forward_lstm_5/while/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Ź
'forward_lstm_5/while/lstm_cell_37/mul_2Mul/forward_lstm_5/while/lstm_cell_37/Sigmoid_2:y:06forward_lstm_5/while/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
?forward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ©
9forward_lstm_5/while/TensorArrayV2Write/TensorListSetItemTensorListSetItem"forward_lstm_5_while_placeholder_1Hforward_lstm_5/while/TensorArrayV2Write/TensorListSetItem/index:output:0+forward_lstm_5/while/lstm_cell_37/mul_2:z:0*
_output_shapes
: *
element_dtype0:éčŅ\
forward_lstm_5/while/add/yConst*
_output_shapes
: *
dtype0*
value	B :
forward_lstm_5/while/addAddV2 forward_lstm_5_while_placeholder#forward_lstm_5/while/add/y:output:0*
T0*
_output_shapes
: ^
forward_lstm_5/while/add_1/yConst*
_output_shapes
: *
dtype0*
value	B :£
forward_lstm_5/while/add_1AddV26forward_lstm_5_while_forward_lstm_5_while_loop_counter%forward_lstm_5/while/add_1/y:output:0*
T0*
_output_shapes
: 
forward_lstm_5/while/IdentityIdentityforward_lstm_5/while/add_1:z:0^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: ¦
forward_lstm_5/while/Identity_1Identity<forward_lstm_5_while_forward_lstm_5_while_maximum_iterations^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: 
forward_lstm_5/while/Identity_2Identityforward_lstm_5/while/add:z:0^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: ³
forward_lstm_5/while/Identity_3IdentityIforward_lstm_5/while/TensorArrayV2Write/TensorListSetItem:output_handle:0^forward_lstm_5/while/NoOp*
T0*
_output_shapes
: §
forward_lstm_5/while/Identity_4Identity+forward_lstm_5/while/lstm_cell_37/mul_2:z:0^forward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’§
forward_lstm_5/while/Identity_5Identity+forward_lstm_5/while/lstm_cell_37/add_1:z:0^forward_lstm_5/while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’
forward_lstm_5/while/NoOpNoOp9^forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp8^forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp:^forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "l
3forward_lstm_5_while_forward_lstm_5_strided_slice_15forward_lstm_5_while_forward_lstm_5_strided_slice_1_0"G
forward_lstm_5_while_identity&forward_lstm_5/while/Identity:output:0"K
forward_lstm_5_while_identity_1(forward_lstm_5/while/Identity_1:output:0"K
forward_lstm_5_while_identity_2(forward_lstm_5/while/Identity_2:output:0"K
forward_lstm_5_while_identity_3(forward_lstm_5/while/Identity_3:output:0"K
forward_lstm_5_while_identity_4(forward_lstm_5/while/Identity_4:output:0"K
forward_lstm_5_while_identity_5(forward_lstm_5/while/Identity_5:output:0"
Aforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resourceCforward_lstm_5_while_lstm_cell_37_biasadd_readvariableop_resource_0"
Bforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resourceDforward_lstm_5_while_lstm_cell_37_matmul_1_readvariableop_resource_0"
@forward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resourceBforward_lstm_5_while_lstm_cell_37_matmul_readvariableop_resource_0"ä
oforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensorqforward_lstm_5_while_tensorarrayv2read_tensorlistgetitem_forward_lstm_5_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2t
8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp8forward_lstm_5/while/lstm_cell_37/BiasAdd/ReadVariableOp2r
7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp7forward_lstm_5/while/lstm_cell_37/MatMul/ReadVariableOp2v
9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp9forward_lstm_5/while/lstm_cell_37/MatMul_1/ReadVariableOp: 
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
ł
÷
-__inference_lstm_cell_37_layer_call_fn_770745

inputs
states_0
states_1
unknown:	
	unknown_0:

	unknown_1:	
identity

identity_1

identity_2¢StatefulPartitionedCall®
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
GPU2*0J 8 *Q
fLRJ
H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_765481p
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
	

0__inference_bidirectional_5_layer_call_fn_768276

inputs
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall
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
GPU2*0J 8 *T
fORM
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_767355p
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
ó

H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_770777

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
ø¾
¹
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_768856
inputs_0M
:forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource:	P
<forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource:
J
;forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource:	N
;backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource:	Q
=backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource:
K
<backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource:	
identity¢3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp¢2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp¢4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp¢backward_lstm_5/while¢2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp¢1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp¢3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp¢forward_lstm_5/whileL
forward_lstm_5/ShapeShapeinputs_0*
T0*
_output_shapes
:l
"forward_lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: n
$forward_lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:n
$forward_lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
forward_lstm_5/strided_sliceStridedSliceforward_lstm_5/Shape:output:0+forward_lstm_5/strided_slice/stack:output:0-forward_lstm_5/strided_slice/stack_1:output:0-forward_lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask`
forward_lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B : 
forward_lstm_5/zeros/packedPack%forward_lstm_5/strided_slice:output:0&forward_lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:_
forward_lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
forward_lstm_5/zerosFill$forward_lstm_5/zeros/packed:output:0#forward_lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’b
forward_lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :¤
forward_lstm_5/zeros_1/packedPack%forward_lstm_5/strided_slice:output:0(forward_lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:a
forward_lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *     
forward_lstm_5/zeros_1Fill&forward_lstm_5/zeros_1/packed:output:0%forward_lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’r
forward_lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          
forward_lstm_5/transpose	Transposeinputs_0&forward_lstm_5/transpose/perm:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’b
forward_lstm_5/Shape_1Shapeforward_lstm_5/transpose:y:0*
T0*
_output_shapes
:n
$forward_lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:¦
forward_lstm_5/strided_slice_1StridedSliceforward_lstm_5/Shape_1:output:0-forward_lstm_5/strided_slice_1/stack:output:0/forward_lstm_5/strided_slice_1/stack_1:output:0/forward_lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_masku
*forward_lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’į
forward_lstm_5/TensorArrayV2TensorListReserve3forward_lstm_5/TensorArrayV2/element_shape:output:0'forward_lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
Dforward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’
6forward_lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensorforward_lstm_5/transpose:y:0Mforward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅn
$forward_lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:p
&forward_lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:½
forward_lstm_5/strided_slice_2StridedSliceforward_lstm_5/transpose:y:0-forward_lstm_5/strided_slice_2/stack:output:0/forward_lstm_5/strided_slice_2/stack_1:output:0/forward_lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
shrink_axis_mask­
1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOpReadVariableOp:forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ć
"forward_lstm_5/lstm_cell_37/MatMulMatMul'forward_lstm_5/strided_slice_2:output:09forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’²
3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp<forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0½
$forward_lstm_5/lstm_cell_37/MatMul_1MatMulforward_lstm_5/zeros:output:0;forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¹
forward_lstm_5/lstm_cell_37/addAddV2,forward_lstm_5/lstm_cell_37/MatMul:product:0.forward_lstm_5/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’«
2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp;forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Ā
#forward_lstm_5/lstm_cell_37/BiasAddBiasAdd#forward_lstm_5/lstm_cell_37/add:z:0:forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’m
+forward_lstm_5/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
!forward_lstm_5/lstm_cell_37/splitSplit4forward_lstm_5/lstm_cell_37/split/split_dim:output:0,forward_lstm_5/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
#forward_lstm_5/lstm_cell_37/SigmoidSigmoid*forward_lstm_5/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
%forward_lstm_5/lstm_cell_37/Sigmoid_1Sigmoid*forward_lstm_5/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’„
forward_lstm_5/lstm_cell_37/mulMul)forward_lstm_5/lstm_cell_37/Sigmoid_1:y:0forward_lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
 forward_lstm_5/lstm_cell_37/ReluRelu*forward_lstm_5/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’“
!forward_lstm_5/lstm_cell_37/mul_1Mul'forward_lstm_5/lstm_cell_37/Sigmoid:y:0.forward_lstm_5/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’©
!forward_lstm_5/lstm_cell_37/add_1AddV2#forward_lstm_5/lstm_cell_37/mul:z:0%forward_lstm_5/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
%forward_lstm_5/lstm_cell_37/Sigmoid_2Sigmoid*forward_lstm_5/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
"forward_lstm_5/lstm_cell_37/Relu_1Relu%forward_lstm_5/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ø
!forward_lstm_5/lstm_cell_37/mul_2Mul)forward_lstm_5/lstm_cell_37/Sigmoid_2:y:00forward_lstm_5/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’}
,forward_lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   m
+forward_lstm_5/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :ņ
forward_lstm_5/TensorArrayV2_1TensorListReserve5forward_lstm_5/TensorArrayV2_1/element_shape:output:04forward_lstm_5/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅU
forward_lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : r
'forward_lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’c
!forward_lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ų
forward_lstm_5/whileWhile*forward_lstm_5/while/loop_counter:output:00forward_lstm_5/while/maximum_iterations:output:0forward_lstm_5/time:output:0'forward_lstm_5/TensorArrayV2_1:handle:0forward_lstm_5/zeros:output:0forward_lstm_5/zeros_1:output:0'forward_lstm_5/strided_slice_1:output:0Fforward_lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0:forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource<forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource;forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *,
body$R"
 forward_lstm_5_while_body_768626*,
cond$R"
 forward_lstm_5_while_cond_768625*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
?forward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
1forward_lstm_5/TensorArrayV2Stack/TensorListStackTensorListStackforward_lstm_5/while:output:3Hforward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsw
$forward_lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’p
&forward_lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: p
&forward_lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ó
forward_lstm_5/strided_slice_3StridedSlice:forward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0-forward_lstm_5/strided_slice_3/stack:output:0/forward_lstm_5/strided_slice_3/stack_1:output:0/forward_lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_maskt
forward_lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ä
forward_lstm_5/transpose_1	Transpose:forward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0(forward_lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’j
forward_lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
backward_lstm_5/ShapeShapeinputs_0*
T0*
_output_shapes
:m
#backward_lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: o
%backward_lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:o
%backward_lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:”
backward_lstm_5/strided_sliceStridedSlicebackward_lstm_5/Shape:output:0,backward_lstm_5/strided_slice/stack:output:0.backward_lstm_5/strided_slice/stack_1:output:0.backward_lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maska
backward_lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :£
backward_lstm_5/zeros/packedPack&backward_lstm_5/strided_slice:output:0'backward_lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:`
backward_lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    
backward_lstm_5/zerosFill%backward_lstm_5/zeros/packed:output:0$backward_lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’c
 backward_lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :§
backward_lstm_5/zeros_1/packedPack&backward_lstm_5/strided_slice:output:0)backward_lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:b
backward_lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    £
backward_lstm_5/zeros_1Fill'backward_lstm_5/zeros_1/packed:output:0&backward_lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
backward_lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          ”
backward_lstm_5/transpose	Transposeinputs_0'backward_lstm_5/transpose/perm:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’d
backward_lstm_5/Shape_1Shapebackward_lstm_5/transpose:y:0*
T0*
_output_shapes
:o
%backward_lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:«
backward_lstm_5/strided_slice_1StridedSlice backward_lstm_5/Shape_1:output:0.backward_lstm_5/strided_slice_1/stack:output:00backward_lstm_5/strided_slice_1/stack_1:output:00backward_lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskv
+backward_lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’ä
backward_lstm_5/TensorArrayV2TensorListReserve4backward_lstm_5/TensorArrayV2/element_shape:output:0(backward_lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅh
backward_lstm_5/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: ¶
backward_lstm_5/ReverseV2	ReverseV2backward_lstm_5/transpose:y:0'backward_lstm_5/ReverseV2/axis:output:0*
T0*=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
Ebackward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’’’’’
7backward_lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor"backward_lstm_5/ReverseV2:output:0Nbackward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅo
%backward_lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:q
'backward_lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ā
backward_lstm_5/strided_slice_2StridedSlicebackward_lstm_5/transpose:y:0.backward_lstm_5/strided_slice_2/stack:output:00backward_lstm_5/strided_slice_2/stack_1:output:00backward_lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*0
_output_shapes
:’’’’’’’’’’’’’’’’’’*
shrink_axis_maskÆ
2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOpReadVariableOp;backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0Ę
#backward_lstm_5/lstm_cell_38/MatMulMatMul(backward_lstm_5/strided_slice_2:output:0:backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’“
4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp=backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0Ą
%backward_lstm_5/lstm_cell_38/MatMul_1MatMulbackward_lstm_5/zeros:output:0<backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¼
 backward_lstm_5/lstm_cell_38/addAddV2-backward_lstm_5/lstm_cell_38/MatMul:product:0/backward_lstm_5/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’­
3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp<backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0Å
$backward_lstm_5/lstm_cell_38/BiasAddBiasAdd$backward_lstm_5/lstm_cell_38/add:z:0;backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’n
,backward_lstm_5/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :
"backward_lstm_5/lstm_cell_38/splitSplit5backward_lstm_5/lstm_cell_38/split/split_dim:output:0-backward_lstm_5/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split
$backward_lstm_5/lstm_cell_38/SigmoidSigmoid+backward_lstm_5/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’
&backward_lstm_5/lstm_cell_38/Sigmoid_1Sigmoid+backward_lstm_5/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ø
 backward_lstm_5/lstm_cell_38/mulMul*backward_lstm_5/lstm_cell_38/Sigmoid_1:y:0 backward_lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’
!backward_lstm_5/lstm_cell_38/ReluRelu+backward_lstm_5/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’·
"backward_lstm_5/lstm_cell_38/mul_1Mul(backward_lstm_5/lstm_cell_38/Sigmoid:y:0/backward_lstm_5/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’¬
"backward_lstm_5/lstm_cell_38/add_1AddV2$backward_lstm_5/lstm_cell_38/mul:z:0&backward_lstm_5/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
&backward_lstm_5/lstm_cell_38/Sigmoid_2Sigmoid+backward_lstm_5/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’
#backward_lstm_5/lstm_cell_38/Relu_1Relu&backward_lstm_5/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’»
"backward_lstm_5/lstm_cell_38/mul_2Mul*backward_lstm_5/lstm_cell_38/Sigmoid_2:y:01backward_lstm_5/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’~
-backward_lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   n
,backward_lstm_5/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :õ
backward_lstm_5/TensorArrayV2_1TensorListReserve6backward_lstm_5/TensorArrayV2_1/element_shape:output:05backward_lstm_5/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅV
backward_lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : s
(backward_lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’d
"backward_lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ę
backward_lstm_5/whileWhile+backward_lstm_5/while/loop_counter:output:01backward_lstm_5/while/maximum_iterations:output:0backward_lstm_5/time:output:0(backward_lstm_5/TensorArrayV2_1:handle:0backward_lstm_5/zeros:output:0 backward_lstm_5/zeros_1:output:0(backward_lstm_5/strided_slice_1:output:0Gbackward_lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0;backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource=backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource<backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *-
body%R#
!backward_lstm_5_while_body_768769*-
cond%R#
!backward_lstm_5_while_cond_768768*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations 
@backward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   
2backward_lstm_5/TensorArrayV2Stack/TensorListStackTensorListStackbackward_lstm_5/while:output:3Ibackward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elementsx
%backward_lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’q
'backward_lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: q
'backward_lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ų
backward_lstm_5/strided_slice_3StridedSlice;backward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0.backward_lstm_5/strided_slice_3/stack:output:00backward_lstm_5/strided_slice_3/stack_1:output:00backward_lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_masku
 backward_lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ē
backward_lstm_5/transpose_1	Transpose;backward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0)backward_lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’k
backward_lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    M
concat/axisConst*
_output_shapes
: *
dtype0*
value	B :·
concatConcatV2'forward_lstm_5/strided_slice_3:output:0(backward_lstm_5/strided_slice_3:output:0concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’_
IdentityIdentityconcat:output:0^NoOp*
T0*(
_output_shapes
:’’’’’’’’’¶
NoOpNoOp4^backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp3^backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp5^backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp^backward_lstm_5/while3^forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp2^forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp4^forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp^forward_lstm_5/while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*H
_input_shapes7
5:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : : : : 2j
3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp3backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp2h
2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp2backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp2l
4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp4backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp2.
backward_lstm_5/whilebackward_lstm_5/while2h
2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp2forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp2f
1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp1forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp2j
3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp3forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp2,
forward_lstm_5/whileforward_lstm_5/while:g c
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
"
_user_specified_name
inputs/0
óM
¤
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_770711

inputs>
+lstm_cell_38_matmul_readvariableop_resource:	A
-lstm_cell_38_matmul_1_readvariableop_resource:
;
,lstm_cell_38_biasadd_readvariableop_resource:	
identity¢#lstm_cell_38/BiasAdd/ReadVariableOp¢"lstm_cell_38/MatMul/ReadVariableOp¢$lstm_cell_38/MatMul_1/ReadVariableOp¢while;
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
"lstm_cell_38/MatMul/ReadVariableOpReadVariableOp+lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
lstm_cell_38/MatMulMatMulstrided_slice_2:output:0*lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
$lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOp-lstm_cell_38_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0
lstm_cell_38/MatMul_1MatMulzeros:output:0,lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_38/addAddV2lstm_cell_38/MatMul:product:0lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
#lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOp,lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0
lstm_cell_38/BiasAddBiasAddlstm_cell_38/add:z:0+lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’^
lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :į
lstm_cell_38/splitSplit%lstm_cell_38/split/split_dim:output:0lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splito
lstm_cell_38/SigmoidSigmoidlstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_38/Sigmoid_1Sigmoidlstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’x
lstm_cell_38/mulMullstm_cell_38/Sigmoid_1:y:0zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’i
lstm_cell_38/ReluRelulstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_38/mul_1Mullstm_cell_38/Sigmoid:y:0lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’|
lstm_cell_38/add_1AddV2lstm_cell_38/mul:z:0lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’q
lstm_cell_38/Sigmoid_2Sigmoidlstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’f
lstm_cell_38/Relu_1Relulstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
lstm_cell_38/mul_2Mullstm_cell_38/Sigmoid_2:y:0!lstm_cell_38/Relu_1:activations:0*
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
value	B : 
whileWhilewhile/loop_counter:output:0!while/maximum_iterations:output:0time:output:0TensorArrayV2_1:handle:0zeros:output:0zeros_1:output:0strided_slice_1:output:07TensorArrayUnstack/TensorListFromTensor:output_handle:0+lstm_cell_38_matmul_readvariableop_resource-lstm_cell_38_matmul_1_readvariableop_resource,lstm_cell_38_biasadd_readvariableop_resource*
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
bodyR
while_body_770626*
condR
while_cond_770625*M
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
NoOpNoOp$^lstm_cell_38/BiasAdd/ReadVariableOp#^lstm_cell_38/MatMul/ReadVariableOp%^lstm_cell_38/MatMul_1/ReadVariableOp^while*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*B
_input_shapes1
/:'’’’’’’’’’’’’’’’’’’’’’’’’’’’: : : 2J
#lstm_cell_38/BiasAdd/ReadVariableOp#lstm_cell_38/BiasAdd/ReadVariableOp2H
"lstm_cell_38/MatMul/ReadVariableOp"lstm_cell_38/MatMul/ReadVariableOp2L
$lstm_cell_38/MatMul_1/ReadVariableOp$lstm_cell_38/MatMul_1/ReadVariableOp2
whilewhile:e a
=
_output_shapes+
):'’’’’’’’’’’’’’’’’’’’’’’’’’’’
 
_user_specified_nameinputs
¾9
Ņ
while_body_769559
while_while_loop_counter"
while_while_maximum_iterations
while_placeholder
while_placeholder_1
while_placeholder_2
while_placeholder_3
while_strided_slice_1_0W
Swhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0F
3while_lstm_cell_37_matmul_readvariableop_resource_0:	I
5while_lstm_cell_37_matmul_1_readvariableop_resource_0:
C
4while_lstm_cell_37_biasadd_readvariableop_resource_0:	
while_identity
while_identity_1
while_identity_2
while_identity_3
while_identity_4
while_identity_5
while_strided_slice_1U
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorD
1while_lstm_cell_37_matmul_readvariableop_resource:	G
3while_lstm_cell_37_matmul_1_readvariableop_resource:
A
2while_lstm_cell_37_biasadd_readvariableop_resource:	¢)while/lstm_cell_37/BiasAdd/ReadVariableOp¢(while/lstm_cell_37/MatMul/ReadVariableOp¢*while/lstm_cell_37/MatMul_1/ReadVariableOp
7while/TensorArrayV2Read/TensorListGetItem/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ¦
)while/TensorArrayV2Read/TensorListGetItemTensorListGetItemSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0while_placeholder@while/TensorArrayV2Read/TensorListGetItem/element_shape:output:0*'
_output_shapes
:’’’’’’’’’*
element_dtype0
(while/lstm_cell_37/MatMul/ReadVariableOpReadVariableOp3while_lstm_cell_37_matmul_readvariableop_resource_0*
_output_shapes
:	*
dtype0ŗ
while/lstm_cell_37/MatMulMatMul0while/TensorArrayV2Read/TensorListGetItem:item:00while/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’¢
*while/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOp5while_lstm_cell_37_matmul_1_readvariableop_resource_0* 
_output_shapes
:
*
dtype0”
while/lstm_cell_37/MatMul_1MatMulwhile_placeholder_22while/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/addAddV2#while/lstm_cell_37/MatMul:product:0%while/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’
)while/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOp4while_lstm_cell_37_biasadd_readvariableop_resource_0*
_output_shapes	
:*
dtype0§
while/lstm_cell_37/BiasAddBiasAddwhile/lstm_cell_37/add:z:01while/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’d
"while/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :ó
while/lstm_cell_37/splitSplit+while/lstm_cell_37/split/split_dim:output:0#while/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split{
while/lstm_cell_37/SigmoidSigmoid!while/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_37/Sigmoid_1Sigmoid!while/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/mulMul while/lstm_cell_37/Sigmoid_1:y:0while_placeholder_3*
T0*(
_output_shapes
:’’’’’’’’’u
while/lstm_cell_37/ReluRelu!while/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/mul_1Mulwhile/lstm_cell_37/Sigmoid:y:0%while/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/add_1AddV2while/lstm_cell_37/mul:z:0while/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’}
while/lstm_cell_37/Sigmoid_2Sigmoid!while/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’r
while/lstm_cell_37/Relu_1Reluwhile/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’
while/lstm_cell_37/mul_2Mul while/lstm_cell_37/Sigmoid_2:y:0'while/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’r
0while/TensorArrayV2Write/TensorListSetItem/indexConst*
_output_shapes
: *
dtype0*
value	B : ķ
*while/TensorArrayV2Write/TensorListSetItemTensorListSetItemwhile_placeholder_19while/TensorArrayV2Write/TensorListSetItem/index:output:0while/lstm_cell_37/mul_2:z:0*
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
while/Identity_4Identitywhile/lstm_cell_37/mul_2:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’z
while/Identity_5Identitywhile/lstm_cell_37/add_1:z:0^while/NoOp*
T0*(
_output_shapes
:’’’’’’’’’Š

while/NoOpNoOp*^while/lstm_cell_37/BiasAdd/ReadVariableOp)^while/lstm_cell_37/MatMul/ReadVariableOp+^while/lstm_cell_37/MatMul_1/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 ")
while_identitywhile/Identity:output:0"-
while_identity_1while/Identity_1:output:0"-
while_identity_2while/Identity_2:output:0"-
while_identity_3while/Identity_3:output:0"-
while_identity_4while/Identity_4:output:0"-
while_identity_5while/Identity_5:output:0"j
2while_lstm_cell_37_biasadd_readvariableop_resource4while_lstm_cell_37_biasadd_readvariableop_resource_0"l
3while_lstm_cell_37_matmul_1_readvariableop_resource5while_lstm_cell_37_matmul_1_readvariableop_resource_0"h
1while_lstm_cell_37_matmul_readvariableop_resource3while_lstm_cell_37_matmul_readvariableop_resource_0"0
while_strided_slice_1while_strided_slice_1_0"Ø
Qwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensorSwhile_tensorarrayv2read_tensorlistgetitem_tensorarrayunstack_tensorlistfromtensor_0*(
_construction_contextkEagerRuntime*M
_input_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : 2V
)while/lstm_cell_37/BiasAdd/ReadVariableOp)while/lstm_cell_37/BiasAdd/ReadVariableOp2T
(while/lstm_cell_37/MatMul/ReadVariableOp(while/lstm_cell_37/MatMul/ReadVariableOp2X
*while/lstm_cell_37/MatMul_1/ReadVariableOp*while/lstm_cell_37/MatMul_1/ReadVariableOp: 
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


į
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_767590

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
identity¢StatefulPartitionedCallĘ
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
GPU2*0J 8 *i
fdRb
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_767433o
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
ś

!backward_lstm_5_while_cond_766898<
8backward_lstm_5_while_backward_lstm_5_while_loop_counterB
>backward_lstm_5_while_backward_lstm_5_while_maximum_iterations%
!backward_lstm_5_while_placeholder'
#backward_lstm_5_while_placeholder_1'
#backward_lstm_5_while_placeholder_2'
#backward_lstm_5_while_placeholder_3>
:backward_lstm_5_while_less_backward_lstm_5_strided_slice_1T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_766898___redundant_placeholder0T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_766898___redundant_placeholder1T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_766898___redundant_placeholder2T
Pbackward_lstm_5_while_backward_lstm_5_while_cond_766898___redundant_placeholder3"
backward_lstm_5_while_identity
¢
backward_lstm_5/while/LessLess!backward_lstm_5_while_placeholder:backward_lstm_5_while_less_backward_lstm_5_strided_slice_1*
T0*
_output_shapes
: k
backward_lstm_5/while/IdentityIdentitybackward_lstm_5/while/Less:z:0*
T0
*
_output_shapes
: "I
backward_lstm_5_while_identity'backward_lstm_5/while/Identity:output:0*(
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
Ž
ļ
 forward_lstm_5_while_cond_768335:
6forward_lstm_5_while_forward_lstm_5_while_loop_counter@
<forward_lstm_5_while_forward_lstm_5_while_maximum_iterations$
 forward_lstm_5_while_placeholder&
"forward_lstm_5_while_placeholder_1&
"forward_lstm_5_while_placeholder_2&
"forward_lstm_5_while_placeholder_3<
8forward_lstm_5_while_less_forward_lstm_5_strided_slice_1R
Nforward_lstm_5_while_forward_lstm_5_while_cond_768335___redundant_placeholder0R
Nforward_lstm_5_while_forward_lstm_5_while_cond_768335___redundant_placeholder1R
Nforward_lstm_5_while_forward_lstm_5_while_cond_768335___redundant_placeholder2R
Nforward_lstm_5_while_forward_lstm_5_while_cond_768335___redundant_placeholder3!
forward_lstm_5_while_identity

forward_lstm_5/while/LessLess forward_lstm_5_while_placeholder8forward_lstm_5_while_less_forward_lstm_5_strided_slice_1*
T0*
_output_shapes
: i
forward_lstm_5/while/IdentityIdentityforward_lstm_5/while/Less:z:0*
T0
*
_output_shapes
: "G
forward_lstm_5_while_identity&forward_lstm_5/while/Identity:output:0*(
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
Ø
E
)__inference_lambda_5_layer_call_fn_768191

inputs
identity¶
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
GPU2*0J 8 *M
fHRF
D__inference_lambda_5_layer_call_and_return_conditional_losses_766695d
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
Ž
ļ
 forward_lstm_5_while_cond_769205:
6forward_lstm_5_while_forward_lstm_5_while_loop_counter@
<forward_lstm_5_while_forward_lstm_5_while_maximum_iterations$
 forward_lstm_5_while_placeholder&
"forward_lstm_5_while_placeholder_1&
"forward_lstm_5_while_placeholder_2&
"forward_lstm_5_while_placeholder_3<
8forward_lstm_5_while_less_forward_lstm_5_strided_slice_1R
Nforward_lstm_5_while_forward_lstm_5_while_cond_769205___redundant_placeholder0R
Nforward_lstm_5_while_forward_lstm_5_while_cond_769205___redundant_placeholder1R
Nforward_lstm_5_while_forward_lstm_5_while_cond_769205___redundant_placeholder2R
Nforward_lstm_5_while_forward_lstm_5_while_cond_769205___redundant_placeholder3!
forward_lstm_5_while_identity

forward_lstm_5/while/LessLess forward_lstm_5_while_placeholder8forward_lstm_5_while_less_forward_lstm_5_strided_slice_1*
T0*
_output_shapes
: i
forward_lstm_5/while/IdentityIdentityforward_lstm_5/while/Less:z:0*
T0
*
_output_shapes
: "G
forward_lstm_5_while_identity&forward_lstm_5/while/Identity:output:0*(
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
ņļ
ß

`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_767888

inputs]
Jbidirectional_5_forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource:	`
Lbidirectional_5_forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource:
Z
Kbidirectional_5_forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource:	^
Kbidirectional_5_backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource:	a
Mbidirectional_5_backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource:
[
Lbidirectional_5_backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource:	9
&dense_5_matmul_readvariableop_resource:	5
'dense_5_biasadd_readvariableop_resource:
identity¢Cbidirectional_5/backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp¢Bbidirectional_5/backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp¢Dbidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp¢%bidirectional_5/backward_lstm_5/while¢Bbidirectional_5/forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp¢Abidirectional_5/forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp¢Cbidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp¢$bidirectional_5/forward_lstm_5/while¢dense_5/BiasAdd/ReadVariableOp¢dense_5/MatMul/ReadVariableOpb
lambda_5/ExpandDims/dimConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
lambda_5/ExpandDims
ExpandDimsinputs lambda_5/ExpandDims/dim:output:0*
T0*+
_output_shapes
:’’’’’’’’’p
$bidirectional_5/forward_lstm_5/ShapeShapelambda_5/ExpandDims:output:0*
T0*
_output_shapes
:|
2bidirectional_5/forward_lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: ~
4bidirectional_5/forward_lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:~
4bidirectional_5/forward_lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ģ
,bidirectional_5/forward_lstm_5/strided_sliceStridedSlice-bidirectional_5/forward_lstm_5/Shape:output:0;bidirectional_5/forward_lstm_5/strided_slice/stack:output:0=bidirectional_5/forward_lstm_5/strided_slice/stack_1:output:0=bidirectional_5/forward_lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskp
-bidirectional_5/forward_lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Š
+bidirectional_5/forward_lstm_5/zeros/packedPack5bidirectional_5/forward_lstm_5/strided_slice:output:06bidirectional_5/forward_lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:o
*bidirectional_5/forward_lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ź
$bidirectional_5/forward_lstm_5/zerosFill4bidirectional_5/forward_lstm_5/zeros/packed:output:03bidirectional_5/forward_lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’r
/bidirectional_5/forward_lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ō
-bidirectional_5/forward_lstm_5/zeros_1/packedPack5bidirectional_5/forward_lstm_5/strided_slice:output:08bidirectional_5/forward_lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:q
,bidirectional_5/forward_lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Š
&bidirectional_5/forward_lstm_5/zeros_1Fill6bidirectional_5/forward_lstm_5/zeros_1/packed:output:05bidirectional_5/forward_lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’
-bidirectional_5/forward_lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Į
(bidirectional_5/forward_lstm_5/transpose	Transposelambda_5/ExpandDims:output:06bidirectional_5/forward_lstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’
&bidirectional_5/forward_lstm_5/Shape_1Shape,bidirectional_5/forward_lstm_5/transpose:y:0*
T0*
_output_shapes
:~
4bidirectional_5/forward_lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6bidirectional_5/forward_lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6bidirectional_5/forward_lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ö
.bidirectional_5/forward_lstm_5/strided_slice_1StridedSlice/bidirectional_5/forward_lstm_5/Shape_1:output:0=bidirectional_5/forward_lstm_5/strided_slice_1/stack:output:0?bidirectional_5/forward_lstm_5/strided_slice_1/stack_1:output:0?bidirectional_5/forward_lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
:bidirectional_5/forward_lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
,bidirectional_5/forward_lstm_5/TensorArrayV2TensorListReserveCbidirectional_5/forward_lstm_5/TensorArrayV2/element_shape:output:07bidirectional_5/forward_lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ„
Tbidirectional_5/forward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ½
Fbidirectional_5/forward_lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor,bidirectional_5/forward_lstm_5/transpose:y:0]bidirectional_5/forward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ~
4bidirectional_5/forward_lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
6bidirectional_5/forward_lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
6bidirectional_5/forward_lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
.bidirectional_5/forward_lstm_5/strided_slice_2StridedSlice,bidirectional_5/forward_lstm_5/transpose:y:0=bidirectional_5/forward_lstm_5/strided_slice_2/stack:output:0?bidirectional_5/forward_lstm_5/strided_slice_2/stack_1:output:0?bidirectional_5/forward_lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_maskĶ
Abidirectional_5/forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOpReadVariableOpJbidirectional_5_forward_lstm_5_lstm_cell_37_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ó
2bidirectional_5/forward_lstm_5/lstm_cell_37/MatMulMatMul7bidirectional_5/forward_lstm_5/strided_slice_2:output:0Ibidirectional_5/forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ņ
Cbidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOpReadVariableOpLbidirectional_5_forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0ķ
4bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1MatMul-bidirectional_5/forward_lstm_5/zeros:output:0Kbidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’é
/bidirectional_5/forward_lstm_5/lstm_cell_37/addAddV2<bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul:product:0>bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Ė
Bbidirectional_5/forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOpReadVariableOpKbidirectional_5_forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0ņ
3bidirectional_5/forward_lstm_5/lstm_cell_37/BiasAddBiasAdd3bidirectional_5/forward_lstm_5/lstm_cell_37/add:z:0Jbidirectional_5/forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’}
;bidirectional_5/forward_lstm_5/lstm_cell_37/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :¾
1bidirectional_5/forward_lstm_5/lstm_cell_37/splitSplitDbidirectional_5/forward_lstm_5/lstm_cell_37/split/split_dim:output:0<bidirectional_5/forward_lstm_5/lstm_cell_37/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_split­
3bidirectional_5/forward_lstm_5/lstm_cell_37/SigmoidSigmoid:bidirectional_5/forward_lstm_5/lstm_cell_37/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
5bidirectional_5/forward_lstm_5/lstm_cell_37/Sigmoid_1Sigmoid:bidirectional_5/forward_lstm_5/lstm_cell_37/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Õ
/bidirectional_5/forward_lstm_5/lstm_cell_37/mulMul9bidirectional_5/forward_lstm_5/lstm_cell_37/Sigmoid_1:y:0/bidirectional_5/forward_lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’§
0bidirectional_5/forward_lstm_5/lstm_cell_37/ReluRelu:bidirectional_5/forward_lstm_5/lstm_cell_37/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ä
1bidirectional_5/forward_lstm_5/lstm_cell_37/mul_1Mul7bidirectional_5/forward_lstm_5/lstm_cell_37/Sigmoid:y:0>bidirectional_5/forward_lstm_5/lstm_cell_37/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Ł
1bidirectional_5/forward_lstm_5/lstm_cell_37/add_1AddV23bidirectional_5/forward_lstm_5/lstm_cell_37/mul:z:05bidirectional_5/forward_lstm_5/lstm_cell_37/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’Æ
5bidirectional_5/forward_lstm_5/lstm_cell_37/Sigmoid_2Sigmoid:bidirectional_5/forward_lstm_5/lstm_cell_37/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’¤
2bidirectional_5/forward_lstm_5/lstm_cell_37/Relu_1Relu5bidirectional_5/forward_lstm_5/lstm_cell_37/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’č
1bidirectional_5/forward_lstm_5/lstm_cell_37/mul_2Mul9bidirectional_5/forward_lstm_5/lstm_cell_37/Sigmoid_2:y:0@bidirectional_5/forward_lstm_5/lstm_cell_37/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
<bidirectional_5/forward_lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   }
;bidirectional_5/forward_lstm_5/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :¢
.bidirectional_5/forward_lstm_5/TensorArrayV2_1TensorListReserveEbidirectional_5/forward_lstm_5/TensorArrayV2_1/element_shape:output:0Dbidirectional_5/forward_lstm_5/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅe
#bidirectional_5/forward_lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : 
7bidirectional_5/forward_lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’s
1bidirectional_5/forward_lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : ø	
$bidirectional_5/forward_lstm_5/whileWhile:bidirectional_5/forward_lstm_5/while/loop_counter:output:0@bidirectional_5/forward_lstm_5/while/maximum_iterations:output:0,bidirectional_5/forward_lstm_5/time:output:07bidirectional_5/forward_lstm_5/TensorArrayV2_1:handle:0-bidirectional_5/forward_lstm_5/zeros:output:0/bidirectional_5/forward_lstm_5/zeros_1:output:07bidirectional_5/forward_lstm_5/strided_slice_1:output:0Vbidirectional_5/forward_lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0Jbidirectional_5_forward_lstm_5_lstm_cell_37_matmul_readvariableop_resourceLbidirectional_5_forward_lstm_5_lstm_cell_37_matmul_1_readvariableop_resourceKbidirectional_5_forward_lstm_5_lstm_cell_37_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *<
body4R2
0bidirectional_5_forward_lstm_5_while_body_767652*<
cond4R2
0bidirectional_5_forward_lstm_5_while_cond_767651*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations  
Obidirectional_5/forward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   “
Abidirectional_5/forward_lstm_5/TensorArrayV2Stack/TensorListStackTensorListStack-bidirectional_5/forward_lstm_5/while:output:3Xbidirectional_5/forward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elements
4bidirectional_5/forward_lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
6bidirectional_5/forward_lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
6bidirectional_5/forward_lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:£
.bidirectional_5/forward_lstm_5/strided_slice_3StridedSliceJbidirectional_5/forward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0=bidirectional_5/forward_lstm_5/strided_slice_3/stack:output:0?bidirectional_5/forward_lstm_5/strided_slice_3/stack_1:output:0?bidirectional_5/forward_lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
/bidirectional_5/forward_lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ō
*bidirectional_5/forward_lstm_5/transpose_1	TransposeJbidirectional_5/forward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:08bidirectional_5/forward_lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’z
&bidirectional_5/forward_lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    q
%bidirectional_5/backward_lstm_5/ShapeShapelambda_5/ExpandDims:output:0*
T0*
_output_shapes
:}
3bidirectional_5/backward_lstm_5/strided_slice/stackConst*
_output_shapes
:*
dtype0*
valueB: 
5bidirectional_5/backward_lstm_5/strided_slice/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
5bidirectional_5/backward_lstm_5/strided_slice/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ń
-bidirectional_5/backward_lstm_5/strided_sliceStridedSlice.bidirectional_5/backward_lstm_5/Shape:output:0<bidirectional_5/backward_lstm_5/strided_slice/stack:output:0>bidirectional_5/backward_lstm_5/strided_slice/stack_1:output:0>bidirectional_5/backward_lstm_5/strided_slice/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_maskq
.bidirectional_5/backward_lstm_5/zeros/packed/1Const*
_output_shapes
: *
dtype0*
value
B :Ó
,bidirectional_5/backward_lstm_5/zeros/packedPack6bidirectional_5/backward_lstm_5/strided_slice:output:07bidirectional_5/backward_lstm_5/zeros/packed/1:output:0*
N*
T0*
_output_shapes
:p
+bidirectional_5/backward_lstm_5/zeros/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ķ
%bidirectional_5/backward_lstm_5/zerosFill5bidirectional_5/backward_lstm_5/zeros/packed:output:04bidirectional_5/backward_lstm_5/zeros/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’s
0bidirectional_5/backward_lstm_5/zeros_1/packed/1Const*
_output_shapes
: *
dtype0*
value
B :×
.bidirectional_5/backward_lstm_5/zeros_1/packedPack6bidirectional_5/backward_lstm_5/strided_slice:output:09bidirectional_5/backward_lstm_5/zeros_1/packed/1:output:0*
N*
T0*
_output_shapes
:r
-bidirectional_5/backward_lstm_5/zeros_1/ConstConst*
_output_shapes
: *
dtype0*
valueB
 *    Ó
'bidirectional_5/backward_lstm_5/zeros_1Fill7bidirectional_5/backward_lstm_5/zeros_1/packed:output:06bidirectional_5/backward_lstm_5/zeros_1/Const:output:0*
T0*(
_output_shapes
:’’’’’’’’’
.bidirectional_5/backward_lstm_5/transpose/permConst*
_output_shapes
:*
dtype0*!
valueB"          Ć
)bidirectional_5/backward_lstm_5/transpose	Transposelambda_5/ExpandDims:output:07bidirectional_5/backward_lstm_5/transpose/perm:output:0*
T0*+
_output_shapes
:’’’’’’’’’
'bidirectional_5/backward_lstm_5/Shape_1Shape-bidirectional_5/backward_lstm_5/transpose:y:0*
T0*
_output_shapes
:
5bidirectional_5/backward_lstm_5/strided_slice_1/stackConst*
_output_shapes
:*
dtype0*
valueB: 
7bidirectional_5/backward_lstm_5/strided_slice_1/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7bidirectional_5/backward_lstm_5/strided_slice_1/stack_2Const*
_output_shapes
:*
dtype0*
valueB:ū
/bidirectional_5/backward_lstm_5/strided_slice_1StridedSlice0bidirectional_5/backward_lstm_5/Shape_1:output:0>bidirectional_5/backward_lstm_5/strided_slice_1/stack:output:0@bidirectional_5/backward_lstm_5/strided_slice_1/stack_1:output:0@bidirectional_5/backward_lstm_5/strided_slice_1/stack_2:output:0*
Index0*
T0*
_output_shapes
: *
shrink_axis_mask
;bidirectional_5/backward_lstm_5/TensorArrayV2/element_shapeConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’
-bidirectional_5/backward_lstm_5/TensorArrayV2TensorListReserveDbidirectional_5/backward_lstm_5/TensorArrayV2/element_shape:output:08bidirectional_5/backward_lstm_5/strided_slice_1:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅx
.bidirectional_5/backward_lstm_5/ReverseV2/axisConst*
_output_shapes
:*
dtype0*
valueB: Ō
)bidirectional_5/backward_lstm_5/ReverseV2	ReverseV2-bidirectional_5/backward_lstm_5/transpose:y:07bidirectional_5/backward_lstm_5/ReverseV2/axis:output:0*
T0*+
_output_shapes
:’’’’’’’’’¦
Ubidirectional_5/backward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   Å
Gbidirectional_5/backward_lstm_5/TensorArrayUnstack/TensorListFromTensorTensorListFromTensor2bidirectional_5/backward_lstm_5/ReverseV2:output:0^bidirectional_5/backward_lstm_5/TensorArrayUnstack/TensorListFromTensor/element_shape:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅ
5bidirectional_5/backward_lstm_5/strided_slice_2/stackConst*
_output_shapes
:*
dtype0*
valueB: 
7bidirectional_5/backward_lstm_5/strided_slice_2/stack_1Const*
_output_shapes
:*
dtype0*
valueB:
7bidirectional_5/backward_lstm_5/strided_slice_2/stack_2Const*
_output_shapes
:*
dtype0*
valueB:
/bidirectional_5/backward_lstm_5/strided_slice_2StridedSlice-bidirectional_5/backward_lstm_5/transpose:y:0>bidirectional_5/backward_lstm_5/strided_slice_2/stack:output:0@bidirectional_5/backward_lstm_5/strided_slice_2/stack_1:output:0@bidirectional_5/backward_lstm_5/strided_slice_2/stack_2:output:0*
Index0*
T0*'
_output_shapes
:’’’’’’’’’*
shrink_axis_maskĻ
Bbidirectional_5/backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOpReadVariableOpKbidirectional_5_backward_lstm_5_lstm_cell_38_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0ö
3bidirectional_5/backward_lstm_5/lstm_cell_38/MatMulMatMul8bidirectional_5/backward_lstm_5/strided_slice_2:output:0Jbidirectional_5/backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’Ō
Dbidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOpReadVariableOpMbidirectional_5_backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resource* 
_output_shapes
:
*
dtype0š
5bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1MatMul.bidirectional_5/backward_lstm_5/zeros:output:0Lbidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’ģ
0bidirectional_5/backward_lstm_5/lstm_cell_38/addAddV2=bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul:product:0?bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1:product:0*
T0*(
_output_shapes
:’’’’’’’’’Ķ
Cbidirectional_5/backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOpReadVariableOpLbidirectional_5_backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource*
_output_shapes	
:*
dtype0õ
4bidirectional_5/backward_lstm_5/lstm_cell_38/BiasAddBiasAdd4bidirectional_5/backward_lstm_5/lstm_cell_38/add:z:0Kbidirectional_5/backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp:value:0*
T0*(
_output_shapes
:’’’’’’’’’~
<bidirectional_5/backward_lstm_5/lstm_cell_38/split/split_dimConst*
_output_shapes
: *
dtype0*
value	B :Į
2bidirectional_5/backward_lstm_5/lstm_cell_38/splitSplitEbidirectional_5/backward_lstm_5/lstm_cell_38/split/split_dim:output:0=bidirectional_5/backward_lstm_5/lstm_cell_38/BiasAdd:output:0*
T0*d
_output_shapesR
P:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’:’’’’’’’’’*
	num_splitÆ
4bidirectional_5/backward_lstm_5/lstm_cell_38/SigmoidSigmoid;bidirectional_5/backward_lstm_5/lstm_cell_38/split:output:0*
T0*(
_output_shapes
:’’’’’’’’’±
6bidirectional_5/backward_lstm_5/lstm_cell_38/Sigmoid_1Sigmoid;bidirectional_5/backward_lstm_5/lstm_cell_38/split:output:1*
T0*(
_output_shapes
:’’’’’’’’’Ų
0bidirectional_5/backward_lstm_5/lstm_cell_38/mulMul:bidirectional_5/backward_lstm_5/lstm_cell_38/Sigmoid_1:y:00bidirectional_5/backward_lstm_5/zeros_1:output:0*
T0*(
_output_shapes
:’’’’’’’’’©
1bidirectional_5/backward_lstm_5/lstm_cell_38/ReluRelu;bidirectional_5/backward_lstm_5/lstm_cell_38/split:output:2*
T0*(
_output_shapes
:’’’’’’’’’ē
2bidirectional_5/backward_lstm_5/lstm_cell_38/mul_1Mul8bidirectional_5/backward_lstm_5/lstm_cell_38/Sigmoid:y:0?bidirectional_5/backward_lstm_5/lstm_cell_38/Relu:activations:0*
T0*(
_output_shapes
:’’’’’’’’’Ü
2bidirectional_5/backward_lstm_5/lstm_cell_38/add_1AddV24bidirectional_5/backward_lstm_5/lstm_cell_38/mul:z:06bidirectional_5/backward_lstm_5/lstm_cell_38/mul_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’±
6bidirectional_5/backward_lstm_5/lstm_cell_38/Sigmoid_2Sigmoid;bidirectional_5/backward_lstm_5/lstm_cell_38/split:output:3*
T0*(
_output_shapes
:’’’’’’’’’¦
3bidirectional_5/backward_lstm_5/lstm_cell_38/Relu_1Relu6bidirectional_5/backward_lstm_5/lstm_cell_38/add_1:z:0*
T0*(
_output_shapes
:’’’’’’’’’ė
2bidirectional_5/backward_lstm_5/lstm_cell_38/mul_2Mul:bidirectional_5/backward_lstm_5/lstm_cell_38/Sigmoid_2:y:0Abidirectional_5/backward_lstm_5/lstm_cell_38/Relu_1:activations:0*
T0*(
_output_shapes
:’’’’’’’’’
=bidirectional_5/backward_lstm_5/TensorArrayV2_1/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ~
<bidirectional_5/backward_lstm_5/TensorArrayV2_1/num_elementsConst*
_output_shapes
: *
dtype0*
value	B :„
/bidirectional_5/backward_lstm_5/TensorArrayV2_1TensorListReserveFbidirectional_5/backward_lstm_5/TensorArrayV2_1/element_shape:output:0Ebidirectional_5/backward_lstm_5/TensorArrayV2_1/num_elements:output:0*
_output_shapes
: *
element_dtype0*

shape_type0:éčŅf
$bidirectional_5/backward_lstm_5/timeConst*
_output_shapes
: *
dtype0*
value	B : 
8bidirectional_5/backward_lstm_5/while/maximum_iterationsConst*
_output_shapes
: *
dtype0*
valueB :
’’’’’’’’’t
2bidirectional_5/backward_lstm_5/while/loop_counterConst*
_output_shapes
: *
dtype0*
value	B : Ę	
%bidirectional_5/backward_lstm_5/whileWhile;bidirectional_5/backward_lstm_5/while/loop_counter:output:0Abidirectional_5/backward_lstm_5/while/maximum_iterations:output:0-bidirectional_5/backward_lstm_5/time:output:08bidirectional_5/backward_lstm_5/TensorArrayV2_1:handle:0.bidirectional_5/backward_lstm_5/zeros:output:00bidirectional_5/backward_lstm_5/zeros_1:output:08bidirectional_5/backward_lstm_5/strided_slice_1:output:0Wbidirectional_5/backward_lstm_5/TensorArrayUnstack/TensorListFromTensor:output_handle:0Kbidirectional_5_backward_lstm_5_lstm_cell_38_matmul_readvariableop_resourceMbidirectional_5_backward_lstm_5_lstm_cell_38_matmul_1_readvariableop_resourceLbidirectional_5_backward_lstm_5_lstm_cell_38_biasadd_readvariableop_resource*
T
2*
_lower_using_switch_merge(*
_num_original_outputs*N
_output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *%
_read_only_resource_inputs
	
*
_stateful_parallelism( *=
body5R3
1bidirectional_5_backward_lstm_5_while_body_767795*=
cond5R3
1bidirectional_5_backward_lstm_5_while_cond_767794*M
output_shapes<
:: : : : :’’’’’’’’’:’’’’’’’’’: : : : : *
parallel_iterations ”
Pbidirectional_5/backward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shapeConst*
_output_shapes
:*
dtype0*
valueB"’’’’   ·
Bbidirectional_5/backward_lstm_5/TensorArrayV2Stack/TensorListStackTensorListStack.bidirectional_5/backward_lstm_5/while:output:3Ybidirectional_5/backward_lstm_5/TensorArrayV2Stack/TensorListStack/element_shape:output:0*,
_output_shapes
:’’’’’’’’’*
element_dtype0*
num_elements
5bidirectional_5/backward_lstm_5/strided_slice_3/stackConst*
_output_shapes
:*
dtype0*
valueB:
’’’’’’’’’
7bidirectional_5/backward_lstm_5/strided_slice_3/stack_1Const*
_output_shapes
:*
dtype0*
valueB: 
7bidirectional_5/backward_lstm_5/strided_slice_3/stack_2Const*
_output_shapes
:*
dtype0*
valueB:Ø
/bidirectional_5/backward_lstm_5/strided_slice_3StridedSliceKbidirectional_5/backward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:0>bidirectional_5/backward_lstm_5/strided_slice_3/stack:output:0@bidirectional_5/backward_lstm_5/strided_slice_3/stack_1:output:0@bidirectional_5/backward_lstm_5/strided_slice_3/stack_2:output:0*
Index0*
T0*(
_output_shapes
:’’’’’’’’’*
shrink_axis_mask
0bidirectional_5/backward_lstm_5/transpose_1/permConst*
_output_shapes
:*
dtype0*!
valueB"          ÷
+bidirectional_5/backward_lstm_5/transpose_1	TransposeKbidirectional_5/backward_lstm_5/TensorArrayV2Stack/TensorListStack:tensor:09bidirectional_5/backward_lstm_5/transpose_1/perm:output:0*
T0*,
_output_shapes
:’’’’’’’’’{
'bidirectional_5/backward_lstm_5/runtimeConst"/device:CPU:0*
_output_shapes
: *
dtype0*
valueB
 *    ]
bidirectional_5/concat/axisConst*
_output_shapes
: *
dtype0*
value	B :÷
bidirectional_5/concatConcatV27bidirectional_5/forward_lstm_5/strided_slice_3:output:08bidirectional_5/backward_lstm_5/strided_slice_3:output:0$bidirectional_5/concat/axis:output:0*
N*
T0*(
_output_shapes
:’’’’’’’’’
dense_5/MatMul/ReadVariableOpReadVariableOp&dense_5_matmul_readvariableop_resource*
_output_shapes
:	*
dtype0
dense_5/MatMulMatMulbidirectional_5/concat:output:0%dense_5/MatMul/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’
dense_5/BiasAdd/ReadVariableOpReadVariableOp'dense_5_biasadd_readvariableop_resource*
_output_shapes
:*
dtype0
dense_5/BiasAddBiasAdddense_5/MatMul:product:0&dense_5/BiasAdd/ReadVariableOp:value:0*
T0*'
_output_shapes
:’’’’’’’’’g
IdentityIdentitydense_5/BiasAdd:output:0^NoOp*
T0*'
_output_shapes
:’’’’’’’’’÷
NoOpNoOpD^bidirectional_5/backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOpC^bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOpE^bidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp&^bidirectional_5/backward_lstm_5/whileC^bidirectional_5/forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOpB^bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOpD^bidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp%^bidirectional_5/forward_lstm_5/while^dense_5/BiasAdd/ReadVariableOp^dense_5/MatMul/ReadVariableOp*"
_acd_function_control_output(*
_output_shapes
 "
identityIdentity:output:0*(
_construction_contextkEagerRuntime*6
_input_shapes%
#:’’’’’’’’’: : : : : : : : 2
Cbidirectional_5/backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOpCbidirectional_5/backward_lstm_5/lstm_cell_38/BiasAdd/ReadVariableOp2
Bbidirectional_5/backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOpBbidirectional_5/backward_lstm_5/lstm_cell_38/MatMul/ReadVariableOp2
Dbidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOpDbidirectional_5/backward_lstm_5/lstm_cell_38/MatMul_1/ReadVariableOp2N
%bidirectional_5/backward_lstm_5/while%bidirectional_5/backward_lstm_5/while2
Bbidirectional_5/forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOpBbidirectional_5/forward_lstm_5/lstm_cell_37/BiasAdd/ReadVariableOp2
Abidirectional_5/forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOpAbidirectional_5/forward_lstm_5/lstm_cell_37/MatMul/ReadVariableOp2
Cbidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOpCbidirectional_5/forward_lstm_5/lstm_cell_37/MatMul_1/ReadVariableOp2L
$bidirectional_5/forward_lstm_5/while$bidirectional_5/forward_lstm_5/while2@
dense_5/BiasAdd/ReadVariableOpdense_5/BiasAdd/ReadVariableOp2>
dense_5/MatMul/ReadVariableOpdense_5/MatMul/ReadVariableOp:O K
'
_output_shapes
:’’’’’’’’’
 
_user_specified_nameinputs
Ń
`
D__inference_lambda_5_layer_call_and_return_conditional_losses_766695

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
	

0__inference_bidirectional_5_layer_call_fn_768259

inputs
unknown:	
	unknown_0:

	unknown_1:	
	unknown_2:	
	unknown_3:

	unknown_4:	
identity¢StatefulPartitionedCall
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
GPU2*0J 8 *T
fORM
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_766986p
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
„
Ą
0__inference_backward_lstm_5_layer_call_fn_770090
inputs_0
unknown:	
	unknown_0:

	unknown_1:	
identity¢StatefulPartitionedCalló
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
GPU2*0J 8 *T
fORM
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_765774p
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
Ę

(__inference_dense_5_layer_call_fn_769445

inputs
unknown:	
	unknown_0:
identity¢StatefulPartitionedCallŪ
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
GPU2*0J 8 *L
fGRE
C__inference_dense_5_layer_call_and_return_conditional_losses_767010o
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
 
_user_specified_nameinputs"µ	L
saver_filename:0StatefulPartitionedCall_1:0StatefulPartitionedCall_28"
saved_model_main_op

NoOp*>
__saved_model_init_op%#
__saved_model_init_op

NoOp*ø
serving_default¤
I
lambda_5_input7
 serving_default_lambda_5_input:0’’’’’’’’’;
dense_50
StatefulPartitionedCall:0’’’’’’’’’tensorflow/serving/predict:÷¾
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
É
.trace_0
/trace_1
0trace_2
1trace_32Ž
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_767036
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_767569
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_767590
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_767473æ
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
µ
2trace_0
3trace_1
4trace_2
5trace_32Ź
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_767888
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_768186
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_767496
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_767519æ
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
ÓBŠ
!__inference__wrapped_model_765266lambda_5_input"
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
Ļ
Atrace_0
Btrace_12
)__inference_lambda_5_layer_call_fn_768191
)__inference_lambda_5_layer_call_fn_768196æ
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

Ctrace_0
Dtrace_12Ī
D__inference_lambda_5_layer_call_and_return_conditional_losses_768202
D__inference_lambda_5_layer_call_and_return_conditional_losses_768208æ
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

Jtrace_0
Ktrace_1
Ltrace_2
Mtrace_32°
0__inference_bidirectional_5_layer_call_fn_768225
0__inference_bidirectional_5_layer_call_fn_768242
0__inference_bidirectional_5_layer_call_fn_768259
0__inference_bidirectional_5_layer_call_fn_768276å
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

Ntrace_0
Otrace_1
Ptrace_2
Qtrace_32
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_768566
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_768856
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_769146
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_769436å
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
ģ
itrace_02Ļ
(__inference_dense_5_layer_call_fn_769445¢
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

jtrace_02ź
C__inference_dense_5_layer_call_and_return_conditional_losses_769455¢
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
!:	2dense_5/kernel
:2dense_5/bias
E:C	22bidirectional_5/forward_lstm_5/lstm_cell_37/kernel
P:N
2<bidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel
?:=20bidirectional_5/forward_lstm_5/lstm_cell_37/bias
F:D	23bidirectional_5/backward_lstm_5/lstm_cell_38/kernel
Q:O
2=bidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel
@:>21bidirectional_5/backward_lstm_5/lstm_cell_38/bias
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
B
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_767036lambda_5_input"æ
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
B
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_767569inputs"æ
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
B
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_767590inputs"æ
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
B
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_767473lambda_5_input"æ
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
±B®
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_767888inputs"æ
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
±B®
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_768186inputs"æ
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
¹B¶
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_767496lambda_5_input"æ
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
¹B¶
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_767519lambda_5_input"æ
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
ŅBĻ
$__inference_signature_wrapper_767548lambda_5_input"
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
śB÷
)__inference_lambda_5_layer_call_fn_768191inputs"æ
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
śB÷
)__inference_lambda_5_layer_call_fn_768196inputs"æ
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
B
D__inference_lambda_5_layer_call_and_return_conditional_losses_768202inputs"æ
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
B
D__inference_lambda_5_layer_call_and_return_conditional_losses_768208inputs"æ
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
©B¦
0__inference_bidirectional_5_layer_call_fn_768225inputs/0"å
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
0__inference_bidirectional_5_layer_call_fn_768242inputs/0"å
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
§B¤
0__inference_bidirectional_5_layer_call_fn_768259inputs"å
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
§B¤
0__inference_bidirectional_5_layer_call_fn_768276inputs"å
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
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_768566inputs/0"å
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
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_768856inputs/0"å
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
ĀBæ
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_769146inputs"å
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
ĀBæ
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_769436inputs"å
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

rtrace_0
strace_1
ttrace_2
utrace_32
/__inference_forward_lstm_5_layer_call_fn_769466
/__inference_forward_lstm_5_layer_call_fn_769477
/__inference_forward_lstm_5_layer_call_fn_769488
/__inference_forward_lstm_5_layer_call_fn_769499Ō
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
ņ
vtrace_0
wtrace_1
xtrace_2
ytrace_32
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_769644
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_769789
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_769934
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_770079Ō
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

trace_0
trace_1
trace_2
trace_32
0__inference_backward_lstm_5_layer_call_fn_770090
0__inference_backward_lstm_5_layer_call_fn_770101
0__inference_backward_lstm_5_layer_call_fn_770112
0__inference_backward_lstm_5_layer_call_fn_770123Ō
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
ž
trace_0
trace_1
trace_2
trace_32
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_770270
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_770417
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_770564
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_770711Ō
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
ÜBŁ
(__inference_dense_5_layer_call_fn_769445inputs"¢
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
÷Bō
C__inference_dense_5_layer_call_and_return_conditional_losses_769455inputs"¢
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
B
/__inference_forward_lstm_5_layer_call_fn_769466inputs/0"Ō
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
/__inference_forward_lstm_5_layer_call_fn_769477inputs/0"Ō
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
B
/__inference_forward_lstm_5_layer_call_fn_769488inputs"Ō
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
B
/__inference_forward_lstm_5_layer_call_fn_769499inputs"Ō
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
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_769644inputs/0"Ō
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
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_769789inputs/0"Ō
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
°B­
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_769934inputs"Ō
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
°B­
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_770079inputs"Ō
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
Ł
”trace_0
¢trace_12
-__inference_lstm_cell_37_layer_call_fn_770728
-__inference_lstm_cell_37_layer_call_fn_770745½
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

£trace_0
¤trace_12Ō
H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_770777
H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_770809½
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
B
0__inference_backward_lstm_5_layer_call_fn_770090inputs/0"Ō
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
0__inference_backward_lstm_5_layer_call_fn_770101inputs/0"Ō
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
B
0__inference_backward_lstm_5_layer_call_fn_770112inputs"Ō
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
B
0__inference_backward_lstm_5_layer_call_fn_770123inputs"Ō
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
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_770270inputs/0"Ō
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
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_770417inputs/0"Ō
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
±B®
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_770564inputs"Ō
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
±B®
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_770711inputs"Ō
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
Ł
Ŗtrace_0
«trace_12
-__inference_lstm_cell_38_layer_call_fn_770826
-__inference_lstm_cell_38_layer_call_fn_770843½
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

¬trace_0
­trace_12Ō
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_770875
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_770907½
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
B
-__inference_lstm_cell_37_layer_call_fn_770728inputsstates/0states/1"½
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
B
-__inference_lstm_cell_37_layer_call_fn_770745inputsstates/0states/1"½
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
«BØ
H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_770777inputsstates/0states/1"½
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
«BØ
H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_770809inputsstates/0states/1"½
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
B
-__inference_lstm_cell_38_layer_call_fn_770826inputsstates/0states/1"½
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
B
-__inference_lstm_cell_38_layer_call_fn_770843inputsstates/0states/1"½
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
«BØ
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_770875inputsstates/0states/1"½
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
«BØ
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_770907inputsstates/0states/1"½
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
&:$	2Adam/dense_5/kernel/m
:2Adam/dense_5/bias/m
J:H	29Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/kernel/m
U:S
2CAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel/m
D:B27Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/bias/m
K:I	2:Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/kernel/m
V:T
2DAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel/m
E:C28Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/bias/m
&:$	2Adam/dense_5/kernel/v
:2Adam/dense_5/bias/v
J:H	29Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/kernel/v
U:S
2CAdam/bidirectional_5/forward_lstm_5/lstm_cell_37/recurrent_kernel/v
D:B27Adam/bidirectional_5/forward_lstm_5/lstm_cell_37/bias/v
K:I	2:Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/kernel/v
V:T
2DAdam/bidirectional_5/backward_lstm_5/lstm_cell_38/recurrent_kernel/v
E:C28Adam/bidirectional_5/backward_lstm_5/lstm_cell_38/bias/v
!__inference__wrapped_model_765266v#$%&'(!"7¢4
-¢*
(%
lambda_5_input’’’’’’’’’
Ŗ "1Ŗ.
,
dense_5!
dense_5’’’’’’’’’Ķ
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_770270~&'(O¢L
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
 Ķ
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_770417~&'(O¢L
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
 Š
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_770564&'(Q¢N
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
 Š
K__inference_backward_lstm_5_layer_call_and_return_conditional_losses_770711&'(Q¢N
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
 „
0__inference_backward_lstm_5_layer_call_fn_770090q&'(O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’

 
p 

 
Ŗ "’’’’’’’’’„
0__inference_backward_lstm_5_layer_call_fn_770101q&'(O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’

 
p

 
Ŗ "’’’’’’’’’§
0__inference_backward_lstm_5_layer_call_fn_770112s&'(Q¢N
G¢D
63
inputs'’’’’’’’’’’’’’’’’’’’’’’’’’’’

 
p 

 
Ŗ "’’’’’’’’’§
0__inference_backward_lstm_5_layer_call_fn_770123s&'(Q¢N
G¢D
63
inputs'’’’’’’’’’’’’’’’’’’’’’’’’’’’

 
p

 
Ŗ "’’’’’’’’’Ž
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_768566#$%&'(\¢Y
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
 Ž
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_768856#$%&'(\¢Y
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
 Ä
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_769146u#$%&'(C¢@
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
 Ä
K__inference_bidirectional_5_layer_call_and_return_conditional_losses_769436u#$%&'(C¢@
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
 ¶
0__inference_bidirectional_5_layer_call_fn_768225#$%&'(\¢Y
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
Ŗ "’’’’’’’’’¶
0__inference_bidirectional_5_layer_call_fn_768242#$%&'(\¢Y
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
Ŗ "’’’’’’’’’
0__inference_bidirectional_5_layer_call_fn_768259h#$%&'(C¢@
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
Ŗ "’’’’’’’’’
0__inference_bidirectional_5_layer_call_fn_768276h#$%&'(C¢@
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
Ŗ "’’’’’’’’’¤
C__inference_dense_5_layer_call_and_return_conditional_losses_769455]!"0¢-
&¢#
!
inputs’’’’’’’’’
Ŗ "%¢"

0’’’’’’’’’
 |
(__inference_dense_5_layer_call_fn_769445P!"0¢-
&¢#
!
inputs’’’’’’’’’
Ŗ "’’’’’’’’’Ģ
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_769644~#$%O¢L
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
 Ģ
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_769789~#$%O¢L
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
 Ļ
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_769934#$%Q¢N
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
 Ļ
J__inference_forward_lstm_5_layer_call_and_return_conditional_losses_770079#$%Q¢N
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
 ¤
/__inference_forward_lstm_5_layer_call_fn_769466q#$%O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’

 
p 

 
Ŗ "’’’’’’’’’¤
/__inference_forward_lstm_5_layer_call_fn_769477q#$%O¢L
E¢B
41
/,
inputs/0’’’’’’’’’’’’’’’’’’

 
p

 
Ŗ "’’’’’’’’’¦
/__inference_forward_lstm_5_layer_call_fn_769488s#$%Q¢N
G¢D
63
inputs'’’’’’’’’’’’’’’’’’’’’’’’’’’’

 
p 

 
Ŗ "’’’’’’’’’¦
/__inference_forward_lstm_5_layer_call_fn_769499s#$%Q¢N
G¢D
63
inputs'’’’’’’’’’’’’’’’’’’’’’’’’’’’

 
p

 
Ŗ "’’’’’’’’’¬
D__inference_lambda_5_layer_call_and_return_conditional_losses_768202d7¢4
-¢*
 
inputs’’’’’’’’’

 
p 
Ŗ ")¢&

0’’’’’’’’’
 ¬
D__inference_lambda_5_layer_call_and_return_conditional_losses_768208d7¢4
-¢*
 
inputs’’’’’’’’’

 
p
Ŗ ")¢&

0’’’’’’’’’
 
)__inference_lambda_5_layer_call_fn_768191W7¢4
-¢*
 
inputs’’’’’’’’’

 
p 
Ŗ "’’’’’’’’’
)__inference_lambda_5_layer_call_fn_768196W7¢4
-¢*
 
inputs’’’’’’’’’

 
p
Ŗ "’’’’’’’’’Ļ
H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_770777#$%¢
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
 Ļ
H__inference_lstm_cell_37_layer_call_and_return_conditional_losses_770809#$%¢
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
 ¤
-__inference_lstm_cell_37_layer_call_fn_770728ņ#$%¢
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
1/1’’’’’’’’’¤
-__inference_lstm_cell_37_layer_call_fn_770745ņ#$%¢
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
1/1’’’’’’’’’Ļ
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_770875&'(¢
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
 Ļ
H__inference_lstm_cell_38_layer_call_and_return_conditional_losses_770907&'(¢
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
 ¤
-__inference_lstm_cell_38_layer_call_fn_770826ņ&'(¢
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
1/1’’’’’’’’’¤
-__inference_lstm_cell_38_layer_call_fn_770843ņ&'(¢
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
1/1’’’’’’’’’Ö
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_767496r#$%&'(!"?¢<
5¢2
(%
lambda_5_input’’’’’’’’’
p 

 
Ŗ "%¢"

0’’’’’’’’’
 Ö
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_767519r#$%&'(!"?¢<
5¢2
(%
lambda_5_input’’’’’’’’’
p

 
Ŗ "%¢"

0’’’’’’’’’
 Ī
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_767888j#$%&'(!"7¢4
-¢*
 
inputs’’’’’’’’’
p 

 
Ŗ "%¢"

0’’’’’’’’’
 Ī
`__inference_model_9_bidirectionalLSTM_univariate_layer_call_and_return_conditional_losses_768186j#$%&'(!"7¢4
-¢*
 
inputs’’’’’’’’’
p

 
Ŗ "%¢"

0’’’’’’’’’
 ®
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_767036e#$%&'(!"?¢<
5¢2
(%
lambda_5_input’’’’’’’’’
p 

 
Ŗ "’’’’’’’’’®
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_767473e#$%&'(!"?¢<
5¢2
(%
lambda_5_input’’’’’’’’’
p

 
Ŗ "’’’’’’’’’¦
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_767569]#$%&'(!"7¢4
-¢*
 
inputs’’’’’’’’’
p 

 
Ŗ "’’’’’’’’’¦
E__inference_model_9_bidirectionalLSTM_univariate_layer_call_fn_767590]#$%&'(!"7¢4
-¢*
 
inputs’’’’’’’’’
p

 
Ŗ "’’’’’’’’’±
$__inference_signature_wrapper_767548#$%&'(!"I¢F
¢ 
?Ŗ<
:
lambda_5_input(%
lambda_5_input’’’’’’’’’"1Ŗ.
,
dense_5!
dense_5’’’’’’’’’